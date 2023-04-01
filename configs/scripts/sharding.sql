-- RANDOMLY
-- create table
CREATE TABLE distr_table_r (
   id SERIAL,
   name VARCHAR(256),
   age INTEGER,
   email VARCHAR(256)
) DISTRIBUTED RANDOMLY;

-- insert random data using a loop
DO $$
DECLARE i INTEGER;
BEGIN
   FOR i IN 1..10000 LOOP
      INSERT INTO distr_table_r(name, age, email)
      VALUES (
         md5(random()::text),
         floor(random() * 100),
         md5(random()::text || '@example.com')
      );
   END LOOP;
END $$;

-- select count data from table
SELECT count(*) FROM distr_table_r;

SELECT gp_segment_id, count(*)
FROM distr_table_r GROUP BY gp_segment_id
ORDER BY gp_segment_id;



-- BY COLUMN
-- create table
CREATE TABLE distr_table_k (
   id SERIAL PRIMARY KEY,
   name VARCHAR(256),
   age INTEGER,
   email VARCHAR(256)
) DISTRIBUTED BY (id);

-- insert random data using a loop
DO $$
DECLARE i INTEGER;
BEGIN
   FOR i IN 1..10000 LOOP
      INSERT INTO distr_table_k(name, age, email)
      VALUES (
         md5(random()::text),
         floor(random() * 100),
         md5(random()::text || '@example.com')
      );
   END LOOP;
END $$;

-- select count data from table
SELECT count(*) FROM distr_table_k;

SELECT gp_segment_id, count(*)
FROM distr_table_k GROUP BY gp_segment_id
ORDER BY gp_segment_id;



-- BY TWO COLUMNS
-- create table
CREATE TABLE distr_table_ccc (
   id SERIAL PRIMARY KEY,
   name VARCHAR(256),
   age INTEGER,
   email VARCHAR(256)
) DISTRIBUTED BY (id, name);

-- insert random data using a loop
DO $$
DECLARE i INTEGER;
BEGIN
   FOR i IN 1..10000 LOOP
      INSERT INTO distr_table_ccc(name, age, email)
      VALUES (
         md5(random()::text),
         floor(random() * 100),
         md5(random()::text || '@example.com')
      );
   END LOOP;
END $$;

-- select count data from table
SELECT count(*) FROM distr_table_ccc;

SELECT gp_segment_id, count(*)
FROM distr_table_ccc GROUP BY gp_segment_id
ORDER BY gp_segment_id;