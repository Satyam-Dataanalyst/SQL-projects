-- Create Database and then create table.
CREATE TABLE car_dekho (
  name TEXT,
  year INT8,
  selling_price INT8,
  km_driven INT8,
  fuel VARCHAR(50),
  seller_type VARCHAR(50),
  transmission VARCHAR(50),
  owner VARCHAR(50),
  mileage VARCHAR(50),
  engine VARCHAR(50),
  max_power VARCHAR(50),
  torque VARCHAR(50),
  seats INT8
);

-- Import csv files:
COPY car_dekho (name, year, selling_price, km_driven, fuel, seller_type, transmission, owner, mileage, engine, max_power, torque, seats)
FROM 'S:\Project Data analysis\SQL Project\Car_dekho.csv'
DELIMITER ','
CSV HEADER;

-- Check if dataset imported successfully?
SELECT *
FROM car_dekho;

-- Total Cars: To get a count of total records
SELECT COUNT(*)
FROM car_dekho;

-- How many cars will be available in 2023?
SELECT COUNT(*)
FROM car_dekho
WHERE year = 2023;

-- How many cars is available in 2020, 2021, 2022?
SELECT
  year,
  COUNT(*)
FROM car_dekho
WHERE year in (2020, 2021, 2022)
GROUP BY year;

-- How many diesel cars will there be in 2020?
SELECT COUNT(*)
FROM car_dekho
WHERE fuel = "Diesel" AND year = 2020;

-- Print all the fuel cars (petrol, diesel, and CNG) come by all year.
SELECT
  year,
  COUNT(*) FILTER (WHERE fuel = 'Petrol') AS petrol_count,
  COUNT(*) FILTER (WHERE fuel = 'Diesel') AS diesel_count,
  COUNT(*) FILTER (WHERE fuel = 'CNG') AS cng_count
FROM car_dekho
GROUP BY year
ORDER BY year;

--There were more than 100 cars in a given year, which year had more than 100 cars?
SELECT
  year,
  COUNT(*) AS total_cars
FROM car_dekho
GROUP BY year
HAVING COUNT(*) > 100
ORDER BY COUNT(*) DESC;

-- All cars count details between 2015 and 2023.
SELECT
  year,
  COUNT(*)
FROM car_dekho
WHERE year BETWEEN 2015 AND 2023
GROUP BY year
ORDER BY year ASC;
