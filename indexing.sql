
CREATE user indexed_cars_user;

CREATE DATABASE indexed_cars WITH OWNER indexed_cars_user;

\i scripts/car_models.SQL

\i scripts/car_model_data.SQL;
\i scripts/car_model_data.SQL;
\i scripts/car_model_data.SQL;
\i scripts/car_model_data.SQL;
\i scripts/car_model_data.SQL;
\i scripts/car_model_data.SQL;
\i scripts/car_model_data.SQL;
\i scripts/car_model_data.SQL;
\i scripts/car_model_data.SQL;
\i scripts/car_model_data.SQL;

SELECT DISTINCT make_title
FROM car_models
WHERE make_code = 'LAM';

SELECT DISTINCT model_title
FROM car_models
where make_code = 'NISSAN' AND model_code = 'GT-R';

SELECT make_code, model_code, model_title, YEAR
FROM car_models 
WHERE make_code = 'LAM';

SELECT *
FROM car_models
WHERE year BETWEEN 2010 AND 2015;

SELECT *
FROM car_models
WHERE year = 2010;

CREATE INDEX 
ON car_models (make_code);

CREATE INDEX
ON car_models (make_code, model_code);

CREATE INDEX 
ON car_models (year);

SELECT DISTINCT make_title
FROM car_models
WHERE make_code = 'LAM';

SELECT DISTINCT model_title
FROM car_models
where make_code = 'NISSAN' AND model_code = 'GT-R';

SELECT make_code, model_code, model_title, YEAR
FROM car_models 
WHERE make_code = 'LAM';

SELECT *
FROM car_models
WHERE year BETWEEN 2010 AND 2015;

SELECT *
FROM car_models
WHERE year = 2010;


DROP DATABASE IF EXISTS indexed_cars;
DROP TABLE IF EXISTS car_models;
DROP USER IF EXISTS indexed_cars_user;
