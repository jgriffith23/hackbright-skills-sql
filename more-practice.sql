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

-- Practice creating a table. This adds a table to the cars database with 
-- an automatically-generating serial id as the primary key, a name of type
-- VARCHAR and max length 100 that is not nullable, a year awarded of type INTEGER
-- that is not nullable, and a winner_id of type integer. 

-- The name is not nullable because it's silly to create a new award without naming 
-- it. The year is not nullable because and if you don't include the year, how will 
-- you know when the winner received it?  

-- Now, the winner_id can be used to index into the models table to see which model
-- actually won the award!

BEGIN;
CREATE TABLE AWARDS(
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    year INTEGER NOT NULL,
    winner_id INTEGER
);
COMMIT;


-- More INSERT

-- Insert two rows into the new awards table. 

-- After running the following commands, this output should be obtainable:

-- SELECT * FROM awards;

--  id |       name        | year | winner_id
-- ----+-------------------+------+-----------
--   1 | IIHS Safety Award | 2015 |        49
--   2 | IIHS Safety Award | 2015 |        50

BEGIN;
INSERT INTO awards (name, year, winner_id)
VALUES('IIHS Safety Award', 2015, 49);

INSERT INTO AWARDS (name, year, winner_id)
VALUES('IIHS Safety Award', 2015, 50);
COMMIT;