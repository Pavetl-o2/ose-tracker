-- ================================================
-- STEP 8: Items 1801–2100 of 2127
-- ================================================

INSERT INTO items (code, item_code, description, description_2, area_id, brand_current, supplier, category, item_type, qty_ordered, unit, price_unit, currency)
VALUES
  ('1', 'FN073A', 'Votive', 'Candle Votive - matte with shiny - details 3.5” D x 4.7” H', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Oaxifornia', 'Oaxifornia', NULL, 'UTENSILIOS', 33, 'ea', 337, 'MXN'),
  ('17', 'PM19-MORO', 'Sharing Plate 7.5"', 'Moro Finish', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Taller Ruiz Lopez', 'Taller Ruiz Lopez', NULL, 'LOZA', 37, 'ea', 256.0427, 'MXN'),
  ('23', 'PM19-NEGRO', 'Sharing Plate 7.5"', 'Black Finish', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Taller Ruiz Lopez', 'Taller Ruiz Lopez', NULL, 'LOZA', 37, 'ea', 256.0427, 'MXN'),
  ('48', 'Z3500012DS1620', 'Hi Ball Glass', 'Long Drink Glass, 13-3/4 oz., 2-1/2" x 6-1/2", Soho, Stolzle, Crystalline (minimum = case quantity, 24 per case) (Stock Item)', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Stolzle', 'Proepta', NULL, 'CRISTALERIA', 56, 'ea', 8.6125, 'USD'),
  ('19', 'PM25-MORO', 'Plate, China 10"', 'Moro Finish', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Taller Ruiz Lopez', 'Taller Ruiz Lopez', NULL, 'LOZA', 28, 'ea', 322.6138, 'MXN'),
  ('25', 'PM25-NEGRO', 'Plate, China 10"', 'Black Finish', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Taller Ruiz Lopez', 'Taller Ruiz Lopez', NULL, 'LOZA', 28, 'ea', 322.6138, 'MXN'),
  ('29', 'OWBB8', 'Wood and Marble Board 1', 'SERVING PEEL, OLIVE WOOD/MARBLE, BLACK, 8″ L / 6" L X 3-1/2" W X 1/2" H, 8" L WITH HANDLE', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'American Metalcraft', 'Equipo Hotel', NULL, 'UTENSILIOS', 24, 'ea', 21.83, 'USD'),
  ('16', 'B-CV74005', 'Dinner Knife', '(PROEPTA) - Infinito Copper - Stainless Steel - Dinner Knife', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Abert', 'Proepta', NULL, 'PLAQUE', 56, 'ea', 7.956, 'USD'),
  ('12', 'B-CV74021', 'Coffee / Tea Spoon', '(PROEPTA) - Infinito Copper - Stainless Steel - Coffee Spoon', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Abert', 'Proepta', NULL, 'PLAQUE', 92, 'ea', 4.74, 'USD'),
  ('9', 'B-CV74012', 'Appetizer Fork', '(PROEPTA) - Infinito Copper - Stainless Steel - Dessert Fork', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Abert', 'Proepta', NULL, 'PLAQUE', 56, 'ea', 7.56, 'USD'),
  ('11', 'B-CV74011', 'Appetizer/Dessert Spoon', '(PROEPTA) - Infinito Copper - Stainless Steel - Dessert Spoon', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Abert', 'Proepta', NULL, 'PLAQUE', 56, 'ea', 7.56, 'USD'),
  ('18', 'PM21.5-MORO', 'Plate, China 8.5"', 'Moro Finish', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Taller Ruiz Lopez', 'Taller Ruiz Lopez', NULL, 'LOZA', 28, 'ea', 286.7679, 'MXN'),
  ('20', 'CBN21.5-MORO', 'Coupe Bowl, China 8.5"', 'Moro Finish', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Taller Ruiz Lopez', 'Taller Ruiz Lopez', NULL, 'LOZA', 28, 'ea', 286.7679, 'MXN'),
  ('24', 'PM21.5-NEGRO', 'Plate, China 8.5"', 'Black Finish', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Taller Ruiz Lopez', 'Taller Ruiz Lopez', NULL, 'LOZA', 28, 'ea', 286.7679, 'MXN'),
  ('26', 'CBN21.5-NEGRO', 'Coupe Bowl, China 8.5"', 'Black Finish', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Taller Ruiz Lopez', 'Taller Ruiz Lopez', NULL, 'LOZA', 28, 'ea', 286.7679, 'MXN'),
  ('10', 'B-C024053', 'Butter Knife', '(PROEPTA) - Infinito Copper - Stainless Steel - Butter Knife', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Abert', 'Proepta', NULL, 'PLAQUE', 56, 'ea', 7.062, 'USD'),
  ('62', '48757', 'Wine Coaster', 'Fox Run 48757 5" x 1 3/4" Black Marble Wine Coaster', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Fox Run', 'Fox Run', NULL, 'UTENSILIOS', 28, 'ea', 13.6, 'USD'),
  ('14', 'B-CV74001', 'Dinner Spoon', '(PROEPTA) - Infinito Copper - Stainless Steel - Dinner Spoon', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Abert', 'Proepta', NULL, 'PLAQUE', 56, 'ea', 6.786, 'USD'),
  ('15', 'B-CV74002', 'Dinner Fork', '(PROEPTA) - Infinito Copper - Stainless Steel - Dinner Fork', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Abert', 'Proepta', NULL, 'PLAQUE', 56, 'ea', 6.786, 'USD'),
  ('33', '653609', 'Expresso Cup', '(PE1208N-263) Cup, 2-3/4 oz., 2-1/4" dia. x 2-1/4"H, round, ceramic, dark metal finish, Pekoe (US stocked item)', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Revol', 'Proepta', NULL, 'LOZA', 19, 'ea', 18.75, 'USD'),
  ('59', 'TBD', 'Mezcalita', 'Rustic Mexican Clay Jarrito 14 oz', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Oaxifornia', 'Oaxifornia', NULL, 'LOZA', 19, 'ea', 362, 'MXN'),
  ('49', 'Z3460005', 'Nick and Nora', 'Nick & Nora Glass, 6-1/2 oz., 3-1/2" x 6 3/8", Kyoto, Stolzle, Crystalline (minimum = case quantity, 24 per case) (Stock Item)', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Stolzle', 'Proepta', NULL, 'CRISTALERIA', 37, 'ea', 8.892, 'USD'),
  ('66', '-', 'Lemon Press', 'Artisan Citrus Juicer - Small, With handle up/juicer open: Dimensions: 11" L x 5" W x 18" H', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Verve Culture', 'Verve Culture', NULL, 'UTENSILIOS', 3, 'ea', 125, 'USD'),
  ('74', '22440-3-112', 'Condiment Caddy', 'Heritage 3 Jar Display, 12.75" W x 4.25" D x 4" H, includes 3 jars', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Cal-Mil', 'Equipo Hotel', NULL, 'UTENSILIOS', 4, 'ea', 93.27, 'USD'),
  ('47', 'Z3500015DS1620', 'Rock Glass', 'Whiskey Glass, 10-3/4 oz., 3-1/4" x 3-3/4", Soho, Stolzle, Crystalline (minimum = case quantity, 24 per case) (Stock Item)', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Stolzle', 'Proepta', NULL, 'CRISTALERIA', 37, 'ea', 8.19, 'USD'),
  ('101', 'JP9730', 'Juicer, Lever / Crank Type', 'Cash & Carry Big Squeeze™ Juice Press, 11-1/2" x 7" x 17", manual, accommodates 5-3/4" glass, 3-pinion design, hand wash only, 18/8 stainless steel cone, cast iron construction, black coated finish, NSF (1 each minimum order)', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'TableCraft Products', 'Equipo Hotel', NULL, 'UTENSILIOS', 2, 'ea', 175.87, 'USD'),
  ('52', 'P67296', 'Coupe', 'Coupe Glass, 7.5 oz., (H 6-7/8"; M 4-1/4"; T 4-1/4"; B 3-1/8") Crystalline, Clear, Pasabahce, Nude Savage (minimum = case quantity) (stock item)', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Steelite', 'Steelite', NULL, 'CRISTALERIA', 37, 'ea', 8.0303, 'USD'),
  ('69', 'P68308', 'Individual Glass Ice Bucket', 'Hemingway Ice Bucket (1 3/4 qt) H 6" M 7 1/4"', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Nude', 'Steelite', NULL, 'UTENSILIOS', 18, 'ea', 19.1127, 'USD'),
  ('55', 'BFA-008B', 'Tequila Glass 2', 'Fuerte Clay - Mezcaleros 5cm D x 5.5cm H', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Oaxifornia', 'Oaxifornia', NULL, 'CRISTALERIA', 37, 'ea', 154, 'MXN'),
  ('50', 'P67286', 'Cocktail', 'Coupetini Glass, 6.0 oz., (H 6-1/2"; M 3-7/8"; T 3-7/8"; B 2-3/4") Crystalline, Clear, Pasabahce, Nude Savage (minimum = case quantity, 24 each per case) (stock item)', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Steelite', 'Steelite', NULL, 'CRISTALERIA', 37, 'ea', 7.5986, 'USD'),
  ('58', 'BFA-005', 'Mezcal Bowl 1', 'Bowl San Cristóbal  6cm D x 3cm H', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Oaxifornia', 'Oaxifornia', NULL, 'CRISTALERIA', 19, 'ea', 259, 'MXN'),
  ('22', 'RM10-MORO', 'Ramekin, 4oz - 12 cm aprox', 'Moro Finish', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Taller Ruiz Lopez', 'Taller Ruiz Lopez', NULL, 'UTENSILIOS', 37, 'ea', 122.9005, 'MXN'),
  ('28', 'RM10-NEGRO', 'Ramekin, 4oz - 12 cm aprox', 'Black Finish', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Taller Ruiz Lopez', 'Taller Ruiz Lopez', NULL, 'UTENSILIOS', 37, 'ea', 122.9005, 'MXN'),
  ('116', 'SI6000', 'Ice Tote', 'Saf-T-Ice® Tote, 6 gallon, polycarbonate, rubber handle, with tri-grip feature, includes Saf-T-Ice® HACCP hanger for elevation to waist level, NSF', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'San Jamar', 'Sandolat', NULL, 'UTENSILIOS', 6, 'ea', 44.9372, 'USD'),
  ('45', 'Z7310000', 'Specialty Wine Glass 25oz', 'Burgundy Glass, 25 oz., 4-1/2" x 9-3/4", Symphony, Stolzle, Crystalline (minimum = case quantity, 24 per case) (Stock Item)', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Stolzle', 'Proepta', NULL, 'CRISTALERIA', 19, 'ea', 12.1225, 'USD'),
  ('54', 'FN015', 'Tequila Glass 1', 'Black Clay - Mezcalero Glass - 1.9” D x 1.9” H', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Oaxifornia', 'Oaxifornia', NULL, 'CRISTALERIA', 37, 'ea', 114, 'MXN'),
  ('108', '1851-5', 'Storage Jar / Ingredient Canister, Glass', 'Mixology Jar, 32 oz. capacity, 5-1/4" dia., x 4-1/2"H, double walled insulated base, stainless steel solid lid with silicone lining, glass, clear (cold pucks sold separately)', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Cal-Mil', 'Equipo Hotel', NULL, 'UTENSILIOS', 6, 'ea', 41.19, 'USD'),
  ('99', '285-50', 'Liquor Pourer', 'Spill-Stop® Tapered Pourer, seamless spout, with poly-kork, controlled medium speed, chrome, Made in USA (packed one dozen per poly bag, one gross per carton = 144 each, minimum order 1 gross)', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Spill-Stop', 'Spill-Stop', NULL, 'UTENSILIOS', 96, 'ea', 2.28, 'USD'),
  ('43', 'P420164', 'Water Glass', 'Rocks, 9 1/2 oz., (H 3 1/2"; M 3 1/8"; T 3"; B 2 3/4"), soda lime, Pasabahce, Gaia (minimum = case quantity, 24 per case) (STOCK item)', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Steelite', 'Steelite', NULL, 'CRISTALERIA', 110, 'ea', 1.6605, 'USD'),
  ('100', '186700', 'Mandoline', 'Benriner "Little Beni" Mandoline Slicer, 12-1/2"L x 3-1/2"W, includes (3) blades and safety pusher, stainless steel blades, polypropylene, made in Japan', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Matfer', 'Proepta', NULL, 'UTENSILIOS', 2, 'ea', 105.01, 'USD'),
  ('13', 'B-CV74022', 'Demitasse Spoon', '(PROEPTA) - Infinito Copper - Stainless Steel - Demitasse Spoon', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Abert', 'Proepta', NULL, 'PLAQUE', 37, 'ea', 4.728, 'USD'),
  ('6', '38151', 'Salt Mill', 'Bistro Nature - Manual Upcycled Wooden Salt Mill, Nature Finish , 10cm - 4 in.', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Peugeot', 'Peugeot', NULL, 'UTENSILIOS', 6, 'ea', 31.5, 'USD'),
  ('7', '41366', 'Pepper Mill', 'Bistro Nature Black - Manual Upcycled Wooden Pepper Mill and its Fair-Trade Pepper, Black Finish, 10 cm - 4in', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Peugeot', 'Peugeot', NULL, 'UTENSILIOS', 6, 'ea', 31.5, 'USD'),
  ('106', '1851-4', 'Storage Jar / Ingredient Canister, Glass', 'Mixology Jar, 16 oz. capacity, 4-1/4" dia. x 4"H, double walled insulated base, stainless steel solid lid with silicone lining, glass, clear (cold pucks sold separately)', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Cal-Mil', 'Equipo Hotel', NULL, 'UTENSILIOS', 6, 'ea', 28.36, 'USD'),
  ('111', 'BM-1812K', 'Bar Mat', 'Service Mat, 18" x 12", rubber, black, NSF (Qty Break = 12 each)', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Winco', 'Mepsa', NULL, 'UTENSILIOS', 6, 'ea', 27.3502, 'USD'),
  ('70', '903 05 81 001', 'Ice Tongs for Bucket', 'Ice tongs CM 12,6 4 ,7/8', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Broggi', 'Proepta', NULL, 'UTENSILIOS', 22, 'ea', 4.998, 'USD'),
  ('57', '1610005', 'Tequila Glass 4', 'Liquoer Mini Stem Glass 2 3/4oz', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Stolzle', 'Proepta', NULL, 'CRISTALERIA', 19, 'ea', 5.8045, 'USD'),
  ('109', '1851-5PUCK', 'Ice Pack', 'Cooling Puck, black (for 1851-5 jar)', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Cal-Mil', 'Equipo Hotel', NULL, 'UTENSILIOS', 6, 'ea', 16.69, 'USD'),
  ('76', '3308-13', 'Straw Holder', 'Classic Stir Stick Holder', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Cal-Mil', 'Equipo Hotel', NULL, 'UTENSILIOS', 2, 'ea', 41.83, 'USD'),
  ('103', 'M15500', 'Channel Knife', 'Mercer Cutlery Channel Knife, stain-resistant steel, molded slip-resistant polypropylene handle', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Mercer', 'Mepsa', NULL, 'UTENSILIOS', 4, 'ea', 20.5008, 'USD'),
  ('95', 'MT011', 'Bar Spoon', 'Arcoroc, Mix Dual Sided Bar Teadrop Spoon, Black Matte (L:15.748'''' X W:0.59''''), [''18/10 Stainless Steel''], (1 PC In A Case), Minimum Purchasing Unit CS', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Cardinal', 'Proepta', NULL, 'UTENSILIOS', 8, 'ea', 9.927, 'USD'),
  ('89', 'MT051', 'Jigger', 'Arcoroc, Mix Jigger Black Matte 2.0 Oz (L:1.771'''' X W:1.732''''), [''18/10 Stainless Steel''], (1 PC In A Case), Minimum Purchasing Unit CS', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Cardinal', 'Proepta', NULL, 'UTENSILIOS', 6, 'ea', 12.141, 'USD'),
  ('114', '160-02', 'Bar Mat', 'Bar Mat, 24"L x 3-1/4"W x 1/2"H, non-slip, rubber, black', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Spill-Stop', 'Spill-Stop', NULL, 'UTENSILIOS', 8, 'ea', 9.08, 'USD'),
  ('56', 'P64008', 'Tequila Glass 3', 'Shot 3.81 cm (1.5") 5.91 cl (2.0 oz)  in Finesse from Nude', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Steelite', 'Steelite', NULL, 'CRISTALERIA', 19, 'ea', 3.2712, 'USD'),
  ('107', '1851-4PUCK', 'Ice Pack', 'Cooling Puck, black (for 1851-4 jar)', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Cal-Mil', 'Equipo Hotel', NULL, 'UTENSILIOS', 6, 'ea', 11.86, 'USD'),
  ('90', 'MT849', 'Cocktail Shaker 28 oz', 'Arcoroc, Mix Shaker Black Matte 28.0 Oz (L:3.622'''' X W:3.622''''), [''18/10 Stainless Steel''], (1 PC In A Case), Minimum Purchasing Unit CS', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Cardinal', 'Proepta', NULL, 'UTENSILIOS', 4, 'ea', 17.091, 'USD'),
  ('91', 'MT850', 'Cocktail Shaker 20oz', 'Arcoroc, Mix Shaker Black Matte 20.0 Oz (L:3.346'''' X W:3.346''''), [''18/10 Stainless Steel''], (1 PC In A Case), Minimum Purchasing Unit CS', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Cardinal', 'Proepta', NULL, 'UTENSILIOS', 4, 'ea', 15.345, 'USD'),
  ('86', '12273/02', 'Bitter / Dash Bottle', '10 cl - 3 ½ oz h 14.2 cm - 5 5⁄8” Max Ø 5.2 cm - 2”', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Luigi Bormioli', 'Proepta', NULL, 'UTENSILIOS', 6, 'ea', 9.984, 'USD'),
  ('87', '12272/02', 'Bitter / Dash Bottle', '10 cl - 3 ½ oz h 13.5 cm - 5 3 ⁄8” Max Ø 5.7 cm - 2 ¼”', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Luigi Bormioli', 'Proepta', NULL, 'UTENSILIOS', 6, 'ea', 9.984, 'USD'),
  ('88', '301-02', 'Drink Bar Mix Pourer Lid', 'Dust Cap, 1/2" L, for pour spouts (285-50 & 282-50), Made in USA (one gross per poly bag, one gross per carton = 144 each, minimum order one gross)', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Spill-Stop', 'Spill-Stop', NULL, 'UTENSILIOS', 2, 'ea', 28.8, 'USD'),
  ('60', '4908Q104', 'Julep Cup', 'Julep 8.89 cm (3.5") 36.23 cl (12.25 oz)  in Bartender from Bormioli Rocco', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Bormioli Rocco', 'Proepta', NULL, 'UTENSILIOS', 15, 'ea', 3.282, 'USD'),
  ('92', 'HS002', 'Bar Strainer', 'Arcoroc, Mix Hawthorne Strainer Black Matte (L:5.905'''' X W:3.858''''), [''18/10 Stainless Steel''], (1 PC In A Case), Minimum Purchasing Unit CS', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Cardinal', 'Proepta', NULL, 'UTENSILIOS', 4, 'ea', 12.375, 'USD'),
  ('110', 'M37023', 'Citrus Squeezer', 'Barfly Juicer, 8-7/8", with stainless steel pin, cast aluminum', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Mercer', 'Mepsa', NULL, 'UTENSILIOS', 2, 'ea', 24.1805, 'USD'),
  ('123', 'GR-3', 'Salt Rimmer', 'Glass Rimmer / Margarita Salter with 3 Compartments', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Winco', 'Mepsa', NULL, 'UTENSILIOS', 2, 'ea', 22.3077, 'USD'),
  ('117', 'AS-12', 'Scoop', 'Scoop, 12 oz., aluminum (hand wash only) (Qty Break = 12 each)', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Winco', 'Mepsa', NULL, 'UTENSILIOS', 6, 'ea', 7.3993, 'USD'),
  ('94', 'MT004', 'Mesh Strainer', 'Arcoroc, Mix Mesh Strainer Black Matte (L:3.149'''' X W:2.677''''), [''18/10 Stainless Steel''], (1 PC In A Case), Minimum Purchasing Unit CS', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Cardinal', 'Proepta', NULL, 'UTENSILIOS', 4, 'ea', 10.692, 'USD'),
  ('93', 'MT002', 'Julep Strainer', 'Arcoroc, Mix Julep Strainer Black Matte (L:7.007'''' X W:3.031''''), [''18/10 Stainless Steel''], (1 PC In A Case), Minimum Purchasing Unit CS', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Cardinal', 'Proepta', NULL, 'UTENSILIOS', 4, 'ea', 9.666, 'USD'),
  ('121', 'CHBST112', 'Bottle Stopper', 'Champagne Bottle "Popper-Stopper", stainless steel', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'American Metalcraft', 'Equipo Hotel', NULL, 'UTENSILIOS', 4, 'ea', 9.22, 'USD'),
  ('72', 'FP332', 'Mixing Glass', 'Arcoroc, Broadway Mixing Beaker 24.0 Oz (H:6.0'''' T:4.38'''' M:4.38'''' B:3.63''''), [''Soda Lime Glass''], (6 PC In A Case), Minimum Purchasing Unit CS
Dimensions 6(h) x 4.37(w) x 4.37(d)', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Cardinal', 'Proepta', NULL, 'UTENSILIOS', 4, 'ea', 8.96, 'USD'),
  ('112', 'CAP07', 'Bar Knife', 'Ellis Bar Knife, 9" overall, 4-1/2" blade, stainless steel blade, POM handle, Arcoroc, Mix', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Cardinal', 'Proepta', NULL, 'UTENSILIOS', 4, 'ea', 8.892, 'USD'),
  ('96', 'CAP09', 'Muddler', 'Muddler, 9-5/8", stainless steel, Arcoroc, Mix', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Cardinal', 'Proepta', NULL, 'UTENSILIOS', 4, 'ea', 8.163, 'USD'),
  ('113', 'SS-821', 'Sharpening Stone', 'Sharpening Stone, 8" x 2" x 1"H, rectangular, fine/medium grain, carbonized silicone (Qty Break = 12 each)', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Winco', 'Mepsa', NULL, 'UTENSILIOS', 2, 'ea', 14.9357, 'USD'),
  ('97', 'CAP01', 'Tongs, Tweezer', 'Tweezers, 6-1/4", stainless steel, Arcoroc, Mix', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Cardinal', 'Proepta', NULL, 'UTENSILIOS', 8, 'ea', 3.591, 'USD'),
  ('119', '7770-C', 'Bottle Stopper', 'VacuVin® Vacuum Wine Preservation, includes: (1) 5" x 2-7/8" white pump, (1) 1-3/4" long gray stopper (carded)', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Franmara', 'Franmara', NULL, 'UTENSILIOS', 4, 'ea', 6.5, 'USD'),
  ('115', '100MCCW135', 'Measuring Cup', 'Camwear® Measuring Cup, 1 qt., molded handle, dishwasher safe, polycarbonate, clear, NSF', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Cambro', 'Equipo Hotel', NULL, 'UTENSILIOS', 2, 'ea', 9.53, 'USD'),
  ('73', '2.5.003.00.277', 'Bar Ice Tongs', 'Ice/Sugar Tong 6” (15cm)', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Fortessa', 'Hotel Depot', NULL, 'UTENSILIOS', 4, 'ea', 4.71, 'USD'),
  ('122', 'E5604', 'Lemon Lime Zester', 'Cash & Carry FirmGrip® Zester/Lemon Peeler, 5-3/4" x 1-1/8" x 7/8", dishwasher safe, ergonomic soft grip handle, stainless steel, black (individually carded) (1 each minimum order)', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'TableCraft Products', 'Equipo Hotel', NULL, 'UTENSILIOS', 4, 'ea', 4.4, 'USD'),
  ('120', '7771-C', 'Bottle Stopper', 'VacuVin® Vacuum Wine Stopper, 1-3/4" long, ABS plastic, gray (2 each per pack) (carded)', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Franmara', 'Franmara', NULL, 'UTENSILIOS', 4, 'ea', 3, 'USD'),
  ('124', 'WCS871', 'Wine Key', 'Waiters Corkscrew - 4-1/2″ L x 7/8″ W x 7/8" - Stainless Steel', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'American Metalcraft', 'Equipo Hotel', NULL, 'UTENSILIOS', 4, 'ea', 2.85, 'USD'),
  ('102', '396', 'Bottle Opener', 'Pocket Bottle Opener, 7" flat, dishwasher safe, stainless steel (1 each minimum order)', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'TableCraft Products', 'Equipo Hotel', NULL, 'UTENSILIOS', 6, 'ea', 1.63, 'USD'),
  ('105', 'PF-32', 'Funnel', 'Funnel, 32 oz., 6-1/4" dia., round, plastic, white (Qty Break = 6 each)', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Winco', 'Mepsa', NULL, 'UTENSILIOS', 2, 'ea', 3.3434, 'USD'),
  ('31', 'JH-02', 'Jamon Iberico Stand', 'Deluxe Solid Hardwood Ham Holder - ''Salamanca''
Handmade from African Sapele Hardwood', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'La Tienda', 'Proepta', NULL, 'UTENSILIOS', 1, 'ea', 77.71, NULL),
  ('61', 'GLA-MUL12C', 'Moscow Mule', 'MOSCOW MULE MUG - COPPER / UNENGRAVED / 12oz (360ml)', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Cocktail Kingdom', 'Equipo Hotel', NULL, 'UTENSILIOS', 15, 'ea', 17.49, 'USD'),
  ('65', 'BIS07.001866', 'Cocktail Smoker', 'Bisetti Whisky Smoker With Stainless Steel Filter In Wenge Beech Wood', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Bisetti', 'Mepsa', NULL, 'UTENSILIOS', 5, 'ea', NULL, 'USD'),
  ('98', 'OXO Y PEELER', 'Vegetable Peeler, Manual', 'OXO Good Grips Y Peeler, one size, multi', (SELECT id FROM areas WHERE name = 'St Regis Bar' LIMIT 1), 'Custom', 'Proepta', NULL, 'UTENSILIOS', 2, 'ea', NULL, NULL),
  ('438', '200666F MB', 'Palace wine cooler stand materic bronze', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Mepra', 'Proepta', 'Buckets for Stand', 'UTENSILIOS', 20, 'ea', 827.5686, 'USD'),
  ('357', NULL, 'AURORE Portable and elegant wireless lamp in a warm terracotta tone.', 'Height: 30 cm
Lampshade diameter: 18 cm', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Table Lamp', NULL, 35, 'ea', 427.72, 'USD'),
  ('437', '200668 MB', 'Giotto wine cooler 24 cm, .75L materic bronze', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Mepra', 'Proepta', 'Tea Pot', 'UTENSILIOS', 28, 'ea', 390.13, 'USD'),
  ('361', NULL, 'Napkin napkin made from a linen/cotton blend. Features a refined beige tone with contrasting terracotta edging.', '45x45', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 1650, 'ea', 11.61, 'USD'),
  ('414', NULL, 'Water glass featuring a two-tone design in clear and teal. A vibrant accent', 'Breakfst/Lunch', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 600, 'ea', 29.41, 'USD'),
  ('363', NULL, 'Ceramic tea cup with matching saucer in quartz glaze. Suitable for both tea and coffee service.', 'Tea / Coffe Service', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 525, 'ea', 31.87, 'USD'),
  ('416', NULL, 'Amber-toned water glass. Warm and earthy', 'Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 600, 'ea', 23.53, 'USD'),
  ('364', NULL, 'Versatile ceramic mug in a quartz finish, perfect for serving tea or coffee', 'Tea / Coffe Service', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 535, 'ea', 26.1, 'USD'),
  ('388', NULL, 'Classic ceramic plate in a warm sand colour handcrafted by local artisans in Mexico.', 'Breakfast/Lunch', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 500, 'ea', 23.65, 'USD'),
  ('374', NULL, 'Artisan-crafted ceramic bowl with a scalloped design. Handmade by local makers in Mexico', 'Breakfast/Lunch', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 400, 'ea', 28, 'USD'),
  ('343', NULL, 'Steak knife with a natural bamboo handle', '23 cm', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom Silverware', NULL, 377, 'ea', 20.78, 'USD'),
  ('337', NULL, 'Dinner knife with a natural bamboo handle', '23cm', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom Silverware', NULL, 377, 'ea', 19.81, 'USD'),
  ('338', NULL, 'Side Knife with a natural bamboo handle', '20 cm', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom Silverware', NULL, 377, 'ea', 19.81, 'USD'),
  ('389', NULL, 'Lola Starter Plate with scalloped rim, handmade by local artisans in Mexico.', 'Lunch/Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 250, 'ea', 41.69, 'USD'),
  ('382', NULL, 'Ceramic dinner plate featuring the Ondas (wave) design in a rich teal glaze. Handmade by artisans in South America.', 'Lunch', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 250, 'ea', 41.6, 'USD'),
  ('354', NULL, 'Textured placemat featuring a wave-inspired design in natural fiber with navy accents. Handcrafted in South America.', '35cm', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom Placemat Dinner', NULL, 250, 'ea', 41.46, 'USD'),
  ('369', NULL, 'Functional stacking bowl with a warm Terre Cuite glaze. Ideal for cereal or fruit.', 'Breakfast', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 600, 'ea', 15.98, 'USD'),
  ('387', NULL, 'Classic ceramic bread/small plate in a warm sand colour handcrafted by local artisans in Mexico.', 'Breakfast/Lunch', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 500, 'ea', 17.96, 'USD'),
  ('335', NULL, 'Side fork with a  natural bamboo handle', '19cm', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom Silverware', NULL, 377, 'ea', 16.66, 'USD'),
  ('336', NULL, 'Dinner fork with a natural bamboo handle', '22 cm', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom Silverware', NULL, 377, 'ea', 16.66, 'USD'),
  ('339', NULL, 'Soup Spoon wit a a natural bamboo handle', '22cm', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom Silverware', NULL, 377, 'ea', 16.66, 'USD'),
  ('341', NULL, 'Dessert spoon with a a natural bamboo handle', '19 cm', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom Silverware', NULL, 377, 'ea', 16.66, 'USD'),
  ('441', NULL, NULL, NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Pantheon', 'Pantheon', '36" wooden bag stand', 'UTENSILIOS', 28, 'ea', 161.1, 'USD'),
  ('373', NULL, 'Organic-shaped ceramic bowl in Wabi Blanc glaze.', 'Buffet Display/ Breakfast', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 200, 'ea', 40, 'USD'),
  ('383', NULL, 'Ceramic dinner plate with a Helecho (fern) design in deep teal. Handmade in South America.', 'Breakfast', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 250, 'ea', 32, 'USD'),
  ('342', NULL, 'English tea spoon with a natural bamboo handle', '13 cm', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom Silverware', NULL, 377, 'ea', 14.7, 'USD'),
  ('362', NULL, 'Elegant ceramic espresso cup and matching saucer in a quartz finish.', 'Tea / Coffe Service', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 265, 'ea', 29.41, 'USD'),
  ('353', NULL, 'Handwoven placemat in a delicate flower shape, made from natural Iraca palm. A beautiful artisanal touch to the table. crafted in South America.', '35cm', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom Placemat Lunch', NULL, 250, 'ea', 29, 'USD'),
  ('367', NULL, 'Small Domus-style French press with a hand-woven wicker handle.', 'Tea / Coffe Service', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 50, 'ea', 100.76, 'USD'),
  ('386', NULL, 'Starter plate in the Flor pattern with a rich rust red finish. Perfect for light courses, handmade in South America.', 'Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 200, 'ea', 35.21, 'USD'),
  ('399', NULL, 'Stand, Handmade from original Colombian black clay with rattan sleve, crafted by local artisans in South America. Ideal for presenting finger foods with rustic elegance.', 'Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 50, 'ea', 139.87, 'USD'),
  ('398', NULL, 'Silver-plated cup in a classic julep shape for serving chips or fries', 'Lunch/Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 100, 'ea', 34.55, 'USD'),
  ('372', NULL, 'Softly rounded ceramic bowl in a subtle Pêche Blanche (white peach) glaze.', 'Breakfast', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 200, 'ea', 34.31, 'USD'),
  ('375', NULL, 'Classic ceramic coupe bowl in a warm sand colour handcrafted by local artisans in Mexico.', 'Lunch/Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 200, 'ea', 33.52, 'USD'),
  ('384', NULL, 'ceramic dinner plate in Cascos design with a rustic red glaze. Handmade by artisans in South America.', 'Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 250, 'ea', 25.61, 'USD'),
  ('371', NULL, 'Small ceramic bowl with a stackable design and matte Craie glaze.', 'Breakfast', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 500, 'ea', 12.74, 'USD'),
  ('423', 'RL-7116-NB', 'Tortilla Bowl With  Marble Lid, 18 X 5 cm Tall, Marble Black/White Mexican', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Rolikka', 'Proepta', 'Bread Bowl and Tortillera', 'UTENSILIOS', 72, 'ea', 48.88, 'USD'),
  ('385', NULL, 'Starter plate with a delicate Flor design in teal glaze. Handmade in South America', 'Breakfast/Lunch', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 300, 'ea', 19.22, 'USD'),
  ('439', 'TPZT017', 'Charola de servicio (Guamuchil) - 39cm D x 3cm H', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Oaxifornia', 'Oaxifornia', 'Beverage Tray', 'UTENSILIOS', 38, 'ea', 1608, 'MXN'),
  ('490', 'SET_CSW', 'Walnut Porcelain Condiment Set - 3.9 x 10.2 x 2.5 - Features: Contains: 3 x BU_PCD001 + 1 x BU_PCP011; Each pot holds liquid 85 ml (approx 3 oz) - Stock Tier: Silver', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Tray with Condiment Dishes', 'UTENSILIOS', 40, 'ea', 96.0575, 'USD'),
  ('377', NULL, 'Small artisan ramekin, handmade in Mexico.', 'Breakfast/Lunch/Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 400, 'ea', 13.62, 'USD'),
  ('379', NULL, 'Medium sized ceramic serving bowl with a scalloped rim, handmade by local artisans in Mexico. Finished in a warm terracotta colour.', 'Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 100, 'ea', 52.59, 'USD'),
  ('454', '200443 MB', 'Stile coaster / bread tray materic bronze 12 cm', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Mepra', 'Proepta', 'Wine Coaster', 'UTENSILIOS', 40, 'ea', 60.125, 'USD'),
  ('421', 'SET_CSO', 'Oak Porcelain Condiment Set
Mat Oak, Oiled and Porcelain
Dim 260 × 100 × 65 mm
10.2 × 3.9 × 2.5 in
Vol 85 ml
3 oz', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Open Jam Presentation', 'UTENSILIOS', 40, 'ea', 77.63, 'USD'),
  ('356', NULL, 'Delicate spiral-shaped napkin ring with a floral design. Handmade by artisans in South America, perfect for adding a subtle decorative element.', '12cm', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Napkins ring lunch', NULL, 150, 'ea', 19.59, 'USD'),
  ('376', NULL, 'Artisan-crafted ceramic platewith a generous wide rim, andmade in Mexico', 'Lunch/Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 200, 'ea', 24, 'USD'),
  ('355', NULL, 'Jaguar shaped napkin ring  adding a unique and whimsical detail to table settings.', 'l:10 x w:3 x h:8 cm', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Napkins ring dinner', NULL, 175, 'ea', 18.43, 'USD'),
  ('366', NULL, 'Matching ceramic creamer in Tamaris glaze. Complements the sugar bowl with its soft pink tone and artisanal crackle detail.', 'Tea / Coffe Service', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 150, 'ea', 30.69, 'USD'),
  ('349', '1170500053U', 'Butter Knife', 'utter Knife Gualtiero Marchesi St. steel', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Broggi', 'Proepta', NULL, 'PLAQUE', 323, 'ea', 8.172, 'USD'),
  ('417', NULL, 'ceramic carafe inspired by the traditional Cántaro. Perfect for serving water or juice with artisanal flair. handmade local artisans in Mexico', 'Breakfst/Lunch/Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 80, 'ea', 51.37, 'USD'),
  ('483', 'BU_OP1121', 'Tilt Large Round Oak Plinth

Mat Oak, Oiled
Dim 320ø × 25 mm
11.6ø × 1 in_x000D_', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Wooden Plate Big', 'UTENSILIOS', 24, 'ea', 119.7875, 'USD'),
  ('442', '26.112412', 'Zwiesel Glass Pure Sauvignon Blanc Glass, (0) 13.8 oz., dishwasher safe, lead free, sheer rim, crystal glass (0.34 each weight) (Per case = 6 each) (ecomm dealers 4 case increments; special box will be added cost)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Fortessa', 'Hotel Depot', 'AP Wine Glass 14oz', 'CRISTALERIA', 264, 'ea', 8.95, 'USD'),
  ('418', NULL, 'A bottle-shaped carafe perfect for water or juice,', 'Breakfst/Lunch/Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 35, 'ea', 76.11, 'USD'),
  ('334', NULL, 'Chopstick rest shaped like a  river pebble. Minimalist and organic in design', '25 cm', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom Silverware', NULL, 60, 'ea', 44.22, 'USD'),
  ('360', NULL, 'Handmade ceramic vase crafted by local artisans in Mexico. Larger vase to add character .', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom Décor', NULL, 3, 'ea', 424.89, 'USD'),
  ('378', NULL, 'Tapas bowl in a rich rust red finish (Cascos), handmade in South America. Small bowl / Individual tapas portions', 'Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 200, 'ea', 18.14, 'USD'),
  ('496', 'BW_OR2103', 'Large Rustic Olive Wood Bowl
Mat Olive Wood, Oiled
Dim 290ø × 100 mm
1.4ø × 3.9 in', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Wooden Bowl 1', 'UTENSILIOS', 6, 'ea', 422.2925, 'USD'),
  ('381', NULL, 'Large flat plate in warm terracotta, ideal for pizza. Handmade by local artisans in Mexico', 'Lunch/Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 150, 'ea', 23.81, 'USD'),
  ('410', NULL, 'Cake stand crafted from smooth champagne-toned marble, Perfect for layering the buffet display.', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 15, 'ea', 165.83, 'USD'),
  ('390', NULL, 'ceramic bread plate with a teal rim detail. Handcrafted by artisans in South America', 'Lunch', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 200, 'ea', 17.07, 'USD'),
  ('566', 'VM5280BK-12', 'Versa-Mat® Bar Mat Tile/Shelf Liner, 12" x 12", interlocking, easy to cut, raised surface for airflow, dishwasher safe, rubber, black, NSF', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'San Jamar', 'Sandolat', 'Bar Mat', 'UTENSILIOS', 36, 'ea', 65.7329, 'USD'),
  ('489', 'BU_SF21346', 'Alto Walnut Three-Tier cake stand - 12.8 x 12.8 x 22.9 - Stock Tier: Gold', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Display Stand', 'UTENSILIOS', 4, 'ea', 572.7925, 'USD'),
  ('365', NULL, 'Ceramic sugar bowl featuring a subtle antique pink Tamaris glaze with a finely crackled finish.', 'Tea / Coffe Service', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 100, 'ea', 31.87, 'USD'),
  ('467', 'SET_MJDTR003', 'Tilt Mini Juice Dispenser
+ Stainless Steel Mini Triple Riser Set

 Mat Glass, Soda Lime and Stainless Steel
 Dim 383 × 125 × 417 mm
15 × 5 × 16.4 in
 Vol Each jar holds 3 litres
Approx. 101 fl oz', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Juice Service Station', 'UTENSILIOS', 2, 'ea', 1111.2675, 'USD'),
  ('497', 'BW_OR2102', 'Medium Rustic Olive Wood Bowl
Mat Olive Wood, Oiled
Dim 250ø × 85 mm
9.8ø × 3.3 in', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Wooden Bowl 2', 'UTENSILIOS', 6, 'ea', 370.09, 'USD'),
  ('358', NULL, 'Handmade ceramic vase crafted by local artisans in Mexico. A unique decorative piece with artisanal charm.', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom Décor', NULL, 20, 'ea', 110.63, 'USD'),
  ('435', 'ADSEAC14', 'Seafood Tray, 128 oz., 14" dia. x 2-1/2"H, round, double-wall, hand-wash only, hammered aluminum, copper (hand wash only)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'American Metalcraft', 'Equipo Hotel', 'Seafood Tray', 'UTENSILIOS', 24, 'ea', 88.4, 'USD'),
  ('476', 'BU_BD1ONL', 'Flow Oak Single Bread Box
 •
Mat Oak, Lacquered and Acrylic
Dim 349 × 176 × 190mm
13.7 × 6.9 × 7.4 in', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Single Bread Box', 'UTENSILIOS', 6, 'ea', 340.165, 'USD'),
  ('370', NULL, 'Minimalist ceramic eggcup finished in a soft Craie (chalk) glaze.', 'Breakfast', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 200, 'ea', 14.52, 'USD'),
  ('392', NULL, 'Oval ceramic platter with the Cascos design featured on the rim, finished in a rich rust red glaze. Handmade by artisans in South America.', 'Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 50, 'ea', 57.37, 'USD'),
  ('393', NULL, 'Oval ceramic platter with the Helecho design featured on the rim, finished in a deep teal glaze. Handmade by artisans in South America.', 'Lunch', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 50, 'ea', 57.37, 'USD'),
  ('408', NULL, 'Large Gavivi Mango Wood Stand. Elevated display stand crafted from solid mango wood.', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 15, 'ea', 128.98, 'USD'),
  ('359', NULL, 'Handmade ceramic vase crafted by local artisans in Mexico. Medium sized vase designed for buffet or larger tables. Adds height to larger settings.', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom Décor', NULL, 5, 'ea', 191.36, 'USD'),
  ('508', 'SET_GJO01', 'Tilt Oak Mini Glass Jar Set. Mini Glass Jar, lids and  triple base', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Mini Glass Jar Set', 'UTENSILIOS', 6, 'ea', 310.205, 'USD'),
  ('415', NULL, 'Juice Glasses', 'Breakfast', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 280, 'ea', 6.31, 'USD'),
  ('419', NULL, 'large or Juices display', 'Buffet', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 40, 'ea', 43.76, 'USD'),
  ('403', NULL, 'Buffet Diplay Bowl, handmade by local artisans in Mexico. Large. perfect for layering the buffet table', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 30, 'ea', 56.76, 'USD'),
  ('394', NULL, 'Organic-shaped oval platter with a warm terracotta finish. Handmade by local artisans in Mexico', 'Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 50, 'ea', 48.58, 'USD'),
  ('397', NULL, 'Alto Plano Ramikin for butter  handmade local artisans in Mexico', 'Breakfast/Lunch/Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 200, 'ea', 12, 'USD'),
  ('412', NULL, 'a small marble bowl, ideal for  condiments', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 50, 'ea', 33.17, 'USD'),
  ('512', '660143', '(B1+BM1231COCV-283-2593) Cocotte, 118 oz., 12-1/4"Dia. x 3-1/4"H, round, induction ready, with porcelain lid, oven, microwave, freezer & dishwasher safe, porcelain, alabaster white, Bombance collection, (US stocked item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Revol', 'Proepta', 'Casserole Dish 2', 'UTENSILIOS', 6, 'ea', 275.565, 'USD'),
  ('513', '660144', '(B1+BM1231COCV-286-2593) Cocotte, 118 oz., 12-1/4"Dia. x 3-1/4"H, round, induction ready, with porcelain lid, oven, microwave, freezer & dishwasher safe, porcelain, cloud gray, Bombance collection, (US stocked item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Revol', 'Proepta', 'Casserole Dish 2', 'UTENSILIOS', 6, 'ea', 275.565, 'USD'),
  ('434', 'ADSEAC12', 'Seafood Tray, 80 oz., 12" dia. x 2-1/4"H, round, double-wall, hand-wash only, hammered aluminum, copper (hand wash only)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'American Metalcraft', 'Equipo Hotel', 'Seafood Tray', 'UTENSILIOS', 24, 'ea', 66.84, 'USD'),
  ('409', NULL, 'Small Gavivi Mango Wood Stand Perfect for layering the buffet display.', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 15, 'ea', 104.81, 'USD'),
  ('380', NULL, 'Oaxaca  Bowl, ceramic bowl handmade local artisans in Mexico', 'Lunch / Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 100, 'ea', 22.45, 'USD'),
  ('468', 'SET_MJD', 'Tilt Mini Juice Dispenser

Mat Glass, Soda Lime
and Stainless Steel
Dim 125ø × 322 mm
4.92ø × 12.68 in
Vol Holds 3 litres
(approx. 101 fl oz)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Extra Glass Containers for Juice Dispenser', 'UTENSILIOS', 6, 'ea', 261.7825, 'USD'),
  ('426', 'HCHO25-AGA', 'Charola Rectangular 30 cm - Color Orizaba', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Hacha', 'Hacha', 'Rectangular Tray 30 cm', 'UTENSILIOS', 54, 'ea', 466, 'MXN'),
  ('455', 'BU_LH006', 'Flow Copper PVD Stainless Steel Label Holder - Dim 1.2x1.5"', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Lable Holder', 'UTENSILIOS', 60, 'ea', 24.4475, 'USD'),
  ('402', NULL, 'Serving Bowl with scalloped edge, handmade by local artisans in Mexico.', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 50, 'ea', 28, 'USD'),
  ('395', NULL, 'Oval platter with a natural, irregular shape and soft sand-toned glaze. Crafted by hand in Mexico', 'Lunch/Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 50, 'ea', 39.93, 'USD'),
  ('504', 'BU_TG011', 'Tilt Oak Tongs
Mat Oak, Oiled
Dim 300 × 40 × 25 mm
11.81 × 1.57 × 0.98 in', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Wooden Tongs', 'UTENSILIOS', 36, 'ea', 38.045, 'USD'),
  ('486', 'QU01', 'Oval Mini Crock

L 7 1/4" W 4 7/8"
H 1 7/8" (14 3/4 oz)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Steelite', 'Steelite', 'Miniature 3 Cast Iron', 'UTENSILIOS', 72, 'ea', 16.2699, 'USD'),
  ('391', NULL, 'Bread plate in warm terracotta, handmade by local artisans in Mexico', 'Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 200, 'ea', 9.68, 'USD'),
  ('516', '660153', '(B1+BM1229COCVV-283-2593) Cocotte, 135 oz., 11-1/2"Dia. x 3-3/4"H, round, induction ready, with glass lid, oven, microwave, freezer & dishwasher safe, porcelain, albaster white, Bombance collection, (US stocked item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Revol', 'Proepta', 'Casserole Dish 3', 'UTENSILIOS', 6, 'ea', 222.895, 'USD'),
  ('517', '660154', '(B1+BM1229COCVV-286-2593) Cocotte, 135 oz., 11-1/2"Dia. x 3-3/4"H, round, induction ready, with glass lid, oven, microwave, freezer & dishwasher safe, porcelain, cloud gray, Bombance collection, (US stocked item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Revol', 'Proepta', 'Casserole Dish 3', 'UTENSILIOS', 6, 'ea', 222.895, 'USD'),
  ('487', 'QU009', 'Round Mini Crock

L 6 1/8" W 4 3/4"
H 1 3/4" (11 1/2 oz)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Steelite', 'Steelite', 'Miniature 3 Cast Iron', 'UTENSILIOS', 72, 'ea', 15.8268, 'USD'),
  ('440', NULL, NULL, NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Pantheon', 'Pantheon', 'Wooden Tray Jack', 'UTENSILIOS', 12, 'ea', 110.07, 'USD'),
  ('368', NULL, 'Modern teapot crafted from heat-resistant glass and stainless steel. Includes a built-in strainer for loose-leaf tea brewing.', 'Tea / Coffe Service', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 49, 'ea', 26.84, 'USD'),
  ('493', 'BU_RR6103', 'Tilt Tall Stainless Steel Frame •
Mat Stainless Steel
Dim 218ø × 265 mm
8.6ø × 10.4 in', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Riser 1', 'UTENSILIOS', 6, 'ea', 218.0675, 'USD'),
  ('424', 'HBW25-ORI', 'Charola Ovalada mediana 25 cm Color Tulum', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Hacha', 'Hacha', 'Oval Tray', 'UTENSILIOS', 54, 'ea', 401, 'MXN'),
  ('425', 'HCHO25-TUL', 'Charola Ovalada mediana 25 cm Color Agave', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Hacha', 'Hacha', 'Oval Tray', 'UTENSILIOS', 54, 'ea', 401, 'MXN'),
  ('400', NULL, 'Oil Bottle – Terracotta Matte Glaze', 'Lunch/Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 35, 'ea', 37, 'USD'),
  ('411', NULL, 'Rustic cake stand made from warm-toned mango wood.', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 10, 'ea', 128.98, 'USD'),
  ('396', NULL, 'Seving Platter Rectangular small', 'Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 50, 'ea', 36.76, 'USD'),
  ('505', 'BU_SP011', 'Tilt Oak Spoon •
Mat Oak, Oiled
Dim 245 × 80 × 38 mm
9.6 × 3.1 × 1.5', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Wooden Spoon', 'UTENSILIOS', 24, 'ea', 52.0625, 'USD'),
  ('351', NULL, 'Salt Mill Bistro set', 'brown', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Peugeot', 'Peugeot', NULL, 'UTENSILIOS', 36, 'ea', 29.4, 'USD'),
  ('352', NULL, 'Pepper Mill Bistro set', 'beige', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Peugeot', 'Peugeot', NULL, 'UTENSILIOS', 36, 'ea', 29.4, 'USD'),
  ('575', 'Custom', 'Rectangular Wood tray 11 x 9"', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Oaxifornia', 'Oaxifornia', 'Marking Tray', 'UTENSILIOS', 24, 'ea', 1001, 'MXN'),
  ('401', NULL, 'Ceramic small jug for sauces', 'Lunch/Dinner', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 70, 'ea', 17.47, 'USD'),
  ('488', 'HPTC15-ORI', 'Portacucharon diametro 16 cm / color orizaba', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Hacha', 'Hacha', 'Spoon Rest Hacha', 'UTENSILIOS', 58, 'ea', 342, 'MXN'),
  ('471', 'BU_CS006', 'Medium Oak Cake Stand - 12.6 x 12.6 x 5.12 - Stock Tier: Gold', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Medium Cake Stand', 'UTENSILIOS', 6, 'ea', 198.1, 'USD'),
  ('510', '660151', '(B1+BM1226COCVV-283-2593) Cocotte, 135 oz., 10-1/4"Dia. x 4-3/4"H, round, with glass lid, induction ready, microwave, freezer & dishwasher safe, porcelain, alabaster white, Bombance collection, (US stocked item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Revol', 'Proepta', 'Casserole Dish 1', 'UTENSILIOS', 6, 'ea', 197.885, 'USD'),
  ('511', '660152', '(B1+BM1226COCVV-286-2593) Cocotte, 135 oz., 10-1/4"Dia. x 4-3/4"H, round, induction ready, with glass lid, oven, microwave, freezer & dishwasher safe, porcelain, cloud gray, Bombance collection, (US stocked item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Revol', 'Proepta', 'Casserole Dish 1', 'UTENSILIOS', 6, 'ea', 197.885, 'USD'),
  ('482', 'BU_OP1109', 'Tilt Round Oak Plinth

 Mat Oak, Oiled
 Dim 218ø × 25 mm
8.6ø × 1 in', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Wooden Plate Small', 'UTENSILIOS', 24, 'ea', 49.14, 'USD'),
  ('344', NULL, 'Serving Spoon & Fork a natural bamboo handle', '26cm', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom Silverware', NULL, 35, 'ea', 33.34, 'USD'),
  ('507', 'BU_OL001', 'Tilt Oak Jar Lid•
Mat Oak, Oiled
Dim 207ø × 30 mm
8.1ø × 1.1 in', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Oak Jar Lid', 'UTENSILIOS', 9, 'ea', 128.9925, 'USD'),
  ('404', NULL, 'Buffet Diplay Bowl, handmade by local artisans in Mexico. Medium. perfect for layering the buffet table', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 30, 'ea', 38.28, 'USD'),
  ('494', 'BU_RR6102', 'Tilt Medium Stainless Steel Frame •
Mat Stainless Steel
Dim 218ø × 180 mm
8.6ø × 7 in', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Riser 2', 'UTENSILIOS', 6, 'ea', 188.8775, 'USD'),
  ('444', '26.112415', 'Zwiesel Glass Pure Champagne Flute Glass, (7) 7.1 oz., dishwasher safe, lead free, sheer rim, crystal glass (0.3 each weight) (Per case = 6 each) (ecomm dealers 4 case increments; special box will be added cost)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Fortessa', 'Hotel Depot', 'Champagne Glass', 'CRISTALERIA', 106, 'ea', 8.95, 'USD'),
  ('443', '26.11242', 'Zwiesel Glass Pure Bordeaux Glass, (130) 23 oz., dishwasher safe, lead free, sheer rim, crystal glass (0.41 each weight) (Per case = 6 each) (ecomm dealers 4 case increments; special box will be added cost)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Fortessa', 'Hotel Depot', 'Specialty Wine Glass 23oz', 'CRISTALERIA', 106, 'ea', 8.87, 'USD'),
  ('340', NULL, 'DEMI-TASSE SPOON for Espresso', '10cm', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom Silverware', NULL, 350, 'ea', 2.93, 'USD'),
  ('461', '122 05 02 710', 'Serving Spoon 34 cm', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Broggi', 'Proepta', 'Serving Spoons', 'UTENSILIOS', 36, 'ea', 24.036, 'USD'),
  ('552', 'RA03', 'Cutting Board, 24"W x 18"D x 2-1/4" thick, edge grain construction, Northern Hard Rock Maple, with Oil Finish, hand grips on each end, reversible', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'John Boos', 'John Boos', 'Cutting Board', 'UTENSILIOS', 4, 'ea', 250, 'USD'),
  ('436', '4952Q805', 'Oxford Bottle, 1.0 qt, 3.5" x 12.5", Swing Bottle, Bottle, Bormioli Rocco, Soda Lime (minimum = case quantity, 6 each per case) (STOCK item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Steelite', 'Steelite', 'Water Bottle', 'UTENSILIOS', 94, 'ea', 8.8772, 'USD'),
  ('405', NULL, 'Buffet Diplay Bowl, handmade by local artisans in Mexico. Small. perfect for layering the buffet table', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 30, 'ea', 31.68, 'USD'),
  ('429', 'HSC9-AGA', 'Charola Ovalada para sugar Creamer - Charola Ovalo Chica 17 cm - Color Orizaba', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Hacha', 'Hacha', 'Sugar and Creamer Tray', 'UTENSILIOS', 47, 'ea', 331, 'MXN'),
  ('445', 'Z1200019', 'Beer Glass, 14 oz., 3" x 7-1/2", stemmed, Stolzle, Stemmed Beer, Soda Lime (minimum = case quantity, 24 per case) (Stock Item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Stolzle', 'Proepta', 'Beer Glass', 'CRISTALERIA', 128, 'ea', 6.084, 'USD'),
  ('514', '660160', '(A1+BM1334-283-2593) Dish, 111-1/2 oz., 13-1/2" x 9-3/4" x 2-1/2"H, rectangular, handled, induction ready, oven, microwave, freezer & dishwasher safe, porcelain, alabaster white, Bombance, (US stocked item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Revol', 'Proepta', 'Rectangular Dish', 'UTENSILIOS', 6, 'ea', 146.315, 'USD'),
  ('501', 'BW_BC004', 'Tilt Coupe Large Bowl

Mat Fine Bone China
Dim 364ø × 88 mm
14.33 × 14.33 × 3.46 in
Vol 7.1 litres
Approx. 240 fl oz', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'China Bowl 1', 'UTENSILIOS', 6, 'ea', 145.9325, 'USD'),
  ('431', 'HRMK7-ORI', 'Cremera - 8oz - Color Orizaba', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Hacha', 'Hacha', 'Creamer 8 oz', 'UTENSILIOS', 47, 'ea', 304, 'MXN'),
  ('457', '305 05 81 539', '18 cm Pastry / bread tong', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Broggi', 'Proepta', 'Serving Tongs', 'UTENSILIOS', 36, 'ea', 23.688, 'USD'),
  ('522', '1850-4-60HL', 'Cold Condiment Display, 16"W x 6"D x 4"H, (3) 16 oz., round glass jars with silicone lined stainless steel hinged lids, cooling pucks, rectangular bamboo base', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cal-Mil', 'Equipo Hotel', 'Condiment Caddy', 'UTENSILIOS', 4, 'ea', 206.91, 'USD'),
  ('420', 'BW_OBS', 'Small Olive Wood Bowl Mat Olive Wood, Oiled, Dim 115ø × 38 mm, 4.5ø × 1.5 in', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Butter Presentation', 'UTENSILIOS', 30, 'ea', 26.565, 'USD'),
  ('479', 'BU_RS002', 'Flow Oak 1.1 Two-Tier Stand
 •
Mat Oak, Oiled
Dim 574 × 323 × 441 mm
22.6 × 12.7 × 17.4 in
MOQ 1
Note Includes 2 × BU_FR001 Trays
Assembly required', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Two-Tier Stand Long', 'UTENSILIOS', 1, 'ea', 795.4625, 'USD'),
  ('503', 'BW_BC003', 'Tilt Coupe Large Platter
Mat Fine Bone China
Dim 364ø × 46 mm
14.33 × 14.33 × 1.81 in
Vol 3.4 litres
Approx. 114 fl oz', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'China Platter 1', 'UTENSILIOS', 6, 'ea', 129.9375, 'USD'),
  ('413', NULL, 'Cheese Knife Set', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 10, 'ea', 77.38, 'USD'),
  ('519', 'PORTHOLE', 'The Porthole is a simple, beautiful infusion vessel designed by Martin Kastner 7" x 7" x 2" (17cm x 17cm x 5cm) 13 fl oz (390ml)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Crucial Detail', 'Abastohotel', 'Porthole', 'UTENSILIOS', 6, 'ea', 128.57, 'USD'),
  ('523', '20045622 MB', 'Stile napkin holder 22X22 cm materic bronze', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Mepra', 'Mepsa', 'Napkin Holder', 'UTENSILIOS', 2, 'ea', 367.8588, 'USD'),
  ('525', 'RBB02', 'Band, 1/2"D, silicone, blue, Arcoroc, Mix (fits OL166, OL167) (stock item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cardinal', 'Proepta', 'Silicone Bands', 'UTENSILIOS', 0, 'pk', 364.5, 'USD'),
  ('526', 'RBP01', 'Band, 1/2"D, silicone, pink, Arcoroc, Mix (fits OL166, OL167) (stock item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cardinal', 'Proepta', 'Silicone Bands', 'UTENSILIOS', 0, 'pk', 364.5, 'USD'),
  ('527', 'RBY03', 'Band, 1/2"D, silicone, yellow, Arcoroc, Mix (fits OL166, OL167) (stock item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cardinal', 'Proepta', 'Silicone Bands', 'UTENSILIOS', 0, 'pk', 364.5, 'USD'),
  ('528', 'RBDG3', 'Band, 1/2"D, silicone, green, Arcoroc, Mix (fits OL166, OL167) (stock item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cardinal', 'Proepta', 'Silicone Bands', 'UTENSILIOS', 0, 'pk', 364.5, 'USD'),
  ('529', 'RBO05', 'Band, 1/2"D, silicone, orange, Arcoroc, Mix (fits OL166, OL167) (stock item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cardinal', 'Proepta', 'Silicone Bands', 'UTENSILIOS', 0, 'pk', 364.5, 'USD'),
  ('530', 'RBW06', 'Band, 1/2"D, silicone, white, Arcoroc, Mix (fits OL166, OL167) (stock item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cardinal', 'Proepta', 'Silicone Bands', 'UTENSILIOS', 0, 'pk', 364.5, 'USD'),
  ('531', 'RBR09', 'Band, 1/2"D, silicone, red, Arcoroc, Mix (fits OL166, OL167) (stock item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cardinal', 'Proepta', 'Silicone Bands', 'UTENSILIOS', 0, 'pk', 364.5, 'USD'),
  ('532', 'RBB06', 'Band, 1/2"D, silicone, black, Arcoroc, Mix (fits OL166, OL167) (stock item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cardinal', 'Proepta', 'Silicone Bands', 'UTENSILIOS', 0, 'pk', 364.5, 'USD'),
  ('533', 'RBBR7', 'Band, 1/2"D, silicone, brown, Arcoroc, Mix (fits OL166, OL167) (stock item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cardinal', 'Proepta', 'Silicone Bands', 'UTENSILIOS', 0, 'pk', 364.5, 'USD'),
  ('347', NULL, 'Olivewood Salad Servers', 'L 30cm X W 6.8cm X H 4cm', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom Silverware', NULL, 21, 'ea', 34.55, 'USD'),
  ('480', 'BU_FR001', 'Flow Oak 1.1 Tray
BU_FR001 •
Mat Oak, Oiled
Dim 530 × 325 × 40 mm
20.8 × 12.7 × 1.5 in', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Tray for Long Two Tier Stand', 'UTENSILIOS', 6, 'ea', 120.5575, 'USD'),
  ('506', 'BU_GJ001', 'Tilt Glass Jar•
 Mat Glass, Soda Lime
 Dim 218ø × 165 mm
8.6ø × 6.5 in
 Vol 3 litres
Approx. 101 fl oz', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Glass Jar Big', 'UTENSILIOS', 18, 'ea', 39.935, 'USD'),
  ('477', 'BU_RS001', 'Flow Oak 1.2 Two-Tier Stand
 •
Mat Oak, Oiled
Dim 309 × 323 × 441 mm
12.1 × 9.1 × 17.4 in
MOQ 1
Note Includes 2 × BU_FR002 Trays
Assembly required', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Two Tier Stand', 'UTENSILIOS', 1, 'ea', 700.245, 'USD'),
  ('448', 'FP303', 'Aeris By Chef And Sommelier, Zephyr Coupe 7.5 Oz (H:6.5'''' T:4.13'''' M:4.38'''' B:''''), [''Aeris Crystalline''], (24 PC In A Case), Minimum Purchasing Unit CS', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cardinal', 'Proepta', 'Coupe', 'CRISTALERIA', 53, 'ea', 11.214, 'USD'),
  ('350', '305 45 91 797', 'Steak Knife', 'Java steak knife, Ivory Handle', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Broggi', 'Proepta', NULL, 'PLAQUE', 48, 'ea', 11.856, 'USD'),
  ('473', 'HBW30-ORI', 'Ensaladera Grande 30cm Orizaba', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Hacha', 'Hacha', 'Big Salad Bowl', 'LOZA', 15, 'ea', 749, 'MXN'),
  ('499', 'BW_CO1903', 'Tilt Copper Bowl Large, Copper PVD and
Stainless Steel, 285ø × 100 mm
11.2ø × 3.9 in', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Copper Bowl 1', 'UTENSILIOS', 6, 'ea', 108.535, 'USD'),
  ('447', 'Z3460009', 'Water Tumbler Glass, 13-1/2 oz., 2-1/2" x 5-1/2", Kyoto, Stolzle, Crystalline (minimum = case quantity, 24 per case) (Stock Item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Stolzle', 'Proepta', 'Hi Ball Glass', 'CRISTALERIA', 106, 'ea', 5.148, 'USD'),
  ('478', 'BU_FR002', 'Flow Oak 1.2 Tray
 •
Mat Oak, Oiled
Dim 325 × 265 × 40 mm
12.7 × 10.4 × 1.5 in
MOQ 1
Note Compatible with all 1.2 products', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Tray for Two Tier Stand', 'UTENSILIOS', 6, 'ea', 104.4225, 'USD'),
  ('430', 'HCHO17-ORI', 'Ramekin 7 cm - Color Orizaba', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Hacha', 'Hacha', 'Ramekin and Sugar Bowl', 'LOZA', 62, 'ea', 168, 'MXN'),
  ('462', 'HPTC15-ORI', 'Portacucharon diametro 16 cm / color orizaba', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Hacha', 'Hacha', 'Spoon Rest Hacha', 'UTENSILIOS', 29, 'ea', 342, 'MXN'),
  ('495', 'BU_RR6101', 'Tilt Low Stainless Steel Frame •
Mat Stainless Steel
Dim 218ø × 95 mm
8.6ø × 3.7 in', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Riser 3', 'UTENSILIOS', 3, 'ea', 196.56, 'USD'),
  ('469', 'BU_CS005', 'Small Oak Cake Stand
BU_CS005 •
Mat Oak, Lacquered
Dim 157ø × 80 mm
6.1ø × 3.1 in', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Small Cake Stand', 'UTENSILIOS', 6, 'ea', 91.3675, 'USD'),
  ('345', NULL, 'Hand Carved Wood Serving Spoon', '23.5cm long', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom Silverware', NULL, 21, 'ea', 25.79, 'USD'),
  ('452', 'GM16P', 'Moscow Mule Mug, 16 oz., 3-1/4" dia. x 3-7/8"H, with brass handle, stainless steel, gold satin finish (hand wash only)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'American Metalcraft', 'Equipo Hotel', 'Moscow Mule', 'UTENSILIOS', 22, 'ea', 20.2, 'USD'),
  ('500', 'BW_CO1902', 'Tilt Copper Bowl Medium, Copper PVD and Stainless Steel, 250ø × 85 mm
9.8ø × 3.3 in', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Copper Bowl 2', 'UTENSILIOS', 6, 'ea', 85.0675, 'USD'),
  ('518', '656412', '(A6+BOPCIPM9013) Lid Rest, 5"W x 3-1/2"D, x 2-3/4"H, stainless steel, to present lids at the above the cocotte, Bombance, (US stocked item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Revol', 'Proepta', 'Lid rest', 'UTENSILIOS', 12, 'ea', 39.37, 'USD'),
  ('515', '660161', '(A1+BM1334-286-7025) Dish, 111-1/2 oz., 13-1/2" x 9-3/4" x 2-1/2"H, rectangular, handled, oven, microwave, freezer & dishwasher safe, porcelain, cloud gray, Bombance, (Ship from France)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Revol', 'Proepta', 'Rectangular Dish', 'UTENSILIOS', 6, 'ea', 77.415, 'USD'),
  ('458', '122 05 01 442', 'Sauce Ladle 15.6 cm', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Broggi', 'Proepta', 'Sauce Ladle', 'UTENSILIOS', 24, 'ea', 18.966, 'USD'),
  ('502', 'BW_BC002', 'Tilt Coupe Bowl
Mat Fine Bone China
Dim 262ø × 88 mm
10.31 × 10.31 × 3.46 in
Vol 3.4 litres
Approx. 114 fl oz', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'China Bowl 2', 'UTENSILIOS', 6, 'ea', 75.8275, 'USD'),
  ('450', 'P3882', 'Chef & Sommelier, Cabernet Cocktail 7.5 Oz (H:6.75'''' T:4.5'''' M:4.5'''' B:3.0''''), [''Krysta''], (12 PC In A Case), Minimum Purchasing Unit CS', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cardinal', 'Proepta', 'Martini', 'CRISTALERIA', 53, 'ea', 7.254, 'USD'),
  ('456', '903 05 81 004', '21 cm Hors d’oeuvre tongs', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Broggi', 'Proepta', 'Serving Tongs', 'UTENSILIOS', 36, 'ea', 12.24, 'USD'),
  ('472', 'BU_GC001', 'Large Glass Cloche - 11.61 x 11.61 x 5.71 - Features: Compatible with Large and Medium Cake Stands, Tilt Large Plinths - Stock Tier: Gold', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Medium Cake Stand Cloche', 'UTENSILIOS', 6, 'ea', 69.1075, 'USD'),
  ('474', 'HCHR30-ORI', 'Charola Rectangular 30 cm Orizaba', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Hacha', 'Hacha', 'Rectangular Tray', 'LOZA', 15, 'ea', 466, 'MXN'),
  ('475', 'HCHO30-ORI', 'Charola Ovalada Grande 30 cm Orizaba', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Hacha', 'Hacha', 'Oval Tray', 'LOZA', 15, 'ea', 466, 'MXN'),
  ('427', 'HCHR30-ORI', 'Salsero 9 cm - Color Tulum', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Hacha', 'Hacha', 'Sauce Bowl', 'LOZA', 36, 'ea', 168, 'MXN'),
  ('428', 'HSC9-TUL', 'Salsero 9 cm - Color Agave', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Hacha', 'Hacha', 'Sauce Bowl', 'LOZA', 36, 'ea', 168, 'MXN'),
  ('346', NULL, 'Wooden Tongs', 'L25.4cm x W5cm', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom Silverware', NULL, 28, 'ea', 12.9, 'USD'),
  ('549', 'JP9730', 'Cash & Carry Big Squeeze™ Juice Press, 11-1/2" x 7" x 17", manual, accommodates 5-3/4" glass, 3-pinion design, hand wash only, 18/8 stainless steel cone, cast iron construction, black coated finish, NSF (1 each minimum order)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'TableCraft Products', 'Equipo Hotel', 'Juicer, Lever / Crank Type', 'UTENSILIOS', 2, 'ea', 175.87, 'USD'),
  ('484', 'DV.501128', 'GLASS MINI FLUTE PILSNER SAMPLER D&V TASTERZ 3OZ', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Fortessa', 'Hotel Depot', 'Miniature 1 Glass', 'CRISTALERIA', 72, 'ea', 3.81, 'USD'),
  ('481', 'BU_BR001', 'Flow Oak 1.1 Crumb Catcher
 •
Mat Oak, Oiled
Dim 530 × 325 × 35 mm
20.8 × 12.7 × 1.3 in', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Cutting Board', 'UTENSILIOS', 2, 'ea', 159.705, 'USD'),
  ('453', '49119Q924', 'Carafe, 1.25 qt, 3.875" x 10.875", Officina, Bormioli Rocco, Soda Lime (minimum = case quantity, 6 each per case) (STOCK item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Steelite', 'Steelite', 'Juice Jug', 'UTENSILIOS', 15, 'ea', 17.7365, 'USD'),
  ('451', 'Q3702', 'Chef & Sommelier, Sequence Nick And Nora 5.25 Oz (H:5.625'''' T:2.75'''' M:2.75'''' B:2.38''''), [''Krysta''], (24 PC In A Case), Minimum Purchasing Unit CS', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cardinal', 'Proepta', 'Nick & Nora', 'CRISTALERIA', 53, 'ea', 4.86, 'USD'),
  ('485', 'DV.501180', 'GLASS, D&V TASTERZ MINI IPA 5OZ', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Fortessa', 'Hotel Depot', 'Miniature 2 Glass', 'CRISTALERIA', 72, 'ea', 3.56, 'USD'),
  ('446', 'Z3460014', 'Whiskey Glass, 10-1/2 oz., 2-3/4" x 3 3/8", Kyoto, Stolzle, Crystalline (minimum = case quantity, 24 per case) (Stock Item)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Stolzle', 'Proepta', 'OF Rock Glass', 'CRISTALERIA', 53, 'ea', 4.81, 'USD'),
  ('432', 'HCR8-ORI', 'Aceitera y Vinagrera 16 cm - Color Natural', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Hacha', 'Hacha', 'Oil and Vinegar Set', 'UTENSILIOS', 18, 'ea', 315, 'MXN'),
  ('449', 'P8821', 'Arcoroc, Broadway Gin 19.5 Oz (H:7.5'''' T:4.25'''' M:4.25'''' B:3.25''''), [''Soda Lime Glass''], (12 PC In A Case), Minimum Purchasing Unit CS', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cardinal', 'Proepta', 'Gin & Tonic', 'CRISTALERIA', 53, 'ea', 4.581, 'USD'),
  ('509', 'BU_GJ002', 'Tilt Mini Glass Jar•
Mat Glass, Soda Lime
Dim 125ø × 95 mm
5ø × 3.7 in
Vol 500 ml
17 oz', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Mini Glass Jar spare piece', 'UTENSILIOS', 9, 'ea', 30.7125, 'USD'),
  ('520', 'M37219ACP', '21 oz.
Diamond Lattice
Double Wall
Mixing Tin
Antique Copper', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Mercer', 'Mepsa', 'Mixing Tin', 'UTENSILIOS', 4, 'ea', 68.7566, 'USD'),
  ('564', 'SI6000', 'Saf-T-Ice® Tote, 6 gallon, polycarbonate, rubber handle, with tri-grip feature, includes Saf-T-Ice® HACCP hanger for elevation to waist level, NSF', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'San Jamar', 'Sandolat', 'Ice Tote', 'UTENSILIOS', 6, 'ea', 44.9372, 'USD'),
  ('556', '1851-5', 'Mixology Jar, 32 oz. capacity, 5-1/4" dia., x 4-1/2"H, double walled insulated base, stainless steel solid lid with silicone lining, glass, clear (cold pucks sold separately)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cal-Mil', 'Equipo Hotel', 'Storage Jar / Ingredient Canister, Glass', 'UTENSILIOS', 6, 'ea', 41.19, 'USD'),
  ('491', '3669', 'Nordic Fruit Bowl - Acacia Wood & Iron - 10"D x 8" H', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Impulse', 'Impulse', 'Footed Fruit Bowl', 'UTENSILIOS', 4, 'ea', 59, 'USD'),
  ('492', '3670', 'Nordic Footed Platter - Acacia Wood & Iron - 12"D x 5.25"H', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Impulse', 'Impulse', 'Footed Platter', 'UTENSILIOS', 4, 'ea', 59, 'USD'),
  ('464', '3981300', 'Paris Chef
Manual Salt Mill in Copper-Plated Stainless Steel,u''Select, 22cm', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Peugeot', 'Peugeot', 'Salt Mill', 'UTENSILIOS', 2, 'ea', 112, 'USD'),
  ('470', 'BU_GC002', 'Small Glass Cloche - 5.71 x 5.71 x 4.7 - Features: Compatible with Small and Small Drum Cake Stands - Stock Tier: Gold', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Small Cake Stand Cloche', 'UTENSILIOS', 6, 'ea', 36.855, 'USD'),
  ('422', 'SET_CSO Bowl Only', '3oz Bowl only from SET_CSO set.', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Spare Bowls for Jam Presentation', 'UTENSILIOS', 24, 'ea', 8.995, 'USD'),
  ('548', '186700', 'Benriner "Little Beni" Mandoline Slicer, 12-1/2"L x 3-1/2"W, includes (3) blades and safety pusher, stainless steel blades, polypropylene, made in Japan', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Matfer', 'Proepta', 'Mandoline', 'UTENSILIOS', 2, 'ea', 105.01, 'USD'),
  ('433', 'SDRCK', 'Display Rack, 7-1/2" top dia. x 9-5/8" bottom dia. x 7-3/8"H, large, 1 tier, stainless steel (hand wash only)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'American Metalcraft', 'Equipo Hotel', 'Seafood Display Riser', 'UTENSILIOS', 24, 'ea', 8.68, 'USD'),
  ('498', 'BW_OR2100', 'Mini Rustic Olive Wood Bowl
Mat Olive Wood, Oiled
Dim 120ø × 40 mm
4.7ø × 1.6 in', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Craster', 'Proepta', 'Wooden Bowl 3', 'UTENSILIOS', 6, 'ea', 29.0325, 'USD'),
  ('554', '1851-4', 'Mixology Jar, 16 oz. capacity, 4-1/4" dia. x 4"H, double walled insulated base, stainless steel solid lid with silicone lining, glass, clear (cold pucks sold separately)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cal-Mil', 'Equipo Hotel', 'Storage Jar / Ingredient Canister, Glass', 'UTENSILIOS', 6, 'ea', 28.36, 'USD'),
  ('465', '39806', 'Paris Chef
Manual Pepper Mill in Copper-Plated Stainless Steel,u''Select, 22cm', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Peugeot', 'Peugeot', 'Pepper Mill', 'UTENSILIOS', 2, 'ea', 84, 'USD'),
  ('406', NULL, 'Elevated terracotta stand with a natural matte finish, ideal for creating height and layering on buffet table', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 10, 'ea', 16.66, 'USD'),
  ('559', 'BM-1812K', 'Service Mat, 18" x 12", rubber, black, NSF (Qty Break = 12 each)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Winco', 'Mepsa', 'Bar Mat', 'UTENSILIOS', 6, 'ea', 27.3502, 'USD'),
  ('524', '3308-60', 'Bamboo Straw Holder - 5" x 5" x 5 1/2"', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cal-Mil', 'Equipo Hotel', 'Straw Holder', 'UTENSILIOS', 2, 'ea', 77.99, 'USD'),
  ('547', '285-50', 'Spill-Stop® Tapered Pourer, seamless spout, with poly-kork, controlled medium speed, chrome, Made in USA (packed one dozen per poly bag, one gross per carton = 144 each, minimum order 1 gross)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Spill-Stop', 'Spill-Stop', 'Liquor Pourer', 'UTENSILIOS', 58, 'ea', 2.28, 'USD'),
  ('460', 'DW396LADREST', 'Ladle Rest L 6" W 5 1/4" H 8 3/4"', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'DW Haber', 'Steelite', 'Soup Ladle Rest', 'UTENSILIOS', 2, 'ea', 68.9014, 'USD'),
  ('463', '122 05 00 039', '24 cm Cake Server', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Broggi', 'Proepta', 'Cake Server', 'UTENSILIOS', 12, 'ea', 9.612, 'USD'),
  ('459', '122 05 00 025', 'Soup Ladle 30.4 cm', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Broggi', 'Proepta', 'Soup Ladle', 'UTENSILIOS', 6, 'ea', 19.026, 'USD'),
  ('407', NULL, 'Small version of the terracotta display stand. Perfect for layering the buffet display.', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom production', NULL, 10, 'ea', 10.78, 'USD'),
  ('348', NULL, 'Caviar Spoon, Pearl colour', '10cm', (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Maison Margaux', 'Maison Margaux', 'Custom Silverware', NULL, 21, 'ea', 5.1, 'USD'),
  ('557', '1851-5PUCK', 'Cooling Puck, black (for 1851-5 jar)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cal-Mil', 'Equipo Hotel', 'Ice Pack', 'UTENSILIOS', 6, 'ea', 16.69, 'USD'),
  ('537', 'FP198', 'Arcoroc, Mix Jigger Copper 2.0 Oz (L:2.0'''' X W:1.732''''), [''18/10 Stainless Steel''], (1 PC In A Case), Minimum Purchasing Unit CS', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cardinal', 'Proepta', 'Jigger', 'UTENSILIOS', 6, 'ea', 14.553, 'USD'),
  ('551', 'M15500', 'Mercer Cutlery Channel Knife, stain-resistant steel, molded slip-resistant polypropylene handle', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Mercer', 'Mepsa', 'Channel Knife', 'UTENSILIOS', 4, 'ea', 20.5008, 'USD'),
  ('543', 'FP197', 'Arcoroc, Mix Dual Sided Bar Teadrop Spoon Copper (L:15.75'''' X W:0.393''''), [''18/10 Stainless Steel''], (1 PC In A Case), Minimum Purchasing Unit CS', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cardinal', 'Proepta', 'Bar Spoon', 'UTENSILIOS', 8, 'ea', 9.945, 'USD'),
  ('562', '160-02', 'Bar Mat, 24"L x 3-1/4"W x 1/2"H, non-slip, rubber, black', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Spill-Stop', 'Spill-Stop', 'Bar Mat', 'UTENSILIOS', 8, 'ea', 9.08, 'USD'),
  ('555', '1851-4PUCK', 'Cooling Puck, black (for 1851-4 jar)', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cal-Mil', 'Equipo Hotel', 'Ice Pack', 'UTENSILIOS', 6, 'ea', 11.86, 'USD'),
  ('538', 'FP190', 'Arcoroc, Mix Shaker Copper 28.0 Oz (L:3.622'''' X W:2.44''''), [''18/10 Stainless Steel''], (1 PC In A Case), Minimum Purchasing Unit CS', NULL, (SELECT id FROM areas WHERE name = 'Three Meal' LIMIT 1), 'Cardinal', 'Proepta', 'Cocktail Shaker 28 oz', 'UTENSILIOS', 4, 'ea', 17.388, 'USD')
ON CONFLICT (code) DO NOTHING;
