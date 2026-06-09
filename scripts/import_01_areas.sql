-- ================================================
-- STEP 1: Run this FIRST — create missing areas
-- ================================================

INSERT INTO areas (name) VALUES ('5th Resident Lounge') ON CONFLICT (name) DO NOTHING;
INSERT INTO areas (name) VALUES ('Banquet') ON CONFLICT (name) DO NOTHING;
INSERT INTO areas (name) VALUES ('Beach Bar') ON CONFLICT (name) DO NOTHING;
INSERT INTO areas (name) VALUES ('Cevicheria') ON CONFLICT (name) DO NOTHING;
INSERT INTO areas (name) VALUES ('Coffee Shop') ON CONFLICT (name) DO NOTHING;
INSERT INTO areas (name) VALUES ('Drawing Room') ON CONFLICT (name) DO NOTHING;
INSERT INTO areas (name) VALUES ('Employee Dinning') ON CONFLICT (name) DO NOTHING;
INSERT INTO areas (name) VALUES ('In Room Dinning') ON CONFLICT (name) DO NOTHING;
INSERT INTO areas (name) VALUES ('Lobby Lounge') ON CONFLICT (name) DO NOTHING;
INSERT INTO areas (name) VALUES ('Main Kitchen') ON CONFLICT (name) DO NOTHING;
INSERT INTO areas (name) VALUES ('Mexican Izakaya') ON CONFLICT (name) DO NOTHING;
INSERT INTO areas (name) VALUES ('Owners Lounge') ON CONFLICT (name) DO NOTHING;
INSERT INTO areas (name) VALUES ('Pool & Beach') ON CONFLICT (name) DO NOTHING;
INSERT INTO areas (name) VALUES ('SpeakEasy') ON CONFLICT (name) DO NOTHING;
INSERT INTO areas (name) VALUES ('Specialty Italian') ON CONFLICT (name) DO NOTHING;
INSERT INTO areas (name) VALUES ('St Regis Bar') ON CONFLICT (name) DO NOTHING;
INSERT INTO areas (name) VALUES ('Three Meal') ON CONFLICT (name) DO NOTHING;

-- Verify areas:
SELECT id, name FROM areas ORDER BY name;
