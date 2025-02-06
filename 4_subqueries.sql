-- subqueries farm
SELECT * FROM farm ORDER BY area DESC;
SELECT * FROM farm WHERE farm_location = (SELECT farm_location FROM farm WHERE farm_name = 'Ferma Verde');
SELECT * FROM farm WHERE contact_info IN (SELECT contact_info FROM farm WHERE farm_name = 'Ferma Litoral');

-- subqueries weather
SELECT wind_direction FROM weather WHERE wind_speed = (SELECT wind_speed FROM weather ORDER BY wind_speed DESC LIMIT 1);
SELECT temperature FROM weather WHERE humidity = (SELECT humidity FROM weather ORDER BY humidity ASC LIMIT 1);
SELECT description FROM weather WHERE humidity > (SELECT humidity FROM weather ORDER BY humidity ASC LIMIT 1);
SELECT description, temperature FROM weather WHERE temperature = (SELECT temperature FROM weather ORDER BY temperature ASC LIMIT 1);

-- subqueries tasks
SELECT * FROM tasks WHERE due_date = (SELECT due_date FROM tasks WHERE status = 'În desfășurare' ORDER BY due_date DESC LIMIT 1);
SELECT * FROM tasks WHERE status NOT IN ('În desfășurare') ORDER BY due_date ASC;
SELECT * FROM tasks WHERE status NOT IN ('Finalizat') ORDER BY due_date DESC;

-- subqueries tools
SELECT * FROM tools WHERE id IN (SELECT id FROM tools WHERE tool_condition = 'Bun');
SELECT * FROM tools WHERE price IN (SELECT price FROM tools WHERE tool_name LIKE 'P%');
SELECT * FROM tools WHERE id_farm IN (SELECT id_farm FROM tools WHERE tool_name LIKE '%Tractor%');

--subqueries employees
SELECT * FROM employees WHERE salary > (SELECT salary FROM employees WHERE employee_role = 'Specialist irigații' ORDER BY salary DESC LIMIT 1);
SELECT * FROM employees WHERE id_farm IN (SELECT id_farm FROM employees WHERE employee_name = 'Raluca Nistor');
SELECT * FROM employees WHERE hire_date > (SELECT hire_date FROM employees WHERE employee_role = 'Administrator' ORDER BY hire_date ASC LIMIT 1);

--subqueries crops
SELECT * FROM crops WHERE planting_date < (SELECT planting_date FROM crops WHERE crop_type = 'Orez brun' ORDER BY planting_date ASC LIMIT 1) AND harvest_date < '2024-05-01';
SELECT * FROM crops WHERE planting_date IN (SELECT planting_date FROM crops WHERE crop_type = 'Mar verde') AND harvest_date > (SELECT harvest_date FROM crops ORDER BY harvest_date ASC LIMIT 1);
SELECT * FROM crops WHERE planting_date < (SELECT planting_date FROM crops WHERE growth_stage LIKE '%re' ORDER BY planting_date DESC LIMIT 1);

--subqueries pest_and_disease
SELECT * FROM pest_and_disease WHERE id IN (SELECT id FROM pest_and_disease WHERE treatement LIKE '%fungicide%');
SELECT * FROM pest_and_disease WHERE id IN (SELECT id FROM pest_and_disease WHERE plant_state LIKE '%frunze%');
SELECT * FROM pest_and_disease WHERE id IN (SELECT id FROM pest_and_disease WHERE pest_disease_type = 'Insectā' AND treatement LIKE '%organic%');

--subqueries fields
SELECT * FROM fields WHERE id_farm IN (SELECT id_farm FROM fields WHERE soil_type = 'Lutos');
SELECT * FROM fields WHERE area > (SELECT area FROM fields ORDER BY area ASC LIMIT 1);
SELECT * FROM fields WHERE field_location IN (SELECT field_location FROM fields WHERE id_crops = 10);

--subqueries animals
SELECT * FROM animals WHERE id_farm IN (SELECT id_farm FROM animals WHERE health_status = 'Sănătos');
SELECT * FROM animals WHERE age > (SELECT age FROM animals ORDER BY age ASC LIMIT 1);
SELECT * FROM animals WHERE breed IN (SELECT breed FROM animals WHERE animal_type = 'Bivol');

--subqueries sales
SELECT * FROM sales WHERE id_farm IN (SELECT id_farm FROM sales WHERE sale_type = 'Culturā');
SELECT * FROM sales WHERE price > (SELECT price FROM sales ORDER BY price ASC LIMIT 1);
SELECT * FROM sales WHERE items IN (SELECT items FROM sales WHERE sale_date > '2024-08-01');