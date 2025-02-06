-- subqueries farm
SELECT * FROM farm WHERE area = (SELECT MAX(area) FROM farm);
SELECT * FROM farm WHERE area > (SELECT AVG(area) FROM farm);
SELECT * FROM farm WHERE farm_location = (SELECT farm_location FROM farm WHERE farm_name = 'Ferma Verde');
SELECT * FROM farm WHERE contact_info IN (SELECT contact_info FROM farm WHERE farm_name = 'Ferma Litoral');

-- subqueries weather
SELECT wind_direction FROM weather WHERE wind_speed = (SELECT MAX(wind_speed) FROM weather);
SELECT temperature FROM weather WHERE humidity = (SELECT MIN(humidity) FROM weather);
SELECT description FROM weather WHERE humidity > (SELECT AVG(humidity) FROM weather);
SELECT description, temperature FROM weather WHERE temperature = (SELECT MIN(temperature) FROM weather);

-- subqueries tasks
SELECT * FROM tasks WHERE due_date = (SELECT MAX(due_date) FROM tasks WHERE status = 'În desfășurare');
SELECT * FROM tasks WHERE status NOT IN ('În desfășurare') ORDER BY due_date ASC;
SELECT * FROM tasks WHERE status NOT IN ('Finalizat') ORDER BY due_date DESC; 

-- subqueries tools
SELECT * FROM tools WHERE id IN (SELECT id FROM tools WHERE tool_condition = 'Bun');
SELECT * FROM tools WHERE price IN (SELECT price FROM tools WHERE tool_name LIKE 'P%');
SELECT * FROM tools WHERE id_farm IN (SELECT id_farm FROM tools WHERE tool_name LIKE '%Tractor%');

--subqueries employees
SELECT * FROM employees WHERE salary > (SELECT MAX(salary) FROM employees WHERE employee_role = 'Specialist irigații');
SELECT * FROM employees WHERE id_farm IN (SELECT id_farm FROM employees WHERE employee_name = 'Raluca Nistor');
SELECT * FROM employees WHERE hire_date > (SELECT MIN(hire_date) FROM employees WHERE employee_role = 'Administrator');

--subqueries crops
SELECT * FROM crops WHERE planting_date < (SELECT MIN(planting_date) FROM crops WHERE crop_type = 'Orez brun') AND harvest_date < '2024-05-01';
SELECT * FROM crops WHERE planting_date IN (SELECT planting_date FROM crops WHERE crop_type = 'Mar verde') AND harvest_date > (SELECT MIN(harvest_date) FROM crops);
SELECT * FROM crops WHERE planting_date < (SELECT MAX(planting_date) FROM crops WHERE growth_stage LIKE '%re');

--subqueries pest_and_disease
SELECT * FROM pest_and_disease WHERE id IN (SELECT id FROM pest_and_disease WHERE treatement LIKE '%fungicide%');
SELECT * FROM pest_and_disease WHERE id IN (SELECT id FROM pest_and_disease WHERE plant_state LIKE '%frunze%');
SELECT * FROM pest_and_disease WHERE id IN (SELECT id FROM pest_and_disease WHERE pest_disease_type = 'Insectā' AND treatement LIKE '%organic%');

--subqueries fields
SELECT * FROM fields WHERE id_farm IN (SELECT id_farm FROM fields WHERE soil_type = 'Lutos');
SELECT * FROM fields WHERE area > (SELECT AVG(area) FROM fields);
SELECT * FROM fields WHERE field_location IN (SELECT field_location FROM fields WHERE id_crops = 10);

--subqueries animals
SELECT * FROM animals WHERE id_farm IN (SELECT id_farm FROM animals WHERE health_status = 'Sănătos');
SELECT * FROM animals WHERE age > (SELECT AVG(age) FROM animals);
SELECT * FROM animals WHERE breed IN (SELECT breed FROM animals WHERE animal_type = 'Bivol');

--subqueries sales
SELECT * FROM sales WHERE id_farm IN (SELECT id_farm FROM sales WHERE sale_type = 'Culturā');
SELECT * FROM sales WHERE price > (SELECT AVG(price) FROM sales);
SELECT * FROM sales WHERE items IN (SELECT items FROM sales WHERE sale_date > '2024-08-01');