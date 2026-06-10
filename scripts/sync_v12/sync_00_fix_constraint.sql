-- ================================================================
-- PASO 0 (FIX): Crear restricción UNIQUE en items.code
-- Necesaria para que ON CONFLICT (code) funcione en los upserts.
-- Ejecutar ANTES de sync_02 a sync_06.
-- ================================================================

-- ----------------------------------------------------------------
-- 0a. Ver si hay códigos duplicados (deben eliminarse primero).
--     Si esto devuelve filas, el paso 0b las resuelve.
-- ----------------------------------------------------------------
SELECT code, COUNT(*) AS veces
FROM items
WHERE code IS NOT NULL
GROUP BY code
HAVING COUNT(*) > 1
ORDER BY veces DESC;

-- ----------------------------------------------------------------
-- 0b. Eliminar duplicados: conserva una fila por código y
--     reasigna su historial (receipts/deliveries) a la fila conservada.
--     Es seguro ejecutarlo aunque no haya duplicados (no hace nada).
-- ----------------------------------------------------------------
WITH ranked AS (
  SELECT id, code,
         ROW_NUMBER() OVER (PARTITION BY code ORDER BY id) AS rn
  FROM items
  WHERE code IS NOT NULL
),
dups AS (
  SELECT r.id AS dup_id, k.id AS keep_id
  FROM ranked r
  JOIN ranked k ON k.code = r.code AND k.rn = 1
  WHERE r.rn > 1
)
UPDATE receipts
SET item_id = d.keep_id
FROM dups d
WHERE receipts.item_id = d.dup_id;

WITH ranked AS (
  SELECT id, code,
         ROW_NUMBER() OVER (PARTITION BY code ORDER BY id) AS rn
  FROM items
  WHERE code IS NOT NULL
),
dups AS (
  SELECT r.id AS dup_id, k.id AS keep_id
  FROM ranked r
  JOIN ranked k ON k.code = r.code AND k.rn = 1
  WHERE r.rn > 1
)
UPDATE deliveries
SET item_id = d.keep_id
FROM dups d
WHERE deliveries.item_id = d.dup_id;

DELETE FROM items
WHERE id IN (
  SELECT id FROM (
    SELECT id, ROW_NUMBER() OVER (PARTITION BY code ORDER BY id) AS rn
    FROM items
    WHERE code IS NOT NULL
  ) t
  WHERE t.rn > 1
);

-- ----------------------------------------------------------------
-- 0c. Crear la restricción UNIQUE (esto es lo que pide ON CONFLICT)
-- ----------------------------------------------------------------
ALTER TABLE items
ADD CONSTRAINT items_code_unique UNIQUE (code);
