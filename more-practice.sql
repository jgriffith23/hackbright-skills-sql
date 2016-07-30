-- Include your solutions to the More Practice problems in this file.



-- INSERT

-- Practice adding rows to a database. These two statements add 
-- a 2015 Chevrolet Malibu entry and a 2015 Subaru Outback entry.
-- After executing, the following output is obtainable:

-- cars=# SELECT * FROM models WHERE year = 2015;
--  id | year | brand_name |  name
-- ----+------+------------+---------
--  48 | 2015 | Chevrolet  | Malibu
--  49 | 2015 | Subaru     | Outback

BEGIN;
INSERT INTO models (year, brand_name, name)
VALUES (2015, 'Chevrolet', 'Malibu');
COMMIT;

BEGIN
INSERT INTO models (year, brand_name, name)
VALUES (2015, 'Subaru', 'Outback');
COMMIT;


-- CREATE TABLE


-- More INSERT