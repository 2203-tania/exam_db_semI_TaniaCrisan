--aggregate farm
SELECT farm_location, MAX(area) FROM farm GROUP BY farm_location;
SELECT farm_name, AVG(area) FROM farm GROUP BY farm_name;

--aggregate weather
SELECT wind_direction, AVG(temperature) AS avg_temperature FROM weather GROUP BY wind_direction;
SELECT description, MAX(humidity) AS max_humidity FROM weather GROUP BY description;

--aggregate tools
SELECT tool_type, COUNT(*) AS tool_count, AVG(price) AS avg_price FROM tools WHERE price > 5000 GROUP BY tool_type;
SELECT id_farm, SUM(price) AS total_price, MAX(price) AS max_price FROM tools WHERE price > 10000 GROUP BY id_farm;

--aggregate employees
select * from employees

--aggregate tasks

--aggregate crops



--aggregate pest_and_disease
SELECT * FROM pest_and_disease WHERE pest_disease_type IN (SELECT pest_disease_type FROM pest_and_disease GROUP BY pest_disease_type ORDER BY COUNT(*) DESC);
SELECT * FROM pest_and_disease WHERE id IN (SELECT id FROM pest_and_disease WHERE treatement = (SELECT MAX(treatement) FROM pest_and_disease));

--aggregate fields
SELECT * FROM fields WHERE soil_type IN (SELECT soil_type FROM fields GROUP BY soil_type ORDER BY COUNT(*) DESC LIMIT 1);
SELECT * FROM fields WHERE area > (SELECT AVG(area) FROM fields WHERE soil_type = 'Humic');

--aggregate animals
SELECT * FROM animals WHERE breed IN (SELECT breed FROM animals GROUP BY breed ORDER BY COUNT(*) DESC LIMIT 1);
SELECT * FROM animals WHERE age > (SELECT AVG(age) FROM animals WHERE health_status = 'Sănătos');

--aggregate sales
SELECT * FROM sales WHERE sale_type IN (SELECT sale_type FROM sales GROUP BY sale_type ORDER BY COUNT(*) DESC LIMIT 1);
SELECT * FROM sales WHERE price > (SELECT AVG(price) FROM sales WHERE sale_type = 'Animale');