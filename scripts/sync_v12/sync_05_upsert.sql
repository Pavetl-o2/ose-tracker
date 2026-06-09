-- ================================================================
-- PASO 5: UPSERT items 901-1200 de 1479 (actualiza o inserta)
-- ================================================================

INSERT INTO items (code, item_code, description, description_2, area_id, brand_current, supplier, category, item_type, qty_ordered)
VALUES
  ('1146', 'BCBVFBW10', 'Bowl 4"', 'Bravura Bowl, Ø 10 cm - 20 cl. Ø 4” - 6 3/4 oz (12 per case)', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Rak', 'Proepta', 'Banquet', 'LOZA', 267),
  ('1190', 'TBD', 'Damper 72', 'Damper for 72" round table', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'GT Linens', 'YEKALON', 'Banquet  | Linen', 'BLANCOS', 32),
  ('1169', '2900CT', 'Serving Tray', 'CAMTREAD® OVAL TRAYS Black 23 1/2" x 28 7/8" 60 x 73,5 cm', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Cambro', 'Equipo Hotel', 'Banquet', 'UTENSILIOS', 48),
  ('1211', '656039', 'Riser for Wooden Tray 1', 'Riser, 22-1/4"W x 14"D x 4"H, high for GN 1/1, matt black metal, oak frame', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Revol', 'Proepta', 'Banquet | Buffet Display', 'UTENSILIOS', 12),
  ('1278', '5405', 'Glass Miniature', 'Pass arround cocktail - glass miniature
 clear glass, for bridges “Modul” items 4584 and 4724
 item Ø / height in cm content in l PU
 5/8.6 0.1 6 pcs', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Zieher', 'Latin Hotel', 'Banquet | Cocktail Pass Around', 'UTENSILIOS', 87),
  ('1265', 'DWPELINPCCART6', 'PowerCell Storage Cart', 'PowerCell Storage Cart - L26" W18 1/8" H53 1/4" - Holds 6 units with coverups', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'DW Haber', 'Steelite', 'Banquet | Buffet Hot Display', 'UTENSILIOS', 3),
  ('1308', 'Custom', 'Board Room Bloter', 'Meeting room blotter Black faux leather with embossed pattern L 55cm x W 41.3cm x H 1.3cm

DETAILS
Material:Faux leather
Color:Black 
With Logo', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Pantheon', 'Pantheon', 'Banquet | Meeting Room and Miscelleanous', 'UTENSILIOS', 48),
  ('1230', 'BW_307_D', 'Olive Wood Bowl 1', NULL, (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Craster', 'Proepta', 'Banquet | Buffet Display', 'UTENSILIOS', 8),
  ('1272', '4582', 'Tray medium', 'Pass arround cocktail -  72.5x28x1.8 base tray “Modul”
 melamine, black, surface matt, food-safe, dishwasher
safe, not suitable for microwave and combi steam oven', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Zieher', 'Latin Hotel', 'Banquet | Cocktail Pass Around', 'UTENSILIOS', 12),
  ('1143', 'BCPORBW44', 'Large asymmetric bowl 9"', 'Pose Large asymmetric bowl 24.4 x 20.9 cm - 44 cl 9 3/5” x 8 2/9” - 14 7/8 oz
12', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Rak', 'Proepta', 'Banquet', 'LOZA', 108),
  ('1213', '656041', 'Riser for Wooden Tray 2', 'Riser, 14"W x 11-3/4"D x 4"H, high for GN 1/2, matt black metal, oak frame', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Revol', 'Proepta', 'Banquet | Buffet Display', 'UTENSILIOS', 12),
  ('1276', '1938', 'Party Spoon', 'Pass arround cocktail -  party spoon
 stainless steel 18/10, 4.3 mm thick, heavy quality, 21 
cm long
 polished', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Zieher', 'Latin Hotel', 'Banquet | Cocktail Pass Around', 'PLAQUE', 87),
  ('1212', '656029', 'Display Wooden Tray 2', 'Wooden Box, 12-3/4"W x 10-1/2"D x 2-3/4"H, GN 1/2, maple', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Revol', 'Proepta', 'Banquet | Buffet Display', 'UTENSILIOS', 24),
  ('1365', 'RA03', 'Cutting Board', 'Cutting Board, 24"W x 18"D x 2-1/4" thick, edge grain construction, Northern Hard Rock Maple, with Oil Finish, hand grips on each end, reversible', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'John Boos', 'John Boos', 'Banquet | BOH Bar', 'UTENSILIOS', 8),
  ('1147', 'BCBVRDP01', 'Raised Plate', 'Bravura 16 x 15 cm - Ht. 8.5 cm
6 2/9” x 5 6/7” - Ht. 3 1/4” 4', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Rak', 'Proepta', 'Banquet', 'LOZA', 87),
  ('1274', '4584', 'Bridge', 'Pass arround cocktail -  bridge “Modul”
 melamine, black, surface matt, food-safe, dishwasher
safe, not suitable for microwave and combi steam oven, 
5 graded sockets (Ø top 5 cm, Ø bottom 2.5 cm), for 
several glass items (5257, 5405,...), with 4 rubber feet 
(black)
 l x w x h in cm
 PU
 41.5x7.7x6 
2 pcs', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Zieher', 'Latin Hotel', 'Banquet | Cocktail Pass Around', 'UTENSILIOS', 24),
  ('1175', 'RDL-0489/0', 'Red Wine 23oz', 'DEGUSTAZIONE COPA VINO TINTO 560ml/18,6oz', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Fortessa', 'Abastohotel', 'Banquet', 'CRISTALERIA', 188),
  ('1248', '656008', 'Chilling Station - Wooden Box', 'Chilling Station Wooden Box, 21-3/4"W x 13-3/4"D x 3-1/2"H, GN 1/1, maple', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Revol', 'Proepta', 'Banquet | Buffet Cold Display', 'UTENSILIOS', 8),
  ('1223', '652890', 'Bowls for Display Riser', '(CO1832) Salad/Serving Bowl, 123-1/2 oz., 12-3/4" dia. x 3-1/4"H, round, oven, microwave, freezer & dishwasher safe, porcelain, white cumulus, Caractere (US stocked item)', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Revol', 'Proepta', 'Banquet | Buffet Display', 'UTENSILIOS', 18),
  ('1224', '660606', 'Bowls for Display Riser', NULL, (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Revol', 'Proepta', 'Banquet | Buffet Display', 'UTENSILIOS', 18),
  ('1209', '650678', 'Wood Display Riser Set', 'Wood Display Riser Set of 3 - Ash Wood', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Revol', 'Proepta', 'Banquet | Buffet Display', 'UTENSILIOS', 8),
  ('1148', 'BCBVJG35', 'Sauce Pourer', 'Bravura Jug
Ht. 16.5 cm - 36 cl
Ht. 6 1/2” - 12 2/7 oz
6', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Rak', 'Proepta', 'Banquet', 'UTENSILIOS', 87),
  ('1386', '06.7585.6040', 'Marking Tray for Flatware', 'WMF S/S 11 x 8" Rectangle Serving Tray Stainless Steel', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'WMF', 'Latin Hotel', 'Banquet', 'UTENSILIOS', 36),
  ('1251', '656910', 'Chilling Box - Tray', '(1A+M125443) Tray, 20-3/4"W x 12-3/4"D x 1/2"H, rectangular, stackable, shockproof, thermal shock resistant (-148°F to + 176°F), food safe, non-porous, dishwasher safe, Nacryl® resin, anthracite, (US stock)', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Revol', 'Proepta', 'Banquet | Buffet Cold Display', 'UTENSILIOS', 10),
  ('1150', 'RK-FDSA19', 'Soup Cup Saucer', 'PLATON TAZON CONSOME 19 CM FINE DINE', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Rak', 'Proepta', 'Banquet', 'LOZA', 209),
  ('1263', 'DWFB15136BK', 'Power cell cover up', 'PowerCell Cover Up SS Black', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'DW Haber', 'Steelite', 'Banquet | Buffet Hot Display', 'UTENSILIOS', 9),
  ('1178', 'RONA-4233-1200', 'High Ball Glass', 'LUNAR VASO HIGHBALL 490ml/16.5oz', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Stolzle', 'Abastohotel', 'Banquet', 'CRISTALERIA', 267),
  ('1243', 'BU_OL001', 'Glass Jar Wooden Lid Oak', 'Large Oak Jar Lid: L: 207 mm x W: 207 mm x H: 29 mm (L: 8.15 in x W: 8.15 in x H: 1.4 in)', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Craster', 'Proepta', 'Banquet | Buffet Display', 'UTENSILIOS', 12),
  ('1189', 'TBD', 'Damper 66', 'Damper for 66" round table', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'GT Linens', 'YEKALON', 'Banquet  | Linen', 'BLANCOS', 22),
  ('1177', 'RONA-4233-1660', 'OF Rock Glass', 'LUNAR VASO DOF 460ml/15.5oz', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Stolzle', 'Abastohotel', 'Banquet', 'CRISTALERIA', 267),
  ('1283', 'V871842003', 'Coffee and Tea Condiment Station', 'URBAN BUFFET TOWER H. cm 34', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Abert', 'Proepta', 'Banquet | Coffee & Juice Display', 'UTENSILIOS', 8),
  ('1163', 'RK-BABR01', 'Ramekin', 'RAMEKIN 7 CM 2 OZ  BANQUET', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Rak', 'Proepta', 'Banquet', 'LOZA', 267),
  ('1299', '122 05 02 710', 'Serving Spoons', 'Serving Spoon 34 cm', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Broggi', 'Proepta', 'Banquet | Holloware and Serving Pieces', 'PLAQUE', 51),
  ('1287', 'V870442CS5', 'Coffee and Tea Condiment Station', 'URBAN ORGANIZER CONTAINER L. cm 35, Larg. Cm 17.5, H. cm 4', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Abert', 'Proepta', 'Banquet | Coffee & Juice Display', 'UTENSILIOS', 16),
  ('1247', 'PM-IB100', 'Sea Food Tray', 'Glass Ice Bin with metal frame and drainage tray', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Pantheon', 'Pantheon', 'Banquet | Buffet Display', 'UTENSILIOS', 2),
  ('1286', 'V870442CS4', 'Coffee and Tea Condiment Station', 'URBAN ORGANIZER CONTAINER L. cm 15, Larg. Cm 20, H. cm 8', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Abert', 'Proepta', 'Banquet | Coffee & Juice Display', 'UTENSILIOS', 16),
  ('1227', '652885', 'Coupe Bowl Pepper', NULL, (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Revol', 'Proepta', 'Banquet | Buffet Display', 'UTENSILIOS', 18),
  ('1161', 'RK-BASP14', 'Bowl 17oz - Ø 5 1/5”', 'BOWL ENSALDADA 14CM  BANQUET', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Rak', 'Proepta', 'Banquet', 'LOZA', 130),
  ('1303', '644293', 'Spoon Rest', '(RV1620) Cutlery Rest, 7-3/4" x 4" x 1-1/2"H, porcelain, matt slate, Revolution 2 (US stocked item)', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Revol', 'Proepta', 'Banquet | Holloware and Serving Pieces', 'UTENSILIOS', 51),
  ('1164', 'RK-FDCR25', 'Creamer', 'CREMERA 8 1/2 OZ 7 CM FINE DINE', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Rak', 'Proepta', 'Banquet', 'LOZA', 116),
  ('1238', '652864', 'Platter Large', '(CO1746N-234) Serving Dish, 18-1/4" x 11-1/4" x 1-1/4"H oval, oven, microwave, freezer & dishwasher safe, porcelain, white cumulus, Caractere (US stocked item)', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Revol', 'Proepta', 'Banquet | Buffet Display', 'UTENSILIOS', 12),
  ('1244', 'BU_SP011', 'Wooden Oak Spoons', 'Oak Spoon: L: 230 mm x W: 40 mm x H: 38 mm (L: 9 in x W: 1.6 in x H: 1.5 in)', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Craster', 'Proepta', 'Banquet | Buffet Display', 'UTENSILIOS', 24),
  ('1134', '305 45 91 797', 'Steak Knife', 'Java steak knife 22,5 8,7/8 Ivory handle', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Broggi', 'Proepta', 'Banquet', 'PLAQUE', 89),
  ('1179', 'NUDE-66114', 'Martini Glass', 'VINTAGE COPA MARTINI 285ml/9.5oz', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Cardinal', 'Abastohotel', 'Banquet', 'CRISTALERIA', 130),
  ('1222', '660494', 'Marble Plate for Risers', 'White Marble Nacryl 20 cm', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Revol', 'Proepta', 'Banquet | Buffet Display', 'UTENSILIOS', 24),
  ('1302', '305 05 81 539', 'Serving Tongs', '18 cm Pastry / bread tong', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Broggi', 'Proepta', 'Banquet | Holloware and Serving Pieces', 'UTENSILIOS', 44),
  ('1292', '1717-96', 'Mini Table Top Trash Can Black', 'Midnight Bamboo Countertop Trash Bin - 5.00in L x 5.00in W x 7.00in H
12.7cm L x 12.7cm W x 17.78cm H', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Cal-mil', 'Equipo Hotel', 'Banquet | Coffee & Juice Display', 'UTENSILIOS', 24),
  ('1122', '6323T502', 'Pepper Mill', 'Pepper Mill Stainless... 6" Salt & Pepper Mills from Trudeau', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Steelite', 'Steelite', 'Banquet', 'UTENSILIOS', 24),
  ('1217', '653040', 'Cake Stand 2 Cloche', 'Polycarbonate Cloche 31.2 cm', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Revol', 'Proepta', 'Banquet | Buffet Display', 'UTENSILIOS', 12),
  ('1202', '650993', 'Sign  Holder', 'Lableclip holder bleech', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Revol', 'Proepta', 'Banquet | Buffet Display', 'UTENSILIOS', 108),
  ('1153', 'RK-BACU09', 'Stackable Expresso Cup', 'TAZA MOKA APILABLE 3 OZ BANQUET', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Rak', 'Proepta', 'Banquet', 'LOZA', 130),
  ('1121', '6323T501', 'Salt Mill', 'Salt Shaker Stainless... 6" Salt & Pepper Mills from Trudeau', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Steelite', 'Steelite', 'Banquet', 'UTENSILIOS', 24),
  ('1228', '655563', 'Salad Bowl 1', NULL, (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Revol', 'Proepta', 'Banquet | Buffet Display', 'UTENSILIOS', 24),
  ('1229', '655564', 'Salad Bowl 2', NULL, (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Revol', 'Proepta', 'Banquet | Buffet Display', 'UTENSILIOS', 24),
  ('1236', '654820', 'Cocotte without Lid 8.75 oz', 'Cocotte without Lid 8.75 oz - Cinnamon 14 x 12 x 5 cm', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Revol', 'Proepta', 'Banquet | Buffet Display', 'UTENSILIOS', 36),
  ('1237', '654822', 'Cocotte without Lid 8.75 oz', 'Cocotte without Lid 8.75 oz - Cardamom 14 x 12 x 5 cm', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Revol', 'Proepta', 'Banquet | Buffet Display', 'UTENSILIOS', 36),
  ('1250', '656049', 'Chilling Box - Eutectic Plates', 'Eutectic Plate, 19"W x 11"D x 1"H, -12°C temperature, black', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Revol', 'Proepta', 'Banquet | Buffet Cold Display', 'UTENSILIOS', 16),
  ('1162', 'RK-BASP12', 'Bowl 10oz - Ø 4 3/8” -', 'BOWL ENSALADA 12 CM BANQUET', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Rak', 'Proepta', 'Banquet', 'LOZA', 130),
  ('1225', '655561', 'Bowls for Display Riser', '(CO2725N-254) Salad Bowl, 81-1/4 oz., 9-3/4" dia. x 3-1/4"H, round, oven, microwave, freezer & dishwasher safe, porcelain, cinnamon, Caractere (US stocked item)', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Revol', 'Proepta', 'Banquet | Buffet Display', 'UTENSILIOS', 18),
  ('1226', '655560', 'Bowls for Display Riser', '(CO2725N-255) Salad Bowl, 81-1/4 oz., 9-3/4" dia. x 3-1/4"H, round, oven, microwave, freezer & dishwasher safe, porcelain, cardamom, Caractere (US stocked item)', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Revol', 'Proepta', 'Banquet | Buffet Display', 'UTENSILIOS', 18),
  ('1218', '654173', 'Cake Stand 1 Cloche', 'Polycarbonate Cloche 28 cm', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Revol', 'Proepta', 'Banquet | Buffet Display', 'UTENSILIOS', 12),
  ('1315', 'H-8664', '5 Gallon Dual Sided Office Trash Can', 'simplehuman stainless steel Office Trash Can - 5 Gallon Recycling - Capacity 5 Gallon - Size L17xW9xH15"', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Uline', 'Sandolat', 'Banquet | Meeting Room and Miscelleanous', 'LIMPIEZA', 6),
  ('1205', '653076', 'Storage Jar', 'Glass Storage Jar 5 L', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Revol', 'Proepta', 'Banquet | Buffet Display', 'UTENSILIOS', 12),
  ('1141', 'BCBVCL16', 'Cover for Gourmet Deep Plates', 'Bravura Ø 16.5 cm - Ht. 9 cm. Ø 6 1/2” - Ht. 3 1/2”. 4', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Rak', 'Proepta', 'Banquet', 'LOZA', 72),
  ('1215', '661543', 'Cake Stand 2', 'CARACTERE, CAKE STAND 33X14CM, Tumeric/Cardamom, 1, NOT STOCKED IN USA BUT CAN BE ORDERED AND AIFREIGHTED, Microwave oven and dishwasher safe, made in France', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Revol', 'Proepta', 'Banquet | Buffet Display', 'UTENSILIOS', 8),
  ('1165', 'RK-BASH01', 'Sugar Holder', 'AZUCARERA PORTA SOBRES 11 CM BANQUET', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Rak', 'Proepta', 'Banquet', 'LOZA', 87),
  ('1130', '1170500022', 'Demitasse Spoon', 'La Tavola - Moka spoon Gualtiero Marchesi St. steel', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Broggi', 'Proepta', 'Banquet', 'PLAQUE', 130),
  ('1293', '7401MM121', '1 Ltr Jug White', 'Thermos/Jug - Milk Server Vacuum Insulated
Stainless Liner w/ Wood Handle
L 6 5/8" W4 3/8" H 8 1/2" (1 L) White', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Steelite', 'Steelite', 'Banquet | Coffee & Juice Display', 'UTENSILIOS', 18),
  ('1295', '7401MM123', '1 Ltr Jug Champagne', 'Thermos/Jug - Milk Server Vacuum Insulated
Stainless Liner w/ Wood Handle
L 6 5/8" W4 3/8" H 8 1/2" (1 L) Champagne', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Steelite', 'Steelite', 'Banquet | Coffee & Juice Display', 'UTENSILIOS', 18),
  ('1214', '661544', 'Cake Stand 1', 'CARACTERE, CAKE STAND 30X20CM, Nutmeg/Cinnamon, 1, NOT STOCKED IN USA BUT CAN BE ORDERED AND AIFREIGHTED, Microwave oven and dishwasher safe, made in France', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Revol', 'Proepta', 'Banquet | Buffet Display', 'UTENSILIOS', 8),
  ('1297', '122 05 01 442', 'Sauce Ladle', 'Sauce Ladle 15.6 cm', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Broggi', 'Proepta', 'Banquet | Holloware and Serving Pieces', 'UTENSILIOS', 36),
  ('1325', 'VC-CTB', 'Caster for 24x48', 'Metro Shelf Casters heavy duty', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Winco', 'Mepsa', 'Banquet | Carts and Transport', 'UTENSILIOS', 16),
  ('1264', 'DWFB15133BK', 'Power cell cover up', 'PowerCell Cover Up SS Black', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'DW Haber', 'Steelite', 'Banquet | Buffet Hot Display', 'UTENSILIOS', 9),
  ('1337', '22440-3', 'Condiment Caddy', 'Heritage Jar Displays -112 I 12.75” W x 4.25” D x 4” H | 3 Jar', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Cal-Mil', 'Equipo Hotel', 'Banquet | BOH Bar', 'UTENSILIOS', 8),
  ('1294', '7401MM120', '0.7 Ltr Jug White', 'Thermos/Jug - Milk Server Vacuum Insulated
Stainless Liner w/ Wood Handle
L 6 1/2" W 4 1/2" H 7 1/2" (0.7 L) White', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Steelite', 'Steelite', 'Banquet | Coffee & Juice Display', 'UTENSILIOS', 18),
  ('1296', '7401MM122', '0.7 Ltr Jug Champagne', 'Thermos/Jug - Milk Server Vacuum Insulated
Stainless Liner w/ Wood Handle
L 6 1/2" W 4 1/2" H 7 1/2" (0.7 L) Champagne', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Steelite', 'Steelite', 'Banquet | Coffee & Juice Display', 'UTENSILIOS', 18),
  ('1199', 'H-1978O', 'Z Trolley', 'Z Rack for BQ Linen', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Uline', 'Sandolat', 'Banquet  | Linen', 'UTENSILIOS', 4),
  ('1154', 'RK-BASA13', 'Espresso Saucer', 'PLATO P/TAZA MOKA 13 CM BANQUET', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Rak', 'Proepta', 'Banquet', 'LOZA', 130),
  ('1216', '661548', 'Cake Stand 3', 'CARACTERE, CAKE STAND 26X10,5CM, Cardamom/Nutmeg, 1, NOT STOCKED IN USA BUT CAN BE ORDERED AND AIFREIGHTED, Microwave oven and dishwasher safe, made in France', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Revol', 'Proepta', 'Banquet | Buffet Display', 'UTENSILIOS', 8),
  ('1119', 'BCSPSS01', 'Salt Shaker', 'Spectra Salt Shaker', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'RAK', 'Proepta', 'Banquet', 'LOZA', 87),
  ('1120', 'BCSPPS01', 'Pepper Shaker', 'Spectra Pepper Shaker', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'RAK', 'Proepta', 'Banquet', 'LOZA', 87),
  ('1270', '656412', 'Lid Rest for Induction Cocottes', 'SS Lis Rest 13.5 x 9 x 7.5 cm', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Revol', 'Proepta', 'Banquet | Buffet Hot Display', 'UTENSILIOS', 18),
  ('1362', 'JP9730', 'Juicer, Lever / Crank Type', 'Cash & Carry Big Squeeze™ Juice Press, 11-1/2" x 7" x 17", manual, accommodates 5-3/4" glass, 3-pinion design, hand wash only, 18/8 stainless steel cone, cast iron construction, black coated finish, NSF (1 each minimum order)', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'TableCraft Products', 'Equipo Hotel', 'Banquet | BOH Bar', 'UTENSILIOS', 4),
  ('1322', 'VC-1836', 'Beverag Cage Shelf for 18x36', 'Beverage Cage Extra shelf', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Winco', 'Mepsa', 'Banquet | Carts and Transport', 'UTENSILIOS', 8),
  ('1206', '653073', 'Storage Jar', 'Glass Storage Jar 2.5 L', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Revol', 'Proepta', 'Banquet | Buffet Display', 'UTENSILIOS', 12),
  ('1252', 'LIBB-245', 'Glass Mini Flute', 'MINI PILSNER SHOOTER 75ml/2.5oz', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Fortessa', 'Abastohotel', 'Banquet | Miniatures', 'CRISTALERIA', 144),
  ('1301', '903 05 81 004', 'Serving Tongs', '21 cm Hors d’oeuvre tongs', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Broggi', 'Proepta', 'Banquet | Holloware and Serving Pieces', 'UTENSILIOS', 44),
  ('1232', '654543', 'Rectangle Oblong Dish', 'Rectangle Oblong Dish - White Cumulus - 34 x 25 x 6.5 - 2.8 L', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Revol', 'Proepta', 'Banquet | Buffet Display', 'UTENSILIOS', 8),
  ('1234', '654544', 'Rectangle Oblong Dish', 'Rectangle Oblong Dish - Cinnamon - 34 x 25 x 6.5 - 2.8 L', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Revol', 'Proepta', 'Banquet | Buffet Display', 'UTENSILIOS', 8),
  ('1253', 'PSB-41472', 'Glass, D&V Tasterz 5oz.', 'SIDE VASO CHAISER 160ml/5.4oz', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Fortessa', 'Abastohotel', 'Banquet | Miniatures', 'CRISTALERIA', 144),
  ('1273', '4585', 'Sppon Rest Bridge', 'Pass arround cocktail - spoon rest “Modul”
 melamine, black, surface matt, food-safe, dishwasher
safe, not suitable for microwave and combi steam oven, 
with 4 rubber feet (black)
 l x w x h in cm
 PU
 20x5x4 
2 pcs', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Zieher', 'Latin Hotel', 'Banquet | Cocktail Pass Around', 'UTENSILIOS', 24),
  ('1180', 'RONA-4233-2000', 'Shot Glasses', 'LUNAR SHOT 70ml/2.3oz', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Fortessa', 'Abastohotel', 'Banquet', 'CRISTALERIA', 72),
  ('1181', 'RONA-4233-1500', 'Juice Glass', 'LUNAR VASO COCKTAIL 250ml/8oz', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Fortessa', 'Abastohotel', 'Banquet', 'CRISTALERIA', 72),
  ('1305', '55.0121.6140 and 55.0121.6043', 'Table Number Stand S/S', 'Pure Table number stand support', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'WMF', 'Latin Hotel', 'Banquet | Holloware and Serving Pieces', 'UTENSILIOS', 24),
  ('1207', '650494', 'Basket or Bread Presentation 1', 'WIRE BASKET, LARGE OVAL- Matt black metal  - 32,1 x 23,9 x 15,5 cm - 12 ¾ x 9 ½ x 6’’', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Revol', 'Proepta', 'Banquet | Buffet Display', 'UTENSILIOS', 8),
  ('1285', 'V870542V01', 'Coffee and Tea Condiment Station', 'URBAN ORGANIZER TRAY cm 20x19', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Abert', 'Proepta', 'Banquet | Coffee & Juice Display', 'UTENSILIOS', 16),
  ('1221', '660297', 'Black Round Riser 3', 'Round Riser, large, metal, black, EN Scene (US stock)', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Revol', 'Proepta', 'Banquet | Buffet Display', 'UTENSILIOS', 6),
  ('1257', 'ALU-00-012', 'China Spoon Appetizer Tasting 4"', 'Tasting Bowls 5.75”, 5oz (14.5cm, .15L)', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Fortessa', 'Hotel Depot', 'Banquet | Miniatures', 'LOZA', 144),
  ('1377', 'SI6000', 'Ice Tote', 'Saf-T-Ice® Tote, 6 gallon, polycarbonate, rubber handle, with tri-grip feature, includes Saf-T-Ice® HACCP hanger for elevation to waist level, NSF', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'San Jamar', 'Sandolat', 'Banquet | BOH Bar', 'UTENSILIOS', 12),
  ('1275', '4591', 'Cutlery Napkin Box', 'Pass arround cocktail -  cutlery/napkin box
 melamine, black, surface matt, food-safe, dishwasher
safe, with 4 rubber feet, not suitable for microwave and 
combi steam oven, for cocktail napkins folded to 1/8', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Zieher', 'Latin Hotel', 'Banquet | Cocktail Pass Around', 'UTENSILIOS', 24),
  ('1220', '660295', 'Black Round Riser 2', 'Round Riser, medium, metal, black, EN Scene (US stock)', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Revol', 'Proepta', 'Banquet | Buffet Display', 'UTENSILIOS', 6),
  ('1369', '1851-5', 'Storage Jar / Ingredient Canister, Glass', 'Mixology Jar, 32 oz. capacity, 5-1/4" dia., x 4-1/2"H, double walled insulated base, stainless steel solid lid with silicone lining, glass, clear (cold pucks sold separately)', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Cal-Mil', 'Equipo Hotel', 'Banquet | BOH Bar', 'UTENSILIOS', 12),
  ('1284', 'V870542CS2', 'Coffee and Tea Condiment Station', 'URBAN ORGANIZER CONTAINER L. cm 10, Larg. Cm 6.5, H. cm 4', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Abert', 'Proepta', 'Banquet | Coffee & Juice Display', 'UTENSILIOS', 16),
  ('1242', 'BU_GJ001', 'Glass Jar', 'Large Glass Jar: L: 218 mm x W: 218 mm x H: 165 mm (L: 8.6 in x W: 8.6 in x H: 6.5 in)', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Craster', 'Proepta', 'Banquet | Buffet Display', 'UTENSILIOS', 12),
  ('1219', '660293', 'Black Round Riser 1', 'Round Riser, small, metal, black, EN Scene (US stock)', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Revol', 'Proepta', 'Banquet | Buffet Display', 'UTENSILIOS', 6),
  ('1321', 'VC63POLE', 'Beverage Cage 18x36', 'Beverage Cage Trolley Posts', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Winco', 'Mepsa', 'Banquet | Carts and Transport', 'UTENSILIOS', 16),
  ('1249', '656021', 'Chilling Box - Insulated Fabric', 'Insulated Fabric, 19-3/4"W x 11-3/4"D x 2-1/4"H, GN 1/1, textile black & grey', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Revol', 'Proepta', 'Banquet | Buffet Cold Display', 'UTENSILIOS', 8),
  ('1317', '663235', 'RB-FG421388BLA', 'BARREDORA DE DOBLE ACCION 26.7 X 24.1 X 111.8 CM
ACERO/PLASTICO NEGRO', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Rubbermaid', 'Proepta', 'Banquet | Meeting Room and Miscelleanous', 'LIMPIEZA', 4),
  ('1361', 'PE-AMS-03', 'Mandoline', 'MANDOLINA AJUSTABLE C/ASA DE PLASTICO REBANADA (0-5-9 MM),
JULIANA (4.5X4.5 MM Y 9X9MM)', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Matfer', 'Proepta', 'Banquet | BOH Bar', 'UTENSILIOS', 4),
  ('1304', 'DW396LADREST', 'Ladle Rest', 'Soup Ladle Rest', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'DW Haber', 'Steelite', 'Banquet | Holloware and Serving Pieces', 'UTENSILIOS', 6),
  ('1233', '654546', 'Rectangle Oblong Dish', 'Rectangle Oblong Dish - Nutmeg - 26 x 18.5 x 6 cm -1.3 L', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Revol', 'Proepta', 'Banquet | Buffet Display', 'UTENSILIOS', 8),
  ('1235', '654549', 'Rectangle Oblong Dish', 'Rectangle Oblong Dish - Cardamom - 26 x 18.5 x 6 cm -1.3 L', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Revol', 'Proepta', 'Banquet | Buffet Display', 'UTENSILIOS', 8),
  ('1256', 'ALU-00-010', 'Tray, 9"', 'Appetizer Spoon  4” (10cm)', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Fortessa', 'Hotel Depot', 'Banquet | Miniatures', 'UTENSILIOS', 144),
  ('1203', '23416', 'Salt Mill', 'NATURAL beechwood Paris Select 12 in', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Peugeot', 'Peugeot', 'Banquet | Buffet Display', 'UTENSILIOS', 6),
  ('1204', '23539', 'Pepper Mill', 'CHOCOLATE beechwood Paris Select 12 in', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Peugeot', 'Peugeot', 'Banquet | Buffet Display', 'UTENSILIOS', 6),
  ('1289', 'V870542CS4', 'Coffee and Tea Condiment Station', 'CYLINDRICAL CONTAINER FOR RING  D7,6 cm H9,5', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Abert', 'Proepta', 'Banquet | Coffee & Juice Display', 'UTENSILIOS', 16),
  ('1208', '651884', 'Basket or Bread Presentation 2', 'OVAL DEEP BREAD BASKET Matt black metal 1 - 19,7 x 14,7 x 9,3 cm - 7 ¾ x 5 ¾ x 3 ¾’’', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Revol', 'Proepta', 'Banquet | Buffet Display', 'UTENSILIOS', 8),
  ('1184', 'Proepta', 'Decanter', 'Electra Decanter (1 3/4 qt) H 8 1/4" M 7 1/8" T 2 1/2" B 3 7/8"', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Bormioli Rocco', 'Steelite', 'Banquet', 'UTENSILIOS', 8),
  ('1240', '661278', 'Pala Negra', 'Large Shovel Plate - Matt slate Style - 36 x 21 x 8.5cm', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Revol', 'Proepta', 'Banquet | Buffet Display', 'UTENSILIOS', 8),
  ('1300', '122 05 00 039', 'Cake Server', '24 cm Cake Server', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Broggi', 'Proepta', 'Banquet | Holloware and Serving Pieces', 'UTENSILIOS', 36),
  ('1367', '1851-4', 'Storage Jar / Ingredient Canister, Glass', 'Mixology Jar, 16 oz. capacity, 4-1/4" dia. x 4"H, double walled insulated base, stainless steel solid lid with silicone lining, glass, clear (cold pucks sold separately)', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Cal-Mil', 'Equipo Hotel', 'Banquet | BOH Bar', 'UTENSILIOS', 12),
  ('1255', 'PSB-42230', 'Glass D&V Tasterz', 'BISTRO VASO SIDRA MINI FULLY TEMPERED 230ml/7.6oz', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Fortessa', 'Abastohotel', 'Banquet | Miniatures', 'CRISTALERIA', 144),
  ('1372', 'BM-1812K', 'Bar Mat', 'Service Mat, 18" x 12", rubber, black, NSF (Qty Break = 12 each)', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Winco', 'Mepsa', 'Banquet | BOH Bar', 'UTENSILIOS', 12),
  ('1333', 'H-9818', 'Fly Ventilator', 'Bug Fan set of 2 3 x 10"', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Uline', 'Sandolat', 'Banquet | Buffet Other', 'UTENSILIOS', 29),
  ('1360', '285-50', 'Liquor Pourer', 'Spill-Stop® Tapered Pourer, seamless spout, with poly-kork, controlled medium speed, chrome, Made in USA (packed one dozen per poly bag, one gross per carton = 144 each, minimum order 1 gross)', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Spill-Stop', 'Spill-Stop', 'Banquet | BOH Bar', 'UTENSILIOS', 116),
  ('1288', 'V870542A01', 'Coffee and Tea Condiment Station', 'URBAN ORGANIZER RING Ø cm 9', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Abert', 'Proepta', 'Banquet | Coffee & Juice Display', 'UTENSILIOS', 16),
  ('1231', 'CRA-BW307D', 'Olive Wood Bowl 2', 'BOWL 30 DIAM X 11.5 CM MADERA DE OLIVO BOWLS', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Craster', 'Proepta', 'Banquet | Buffet Display', 'UTENSILIOS', 8),
  ('1370', '1851-5PUCK', 'Ice Pack', 'Cooling Puck, black (for 1851-5 jar)', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Cal-Mil', 'Equipo Hotel', 'Banquet | BOH Bar', 'UTENSILIOS', 12),
  ('1254', 'CR-5914', 'Glass Square Sampler 3oz.', 'TEMPO TAZÓN MINI 7.5cm', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Fortessa', 'Abastohotel', 'Banquet | Miniatures', 'CRISTALERIA', 144),
  ('1364', 'M15500', 'Channel Knife', 'Mercer Cutlery Channel Knife, stain-resistant steel, molded slip-resistant polypropylene handle', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Mercer', 'Mepsa', 'Banquet | BOH Bar', 'UTENSILIOS', 8),
  ('1298', '122 05 00 025', 'Soup Ladle', 'Soup Ladle 30.4 cm', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Broggi', 'Proepta', 'Banquet | Holloware and Serving Pieces', 'UTENSILIOS', 8),
  ('1375', '160-02', 'Bar Mat', 'Bar Mat, 24"L x 3-1/4"W x 1/2"H, non-slip, rubber, black', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Spill-Stop', 'Spill-Stop', 'Banquet | BOH Bar', 'UTENSILIOS', 16),
  ('1368', '1851-4PUCK', 'Ice Pack', 'Cooling Puck, black (for 1851-4 jar)', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Cal-Mil', 'Equipo Hotel', 'Banquet | BOH Bar', 'UTENSILIOS', 12),
  ('1350', 'CAP14', 'Jigger', 'Ellis Adams Jigger, 2 oz., 1-3/4" x 1-3/4" x 3-11/16", with graduation markers, 18/10 stainless steel, matte finish,  Arcoroc, Mix', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Cardinal', 'Proepta', 'Banquet | BOH Bar', 'UTENSILIOS', 12),
  ('1356', 'CAP05', 'Bar Spoon', 'Bar Spoon - Dual Sided Paddle - L15 3/4", SS', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Cardinal', 'Proepta', 'Banquet | BOH Bar', 'UTENSILIOS', 16),
  ('1349', '301-02', 'Drink Bar Mix Pourer Lid', 'Dust Cap, 1/2" L, for pour spouts (285-50 & 282-50), Made in USA (one gross per poly bag, one gross per carton = 144 each, minimum order one gross)', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Spill-Stop', 'Spill-Stop', 'Banquet | BOH Bar', 'UTENSILIOS', 4),
  ('1348', 'OL167', 'Bitter / Dash Bottle', 'Arcoroc by Chris Adams Mix Collection 5 oz. Clear Bitters Bottle with Dasher Spout by Arc Cardinal', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Cardinal', 'Proepta', 'Banquet | BOH Bar', 'UTENSILIOS', 36),
  ('1351', 'CAP28', 'Cocktail Shaker 28 oz', 'Shaker Tin (28oz) H7" T3 5/8" B2 3/8" M3 5/8", SS', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Cardinal', 'Proepta', 'Banquet | BOH Bar', 'UTENSILIOS', 8),
  ('1371', 'M37023', 'Citrus Squeezer', 'Barfly Juicer, 8-7/8", with stainless steel pin, cast aluminum', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Mercer', 'Mepsa', 'Banquet | BOH Bar', 'UTENSILIOS', 4),
  ('1316', '1867505', 'Wet Floor Sign Stainless Steel', 'Rubbermaid Executive 2-Sided Multi-Lingual Caution Sign, Black/White, 10 9/10 x 26 1/10', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Rubbermaid', 'Proepta', 'Banquet | Meeting Room and Miscelleanous', 'LIMPIEZA', 8),
  ('1384', 'GR-3', 'Salt Rimmer', 'Glass Rimmer / Margarita Salter with 3 Compartments', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Winco', 'Mepsa', 'Banquet | BOH Bar', 'UTENSILIOS', 4),
  ('1378', 'AS-12', 'Scoop', 'Scoop, 12 oz., aluminum (hand wash only) (Qty Break = 12 each)', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Winco', 'Mepsa', 'Banquet | BOH Bar', 'UTENSILIOS', 12),
  ('1373', 'CAP07', 'Bar Knife', 'Ellis Bar Knife, 9" overall, 4-1/2" blade, stainless steel blade, POM handle, Arcoroc, Mix', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Cardinal', 'Proepta', 'Banquet | BOH Bar', 'UTENSILIOS', 8),
  ('1352', 'CAP18', 'Cocktail Shaker 18oz', 'Shaker Tin (18oz) H5 1/4" T3 7/16" B2 3/8" M3 7/16, SS', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Cardinal', 'Proepta', 'Banquet | BOH Bar', 'UTENSILIOS', 8),
  ('1382', 'CHBST112', 'Bottle Stopper', 'Champagne Bottle "Popper-Stopper", stainless steel', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'American Metalcraft', 'Equipo Hotel', 'Banquet | BOH Bar', 'UTENSILIOS', 8),
  ('1357', 'CAP09', 'Muddler', 'Muddler, 9-5/8", stainless steel, Arcoroc, Mix', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Cardinal', 'Proepta', 'Banquet | BOH Bar', 'UTENSILIOS', 8),
  ('1335', 'FP332', 'Mixing Glass', 'Arcoroc, Broadway Mixing Beaker 24.0 Oz (H:6.0'''' T:4.38'''' M:4.38'''' B:3.63''''), [''Soda Lime Glass''], (6 PC In A Case), Minimum Purchasing Unit CS
Dimensions 6(h) x 4.37(w) x 4.37(d)', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Cardinal', 'Proepta', 'Banquet | BOH Bar', 'UTENSILIOS', 8),
  ('1353', 'HS001', 'Bar Strainer', 'Hawthorne Strainer, 6-1/4" x 3-3/8", SS', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Cardinal', 'Proepta', 'Banquet | BOH Bar', 'UTENSILIOS', 8),
  ('1355', 'CAP04', 'Mesh Strainer', 'Fine Mesh Strainer, 8-3/4" x 3-1/8", SS', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Cardinal', 'Proepta', 'Banquet | BOH Bar', 'UTENSILIOS', 8),
  ('1358', 'CAP01', 'Tongs, Tweezer', 'Tweezers, 6-1/4", stainless steel, Arcoroc, Mix', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Cardinal', 'Proepta', 'Banquet | BOH Bar', 'UTENSILIOS', 16),
  ('1354', 'CAP02', 'Julep Strainer', 'Julep Strainer, 7-1/16" x 3", SS', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Cardinal', 'Proepta', 'Banquet | BOH Bar', 'UTENSILIOS', 8),
  ('1374', 'SS-821', 'Sharpening Stone', 'Sharpening Stone, 8" x 2" x 1"H, rectangular, fine/medium grain, carbonized silicone (Qty Break = 12 each)', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Winco', 'Mepsa', 'Banquet | BOH Bar', 'UTENSILIOS', 4),
  ('1338', 'BC-6', 'Napkin/Straw Caddy Organizer', 'Plastic Bar Caddy Organizer', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Winco', 'Mepsa', 'Banquet | BOH Bar', 'UTENSILIOS', 4),
  ('1380', '7770-C', 'Bottle Stopper', 'VacuVin® Vacuum Wine Preservation, includes: (1) 5" x 2-7/8" white pump, (1) 1-3/4" long gray stopper (carded)', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Franmara', 'Franmara', 'Banquet | BOH Bar', 'UTENSILIOS', 8),
  ('1376', '100MCCW135', 'Measuring Cup', 'Camwear® Measuring Cup, 1 qt., molded handle, dishwasher safe, polycarbonate, clear, NSF', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Cambro', 'Equipo Hotel', 'Banquet | BOH Bar', 'UTENSILIOS', 4),
  ('1336', '2.5.003.00.277', 'Ice Tongs', 'Ice/Sugar Tong 6” (15cm)', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Fortessa', 'Hotel Depot', 'Banquet | BOH Bar', 'UTENSILIOS', 8),
  ('1383', 'E5604', 'Lemon Lime Zester', 'Cash & Carry FirmGrip® Zester/Lemon Peeler, 5-3/4" x 1-1/8" x 7/8", dishwasher safe, ergonomic soft grip handle, stainless steel, black (individually carded) (1 each minimum order)', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'TableCraft Products', 'Equipo Hotel', 'Banquet | BOH Bar', 'UTENSILIOS', 8),
  ('1306', '450', 'Table Numbers Plastic', 'Heavy Plastic Table Numbers 450 TABLE NUMBER, HEAVY PLASTIC, NOS. 1-50 4" L X 4" W', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'American Metalcraft', 'Equipo Hotel', 'Banquet | Holloware and Serving Pieces', 'UTENSILIOS', 2),
  ('1359', 'M33071BKB', 'Vegetable Peeler, Manual', 'Y Peeler, one size, multi', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Mercer', 'Mepsa', 'Banquet | BOH Bar', 'UTENSILIOS', 4),
  ('1381', '7771-C', 'Bottle Stopper', 'VacuVin® Vacuum Wine Stopper, 1-3/4" long, ABS plastic, gray (2 each per pack) (carded)', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Franmara', 'Franmara', 'Banquet | BOH Bar', 'UTENSILIOS', 8),
  ('1385', 'WCS871', 'Wine Key', 'Waiters Corkscrew - 4-1/2″ L x 7/8″ W x 7/8" - Stainless Steel', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'American Metalcraft', 'Equipo Hotel', 'Banquet | BOH Bar', 'UTENSILIOS', 8),
  ('1363', '396', 'Bottle Opener', 'Pocket Bottle Opener, 7" flat, dishwasher safe, stainless steel (1 each minimum order)', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'TableCraft Products', 'Equipo Hotel', 'Banquet | BOH Bar', 'UTENSILIOS', 12),
  ('1366', 'PF-32', 'Funnel', 'Funnel, 32 oz., 6-1/4" dia., round, plastic, white (Qty Break = 6 each)', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Winco', 'Mepsa', 'Banquet | BOH Bar', 'UTENSILIOS', 4),
  ('1245', 'PW-CD58', 'Wooden Long Bowl', 'Wooden Food and Beverage Display', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Pantheon', 'Pantheon', 'Banquet | Buffet Display', 'UTENSILIOS', 6),
  ('1282', '4260.01', 'Amuse Spoon', 'Pass arround cocktail  amuse gueule/tapas spoon
 china, white
 l x w x h in cm
 PU
 13x4x3 
12 pcs', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Zieher', 'Latin Hotel', 'Banquet | Cocktail Pass Around', 'UTENSILIOS', 87),
  ('1311', 'PJN-P191.14N', 'Chrome Beltrac Stanchion Black belt', 'POSTE UNIFILA C/ CINTA RETRACTIL NEGRO 94X200 CM ACERO INOXIDABLE
BRILLANTE', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Forbes', 'Proepta', 'Banquet | Meeting Room and Miscelleanous', 'UTENSILIOS', 8),
  ('1320', NULL, 'Meeting Chimes', 'Meeting Chimes', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'American Hotel Register', 'YEKALON', 'Banquet | Carts and Transport', 'UTENSILIOS', 2),
  ('1324', '24X48X74VUC', 'Cover for Shelving Unit', 'Cover for Metro Shelf', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Winco', 'Mepsa', 'Banquet | Carts and Transport', 'UTENSILIOS', 8),
  ('1330', 'TBD', 'Buffet Lighting', 'LED Chargable Lamps', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Impulse', 'Impulse', 'Banquet | Buffet Other', 'UTENSILIOS', 16),
  ('1334', '4420 - Custom Finishes Available', 'Ice Carts', 'Standard Ice Restock Cart –', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), NULL, 'Proepta', 'Banquet | Buffet Other', 'UTENSILIOS', 4),
  ('1387', '-', 'High CHairs', 'Trip Trap Natural Color', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Stokke', 'Stokke', 'Banquet', 'UTENSILIOS', 8),
  ('1388', 'KB327 - 09', 'Booster Seats', 'Booster Chair - Individual Seat Dimensions: 13” W x 9½” H x 12″ D (330 x 241 x 305 mm)- Brown', (SELECT id FROM areas WHERE name = 'Banquet' LIMIT 1), 'Koala Care', 'Koala Care', 'Banquet', 'UTENSILIOS', 6),
  ('979', 'CHS-CC223-50', 'Chopsticks', 'Ironwood Chopsticks 9" (50 Pairs) (20packs/cs)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Korin', 'Sandolat', 'Mexican Izakaya', 'PLAQUE', 216),
  ('1004', '5850JX149', 'Specialty - Ice cream Cup', 'Ice Cream Cup, 8.75 oz, 4.0" x 6.0", Accessories, Stainless Steel, Williamsburg, 18/10 Stainless,  (minimum = case quantity) (STOCK item)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Steelite', 'Steelite', 'Mexican Izakaya', 'UTENSILIOS', 36),
  ('1049', 'TBD', 'Pool Service Tray', 'Charola de Servicio 35 x 45 x 6 cm - Pearl Marble', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Monica Calderon', 'Monica Calderon', 'Mexican Izakaya | Outdoor Service', 'UTENSILIOS', 24),
  ('995', '6413MY020', 'Round Tray 11"', 'Wabi Sabi Round Tray D 11 1/4"  Slate, Rene Ozorio', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Steelite', 'Steelite', 'Mexican Izakaya', 'LOZA', 36),
  ('998', '6413MY015', 'Coupe Rim Bowl 9"', 'Wabi Sabi Coupe Rim Bowl Slate D 9 5/8" H 2 5/8" (3 3/4 oz Well) (1 5/8 qt Full)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Steelite', 'Steelite', 'Mexican Izakaya', 'LOZA', 36),
  ('972', '1940504021', 'Coffee / Tea Spoon', 'Tea spoon Dakar acacia', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Broggi', 'Proepta', 'Mexican Izakaya', 'PLAQUE', 180),
  ('1036', 'RW-BUCKET-6-1001', 'Bucket for Sake', 'Collectique Como Small Ice Bucket, 5.75" dia. x 6"H, dishwasher safe, handmade, resinware, ombre ivory/clear, BPA Free (1 each per box)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Drinique', 'Abastohotel', 'Mexican Izakaya', 'UTENSILIOS', 12),
  ('1011', 'IXC007S', 'Rattan Coaster for Coffee and Expresso', 'Cup holder Set - (4 pcs) - 3.9” D', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Oaxifornia', 'Oaxifornia', 'Mexican Izakaya', 'UTENSILIOS', 36),
  ('1002', '6413MY018', 'Specialty - Rectangle Tray', 'Rectangle Tray, 11.25"Wabi Sabi, Slate, Rene Ozorio, Rectangle, porcelain  (minimum = case quantity, 6 each per case) (STOCK item)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Steelite', 'Steelite', 'Mexican Izakaya', 'LOZA', 36),
  ('969', '1940504012', 'Appetizer Fork', 'Dessert fork Dakar acacia', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Broggi', 'Proepta', 'Mexican Izakaya', 'PLAQUE', 108),
  ('970', '1940504019', 'Appetizer/Dessert Knife', 'Dessert knife hollow h. Dakar acacia', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Broggi', 'Proepta', 'Mexican Izakaya', 'PLAQUE', 108),
  ('971', '1940504011', 'Appetizer/Dessert Spoon', 'Dessert spoon Dakar acacia', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Broggi', 'Proepta', 'Mexican Izakaya', 'PLAQUE', 108),
  ('996', '6414MY032', 'Rice Bowl 5"', 'Wabi Sabi Rice Bowl Indigo D 5 3/4" H 3" (22 oz)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Steelite', 'Steelite', 'Mexican Izakaya', 'LOZA', 42),
  ('997', '6413MY032', 'Rice Bowl 5"', 'Wabi Sabi Rice Bowl Slate D 5 3/4" H 3" (22 oz)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Steelite', 'Steelite', 'Mexican Izakaya', 'LOZA', 42),
  ('967', '1-D4-714 - 02135 BLU Custom', 'Napkin', 'Karen - Color: Blu - Custom 100% Cotton  714 KAREN - HEM: 4 Hems Mitred Corners, Hemstitching, Bias Binding (for round tablecloth) - Product 
56 x 56', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Casa Rovea', 'Casa Rovea', 'Mexican Izakaya', 'BLANCOS', 216),
  ('968', '100195 - 016', 'Placemat', 'Mini Basketwave Compact Oval* 12" × 16" 30 x 41 cm, Parchment Color', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Chilewich', 'Proepta', 'Mexican Izakaya', 'UTENSILIOS', 108),
  ('1057', 'RW-BUCKET-9-1001', 'Bucket', 'Ombre Como Collection 9 in / 23 cm - Champagne / Wine Bucket', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Drinique', 'Abastohotel', 'Mexican Izakaya | Outdoor Service', 'UTENSILIOS', 6),
  ('1009', 'NR-119-38', 'Sushi Oke', 'Gold & Purple Sushi Oke 15" (38cm)
SKU: 
Size: Inside: 15"Dia. x 2"H Outside: 17.25"Dia. x 3"H', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Korin', 'Sandolat', 'Mexican Izakaya', 'UTENSILIOS', 12),
  ('1109', 'VM5280BK-12', 'Bar Mat', 'Versa-Mat® Bar Mat Tile/Shelf Liner, 12" x 12", interlocking, easy to cut, raised surface for airflow, dishwasher safe, rubber, black, NSF', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'San Jamar', 'Sandolat', 'Mexican Izakaya | FOH Bar', 'UTENSILIOS', 18),
  ('993', '6413MY033', 'Coupe Plate 8"', 'Wabi Sabi Coupe Plate, 8.25" Slate, Rene Ozorio, Round, porcelain  (minimum = case quantity) (STOCK item)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Steelite', 'Steelite', 'Mexican Izakaya', 'LOZA', 36),
  ('994', '6414MY033', 'Coupe Plate 8"', 'Wabi Sabi Coupe Plate, 8.25"Wabi Sabi, Indigo, Rene Ozorio, Round, porcelain  (minimum = case quantity) (STOCK item)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Steelite', 'Steelite', 'Mexican Izakaya', 'LOZA', 36),
  ('1014', '656392', 'Water Jug', 'YLI Collection Jug, 27 oz., 4" dia. x 7.5"H, matt slate style, safe for oven, microwave, freezer & dishwasher, Made in France, Designed by Ferreol Babin (Ship from France)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Revol', 'Proepta', 'Mexican Izakaya', 'UTENSILIOS', 24),
  ('1019', 'TPZT017', 'Beverage Tray', 'Charola de servicio (Guamuchil) - 39cm D x 3cm H', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Oaxifornia', 'Oaxifornia', 'Mexican Izakaya', 'UTENSILIOS', 12),
  ('974', '1940504001', 'Sharing Spoon', 'Table spoon Dakar acacia', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Broggi', 'Proepta', 'Mexican Izakaya', 'PLAQUE', 72),
  ('975', '1940504002', 'Sharing Fork', 'Table fork Dakar acacia', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Broggi', 'Proepta', 'Mexican Izakaya', 'PLAQUE', 72),
  ('976', '1940504009', 'Steak Knife', 'Table knife hollow h. Dakar acacia', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Broggi', 'Proepta', 'Mexican Izakaya', 'PLAQUE', 72),
  ('999', '1534 PORCELAIN', 'Specialty - Saucer', 'Cava Carafe - Porcelain - 4"L x 3"W x 3.3" H - 8.8oz', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Impulse', 'Impulse', 'Mexican Izakaya', 'UTENSILIOS', 36),
  ('1007', 'NR-30233', 'Sushi Board', 'Wooden Sushi Geta Shiraki 11.75"
SKU: 
Size: 11.75"L x 4"W x 1.25"H', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Korin', 'Sandolat', 'Mexican Izakaya', 'UTENSILIOS', 24),
  ('1031', 'SAB-125-L', 'Sake Bottle', 'Sake Bottle, 9.4 oz., large, Seiryu, ceramic, black (0/12)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Korin', 'Sandolat', 'Mexican Izakaya', 'UTENSILIOS', 36),
  ('1010', 'NR-114-25', 'Sushi Oke', 'Light Blue Seiryu Sushi Oke 10" (25cm)
Size: Inside: 10"Dia. x 1.75"H Outside: 12"Dia. x 2.5"H', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Korin', 'Sandolat', 'Mexican Izakaya', 'UTENSILIOS', 18),
  ('1008', 'NR-32225', 'Sushi Board', 'Wooden Sushi Geta 12"
SKU: 
Size: 12"L x 3.5"W x 0.9"H', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Korin', 'Sandolat', 'Mexican Izakaya', 'UTENSILIOS', 24),
  ('989', '6417MY025', 'Sharing Plate 6"', 'Wabi Sabi - Sienna - Deep Coupe Plate Embossed D 6 1/4" H 1 1/4', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Steelite', 'Steelite', 'Mexican Izakaya', 'LOZA', 36),
  ('990', '6413MY025', 'Sharing Plate 6"', 'Wabi Sabi - Slate - Deep Coupe Plate Embossed D 6 1/4" H 1 1/4"', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Steelite', 'Steelite', 'Mexican Izakaya', 'LOZA', 36),
  ('991', '6410MY025', 'Sharing Plate 6"', 'Wabi Sabi - Wheat - Deep Coupe Plate Embossed D 6 1/4" H 1 1/4', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Steelite', 'Steelite', 'Mexican Izakaya', 'LOZA', 36),
  ('992', '6414MY025', 'Sharing Plate 6"', 'Wabi Sabi - Indigo - Deep Coupe Plate Embossed D 6 1/4" H 1 1/4"', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Steelite', 'Steelite', 'Mexican Izakaya', 'LOZA', 36),
  ('965', '4100', 'Votive', 'Mystic™ Lamp, 4"H x 4-1/4" dia., hand blown glass, accommodates Hollowick''s HD15, HD12 & HD8', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Steelite', 'Steelite', 'Mexican Izakaya', 'UTENSILIOS', 18),
  ('1000', '1530 PORCELAIN', 'Specialty - Oval Plate', 'Fondata Oval Plate - Porcelain - 12.1"L x 6.5"W x 0.6"H', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Impulse', 'Impulse', 'Mexican Izakaya', 'LOZA', 36),
  ('1001', '1531 PORCELAIN', 'Specialty - Deep Dish Large', 'Orca Dish Large - Porcelain - 4.75"D x 2.6" H', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Impulse', 'Impulse', 'Mexican Izakaya', 'LOZA', 36),
  ('1005', '7223', 'Specialty - Bowl', 'La Mer Bowl Blue - Porcelain - 8" W x 9"L x 2.7" H - 20oz', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Impulse', 'Impulse', 'Mexican Izakaya', 'LOZA', 36),
  ('1018', 'TPZT017 Custom Size', 'Serving Tray', 'Charola de servicio grande  (Guamuchil) - 60cm D x 3cm H', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Oaxifornia', 'Oaxifornia', 'Mexican Izakaya', 'UTENSILIOS', 8),
  ('984', 'SDS-A23816B', 'Soy Dish', 'Korin Durable Lapis Blue Round Sauce Dish
SKU: 
Size: 3.75"Dia. x 0.75"H - 1.8 oz
$1.95', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Korin', 'Sandolat', 'Mexican Izakaya', 'LOZA', 216),
  ('983', 'NR-517', 'Togarashi Dispenser', 'Hyotan Shichimi Pepper Dispenser
Size: 2.25"Dia. x 4"H', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Korin', 'Sandolat', 'Mexican Izakaya', 'UTENSILIOS', 30),
  ('1006', '7224', 'Specialty - Deep Plate', 'La Mer Deep Plate Blue - Porcelain - 8" D x 2.3" H - 13oz', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Impulse', 'Impulse', 'Mexican Izakaya', 'LOZA', 36),
  ('1061', 'UR90210', 'Syphon', 'Syphon, 1.0 qt, 4.75" x 14.625"H, stainless steel, gold, Utopia, Syphons (minimum = case quantity) (stock item)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Steelite', 'Steelite', 'Mexican Izakaya | FOH Bar', 'UTENSILIOS', 2),
  ('1030', 'NR-642', 'Sake Cocktail Box', 'Sake Box, 30 oz., 5-1/2"L x 5-1/2"W x 2-3/4"H, square, hinoki (cypress) wood (10/20)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Korin', 'Sandolat', 'Mexican Izakaya', 'UTENSILIOS', 24),
  ('985', 'SDS-184', 'Sauce Mini Dish', 'Kokugama Square Sauce Bowl 3"
SKU: 
Size: 3"L x 3"W x 1.75"H - 4 oz', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Korin', 'Sandolat', 'Mexican Izakaya', 'LOZA', 36),
  ('986', 'SDS-MJ118-614', 'Sauce Mini Dish', 'Kinkessho Bronze Round Sauce Dish
Size: 3.75"Dia. x 1.25"H - 4 oz', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Korin', 'Sandolat', 'Mexican Izakaya', 'LOZA', 36),
  ('1023', 'HGLAC02-004', 'High Ball / Beer Glass', 'Hospitality Brands - Noble Tumbler Glass, 13.25 oz., stackable, lead-free ultra clear crystal, sheer rim (4 each per case)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Hospitality Brands', 'Latin Hotel', 'Mexican Izakaya', 'CRISTALERIA', 36),
  ('982', 'SPT-134-L', 'Ponzu Pourer', 'Mikage White Sauce Dispenser 7 oz
SKU: 
Size: 3"Dia. x 3.5"H - 7 oz', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Korin', 'Sandolat', 'Mexican Izakaya', 'LOZA', 30),
  ('981', 'SPT-137', 'Soy Pourer', 'Black Bizen Sauce Dispenser 6 oz
Size: 3"Dia. x 3.5"H - 6 oz', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Korin', 'Sandolat', 'Mexican Izakaya', 'LOZA', 30),
  ('1060', 'BW_RBO', 'Fruit Bowl for Stand', 'Large Olive Wood Rustic Bowl: L: 280 mm x W: 280 mm x H: 180 mm (L: 11 in x W: 11 in x H: 7 in)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Craster', 'Proepta', 'Mexican Izakaya | FOH Bar', 'UTENSILIOS', 2),
  ('1003', '6413MY019', 'Specialty - Rectangle Tray', 'Rectangle Tray, 6.25"Wabi Sabi, Slate, Rene Ozorio, Rectangle, porcelain  (minimum = case quantity) (STOCK item)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Steelite', 'Steelite', 'Mexican Izakaya', 'LOZA', 36),
  ('1095', 'RA03', 'Cutting Board', 'Cutting Board, 24"W x 18"D x 2-1/4" thick, edge grain construction, Northern Hard Rock Maple, with Oil Finish, hand grips on each end, reversible', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'John Boos', 'John Boos', 'Mexican Izakaya | FOH Bar', 'UTENSILIOS', 2),
  ('1034', 'SAC-SY0114GD', 'Sake Cup 3', 'Shusetsu Gold Sake Cup Size: 1.75"Dia. x 1.75"H - 1.5 oz', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Korin', 'Sandolat', 'Mexican Izakaya', 'LOZA', 24),
  ('1058', '2-1916-14B', 'Punch Bowl', 'Black Powder Coated Punch Bowl - Size 14" D', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'RCP', 'Steelite', 'Mexican Izakaya | FOH Bar', 'UTENSILIOS', 1),
  ('1118', 'BOLS007', 'Box', 'Box 13.7” L x 10” W x
1.9” H', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Oaxifornia', 'Oaxifornia', 'Other | Picnic Baskets and Pool basket Options', 'UTENSILIOS', 4),
  ('1062', 'CRFTHS.5.9211', 'Smoke Cloche & Base', 'SOO Craft house Glass Smoke Cloche With Smoker & Chips, 9.25"dia x 11"H, clear', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Fortessa', 'Hotel Depot', 'Mexican Izakaya | FOH Bar', 'UTENSILIOS', 2),
  ('1045', 'WDR108', 'Sushi Platter 1', 'Cheforward Wonder 11.8″ wonder terrazzo moonstone rectangle melamine tray, 11.8″L x 3.74″W x 1.2″H, GET, cheforward', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'GET', 'Proepta', 'Mexican Izakaya | Outdoor Service', 'LOZA', 24),
  ('1037', 'EDT-RK-AMB-24', 'Water Glass', 'Amber Edition Rocks 10oz', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Drinique', 'Abastohotel', 'Mexican Izakaya', 'CRISTALERIA', 36),
  ('1020', 'Z3460014', 'Water Glass', 'Whiskey Glass, 10-1/2 oz., 2-3/4" x 3 3/8", Kyoto, Stolzle, Crystalline (minimum = case quantity, 24 per case) (Stock Item)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Stolzle', 'Proepta', 'Mexican Izakaya', 'CRISTALERIA', 72),
  ('1022', 'HGLAC01-004', 'Rock Glass', 'Hospitality Brands - Noble Tumbler, 9 oz., stackable, lead-free ultra clear crystal, sheer rim (4 each per case)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Hospitality Brands', 'Latin Hotel', 'Mexican Izakaya', 'CRISTALERIA', 24),
  ('1021', '26.112412', 'Wine Glass 13oz', 'Zwiesel Glass Pure Sauvignon Blanc Glass, (0) 13.8 oz., dishwasher safe, lead free, sheer rim, crystal glass (0.34 each weight) (Per case = 6 each) (ecomm dealers 4 case increments; special box will be added cost)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Fortessa', 'Hotel Depot', 'Mexican Izakaya', 'CRISTALERIA', 36),
  ('1068', 'RBB02', 'Silicone Bands', 'Band, 1/2"D, silicone, blue, Arcoroc, Mix (fits OL166, OL167) (stock item)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Cardinal', 'Proepta', 'Mexican Izakaya | FOH Bar', 'UTENSILIOS', 0),
  ('1069', 'RBP01', 'Silicone Bands', 'Band, 1/2"D, silicone, pink, Arcoroc, Mix (fits OL166, OL167) (stock item)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Cardinal', 'Proepta', 'Mexican Izakaya | FOH Bar', 'UTENSILIOS', 0),
  ('1070', 'RBY03', 'Silicone Bands', 'Band, 1/2"D, silicone, yellow, Arcoroc, Mix (fits OL166, OL167) (stock item)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Cardinal', 'Proepta', 'Mexican Izakaya | FOH Bar', 'UTENSILIOS', 0),
  ('1071', 'RBDG3', 'Silicone Bands', 'Band, 1/2"D, silicone, green, Arcoroc, Mix (fits OL166, OL167) (stock item)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Cardinal', 'Proepta', 'Mexican Izakaya | FOH Bar', 'UTENSILIOS', 0),
  ('1072', 'RBO05', 'Silicone Bands', 'Band, 1/2"D, silicone, orange, Arcoroc, Mix (fits OL166, OL167) (stock item)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Cardinal', 'Proepta', 'Mexican Izakaya | FOH Bar', 'UTENSILIOS', 0),
  ('1073', 'RBW06', 'Silicone Bands', 'Band, 1/2"D, silicone, white, Arcoroc, Mix (fits OL166, OL167) (stock item)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Cardinal', 'Proepta', 'Mexican Izakaya | FOH Bar', 'UTENSILIOS', 0),
  ('1074', 'RBR09', 'Silicone Bands', 'Band, 1/2"D, silicone, red, Arcoroc, Mix (fits OL166, OL167) (stock item)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Cardinal', 'Proepta', 'Mexican Izakaya | FOH Bar', 'UTENSILIOS', 0),
  ('1075', 'RBB06', 'Silicone Bands', 'Band, 1/2"D, silicone, black, Arcoroc, Mix (fits OL166, OL167) (stock item)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Cardinal', 'Proepta', 'Mexican Izakaya | FOH Bar', 'UTENSILIOS', 0),
  ('1076', 'RBBR7', 'Silicone Bands', 'Band, 1/2"D, silicone, brown, Arcoroc, Mix (fits OL166, OL167) (stock item)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Cardinal', 'Proepta', 'Mexican Izakaya | FOH Bar', 'UTENSILIOS', 0),
  ('973', '1940504022', 'Demitasse Spoon', 'Moka spoon Dakar acacia', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Broggi', 'Proepta', 'Mexican Izakaya', 'PLAQUE', 36),
  ('980', 'CHR-141', 'Chopstick Rest', 'Chopstick Rest, 2-1/2"L x 1/2"W x 1/2"H, rectangular, wooden, brown (20/1000)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Korin', 'Sandolat', 'Mexican Izakaya', 'UTENSILIOS', 144),
  ('1024', 'Z14025EL098', 'Martini', 'Martini Glass, 8-1/2 oz., 4-1/2" x 6-3/4", Glisten Matte Black & Copper, Stolzle, Crystalline (minimum = case quantity, 24 per case) (Stock Item)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Stolzle', 'Proepta', 'Mexican Izakaya', 'CRISTALERIA', 24),
  ('1046', 'WDR103', 'Sushi Platter 2', 'Cheforward Wonder  – 9.6″ wonder terrazzo moonstone rectangle melamine tray, 9.6″L x 3.875″W x .8″H, GET, cheforward
WDR103', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'GET', 'Proepta', 'Mexican Izakaya | Outdoor Service', 'LOZA', 24),
  ('1051', 'HUS020-012', 'High Ball Glass', 'Bold Drinkware™ - Mirage Hi-Ball Tumbler, 12.75 oz., unbreakable, polycarbonate, dishwasher safe, crystal sapphire (12 each per case)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Hospitality Brands', 'Latin Hotel', 'Mexican Izakaya | Outdoor Service', 'CRISTALERIA', 24),
  ('1054', 'HUS057-012', 'Hurricane', 'Bold Drinkware™ - Calypso Hurricane Glass, 11 oz., unbreakable, polycarbonate, dishwasher safe, crystal sapphire (12 each per case)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Hospitality Brands', 'Latin Hotel', 'Mexican Izakaya | Outdoor Service', 'CRISTALERIA', 24),
  ('1053', 'HUS069-012', 'Beer Glass', 'Bold Drinkware™ - Calypso Craft Beer Glass, 13 oz., unbreakable, polycarbonate, dishwasher safe, crystal sapphire (12 each per case)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Hospitality Brands', 'Latin Hotel', 'Mexican Izakaya | Outdoor Service', 'CRISTALERIA', 24),
  ('1032', 'SAC-SH000404', 'Sake Cup 1', 'Sake Cup, 1 oz., 2" dia. x 1-1/2"H, round, dishwasher & microwave safe, Shuin, red (0/5)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Korin', 'Sandolat', 'Mexican Izakaya', 'CRISTALERIA', 24),
  ('1050', 'HUS018-012', 'Rock Glass', 'Bold Drinkware™ - Mirage Old Fashioned Glass, 10 oz., unbreakable, polycarbonate, dishwasher safe, crystal sapphire (12 each per case)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Hospitality Brands', 'Latin Hotel', 'Mexican Izakaya | Outdoor Service', 'CRISTALERIA', 24),
  ('1025', 'GM16P', 'Moscow Mule', 'Moscow Mule Mug, 16 oz., 3-1/4" dia. x 3-7/8"H, with brass handle, stainless steel, gold satin finish (hand wash only)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'American Metalcraft', 'Equipo Hotel', 'Mexican Izakaya', 'UTENSILIOS', 12),
  ('1047', 'INF204', 'Ramekin / Soy Dish', '– 3.4 oz infuse stone grey round melamine ramekin, 3.5″L x 3.5″W x 1″H, GET, cheforward', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'GET', 'Proepta', 'Mexican Izakaya | Outdoor Service', 'LOZA', 48),
  ('1117', 'LAN023', 'Picnic Bag', 'Picnic Bag 11.8” L x7.4” W x
5.9 “ H', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Oaxifornia', 'Oaxifornia', 'Other | Picnic Baskets and Pool basket Options', 'UTENSILIOS', 4),
  ('1055', 'HUS340-012', 'Specialty - Japanese Whisky Glass', 'Bold Drinkware™ - Exuma Old Fashioned Glass (Rocks), 12 oz., unbreakable, polycarbonate, dishwasher safe, crystal sapphire  (12 each per case)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Hospitality Brands', 'Latin Hotel', 'Mexican Izakaya | Outdoor Service', 'CRISTALERIA', 24),
  ('1033', 'SAC-125', 'Sake Cup 2', 'Sake Cup, 2 oz., 2-1/4" dia. x 1-1/4"H, Seiryu, black (0/20)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Korin', 'Sandolat', 'Mexican Izakaya', 'LOZA', 24),
  ('1052', 'HUS045-012', 'Wine Glass', 'Bold Drinkware™ - Revel Wine Glass, 13 oz., unbreakable, dishwasher safe, Bold Polycarbonate drinkware, clear (12 each per case)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Hospitality Brands', 'Latin Hotel', 'Mexican Izakaya | Outdoor Service', 'CRISTALERIA', 24),
  ('988', 'SDS-150-821', 'Sauce Mini Dish', 'Toruko Nanban Round Sauce Dish
Size: 3.25"Dia. x 1.25"H - 2 oz', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Korin', 'Sandolat', 'Mexican Izakaya', 'LOZA', 36),
  ('1065', '22440-3-112', 'Condiment Caddy', 'Heritage 3 Jar Display, 12.75" W x 4.25" D x 4" H, includes 3 jars', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Cal-Mil', 'Equipo Hotel', 'Mexican Izakaya | FOH Bar', 'UTENSILIOS', 2),
  ('1044', 'B230115-CDB', 'Plate Rectangular11"', 'Elite Global Solutions - Plate, 11-1/2" x 4-7/8", rectangular, dishwasher safe, melamine, dark blue, Catalina', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'GET', 'Proepta', 'Mexican Izakaya | Outdoor Service', 'LOZA', 24),
  ('1027', 'TREVI.141.000', 'Specialty Rock', 'Old Fashion Trevi Glass 9.6oz', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Fortessa', 'Hotel Depot', 'Mexican Izakaya', 'CRISTALERIA', 32),
  ('1092', 'JP9730', 'Juicer, Lever / Crank Type', 'Cash & Carry Big Squeeze™ Juice Press, 11-1/2" x 7" x 17", manual, accommodates 5-3/4" glass, 3-pinion design, hand wash only, 18/8 stainless steel cone, cast iron construction, black coated finish, NSF (1 each minimum order)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'TableCraft Products', 'Equipo Hotel', 'Mexican Izakaya | FOH Bar', 'UTENSILIOS', 1),
  ('1059', 'BP000709', 'Fruit Stand for Bowl', 'FABRE, #DNR#, Medium Natural Cake Stand, Pack/2 - Medium: 9.5"D x 4.5"H', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Blue Pheasant', 'Blue Pheasant', 'Mexican Izakaya | FOH Bar', 'UTENSILIOS', 2),
  ('987', 'SDS-MJ-01-B', 'Sauce Mini Dish', 'Black Moss Round Sauce Bowl 3.25"
Size: 3.25"Dia. x 1.75"H - 3 oz', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Korin', 'Sandolat', 'Mexican Izakaya', 'LOZA', 36),
  ('1048', '38768-SG', 'Ramekin / Soy Dish', '– 2oz infuse stone grey melamine ramekin, 2.69″L x 2.38″W x 1.5″H, GET, cheforward', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'GET', 'Proepta', 'Mexican Izakaya | Outdoor Service', 'LOZA', 48),
  ('1063', 'M37219ANG', 'Mixing Glass', 'Barfly® Diamond Lattice Mixing Tin, 21 oz. (625 ml.), double-wall insulated, pouring spout, dishwasher safe, 18/8 stainless steel, Antique Gold plated satin finish', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Mercer', 'Mepsa', 'Mexican Izakaya | FOH Bar', 'UTENSILIOS', 2),
  ('1029', 'GL-MF24-C', 'Sake Glass for box', 'Clear Glass Pedestal Sake Cup
Size: 2.25"Dia. x 2.5"H - 2.5 oz
$2.95', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Korin', 'Sandolat', 'Mexican Izakaya', 'CRISTALERIA', 36),
  ('1107', 'SI6000', 'Ice Tote', 'Saf-T-Ice® Tote, 6 gallon, polycarbonate, rubber handle, with tri-grip feature, includes Saf-T-Ice® HACCP hanger for elevation to waist level, NSF', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'San Jamar', 'Sandolat', 'Mexican Izakaya | FOH Bar', 'UTENSILIOS', 3),
  ('1043', 'B230090-CDB', 'Plate Rectangular 9"', 'Elite Global Solutions - Plate, 9" x 4-1/4", rectangular, dishwasher safe, melamine, dark blue, Catalina', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'GET', 'Proepta', 'Mexican Izakaya | Outdoor Service', 'LOZA', 24),
  ('1038', 'B233106-CDB', 'Plate 10"', 'Elite Global Solutions - Plate, 10-5/8" dia., irregular round, dishwasher safe, melamine, dark blue, Catalina', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'GET', 'Proepta', 'Mexican Izakaya | Outdoor Service', 'LOZA', 12),
  ('1039', 'B233106-CLB', 'Plate 10"', 'Elite Global Solutions - Plate, 10-5/8" dia., irregular round, dishwasher safe, melamine, light blue, Catalina', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'GET', 'Proepta', 'Mexican Izakaya | Outdoor Service', 'LOZA', 12),
  ('1086', 'M37012ANG', 'Bar Spoon', 'Barfly® Classic Bar Spoon, 11-13/16" (30 cm), weighted teardrop shaped end, twisted stem, one-piece, 18/8 stainless steel core, Antique Gold-plated finish', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Mercer', 'Mepsa', 'Mexican Izakaya | FOH Bar', 'UTENSILIOS', 4),
  ('1099', '1851-5', 'Storage Jar / Ingredient Canister, Glass', 'Mixology Jar, 32 oz. capacity, 5-1/4" dia., x 4-1/2"H, double walled insulated base, stainless steel solid lid with silicone lining, glass, clear (cold pucks sold separately)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Cal-Mil', 'Equipo Hotel', 'Mexican Izakaya | FOH Bar', 'UTENSILIOS', 3),
  ('1035', 'SAC-104', 'Sake Cup 4', 'Bizen Fu Sake Cup
Size: 2.25"Dia. x 1.25"H - 2 oz
$3.95', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Korin', 'Sandolat', 'Mexican Izakaya', 'LOZA', 24),
  ('1012', 'UN-BG11091S', 'Double Walled Expresso Cup', 'Unno Taza Moka Doble Pared con handle 3 oz', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Unno', 'Proepta', 'Mexican Izakaya', 'LOZA', 24),
  ('1041', 'B236089-CLB', 'Bowl 36 oz', 'Elite Global Solutions - Bowl, 36 oz., 9" dia., round, dishwasher safe, melamine, light blue, Catalina', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'GET', 'Proepta', 'Mexican Izakaya | Outdoor Service', 'LOZA', 12),
  ('1090', '285-50', 'Liquor Pourer', 'Spill-Stop® Tapered Pourer, seamless spout, with poly-kork, controlled medium speed, chrome, Made in USA (packed one dozen per poly bag, one gross per carton = 144 each, minimum order 1 gross)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Spill-Stop', 'Spill-Stop', 'Mexican Izakaya | FOH Bar', 'UTENSILIOS', 48),
  ('1091', '186700', 'Mandoline', 'Benriner "Little Beni" Mandoline Slicer, 12-1/2"L x 3-1/2"W, includes (3) blades and safety pusher, stainless steel blades, polypropylene, made in Japan', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Matfer', 'Proepta', 'Mexican Izakaya | FOH Bar', 'UTENSILIOS', 1),
  ('1042', 'B231056-CDB', 'Plate Square 5"', 'Elite Global Solutions - Plate, 5-5/8" dia., square, dishwasher safe, melamine, dark blue, Catalina', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'GET', 'Proepta', 'Mexican Izakaya | Outdoor Service', 'LOZA', 24),
  ('1040', 'B235069-CDB', 'Bowl 20oz', 'Elite Global Solutions - Bowl, 20 oz., 6-7/8" dia., round, dishwasher safe, melamine, dark blue, Catalina', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'GET', 'Proepta', 'Mexican Izakaya | Outdoor Service', 'LOZA', 12),
  ('1056', 'HUS360-012', 'Specialty - Mezcal/Tequila Shot Glass', 'Bold Drinkware™ - Hyde Shot, 2 oz., unbreakable, polycarbonate, dishwasher safe, crystal sapphire (12 each per case)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Hospitality Brands', 'Latin Hotel', 'Mexican Izakaya | Outdoor Service', 'CRISTALERIA', 24),
  ('1097', '1851-4', 'Storage Jar / Ingredient Canister, Glass', 'Mixology Jar, 16 oz. capacity, 4-1/4" dia. x 4"H, double walled insulated base, stainless steel solid lid with silicone lining, glass, clear (cold pucks sold separately)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Cal-Mil', 'Equipo Hotel', 'Mexican Izakaya | FOH Bar', 'UTENSILIOS', 3),
  ('1067', '3308-110', 'Straw Holder', 'Aspen Stir Stick Organizer I 5.25” W x 5.25” D x 5.5” H', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Cal-Mil', 'Equipo Hotel', 'Mexican Izakaya | FOH Bar', 'UTENSILIOS', 1),
  ('1080', 'M37005ANG', 'Jigger', 'Barfly® Japanese Style Jigger, 1 & 2 oz., with internal marking lines, 18/8 stainless steel core, Antique Gold-plated finish', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Mercer', 'Mepsa', 'Mexican Izakaya | FOH Bar', 'UTENSILIOS', 3),
  ('1102', 'BM-1812K', 'Bar Mat', 'Service Mat, 18" x 12", rubber, black, NSF (Qty Break = 12 each)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Winco', 'Mepsa', 'Mexican Izakaya | FOH Bar', 'UTENSILIOS', 3),
  ('966', '5741 GLASS', 'Bud Vase', 'Pina Bud Vase Amber - 2.4"D x 4"H', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Impulse', 'Impulse', 'Mexican Izakaya', 'CRISTALERIA', 18),
  ('1081', 'M37008ANG', 'Cocktail Shaker 28 oz', 'Barfly® Shaker, 28 oz., 3-5/8" dia. x 7"H, capped bottom, 18/8 stainless steel core, satin finish interior, Antique Gold-plated finish exterior', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Mercer', 'Mepsa', 'Mexican Izakaya | FOH Bar', 'UTENSILIOS', 2),
  ('1083', 'M37071ANG', 'Bar Strainer', 'Barfly® Spring Bar Strainer, 5-5/8" overall length, heavy duty, 4-prong, replaceable spring, hanging hole, 18/8 stainless steel core, Antique Gold-plated finish', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Mercer', 'Mepsa', 'Mexican Izakaya | FOH Bar', 'UTENSILIOS', 2),
  ('1066', '22407-6-110', 'Napkin Holder', 'Aspen Stacking Organizer  I 6” W x 6” D x 7” H', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Cal-Mil', 'Equipo Hotel', 'Mexican Izakaya | FOH Bar', 'UTENSILIOS', 1),
  ('1013', 'UN-BG18244', 'Double Walled Coffee Cup', 'Unno Taza Café Doble Pared - 12 1/2 oz', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Unno', 'Proepta', 'Mexican Izakaya', 'CRISTALERIA', 12),
  ('1026', 'N2760', 'Gin & Tonic', 'Arcoroc, Vina Cocktail Gin 24.0 Oz (H:7.375'''' T:3.75'''' M:4.5'''' B:3.25''''), , (12 PC In A Case), Minimum Purchasing Unit CS', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Cardinal', 'Proepta', 'Mexican Izakaya', 'CRISTALERIA', 24),
  ('1028', 'P44741', 'Whiskey/Tequila Glass', 'Capri
Brandy 9 1/4oz
H 4 5/8" M 3 1/4"
T 2 3/8" B 2 3/8"', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Steelite', 'Steelite', 'Mexican Izakaya', 'CRISTALERIA', 24),
  ('1084', 'M37028ANG', 'Julep Strainer', 'Barfly® Julep Strainer, 6-1/2" overall length, welded handle with hanging hole, 18/8 stainless steel core, Antique Gold-plated exterior', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Mercer', 'Mepsa', 'Mexican Izakaya | FOH Bar', 'UTENSILIOS', 2),
  ('1082', 'M37007ANG', 'Cocktail Shaker 18oz', 'Barfly® Shaker, 18 oz., 3-1/2" dia. x 5"H, capped bottom, 18/8 stainless steel core, satin finish interior, Antique Gold-plated finish exterior', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Mercer', 'Mepsa', 'Mexican Izakaya | FOH Bar', 'UTENSILIOS', 2),
  ('1100', '1851-5PUCK', 'Ice Pack', 'Cooling Puck, black (for 1851-5 jar)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Cal-Mil', 'Equipo Hotel', 'Mexican Izakaya | FOH Bar', 'UTENSILIOS', 3),
  ('1094', 'M15500', 'Channel Knife', 'Mercer Cutlery Channel Knife, stain-resistant steel, molded slip-resistant polypropylene handle', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Mercer', 'Mepsa', 'Mexican Izakaya | FOH Bar', 'UTENSILIOS', 2),
  ('1085', 'M37025', 'Mesh Strainer', 'Barfly® Mesh Strainer, 3-1/2" dia. bowl, 10-3/8" overall length, fine-mesh, front rest loop, rod handle, 18/8 stainless steel', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Mercer', 'Mepsa', 'Mexican Izakaya | FOH Bar', 'UTENSILIOS', 2),
  ('1105', '160-02', 'Bar Mat', 'Bar Mat, 24"L x 3-1/4"W x 1/2"H, non-slip, rubber, black', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Spill-Stop', 'Spill-Stop', 'Mexican Izakaya | FOH Bar', 'UTENSILIOS', 4),
  ('1098', '1851-4PUCK', 'Ice Pack', 'Cooling Puck, black (for 1851-4 jar)', (SELECT id FROM areas WHERE name = 'Mexican Izakaya' LIMIT 1), 'Cal-Mil', 'Equipo Hotel', 'Mexican Izakaya | FOH Bar', 'UTENSILIOS', 3)
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
