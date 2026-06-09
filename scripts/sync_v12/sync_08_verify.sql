-- ================================================================
-- PASO 8: VERIFICAR conteos finales
-- Esperado por área (según Excel v12):
--   5th Resident Lounge: 96
--   Banquet: 253
--   Beach Bar: 90
--   Cevicheria: 141
--   Coffee Shop: 57
--   Drawing Room: 53
--   In Room Dinning: 54
--   Lobby Lounge: 29
--   Mexican Izakaya: 152
--   Owners Lounge: 108
--   Pool & Beach: 39
--   SpeakEasy: 51
--   St Regis Bar: 115
--   Three Meal: 241
-- ================================================================

SELECT a.name, count(i.id) as items_en_db
FROM areas a LEFT JOIN items i ON i.area_id = a.id
GROUP BY a.name ORDER BY a.name;
