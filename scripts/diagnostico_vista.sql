-- ================================================================
-- DIAGNÓSTICO: ¿Por qué la vista muestra menos items que la tabla?
-- ================================================================

-- 1. Ver la definición actual de la vista
SELECT pg_get_viewdef('inventory_status', true);

-- 2. Comparar conteos tabla vs vista por área (solo áreas con diferencia)
SELECT
  a.name,
  COUNT(DISTINCT i.id)    AS en_tabla_items,
  COUNT(DISTINCT iv.item_id) AS en_vista,
  COUNT(DISTINCT i.id) - COUNT(DISTINCT iv.item_id) AS faltantes
FROM areas a
LEFT JOIN items i  ON i.area_id = a.id
LEFT JOIN inventory_status iv ON iv.item_id = i.id
GROUP BY a.name
HAVING COUNT(DISTINCT i.id) != COUNT(DISTINCT iv.item_id)
ORDER BY faltantes DESC;
