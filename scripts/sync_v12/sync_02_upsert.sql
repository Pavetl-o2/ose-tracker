-- ================================================================
-- PASO 2: UPSERT items 1-300 de 1479 (actualiza o inserta)
-- ================================================================

INSERT INTO items (code, item_code, description, description_2, area_id, brand_current, supplier, category, item_type, qty_ordered)
VALUES
  ('178', 'MCTC', 'Table Lamp', 'LAMPARA P/MESA LUZ LED RECARGABLE 30 X 11 CM TERRACOTA', (SELECT id FROM areas WHERE name = 'Lobby Lounge' LIMIT 1), 'Zafferano', 'Proepta', NULL, 'UTENSILIOS', 12),
  ('206', 'TBD', 'Beverage Tray Non Slip Mat', 'Non Slip Mat fot Charola de servicio (Guamuchil) - 39cm D x 3cm H', (SELECT id FROM areas WHERE name = 'Lobby Lounge' LIMIT 1), 'Oaxifornia', 'Oaxifornia', NULL, 'UTENSILIOS', 24),
  ('205', 'TPZT017', 'Beverage Tray', 'Charola de servicio (Guamuchil) - 39cm D x 3cm H', (SELECT id FROM areas WHERE name = 'Lobby Lounge' LIMIT 1), 'Oaxifornia', 'Oaxifornia', NULL, 'UTENSILIOS', 24),
  ('179', '69132-321498-47022', 'Flower Vase', 'Triu Gold - Vase, 8 2/3 inch - Material: Borosilicate Glass - Decor: Copper', (SELECT id FROM areas WHERE name = 'Lobby Lounge' LIMIT 1), 'Rosenthal', 'Rosenthal Sambonet Paderno', NULL, 'UTENSILIOS', 12),
  ('194', '5977RW003', 'Stand for Calasio bucket', 'Wine/Champagne Bucket Stand D 11" H 25 1/4"', (SELECT id FROM areas WHERE name = 'Lobby Lounge' LIMIT 1), 'Steelite', 'Steelite', NULL, 'UTENSILIOS', 8),
  ('192', 'TR28-S18', 'Serving Tray', 'Decorative Square Tray with Handles – Large 18”L X 18"W X 2”H', (SELECT id FROM areas WHERE name = 'Lobby Lounge' LIMIT 1), 'Calaisio', 'Calaisio', NULL, 'UTENSILIOS', 12),
  ('190', 'HTZ8-ORI', 'Coffee Cup', 'Taza - 8oz - Orizaba', (SELECT id FROM areas WHERE name = 'Lobby Lounge' LIMIT 1), 'Hacha', 'Hacha', NULL, 'LOZA', 87),
  ('191', 'HPTZ13-ORI', 'Coffee Saucer', 'Plato Taza - Diameter: 13cm - 5" - Color: Orizaba', (SELECT id FROM areas WHERE name = 'Lobby Lounge' LIMIT 1), 'Hacha', 'Hacha', NULL, 'LOZA', 87),
  ('196', '49206Q202', 'Water Glass', 'Tumbler, 12.625 oz, 3.125" x 4.5", Florian, Blue, Bormioli Rocco, Glass (minimum = case quantity) (NON STOCK item)', (SELECT id FROM areas WHERE name = 'Lobby Lounge' LIMIT 1), 'Steelite', 'Steelite', NULL, 'CRISTALERIA', 58),
  ('180', '527 - 1402', 'Napkin', 'Jackie - Color: ECRU - 50% Cotton – 35% Linen – 15% Polyester
527 JACKIE - 56x56 cm', (SELECT id FROM areas WHERE name = 'Lobby Lounge' LIMIT 1), 'Casa Rovea', 'Casa Rovea', NULL, 'BLANCOS', 116),
  ('193', 'WCH2-GL', 'Bucket', 'Wine and Champagne - Holder With Galvanized Bucket - 11” Diameter x 10”H', (SELECT id FROM areas WHERE name = 'Lobby Lounge' LIMIT 1), 'Calaisio', 'Calaisio', NULL, 'UTENSILIOS', 8),
  ('195', '656390', 'Water Jug', 'YLI Collection Jug, 27 oz., 4" dia. x 7.5"H, alabaster white, safe for oven, microwave, freezer & dishwasher, Made in France, Designed by Ferreol Babin (Ship from France)', (SELECT id FROM areas WHERE name = 'Lobby Lounge' LIMIT 1), 'Revol', 'Proepta', NULL, 'UTENSILIOS', 12),
  ('182', 'B-CV74015', 'Appetizer Knife', '(PROEPTA) - Infinito Copper - Stainless Steel - Dinner Knife', (SELECT id FROM areas WHERE name = 'Lobby Lounge' LIMIT 1), 'Abert', 'Proepta', NULL, 'PLAQUE', 44),
  ('184', 'B-CV74021', 'Coffee / Tea Spoon', '(PROEPTA) - Infinito Copper - Stainless Steel - Coffee Spoon', (SELECT id FROM areas WHERE name = 'Lobby Lounge' LIMIT 1), 'Abert', 'Proepta', NULL, 'PLAQUE', 72),
  ('181', 'B-CV74012', 'Appetizer Fork', '(PROEPTA) - Infinito Copper - Stainless Steel - Dessert Fork', (SELECT id FROM areas WHERE name = 'Lobby Lounge' LIMIT 1), 'Abert', 'Proepta', NULL, 'PLAQUE', 44),
  ('183', 'B-CV74011', 'Appetizer/Dessert Spoon', '(PROEPTA) - Infinito Copper - Stainless Steel - Dessert Spoon', (SELECT id FROM areas WHERE name = 'Lobby Lounge' LIMIT 1), 'Abert', 'Proepta', NULL, 'PLAQUE', 44),
  ('197', 'Z7310003', 'AP Wine 14 oz', 'Wine Glass, 14.25 oz., 3.5"W x 9.75"H, crystalline, Stolzle, Symphony (minimum = case quantity, 24 per case) (STOCK item)', (SELECT id FROM areas WHERE name = 'Lobby Lounge' LIMIT 1), 'Stolzle', 'Proepta', NULL, 'CRISTALERIA', 29),
  ('204', '1200019', 'Beer Glass', 'Beer - (10 1/4 oz)', (SELECT id FROM areas WHERE name = 'Lobby Lounge' LIMIT 1), 'Stolzle', 'Proepta', NULL, 'CRISTALERIA', 24),
  ('198', 'Z7310029', 'Champagne Glass', 'Champagne / Flute Glass, 10.25 oz., 3.25"W x 10.25"H, crystalline, Stolzle, Symphony (minimum = case quantity, 24 per case) (STOCK item)', (SELECT id FROM areas WHERE name = 'Lobby Lounge' LIMIT 1), 'Stolzle', 'Proepta', NULL, 'CRISTALERIA', 24),
  ('187', 'HAZC-ORI', 'Sugar', 'Sugar Bowl - Ramekin Diameter: 7 cm -Orizaba', (SELECT id FROM areas WHERE name = 'Lobby Lounge' LIMIT 1), 'Hacha', 'Hacha', NULL, 'LOZA', 12),
  ('203', 'Z3460025', 'Coupe Glass', 'Cocktail Glass, 10.75 oz., 4.5"W x 6.75"H, crystalline, Stolzle, Kyoto (minimum = case quantity, 24 per case) (STOCK item)', (SELECT id FROM areas WHERE name = 'Lobby Lounge' LIMIT 1), 'Stolzle', 'Proepta', NULL, 'CRISTALERIA', 24),
  ('202', 'Z3460005', 'Nick and Nora', 'Nick & Nora Glass, 6-1/2 oz., 3-1/2" x 6 3/8", Kyoto, Stolzle, Crystalline (minimum = case quantity, 24 per case) (Stock Item)', (SELECT id FROM areas WHERE name = 'Lobby Lounge' LIMIT 1), 'Stolzle', 'Proepta', NULL, 'CRISALERIA', 24),
  ('200', 'Z3500012DS1620', 'Hi Ball Glass', 'Long Drink Glass, 13-3/4 oz., 2-1/2" x 6-1/2", Soho, Stolzle, Crystalline (minimum = case quantity, 24 per case) (Stock Item)', (SELECT id FROM areas WHERE name = 'Lobby Lounge' LIMIT 1), 'Stolzle', 'Proepta', NULL, 'CRISTALERIA', 24),
  ('201', 'Z3500015DS1620', 'Rock Glass', 'Whiskey Glass, 10-3/4 oz., 3-1/4" x 3-3/4", Soho, Stolzle, Crystalline (minimum = case quantity, 24 per case) (Stock Item)', (SELECT id FROM areas WHERE name = 'Lobby Lounge' LIMIT 1), 'Stolzle', 'Proepta', NULL, 'CRISTALERIA', 24),
  ('186', 'HCR8-ORI', 'Creamer', 'Cremera - 8oz - Orizaba', (SELECT id FROM areas WHERE name = 'Lobby Lounge' LIMIT 1), 'Hacha', 'Hacha', NULL, 'LOZA', 12),
  ('188', 'HTZ2-ORI', 'Espresso Cup', 'Taza Espresso - 2-3oz - Orizaba', (SELECT id FROM areas WHERE name = 'Lobby Lounge' LIMIT 1), 'Hacha', 'Hacha', NULL, 'LOZA', 15),
  ('189', 'HPTZ10-ORI', 'Espresso Saucer', 'Plato Mini - Diameter: 10cm - 3" - Color: Orizaba', (SELECT id FROM areas WHERE name = 'Lobby Lounge' LIMIT 1), 'Hacha', 'Hacha', NULL, 'LOZA', 15),
  ('199', 'U1051', 'Specialty Champagne Glass', 'Chef & Sommelier Open Up 6.75 oz. Flute Glass by Arc Cardinal - 24/Case', (SELECT id FROM areas WHERE name = 'Lobby Lounge' LIMIT 1), 'Cardinal', 'Proepta', NULL, 'CRISTALERIA', 24),
  ('185', 'B-CV74022', 'Demitasse Spoon', '(PROEPTA) - Infinito Copper - Stainless Steel - Demitasse Spoon', (SELECT id FROM areas WHERE name = 'Lobby Lounge' LIMIT 1), 'Abert', 'Proepta', NULL, 'PLAQUE', 15),
  ('438', '200666F MB', 'Palace wine cooler stand materic bronze', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Mepra', 'Proepta', 'Buckets for Stand', 'UTENSILIOS', 20),
  ('357', NULL, 'AURORE Portable and elegant wireless lamp in a warm terracotta tone.', 'Height: 30 cm
Lampshade diameter: 18 cm', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Table Lamp', NULL, 35),
  ('437', '200668 MB', 'Giotto wine cooler 24 cm, .75L materic bronze', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Mepra', 'Proepta', 'Tea Pot', 'UTENSILIOS', 28),
  ('361', NULL, 'Napkin napkin made from a linen/cotton blend. Features a refined beige tone with contrasting terracotta edging.', '45x45', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 1650),
  ('414', NULL, 'Water glass featuring a two-tone design in clear and teal. A vibrant accent', 'Breakfst/Lunch', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 600),
  ('363', NULL, 'Ceramic tea cup with matching saucer in quartz glaze. Suitable for both tea and coffee service.', 'Tea / Coffe Service', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 525),
  ('416', NULL, 'Amber-toned water glass. Warm and earthy', 'Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 600),
  ('364', NULL, 'Versatile ceramic mug in a quartz finish, perfect for serving tea or coffee', 'Tea / Coffe Service', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 535),
  ('388', NULL, 'Classic ceramic plate in a warm sand colour handcrafted by local artisans in Mexico.', 'Breakfast/Lunch', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 500),
  ('374', NULL, 'Artisan-crafted ceramic bowl with a scalloped design. Handmade by local makers in Mexico', 'Breakfast/Lunch', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 400),
  ('343', NULL, 'Steak knife with a natural bamboo handle', '23 cm', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom Silverware', NULL, 377),
  ('337', NULL, 'Dinner knife with a natural bamboo handle', '23cm', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom Silverware', NULL, 377),
  ('338', NULL, 'Side Knife with a natural bamboo handle', '20 cm', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom Silverware', NULL, 377),
  ('389', NULL, 'Lola Starter Plate with scalloped rim, handmade by local artisans in Mexico.', 'Lunch/Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 250),
  ('382', NULL, 'Ceramic dinner plate featuring the Ondas (wave) design in a rich teal glaze. Handmade by artisans in South America.', 'Lunch', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 250),
  ('354', NULL, 'Textured placemat featuring a wave-inspired design in natural fiber with navy accents. Handcrafted in South America.', '35cm', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom Placemat Dinner', NULL, 250),
  ('369', NULL, 'Functional stacking bowl with a warm Terre Cuite glaze. Ideal for cereal or fruit.', 'Breakfast', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 600),
  ('387', NULL, 'Classic ceramic bread/small plate in a warm sand colour handcrafted by local artisans in Mexico.', 'Breakfast/Lunch', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 500),
  ('335', NULL, 'Side fork with a  natural bamboo handle', '19cm', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom Silverware', NULL, 377),
  ('336', NULL, 'Dinner fork with a natural bamboo handle', '22 cm', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom Silverware', NULL, 377),
  ('339', NULL, 'Soup Spoon wit a a natural bamboo handle', '22cm', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom Silverware', NULL, 377),
  ('341', NULL, 'Dessert spoon with a a natural bamboo handle', '19 cm', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom Silverware', NULL, 377),
  ('441', NULL, NULL, NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Pantheon', 'Pantheon', '36" wooden bag stand', 'UTENSILIOS', 28),
  ('373', NULL, 'Organic-shaped ceramic bowl in Wabi Blanc glaze.', 'Buffet Display/ Breakfast', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 200),
  ('383', NULL, 'Ceramic dinner plate with a Helecho (fern) design in deep teal. Handmade in South America.', 'Breakfast', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 250),
  ('342', NULL, 'English tea spoon with a natural bamboo handle', '13 cm', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom Silverware', NULL, 377),
  ('362', NULL, 'Elegant ceramic espresso cup and matching saucer in a quartz finish.', 'Tea / Coffe Service', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 265),
  ('353', NULL, 'Handwoven placemat in a delicate flower shape, made from natural Iraca palm. A beautiful artisanal touch to the table. crafted in South America.', '35cm', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom Placemat Lunch', NULL, 250),
  ('367', NULL, 'Small Domus-style French press with a hand-woven wicker handle.', 'Tea / Coffe Service', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 50),
  ('386', NULL, 'Starter plate in the Flor pattern with a rich rust red finish. Perfect for light courses, handmade in South America.', 'Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 200),
  ('399', NULL, 'Stand, Handmade from original Colombian black clay with rattan sleve, crafted by local artisans in South America. Ideal for presenting finger foods with rustic elegance.', 'Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 50),
  ('398', NULL, 'Silver-plated cup in a classic julep shape for serving chips or fries', 'Lunch/Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 100),
  ('372', NULL, 'Softly rounded ceramic bowl in a subtle Pêche Blanche (white peach) glaze.', 'Breakfast', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 200),
  ('375', NULL, 'Classic ceramic coupe bowl in a warm sand colour handcrafted by local artisans in Mexico.', 'Lunch/Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 200),
  ('384', NULL, 'ceramic dinner plate in Cascos design with a rustic red glaze. Handmade by artisans in South America.', 'Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 250),
  ('371', NULL, 'Small ceramic bowl with a stackable design and matte Craie glaze.', 'Breakfast', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 500),
  ('423', 'RL-7116-NB', 'Tortilla Bowl With  Marble Lid, 18 X 5 cm Tall, Marble Black/White Mexican', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Rolikka', 'Proepta', 'Bread Bowl and Tortillera', 'UTENSILIOS', 72),
  ('385', NULL, 'Starter plate with a delicate Flor design in teal glaze. Handmade in South America', 'Breakfast/Lunch', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 300),
  ('439', 'TPZT017', 'Charola de servicio (Guamuchil) - 39cm D x 3cm H', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Oaxifornia', 'Oaxifornia', 'Beverage Tray', 'UTENSILIOS', 38),
  ('490', 'SET_CSW', 'Walnut Porcelain Condiment Set - 3.9 x 10.2 x 2.5 - Features: Contains: 3 x BU_PCD001 + 1 x BU_PCP011; Each pot holds liquid 85 ml (approx 3 oz) - Stock Tier: Silver', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Tray with Condiment Dishes', 'UTENSILIOS', 40),
  ('377', NULL, 'Small artisan ramekin, handmade in Mexico.', 'Breakfast/Lunch/Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 400),
  ('379', NULL, 'Medium sized ceramic serving bowl with a scalloped rim, handmade by local artisans in Mexico. Finished in a warm terracotta colour.', 'Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 100),
  ('454', '200443 MB', 'Stile coaster / bread tray materic bronze 12 cm', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Mepra', 'Proepta', 'Wine Coaster', 'UTENSILIOS', 40),
  ('421', 'SET_CSO', 'Oak Porcelain Condiment Set
Mat Oak, Oiled and Porcelain
Dim 260 × 100 × 65 mm
10.2 × 3.9 × 2.5 in
Vol 85 ml
3 oz', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Open Jam Presentation', 'UTENSILIOS', 40),
  ('356', NULL, 'Delicate spiral-shaped napkin ring with a floral design. Handmade by artisans in South America, perfect for adding a subtle decorative element.', '12cm', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Napkins ring lunch', NULL, 150),
  ('376', NULL, 'Artisan-crafted ceramic platewith a generous wide rim, andmade in Mexico', 'Lunch/Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 200),
  ('355', NULL, 'Jaguar shaped napkin ring  adding a unique and whimsical detail to table settings.', 'l:10 x w:3 x h:8 cm', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Napkins ring dinner', NULL, 175),
  ('366', NULL, 'Matching ceramic creamer in Tamaris glaze. Complements the sugar bowl with its soft pink tone and artisanal crackle detail.', 'Tea / Coffe Service', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 150),
  ('349', '1170500053U', 'Butter Knife', 'utter Knife Gualtiero Marchesi St. steel', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Broggi', 'Proepta', NULL, 'PLAQUE', 323),
  ('417', NULL, 'ceramic carafe inspired by the traditional Cántaro. Perfect for serving water or juice with artisanal flair. handmade local artisans in Mexico', 'Breakfst/Lunch/Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 80),
  ('483', 'BU_OP1121', 'Tilt Large Round Oak Plinth

Mat Oak, Oiled
Dim 320ø × 25 mm
11.6ø × 1 in_x000D_', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Wooden Plate Big', 'UTENSILIOS', 24),
  ('442', '26.112412', 'Zwiesel Glass Pure Sauvignon Blanc Glass, (0) 13.8 oz., dishwasher safe, lead free, sheer rim, crystal glass (0.34 each weight) (Per case = 6 each) (ecomm dealers 4 case increments; special box will be added cost)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Fortessa', 'Hotel Depot', 'AP Wine Glass 14oz', 'CRISTALERIA', 264),
  ('418', NULL, 'A bottle-shaped carafe perfect for water or juice,', 'Breakfst/Lunch/Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 35),
  ('334', NULL, 'Chopstick rest shaped like a  river pebble. Minimalist and organic in design', '25 cm', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom Silverware', NULL, 60),
  ('360', NULL, 'Handmade ceramic vase crafted by local artisans in Mexico. Larger vase to add character .', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom Décor', NULL, 3),
  ('378', NULL, 'Tapas bowl in a rich rust red finish (Cascos), handmade in South America. Small bowl / Individual tapas portions', 'Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 200),
  ('496', 'BW_OR2103', 'Large Rustic Olive Wood Bowl
Mat Olive Wood, Oiled
Dim 290ø × 100 mm
1.4ø × 3.9 in', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Wooden Bowl 1', 'UTENSILIOS', 6),
  ('381', NULL, 'Large flat plate in warm terracotta, ideal for pizza. Handmade by local artisans in Mexico', 'Lunch/Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 150),
  ('410', NULL, 'Cake stand crafted from smooth champagne-toned marble, Perfect for layering the buffet display.', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 15),
  ('390', NULL, 'ceramic bread plate with a teal rim detail. Handcrafted by artisans in South America', 'Lunch', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 200),
  ('566', 'VM5280BK-12', 'Versa-Mat® Bar Mat Tile/Shelf Liner, 12" x 12", interlocking, easy to cut, raised surface for airflow, dishwasher safe, rubber, black, NSF', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'San Jamar', 'Sandolat', 'Bar Mat', 'UTENSILIOS', 36),
  ('489', 'BU_SF21346', 'Alto Walnut Three-Tier cake stand - 12.8 x 12.8 x 22.9 - Stock Tier: Gold', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Display Stand', 'UTENSILIOS', 4),
  ('365', NULL, 'Ceramic sugar bowl featuring a subtle antique pink Tamaris glaze with a finely crackled finish.', 'Tea / Coffe Service', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 100),
  ('467', 'SET_MJDTR003', 'Tilt Mini Juice Dispenser
+ Stainless Steel Mini Triple Riser Set

 Mat Glass, Soda Lime and Stainless Steel
 Dim 383 × 125 × 417 mm
15 × 5 × 16.4 in
 Vol Each jar holds 3 litres
Approx. 101 fl oz', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Juice Service Station', 'UTENSILIOS', 2),
  ('497', 'BW_OR2102', 'Medium Rustic Olive Wood Bowl
Mat Olive Wood, Oiled
Dim 250ø × 85 mm
9.8ø × 3.3 in', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Wooden Bowl 2', 'UTENSILIOS', 6),
  ('358', NULL, 'Handmade ceramic vase crafted by local artisans in Mexico. A unique decorative piece with artisanal charm.', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom Décor', NULL, 20),
  ('435', 'ADSEAC14', 'Seafood Tray, 128 oz., 14" dia. x 2-1/2"H, round, double-wall, hand-wash only, hammered aluminum, copper (hand wash only)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'American Metalcraft', 'Equipo Hotel', 'Seafood Tray', 'UTENSILIOS', 24),
  ('476', 'BU_BD1ONL', 'Flow Oak Single Bread Box
 •
Mat Oak, Lacquered and Acrylic
Dim 349 × 176 × 190mm
13.7 × 6.9 × 7.4 in', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Single Bread Box', 'UTENSILIOS', 6),
  ('370', NULL, 'Minimalist ceramic eggcup finished in a soft Craie (chalk) glaze.', 'Breakfast', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 200),
  ('392', NULL, 'Oval ceramic platter with the Cascos design featured on the rim, finished in a rich rust red glaze. Handmade by artisans in South America.', 'Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 50),
  ('393', NULL, 'Oval ceramic platter with the Helecho design featured on the rim, finished in a deep teal glaze. Handmade by artisans in South America.', 'Lunch', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 50),
  ('408', NULL, 'Large Gavivi Mango Wood Stand. Elevated display stand crafted from solid mango wood.', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 15),
  ('359', NULL, 'Handmade ceramic vase crafted by local artisans in Mexico. Medium sized vase designed for buffet or larger tables. Adds height to larger settings.', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom Décor', NULL, 5),
  ('508', 'SET_GJO01', 'Tilt Oak Mini Glass Jar Set. Mini Glass Jar, lids and  triple base', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Mini Glass Jar Set', 'UTENSILIOS', 6),
  ('415', NULL, 'Juice Glasses', 'Breakfast', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 280),
  ('419', NULL, 'large or Juices display', 'Buffet', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 40),
  ('403', NULL, 'Buffet Diplay Bowl, handmade by local artisans in Mexico. Large. perfect for layering the buffet table', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 30),
  ('394', NULL, 'Organic-shaped oval platter with a warm terracotta finish. Handmade by local artisans in Mexico', 'Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 50),
  ('397', NULL, 'Alto Plano Ramikin for butter  handmade local artisans in Mexico', 'Breakfast/Lunch/Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 200),
  ('412', NULL, 'a small marble bowl, ideal for  condiments', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 50),
  ('512', '660143', '(B1+BM1231COCV-283-2593) Cocotte, 118 oz., 12-1/4"Dia. x 3-1/4"H, round, induction ready, with porcelain lid, oven, microwave, freezer & dishwasher safe, porcelain, alabaster white, Bombance collection, (US stocked item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Revol', 'Proepta', 'Casserole Dish 2', 'UTENSILIOS', 6),
  ('513', '660144', '(B1+BM1231COCV-286-2593) Cocotte, 118 oz., 12-1/4"Dia. x 3-1/4"H, round, induction ready, with porcelain lid, oven, microwave, freezer & dishwasher safe, porcelain, cloud gray, Bombance collection, (US stocked item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Revol', 'Proepta', 'Casserole Dish 2', 'UTENSILIOS', 6),
  ('434', 'ADSEAC12', 'Seafood Tray, 80 oz., 12" dia. x 2-1/4"H, round, double-wall, hand-wash only, hammered aluminum, copper (hand wash only)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'American Metalcraft', 'Equipo Hotel', 'Seafood Tray', 'UTENSILIOS', 24),
  ('409', NULL, 'Small Gavivi Mango Wood Stand Perfect for layering the buffet display.', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 15),
  ('380', NULL, 'Oaxaca  Bowl, ceramic bowl handmade local artisans in Mexico', 'Lunch / Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 100),
  ('468', 'SET_MJD', 'Tilt Mini Juice Dispenser

Mat Glass, Soda Lime
and Stainless Steel
Dim 125ø × 322 mm
4.92ø × 12.68 in
Vol Holds 3 litres
(approx. 101 fl oz)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Extra Glass Containers for Juice Dispenser', 'UTENSILIOS', 6),
  ('426', 'HCHO25-AGA', 'Charola Rectangular 30 cm - Color Orizaba', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Hacha', 'Hacha', 'Rectangular Tray 30 cm', 'UTENSILIOS', 54),
  ('455', 'BU_LH006', 'Flow Copper PVD Stainless Steel Label Holder - Dim 1.2x1.5"', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Lable Holder', 'UTENSILIOS', 60),
  ('402', NULL, 'Serving Bowl with scalloped edge, handmade by local artisans in Mexico.', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 50),
  ('395', NULL, 'Oval platter with a natural, irregular shape and soft sand-toned glaze. Crafted by hand in Mexico', 'Lunch/Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 50),
  ('504', 'BU_TG011', 'Tilt Oak Tongs
Mat Oak, Oiled
Dim 300 × 40 × 25 mm
11.81 × 1.57 × 0.98 in', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Wooden Tongs', 'UTENSILIOS', 36),
  ('486', 'QU01', 'Oval Mini Crock

L 7 1/4" W 4 7/8"
H 1 7/8" (14 3/4 oz)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Steelite', 'Steelite', 'Miniature 3 Cast Iron', 'UTENSILIOS', 72),
  ('391', NULL, 'Bread plate in warm terracotta, handmade by local artisans in Mexico', 'Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 200),
  ('516', '660153', '(B1+BM1229COCVV-283-2593) Cocotte, 135 oz., 11-1/2"Dia. x 3-3/4"H, round, induction ready, with glass lid, oven, microwave, freezer & dishwasher safe, porcelain, albaster white, Bombance collection, (US stocked item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Revol', 'Proepta', 'Casserole Dish 3', 'UTENSILIOS', 6),
  ('517', '660154', '(B1+BM1229COCVV-286-2593) Cocotte, 135 oz., 11-1/2"Dia. x 3-3/4"H, round, induction ready, with glass lid, oven, microwave, freezer & dishwasher safe, porcelain, cloud gray, Bombance collection, (US stocked item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Revol', 'Proepta', 'Casserole Dish 3', 'UTENSILIOS', 6),
  ('487', 'QU009', 'Round Mini Crock

L 6 1/8" W 4 3/4"
H 1 3/4" (11 1/2 oz)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Steelite', 'Steelite', 'Miniature 3 Cast Iron', 'UTENSILIOS', 72),
  ('440', NULL, NULL, NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Pantheon', 'Pantheon', 'Wooden Tray Jack', 'UTENSILIOS', 12),
  ('368', NULL, 'Modern teapot crafted from heat-resistant glass and stainless steel. Includes a built-in strainer for loose-leaf tea brewing.', 'Tea / Coffe Service', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 49),
  ('493', 'BU_RR6103', 'Tilt Tall Stainless Steel Frame •
Mat Stainless Steel
Dim 218ø × 265 mm
8.6ø × 10.4 in', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Riser 1', 'UTENSILIOS', 6),
  ('424', 'HBW25-ORI', 'Charola Ovalada mediana 25 cm Color Tulum', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Hacha', 'Hacha', 'Oval Tray', 'UTENSILIOS', 54),
  ('425', 'HCHO25-TUL', 'Charola Ovalada mediana 25 cm Color Agave', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Hacha', 'Hacha', 'Oval Tray', 'UTENSILIOS', 54),
  ('411', NULL, 'Rustic cake stand made from warm-toned mango wood.', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 10),
  ('396', NULL, 'Seving Platter Rectangular small', 'Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 50),
  ('505', 'BU_SP011', 'Tilt Oak Spoon •
Mat Oak, Oiled
Dim 245 × 80 × 38 mm
9.6 × 3.1 × 1.5', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Wooden Spoon', 'UTENSILIOS', 24),
  ('351', NULL, 'Salt Mill Bistro set', 'brown', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Peugeot', 'Peugeot', NULL, 'UTENSILIOS', 36),
  ('352', NULL, 'Pepper Mill Bistro set', 'beige', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Peugeot', 'Peugeot', NULL, 'UTENSILIOS', 36),
  ('575', 'Custom', 'Rectangular Wood tray 11 x 9"', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Oaxifornia', 'Oaxifornia', 'Marking Tray', 'UTENSILIOS', 24),
  ('401', NULL, 'Ceramic small jug for sauces', 'Lunch/Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 70),
  ('488', 'HPTC15-ORI', 'Portacucharon diametro 16 cm / color orizaba', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Hacha', 'Hacha', 'Spoon Rest Hacha', 'UTENSILIOS', 58),
  ('471', 'BU_CS006', 'Medium Oak Cake Stand - 12.6 x 12.6 x 5.12 - Stock Tier: Gold', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Medium Cake Stand', 'UTENSILIOS', 6),
  ('510', '660151', '(B1+BM1226COCVV-283-2593) Cocotte, 135 oz., 10-1/4"Dia. x 4-3/4"H, round, with glass lid, induction ready, microwave, freezer & dishwasher safe, porcelain, alabaster white, Bombance collection, (US stocked item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Revol', 'Proepta', 'Casserole Dish 1', 'UTENSILIOS', 6),
  ('511', '660152', '(B1+BM1226COCVV-286-2593) Cocotte, 135 oz., 10-1/4"Dia. x 4-3/4"H, round, induction ready, with glass lid, oven, microwave, freezer & dishwasher safe, porcelain, cloud gray, Bombance collection, (US stocked item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Revol', 'Proepta', 'Casserole Dish 1', 'UTENSILIOS', 6),
  ('482', 'BU_OP1109', 'Tilt Round Oak Plinth

 Mat Oak, Oiled
 Dim 218ø × 25 mm
8.6ø × 1 in', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Wooden Plate Small', 'UTENSILIOS', 24),
  ('344', NULL, 'Serving Spoon & Fork a natural bamboo handle', '26cm', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom Silverware', NULL, 35),
  ('507', 'BU_OL001', 'Tilt Oak Jar Lid•
Mat Oak, Oiled
Dim 207ø × 30 mm
8.1ø × 1.1 in', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Oak Jar Lid', 'UTENSILIOS', 9),
  ('404', NULL, 'Buffet Diplay Bowl, handmade by local artisans in Mexico. Medium. perfect for layering the buffet table', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 30),
  ('494', 'BU_RR6102', 'Tilt Medium Stainless Steel Frame •
Mat Stainless Steel
Dim 218ø × 180 mm
8.6ø × 7 in', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Riser 2', 'UTENSILIOS', 6),
  ('444', '26.112415', 'Zwiesel Glass Pure Champagne Flute Glass, (7) 7.1 oz., dishwasher safe, lead free, sheer rim, crystal glass (0.3 each weight) (Per case = 6 each) (ecomm dealers 4 case increments; special box will be added cost)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Fortessa', 'Hotel Depot', 'Champagne Glass', 'CRISTALERIA', 106),
  ('443', '26.11242', 'Zwiesel Glass Pure Bordeaux Glass, (130) 23 oz., dishwasher safe, lead free, sheer rim, crystal glass (0.41 each weight) (Per case = 6 each) (ecomm dealers 4 case increments; special box will be added cost)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Fortessa', 'Hotel Depot', 'Specialty Wine Glass 23oz', 'CRISTALERIA', 106),
  ('340', NULL, 'DEMI-TASSE SPOON for Espresso', '10cm', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom Silverware', NULL, 350),
  ('461', '122 05 02 710', 'Serving Spoon 34 cm', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Broggi', 'Proepta', 'Serving Spoons', 'UTENSILIOS', 36),
  ('552', 'RA03', 'Cutting Board, 24"W x 18"D x 2-1/4" thick, edge grain construction, Northern Hard Rock Maple, with Oil Finish, hand grips on each end, reversible', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'John Boos', 'John Boos', 'Cutting Board', 'UTENSILIOS', 4),
  ('436', '4952Q805', 'Oxford Bottle, 1.0 qt, 3.5" x 12.5", Swing Bottle, Bottle, Bormioli Rocco, Soda Lime (minimum = case quantity, 6 each per case) (STOCK item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Steelite', 'Steelite', 'Water Bottle', 'UTENSILIOS', 94),
  ('405', NULL, 'Buffet Diplay Bowl, handmade by local artisans in Mexico. Small. perfect for layering the buffet table', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 30),
  ('429', 'HSC9-AGA', 'Charola Ovalada para sugar Creamer - Charola Ovalo Chica 17 cm - Color Orizaba', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Hacha', 'Hacha', 'Sugar and Creamer Tray', 'UTENSILIOS', 47),
  ('445', 'Z1200019', 'Beer Glass, 14 oz., 3" x 7-1/2", stemmed, Stolzle, Stemmed Beer, Soda Lime (minimum = case quantity, 24 per case) (Stock Item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Stolzle', 'Proepta', 'Beer Glass', 'CRISTALERIA', 128),
  ('514', '660160', '(A1+BM1334-283-2593) Dish, 111-1/2 oz., 13-1/2" x 9-3/4" x 2-1/2"H, rectangular, handled, induction ready, oven, microwave, freezer & dishwasher safe, porcelain, alabaster white, Bombance, (US stocked item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Revol', 'Proepta', 'Rectangular Dish', 'UTENSILIOS', 6),
  ('501', 'BW_BC004', 'Tilt Coupe Large Bowl

Mat Fine Bone China
Dim 364ø × 88 mm
14.33 × 14.33 × 3.46 in
Vol 7.1 litres
Approx. 240 fl oz', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'China Bowl 1', 'UTENSILIOS', 6),
  ('431', 'HRMK7-ORI', 'Cremera - 8oz - Color Orizaba', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Hacha', 'Hacha', 'Creamer 8 oz', 'UTENSILIOS', 47),
  ('457', '305 05 81 539', '18 cm Pastry / bread tong', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Broggi', 'Proepta', 'Serving Tongs', 'UTENSILIOS', 36),
  ('522', '1850-4-60HL', 'Cold Condiment Display, 16"W x 6"D x 4"H, (3) 16 oz., round glass jars with silicone lined stainless steel hinged lids, cooling pucks, rectangular bamboo base', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cal-Mil', 'Equipo Hotel', 'Condiment Caddy', 'UTENSILIOS', 4),
  ('420', 'BW_OBS', 'Small Olive Wood Bowl Mat Olive Wood, Oiled, Dim 115ø × 38 mm, 4.5ø × 1.5 in', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Butter Presentation', 'UTENSILIOS', 30),
  ('479', 'BU_RS002', 'Flow Oak 1.1 Two-Tier Stand
 •
Mat Oak, Oiled
Dim 574 × 323 × 441 mm
22.6 × 12.7 × 17.4 in
MOQ 1
Note Includes 2 × BU_FR001 Trays
Assembly required', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Two-Tier Stand Long', 'UTENSILIOS', 1),
  ('503', 'BW_BC003', 'Tilt Coupe Large Platter
Mat Fine Bone China
Dim 364ø × 46 mm
14.33 × 14.33 × 1.81 in
Vol 3.4 litres
Approx. 114 fl oz', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'China Platter 1', 'UTENSILIOS', 6),
  ('413', NULL, 'Cheese Knife Set', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 10),
  ('519', 'PORTHOLE', 'The Porthole is a simple, beautiful infusion vessel designed by Martin Kastner 7" x 7" x 2" (17cm x 17cm x 5cm) 13 fl oz (390ml)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Crucial Detail', 'Abastohotel', 'Porthole', 'UTENSILIOS', 6),
  ('523', '20045622 MB', 'Stile napkin holder 22X22 cm materic bronze', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Mepra', 'Mepsa', 'Napkin Holder', 'UTENSILIOS', 2),
  ('525', 'RBB02', 'Band, 1/2"D, silicone, blue, Arcoroc, Mix (fits OL166, OL167) (stock item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cardinal', 'Proepta', 'Silicone Bands', 'UTENSILIOS', 0),
  ('526', 'RBP01', 'Band, 1/2"D, silicone, pink, Arcoroc, Mix (fits OL166, OL167) (stock item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cardinal', 'Proepta', 'Silicone Bands', 'UTENSILIOS', 0),
  ('527', 'RBY03', 'Band, 1/2"D, silicone, yellow, Arcoroc, Mix (fits OL166, OL167) (stock item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cardinal', 'Proepta', 'Silicone Bands', 'UTENSILIOS', 0),
  ('528', 'RBDG3', 'Band, 1/2"D, silicone, green, Arcoroc, Mix (fits OL166, OL167) (stock item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cardinal', 'Proepta', 'Silicone Bands', 'UTENSILIOS', 0),
  ('529', 'RBO05', 'Band, 1/2"D, silicone, orange, Arcoroc, Mix (fits OL166, OL167) (stock item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cardinal', 'Proepta', 'Silicone Bands', 'UTENSILIOS', 0),
  ('530', 'RBW06', 'Band, 1/2"D, silicone, white, Arcoroc, Mix (fits OL166, OL167) (stock item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cardinal', 'Proepta', 'Silicone Bands', 'UTENSILIOS', 0),
  ('531', 'RBR09', 'Band, 1/2"D, silicone, red, Arcoroc, Mix (fits OL166, OL167) (stock item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cardinal', 'Proepta', 'Silicone Bands', 'UTENSILIOS', 0),
  ('532', 'RBB06', 'Band, 1/2"D, silicone, black, Arcoroc, Mix (fits OL166, OL167) (stock item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cardinal', 'Proepta', 'Silicone Bands', 'UTENSILIOS', 0),
  ('533', 'RBBR7', 'Band, 1/2"D, silicone, brown, Arcoroc, Mix (fits OL166, OL167) (stock item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cardinal', 'Proepta', 'Silicone Bands', 'UTENSILIOS', 0),
  ('347', NULL, 'Olivewood Salad Servers', 'L 30cm X W 6.8cm X H 4cm', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom Silverware', NULL, 21),
  ('480', 'BU_FR001', 'Flow Oak 1.1 Tray
BU_FR001 •
Mat Oak, Oiled
Dim 530 × 325 × 40 mm
20.8 × 12.7 × 1.5 in', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Tray for Long Two Tier Stand', 'UTENSILIOS', 6),
  ('506', 'BU_GJ001', 'Tilt Glass Jar•
 Mat Glass, Soda Lime
 Dim 218ø × 165 mm
8.6ø × 6.5 in
 Vol 3 litres
Approx. 101 fl oz', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Glass Jar Big', 'UTENSILIOS', 18),
  ('477', 'BU_RS001', 'Flow Oak 1.2 Two-Tier Stand
 •
Mat Oak, Oiled
Dim 309 × 323 × 441 mm
12.1 × 9.1 × 17.4 in
MOQ 1
Note Includes 2 × BU_FR002 Trays
Assembly required', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Two Tier Stand', 'UTENSILIOS', 1),
  ('448', 'FP303', 'Aeris By Chef And Sommelier, Zephyr Coupe 7.5 Oz (H:6.5'''' T:4.13'''' M:4.38'''' B:''''), [''Aeris Crystalline''], (24 PC In A Case), Minimum Purchasing Unit CS', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cardinal', 'Proepta', 'Coupe', 'CRISTALERIA', 53),
  ('350', '305 45 91 797', 'Steak Knife', 'Java steak knife, Ivory Handle', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Broggi', 'Proepta', NULL, 'PLAQUE', 48),
  ('473', 'HBW30-ORI', 'Ensaladera Grande 30cm Orizaba', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Hacha', 'Hacha', 'Big Salad Bowl', 'LOZA', 15),
  ('499', 'BW_CO1903', 'Tilt Copper Bowl Large, Copper PVD and
Stainless Steel, 285ø × 100 mm
11.2ø × 3.9 in', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Copper Bowl 1', 'UTENSILIOS', 6),
  ('447', 'Z3460009', 'Water Tumbler Glass, 13-1/2 oz., 2-1/2" x 5-1/2", Kyoto, Stolzle, Crystalline (minimum = case quantity, 24 per case) (Stock Item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Stolzle', 'Proepta', 'Hi Ball Glass', 'CRISTALERIA', 106),
  ('478', 'BU_FR002', 'Flow Oak 1.2 Tray
 •
Mat Oak, Oiled
Dim 325 × 265 × 40 mm
12.7 × 10.4 × 1.5 in
MOQ 1
Note Compatible with all 1.2 products', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Tray for Two Tier Stand', 'UTENSILIOS', 6),
  ('430', 'HCHO17-ORI', 'Ramekin 7 cm - Color Orizaba', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Hacha', 'Hacha', 'Ramekin and Sugar Bowl', 'LOZA', 62),
  ('462', 'HPTC15-ORI', 'Portacucharon diametro 16 cm / color orizaba', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Hacha', 'Hacha', 'Spoon Rest Hacha', 'UTENSILIOS', 29),
  ('495', 'BU_RR6101', 'Tilt Low Stainless Steel Frame •
Mat Stainless Steel
Dim 218ø × 95 mm
8.6ø × 3.7 in', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Riser 3', 'UTENSILIOS', 3),
  ('469', 'BU_CS005', 'Small Oak Cake Stand
BU_CS005 •
Mat Oak, Lacquered
Dim 157ø × 80 mm
6.1ø × 3.1 in', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Small Cake Stand', 'UTENSILIOS', 6),
  ('345', NULL, 'Hand Carved Wood Serving Spoon', '23.5cm long', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom Silverware', NULL, 21),
  ('452', 'GM16P', 'Moscow Mule Mug, 16 oz., 3-1/4" dia. x 3-7/8"H, with brass handle, stainless steel, gold satin finish (hand wash only)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'American Metalcraft', 'Equipo Hotel', 'Moscow Mule', 'UTENSILIOS', 22),
  ('500', 'BW_CO1902', 'Tilt Copper Bowl Medium, Copper PVD and Stainless Steel, 250ø × 85 mm
9.8ø × 3.3 in', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Copper Bowl 2', 'UTENSILIOS', 6),
  ('518', '656412', '(A6+BOPCIPM9013) Lid Rest, 5"W x 3-1/2"D, x 2-3/4"H, stainless steel, to present lids at the above the cocotte, Bombance, (US stocked item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Revol', 'Proepta', 'Lid rest', 'UTENSILIOS', 12),
  ('515', '660161', '(A1+BM1334-286-7025) Dish, 111-1/2 oz., 13-1/2" x 9-3/4" x 2-1/2"H, rectangular, handled, oven, microwave, freezer & dishwasher safe, porcelain, cloud gray, Bombance, (Ship from France)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Revol', 'Proepta', 'Rectangular Dish', 'UTENSILIOS', 6),
  ('458', '122 05 01 442', 'Sauce Ladle 15.6 cm', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Broggi', 'Proepta', 'Sauce Ladle', 'UTENSILIOS', 24),
  ('502', 'BW_BC002', 'Tilt Coupe Bowl
Mat Fine Bone China
Dim 262ø × 88 mm
10.31 × 10.31 × 3.46 in
Vol 3.4 litres
Approx. 114 fl oz', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'China Bowl 2', 'UTENSILIOS', 6),
  ('450', 'P3882', 'Chef & Sommelier, Cabernet Cocktail 7.5 Oz (H:6.75'''' T:4.5'''' M:4.5'''' B:3.0''''), [''Krysta''], (12 PC In A Case), Minimum Purchasing Unit CS', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cardinal', 'Proepta', 'Martini', 'CRISTALERIA', 53),
  ('456', '903 05 81 004', '21 cm Hors d’oeuvre tongs', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Broggi', 'Proepta', 'Serving Tongs', 'UTENSILIOS', 36),
  ('472', 'BU_GC001', 'Large Glass Cloche - 11.61 x 11.61 x 5.71 - Features: Compatible with Large and Medium Cake Stands, Tilt Large Plinths - Stock Tier: Gold', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Medium Cake Stand Cloche', 'UTENSILIOS', 6),
  ('474', 'HCHR30-ORI', 'Charola Rectangular 30 cm Orizaba', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Hacha', 'Hacha', 'Rectangular Tray', 'LOZA', 15),
  ('475', 'HCHO30-ORI', 'Charola Ovalada Grande 30 cm Orizaba', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Hacha', 'Hacha', 'Oval Tray', 'LOZA', 15),
  ('427', 'HCHR30-ORI', 'Salsero 9 cm - Color Tulum', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Hacha', 'Hacha', 'Sauce Bowl', 'LOZA', 36),
  ('428', 'HSC9-TUL', 'Salsero 9 cm - Color Agave', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Hacha', 'Hacha', 'Sauce Bowl', 'LOZA', 36),
  ('346', NULL, 'Wooden Tongs', 'L25.4cm x W5cm', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom Silverware', NULL, 28),
  ('549', 'JP9730', 'Cash & Carry Big Squeeze™ Juice Press, 11-1/2" x 7" x 17", manual, accommodates 5-3/4" glass, 3-pinion design, hand wash only, 18/8 stainless steel cone, cast iron construction, black coated finish, NSF (1 each minimum order)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'TableCraft Products', 'Equipo Hotel', 'Juicer, Lever / Crank Type', 'UTENSILIOS', 2),
  ('484', 'DV.501128', 'GLASS MINI FLUTE PILSNER SAMPLER D&V TASTERZ 3OZ', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Fortessa', 'Hotel Depot', 'Miniature 1 Glass', 'CRISTALERIA', 72),
  ('481', 'BU_BR001', 'Flow Oak 1.1 Crumb Catcher
 •
Mat Oak, Oiled
Dim 530 × 325 × 35 mm
20.8 × 12.7 × 1.3 in', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Cutting Board', 'UTENSILIOS', 2),
  ('453', '49119Q924', 'Carafe, 1.25 qt, 3.875" x 10.875", Officina, Bormioli Rocco, Soda Lime (minimum = case quantity, 6 each per case) (STOCK item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Steelite', 'Steelite', 'Juice Jug', 'UTENSILIOS', 15),
  ('451', 'Q3702', 'Chef & Sommelier, Sequence Nick And Nora 5.25 Oz (H:5.625'''' T:2.75'''' M:2.75'''' B:2.38''''), [''Krysta''], (24 PC In A Case), Minimum Purchasing Unit CS', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cardinal', 'Proepta', 'Nick & Nora', 'CRISTALERIA', 53),
  ('485', 'DV.501180', 'GLASS, D&V TASTERZ MINI IPA 5OZ', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Fortessa', 'Hotel Depot', 'Miniature 2 Glass', 'CRISTALERIA', 72),
  ('446', 'Z3460014', 'Whiskey Glass, 10-1/2 oz., 2-3/4" x 3 3/8", Kyoto, Stolzle, Crystalline (minimum = case quantity, 24 per case) (Stock Item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Stolzle', 'Proepta', 'OF Rock Glass', 'CRISTALERIA', 53),
  ('432', 'HCR8-ORI', 'Aceitera y Vinagrera 16 cm - Color Natural', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Hacha', 'Hacha', 'Oil and Vinegar Set', 'UTENSILIOS', 18),
  ('449', 'P8821', 'Arcoroc, Broadway Gin 19.5 Oz (H:7.5'''' T:4.25'''' M:4.25'''' B:3.25''''), [''Soda Lime Glass''], (12 PC In A Case), Minimum Purchasing Unit CS', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cardinal', 'Proepta', 'Gin & Tonic', 'CRISTALERIA', 53),
  ('509', 'BU_GJ002', 'Tilt Mini Glass Jar•
Mat Glass, Soda Lime
Dim 125ø × 95 mm
5ø × 3.7 in
Vol 500 ml
17 oz', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Mini Glass Jar spare piece', 'UTENSILIOS', 9),
  ('520', 'M37219ACP', '21 oz.
Diamond Lattice
Double Wall
Mixing Tin
Antique Copper', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Mercer', 'Mepsa', 'Mixing Tin', 'UTENSILIOS', 4),
  ('564', 'SI6000', 'Saf-T-Ice® Tote, 6 gallon, polycarbonate, rubber handle, with tri-grip feature, includes Saf-T-Ice® HACCP hanger for elevation to waist level, NSF', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'San Jamar', 'Sandolat', 'Ice Tote', 'UTENSILIOS', 6),
  ('556', '1851-5', 'Mixology Jar, 32 oz. capacity, 5-1/4" dia., x 4-1/2"H, double walled insulated base, stainless steel solid lid with silicone lining, glass, clear (cold pucks sold separately)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cal-Mil', 'Equipo Hotel', 'Storage Jar / Ingredient Canister, Glass', 'UTENSILIOS', 6),
  ('491', '3669', 'Nordic Fruit Bowl - Acacia Wood & Iron - 10"D x 8" H', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Impulse', 'Impulse', 'Footed Fruit Bowl', 'UTENSILIOS', 4),
  ('492', '3670', 'Nordic Footed Platter - Acacia Wood & Iron - 12"D x 5.25"H', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Impulse', 'Impulse', 'Footed Platter', 'UTENSILIOS', 4),
  ('464', '3981300', 'Paris Chef
Manual Salt Mill in Copper-Plated Stainless Steel,u''Select, 22cm', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Peugeot', 'Peugeot', 'Salt Mill', 'UTENSILIOS', 2),
  ('470', 'BU_GC002', 'Small Glass Cloche - 5.71 x 5.71 x 4.7 - Features: Compatible with Small and Small Drum Cake Stands - Stock Tier: Gold', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Small Cake Stand Cloche', 'UTENSILIOS', 6),
  ('422', 'SET_CSO Bowl Only', '3oz Bowl only from SET_CSO set.', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Spare Bowls for Jam Presentation', 'UTENSILIOS', 24),
  ('548', '186700', 'Benriner "Little Beni" Mandoline Slicer, 12-1/2"L x 3-1/2"W, includes (3) blades and safety pusher, stainless steel blades, polypropylene, made in Japan', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Matfer', 'Proepta', 'Mandoline', 'UTENSILIOS', 2),
  ('433', 'SDRCK', 'Display Rack, 7-1/2" top dia. x 9-5/8" bottom dia. x 7-3/8"H, large, 1 tier, stainless steel (hand wash only)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'American Metalcraft', 'Equipo Hotel', 'Seafood Display Riser', 'UTENSILIOS', 24),
  ('498', 'BW_OR2100', 'Mini Rustic Olive Wood Bowl
Mat Olive Wood, Oiled
Dim 120ø × 40 mm
4.7ø × 1.6 in', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Wooden Bowl 3', 'UTENSILIOS', 6),
  ('554', '1851-4', 'Mixology Jar, 16 oz. capacity, 4-1/4" dia. x 4"H, double walled insulated base, stainless steel solid lid with silicone lining, glass, clear (cold pucks sold separately)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cal-Mil', 'Equipo Hotel', 'Storage Jar / Ingredient Canister, Glass', 'UTENSILIOS', 6),
  ('465', '39806', 'Paris Chef
Manual Pepper Mill in Copper-Plated Stainless Steel,u''Select, 22cm', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Peugeot', 'Peugeot', 'Pepper Mill', 'UTENSILIOS', 2),
  ('406', NULL, 'Elevated terracotta stand with a natural matte finish, ideal for creating height and layering on buffet table', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 10),
  ('559', 'BM-1812K', 'Service Mat, 18" x 12", rubber, black, NSF (Qty Break = 12 each)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Winco', 'Mepsa', 'Bar Mat', 'UTENSILIOS', 6),
  ('524', '3308-60', 'Bamboo Straw Holder - 5" x 5" x 5 1/2"', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cal-Mil', 'Equipo Hotel', 'Straw Holder', 'UTENSILIOS', 2),
  ('547', '285-50', 'Spill-Stop® Tapered Pourer, seamless spout, with poly-kork, controlled medium speed, chrome, Made in USA (packed one dozen per poly bag, one gross per carton = 144 each, minimum order 1 gross)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Spill-Stop', 'Spill-Stop', 'Liquor Pourer', 'UTENSILIOS', 58),
  ('460', 'DW396LADREST', 'Ladle Rest L 6" W 5 1/4" H 8 3/4"', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'DW Haber', 'Steelite', 'Soup Ladle Rest', 'UTENSILIOS', 2),
  ('463', '122 05 00 039', '24 cm Cake Server', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Broggi', 'Proepta', 'Cake Server', 'UTENSILIOS', 12),
  ('459', '122 05 00 025', 'Soup Ladle 30.4 cm', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Broggi', 'Proepta', 'Soup Ladle', 'UTENSILIOS', 6),
  ('407', NULL, 'Small version of the terracotta display stand. Perfect for layering the buffet display.', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 10),
  ('348', NULL, 'Caviar Spoon, Pearl colour', '10cm', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom Silverware', NULL, 21),
  ('557', '1851-5PUCK', 'Cooling Puck, black (for 1851-5 jar)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cal-Mil', 'Equipo Hotel', 'Ice Pack', 'UTENSILIOS', 6),
  ('537', 'FP198', 'Arcoroc, Mix Jigger Copper 2.0 Oz (L:2.0'''' X W:1.732''''), [''18/10 Stainless Steel''], (1 PC In A Case), Minimum Purchasing Unit CS', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cardinal', 'Proepta', 'Jigger', 'UTENSILIOS', 6),
  ('551', 'M15500', 'Mercer Cutlery Channel Knife, stain-resistant steel, molded slip-resistant polypropylene handle', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Mercer', 'Mepsa', 'Channel Knife', 'UTENSILIOS', 4),
  ('543', 'FP197', 'Arcoroc, Mix Dual Sided Bar Teadrop Spoon Copper (L:15.75'''' X W:0.393''''), [''18/10 Stainless Steel''], (1 PC In A Case), Minimum Purchasing Unit CS', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cardinal', 'Proepta', 'Bar Spoon', 'UTENSILIOS', 8),
  ('562', '160-02', 'Bar Mat, 24"L x 3-1/4"W x 1/2"H, non-slip, rubber, black', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Spill-Stop', 'Spill-Stop', 'Bar Mat', 'UTENSILIOS', 8),
  ('555', '1851-4PUCK', 'Cooling Puck, black (for 1851-4 jar)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cal-Mil', 'Equipo Hotel', 'Ice Pack', 'UTENSILIOS', 6),
  ('538', 'FP190', 'Arcoroc, Mix Shaker Copper 28.0 Oz (L:3.622'''' X W:2.44''''), [''18/10 Stainless Steel''], (1 PC In A Case), Minimum Purchasing Unit CS', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cardinal', 'Proepta', 'Cocktail Shaker 28 oz', 'UTENSILIOS', 4),
  ('540', 'FP196', 'Arcoroc, Mix Hawthorne Strainer Copper (L:6.25'''' X W:3.375''''), [''18/10 Stainless Steel''], (1 PC In A Case), Minimum Purchasing Unit CS', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cardinal', 'Proepta', 'Bar Strainer', 'UTENSILIOS', 4),
  ('539', 'FP188', 'Arcoroc, Mix Shaker Copper 20.0 Oz (L:3.5'''' X W:2.44''''), [''18/10 Stainless Steel''], (1 PC In A Case), Minimum Purchasing Unit CS', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cardinal', 'Proepta', 'Cocktail Shaker 20oz', 'UTENSILIOS', 4),
  ('534', '12273/02', '10 cl - 3 ½ oz h 14.2 cm - 5 5⁄8” Max Ø 5.2 cm - 2”', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Luigi Bormioli', 'Proepta', 'Bitter / Dash Bottle', 'UTENSILIOS', 6),
  ('535', '12272/02', '10 cl - 3 ½ oz h 13.5 cm - 5 3 ⁄8” Max Ø 5.7 cm - 2 ¼”', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Luigi Bormioli', 'Proepta', 'Bitter / Dash Bottle', 'UTENSILIOS', 6),
  ('536', '301-02', 'Dust Cap, 1/2" L, for pour spouts (285-50 & 282-50), Made in USA (one gross per poly bag, one gross per carton = 144 each, minimum order one gross)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Spill-Stop', 'Spill-Stop', 'Drink Bar Mix Pourer Lid', 'UTENSILIOS', 2),
  ('558', 'M37023', 'Barfly Juicer, 8-7/8", with stainless steel pin, cast aluminum', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Mercer', 'Mepsa', 'Citrus Squeezer', 'UTENSILIOS', 2),
  ('571', 'GR-3', 'Glass Rimmer / Margarita Salter with 3 Compartments', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Winco', 'Mepsa', 'Salt Rimmer', 'UTENSILIOS', 2),
  ('565', 'AS-12', 'Scoop, 12 oz., aluminum (hand wash only) (Qty Break = 12 each)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Winco', 'Mepsa', 'Scoop', 'UTENSILIOS', 6),
  ('542', 'FP193', 'Arcoroc, Mix Mesh Strainer Copper (L:8.75'''' X W:3.125''''), [''18/10 Stainless Steel''], (1 PC In A Case), Minimum Purchasing Unit CS', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cardinal', 'Proepta', 'Mesh Strainer', 'UTENSILIOS', 4),
  ('541', 'FP195', 'Arcoroc, Mix Julep Strainer Copper (L:7.0625'''' X W:3.0''''), [''18/10 Stainless Steel''], (1 PC In A Case), Minimum Purchasing Unit CS', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cardinal', 'Proepta', 'Julep Strainer', 'UTENSILIOS', 4),
  ('560', 'CAP07', 'Ellis Bar Knife, 9" overall, 4-1/2" blade, stainless steel blade, POM handle, Arcoroc, Mix', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cardinal', 'Proepta', 'Bar Knife', 'UTENSILIOS', 4),
  ('569', 'CHBST112', 'Champagne Bottle "Popper-Stopper", stainless steel', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'American Metalcraft', 'Equipo Hotel', 'Bottle Stopper', 'UTENSILIOS', 4),
  ('544', 'CAP09', 'Muddler, 9-5/8", stainless steel, Arcoroc, Mix', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cardinal', 'Proepta', 'Muddler', 'UTENSILIOS', 4),
  ('545', 'CAP01', 'Tweezers, 6-1/4", stainless steel, Arcoroc, Mix', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cardinal', 'Proepta', 'Tongs, Tweezer', 'UTENSILIOS', 8),
  ('561', 'SS-821', 'Sharpening Stone, 8" x 2" x 1"H, rectangular, fine/medium grain, carbonized silicone (Qty Break = 12 each)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Winco', 'Mepsa', 'Sharpening Stone', 'UTENSILIOS', 2),
  ('567', '7770-C', 'VacuVin® Vacuum Wine Preservation, includes: (1) 5" x 2-7/8" white pump, (1) 1-3/4" long gray stopper (carded)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Franmara', 'Franmara', 'Bottle Stopper', 'UTENSILIOS', 4),
  ('563', '100MCCW135', 'Camwear® Measuring Cup, 1 qt., molded handle, dishwasher safe, polycarbonate, clear, NSF', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cambro', 'Equipo Hotel', 'Measuring Cup', 'UTENSILIOS', 2),
  ('521', '2.5.003.00.277', 'Ice/Sugar Tong 6” (15cm)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Fortessa', 'Hotel Depot', 'Ice Tongs', 'UTENSILIOS', 4),
  ('570', 'E5604', 'Cash & Carry FirmGrip® Zester/Lemon Peeler, 5-3/4" x 1-1/8" x 7/8", dishwasher safe, ergonomic soft grip handle, stainless steel, black (individually carded) (1 each minimum order)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'TableCraft Products', 'Equipo Hotel', 'Lemon Lime Zester', 'UTENSILIOS', 4),
  ('546', 'M33071BKB', 'Y Peeler Black Handle', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Mercer', 'Mepsa', 'Vegetable Peeler, Manual', 'UTENSILIOS', 2),
  ('568', '7771-C', 'VacuVin® Vacuum Wine Stopper, 1-3/4" long, ABS plastic, gray (2 each per pack) (carded)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Franmara', 'Franmara', 'Bottle Stopper', 'UTENSILIOS', 4),
  ('572', 'WCS871', 'Waiters Corkscrew - 4-1/2″ L x 7/8″ W x 7/8" - Stainless Steel', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'American Metalcraft', 'Equipo Hotel', 'Wine Key', 'UTENSILIOS', 4),
  ('550', '396', 'Pocket Bottle Opener, 7" flat, dishwasher safe, stainless steel (1 each minimum order)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'TableCraft Products', 'Equipo Hotel', 'Bottle Opener', 'UTENSILIOS', 6),
  ('553', 'PF-32', 'Funnel, 32 oz., 6-1/4" dia., round, plastic, white (Qty Break = 6 each)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Winco', 'Mepsa', 'Funnel', 'UTENSILIOS', 2),
  ('466', '-', 'Glass Honeycomb Display - Langstroth 19" for the Hospitality Industry', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Backyard Hive', 'Backyard Hive', 'Honeycomb Stand Presentation', 'UTENSILIOS', 1),
  ('573', 'KB327 - 09', 'Booster Chair - Individual Seat Dimensions: 13” W x 9½” H x 12″ D (330 x 241 x 305 mm)- Brown', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Koala Care', 'Koala Care', 'Booster Seats', 'UTENSILIOS', 12),
  ('574', '-', 'Trip Trap Natural Color', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Stokke', 'Stokke', 'High CHairs', 'UTENSILIOS', 12),
  ('71', 'PE-CSB-25', 'Mini Cocktail Shaker', 'VASO MEZCLADOR ACERO INOX 750 ML', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Mepra', 'Proepta', NULL, 'UTENSILIOS', 12),
  ('40', 'B-V784120676', 'Bucket and Stand', 'BASE Y CHAMPAÑERA DE ACERO INOX', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Maxim World', 'Proepta', NULL, 'UTENSILIOS', 8),
  ('4', 'BP003762', 'Napkin Ring', 'ARIELLA, Antique Brass, Mermaid Napkin Ring, Set of 4 - Sold as a Boxed Set of 4: 2"D x 2"H', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Blue Pheasant', 'Blue Pheasant', NULL, 'UTENSILIOS', 122),
  ('39', '653593', 'Tea Pot', 'Teapot with infuser basket, 18-3/4 oz., 5" dia. x 4-3/4"H, with handle, ceramic, dark metal finish, Pekoe (US stocked item)', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Revol', 'Proepta', NULL, 'UTENSILIOS', 15),
  ('63', 'MWSD454-2', 'Snack Set', 'Snack dishes Vintage copper and natural oak wood L 34cm x W 10cm x H 15.5cm', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Maxim World', 'Maxim World', NULL, 'UTENSILIOS', 22),
  ('68', 'B2323001-700', 'Bar Fruit Display. Size 2', 'Tray S brown Dune collection Dune kitchen & table accessories by Kelly Wearstler L 41 W 41 H 9 CM', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Serax', 'Mepsa', NULL, 'UTENSILIOS', 3),
  ('2', 'MFN15', 'Bud Vase', 'Mini Florero negro 15 cm', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Taller Ruiz Lopez', 'Taller Ruiz Lopez', NULL, 'UTENSILIOS', 33),
  ('3', '991667', 'Placemat', 'Dinner Mat Curve / Medium| Size: M 31x35cm. Leather Nupo Soft Brown', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Lind DNA', 'Steelite', NULL, 'UTENSILIOS', 36),
  ('118', 'VM5280BK-12', 'Bar Mat', 'Versa-Mat® Bar Mat Tile/Shelf Liner, 12" x 12", interlocking, easy to cut, raised surface for airflow, dishwasher safe, rubber, black, NSF', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'San Jamar', 'Sandolat', NULL, 'UTENSILIOS', 36),
  ('34', '653630', 'Coffe and Expresso Saucer', '(PE1414N-000) Saucer, 5-1/2" dia. x 1/2"H, round, ceramic, dark metal finish, Pekoe (US stocked item)', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Revol', 'Proepta', NULL, 'LOZA', 56),
  ('41', '7660', 'Serving Tray', 'Jaipur Tray Red - wood / resin - 17.25" L x 10.25" W - 1.5" H', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Impulse', 'Impulse', NULL, 'UTENSILIOS', 18),
  ('64', 'Custom', 'Snack Set Spare Bowl', 'MWSD454-2 Vintage Copper Spare Bowls from set. ONLY BOWLS', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Maxim World', 'Maxim World', NULL, 'UTENSILIOS', 15),
  ('67', 'B2323005-700', 'Bar Fruit Display. Size 1', 'Raised bowl brown Dune
collection Dune accessories
by Kelly Wearstler. L 30.5 W 30.5 H 19 CM', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Serax', 'Mepsa', NULL, 'UTENSILIOS', 3),
  ('75', '20045622 Custom Finish', 'Napkin Holder', 'Square napkin holder CM.22x22 STILE - Custom Finish Copper Bronze', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Mepra', 'Mepsa', NULL, 'UTENSILIOS', 2),
  ('42', 'TPZT017', 'Beverage Tray', 'Charola de servicio (Guamuchil) - 39cm D x 3cm H', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Oaxifornia', 'Oaxifornia', NULL, 'UTENSILIOS', 18),
  ('5', '1-01-499 - 3131', 'Napkin', 'Bristol Napkin / 50x50 100% Cotton
499 BRISTOL
HEM: Two Hems & Two Selvedges, 4 Hems, Mitred Corners,
Hemstitching, Bias Banding (for round tablecloth)
Tortoga Champagne Color', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Casa Rovea', 'Casa Rovea', NULL, 'BLANCOS', 244),
  ('32', '653851', 'Coffee Cup', '(PE1128N-263) Bowl, 9-7/16 oz., 4-3/4" dia., ceramic, dark metal finish, Pekoe', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Revol', 'Proepta', NULL, 'LOZA', 37),
  ('104', 'RA03', 'Cutting Board', 'Cutting Board, 24"W x 18"D x 2-1/4" thick, edge grain construction, Northern Hard Rock Maple, with Oil Finish, hand grips on each end, reversible', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'John Boos', 'John Boos', NULL, 'UTENSILIOS', 4),
  ('35', '653634', 'Creamer', '(PE1510N-263) Creamer, 3-1/2 oz., 2-3/4" dia. 2-1/2"H, ceramic, dark metal finish, Pekoe (US stocked item)', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Revol', 'Proepta', NULL, 'LOZA', 20),
  ('51', '1200019', 'Beer Glass', 'Beer - (10 1/4 oz)', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Stolzle', 'Proepta', NULL, 'CRISTALERIA', 56),
  ('53', '5683 GLASS', 'Specialty Cocktail - Martini', 'Malta Coupe Ruby - 5”D x 5”H - 6 oz', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Impulse', 'Impulse', NULL, 'CRISTALERIA', 37),
  ('30', 'OWBB9', 'Wood and Marble Board 2', 'SERVING PEEL, OLIVE WOOD/ MARBLE, BLACK, 9″ L', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'American Metalcraft', 'Equipo Hotel', NULL, 'UTENSILIOS', 24),
  ('46', 'Z7310029', 'Champagne Glass', 'Champagne / Flute Glass, 10.25 oz., 3.25"W x 10.25"H, crystalline, Stolzle, Symphony (minimum = case quantity, 24 per case) (STOCK item)', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Stolzle', 'Proepta', NULL, 'CRISTALERIA', 56),
  ('44', 'Z7310003', 'AP Wine Glass 14oz', 'Wine Glass, 14.25 oz., 3.5"W x 9.75"H, crystalline, Stolzle, Symphony (minimum = case quantity, 24 per case) (STOCK item)', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Stolzle', 'Proepta', NULL, 'CRISTALERIA', 56),
  ('38', '656392', 'Water Jug', 'YLI Collection Jug, 27 oz., 4" dia. x 7.5"H, matt slate style, safe for oven, microwave, freezer & dishwasher, Made in France, Designed by Ferreol Babin (Ship from France)', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Revol', 'Proepta', NULL, 'UTENSILIOS', 15),
  ('36', '653619', 'Sugar', '(PE1310CON-263) Ramekin, 3-1/2 oz., 3-1/2" dia. x 1-3/4"H, round, ceramic, dark metal finish, Pekoe (US stocked item)', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Revol', 'Proepta', NULL, 'LOZA', 20),
  ('8', '656355', 'Bread Presentation', 'YLI Collection Pod Bowl, 6-1/2"W x 4-3/4"D x 1-1/2"H, matt slate style, safe for oven, microwave, freezer & dishwasher, Made in France, Designed by Ferreol Babin (US stock item)', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Revol', 'Proepta', NULL, 'UTENSILIOS', 22),
  ('37', '653097', 'Sugar and Creamer Tray', 'Bamboo plateau. 20.7 x 12.7 cm', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Revol', 'Proepta', NULL, 'UTENSILIOS', 20),
  ('21', 'BN15-MORO', 'Bowl, China 6"', 'Moro Finish', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Taller Ruiz Lopez', 'Taller Ruiz Lopez', NULL, 'LOZA', 37),
  ('27', 'BN15-NEGRO', 'Bowl, China 6"', 'Black Finish', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Taller Ruiz Lopez', 'Taller Ruiz Lopez', NULL, 'LOZA', 37)
ON CONFLICT (code) DO UPDATE SET
  item_code = EXCLUDED.item_code,
  description = EXCLUDED.description,
  description_2 = EXCLUDED.description_2,
  area_id = EXCLUDED.area_id,
  brand_current = EXCLUDED.brand_current,
  supplier = EXCLUDED.supplier,
  category = EXCLUDED.category,
  item_type = EXCLUDED.item_type,
  qty_ordered = EXCLUDED.qty_ordered;
