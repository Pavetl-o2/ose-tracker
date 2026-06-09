-- ================================================
-- STEP 10: Verify counts after import
-- ================================================

SELECT a.name, count(i.id) as items_en_db
FROM areas a LEFT JOIN items i ON i.area_id = a.id
GROUP BY a.name ORDER BY a.name;

SELECT count(*) as total_items FROM items;
