-- delete weather
DELETE FROM weather WHERE id = 1;
DELETE FROM weather WHERE description = 'Noros';
DELETE FROM weather WHERE temperature <10;

-- delete fields
DELETE FROM fields WHERE soil_type = 'Nisipos';
DELETE FROM fields WHERE area > 50;
DELETE FROM fields WHERE field_location LIKE '%Sud%';

-- delete tools
DELETE FROM tools WHERE tool_condition = 'Mediu';
DELETE FROM tools WHERE price > 5000;
DELETE FROM tools WHERE tool_type = 'Plantare';

-- delete employees
DELETE FROM employees WHERE salary < 35000;
DELETE FROM employees WHERE employee_role = 'Administrator';
DELETE FROM employees WHERE id_farm = 7;

-- delete tasks
DELETE FROM tasks WHERE status LIKE 'În%' AND due_date > '2025-04-28';
DELETE FROM tasks WHERE due_date > '2025-04-30';
DELETE FROM tasks WHERE description LIKE 'T%';

--delete crops_pest_and_disease
DELETE FROM crops_pest_and_disease WHERE id IN (1,7);
DELETE FROM crops_pest_and_disease WHERE id_pest_and_disease=6;

-- delete pest_and_disease
DELETE FROM pest_and_disease WHERE pest_disease_type = 'Insectă' and id in (2,6);
DELETE FROM pest_and_disease WHERE pest_disease_type like 'B%' AND id=2;
DELETE FROM pest_and_disease WHERE nomenclature like '%vie';

-- delete sales 
DELETE FROM sales WHERE id=12;
DELETE FROM sales WHERE  items LIKE 'C%';
DELETE FROM sales WHERE quantity IN (SELECT price from animals WHERE sale_date >'2024-09-05');

-- delete crops
DELETE FROM crops WHERE id = (SELECT MAX(id) FROM crops);
DELETE FROM crops WHERE crop_type='Mar verde';
DELETE FROM crops WHERE growth_stage='Coacere' AND planting_date='2024-07-01';

-- delete animals
DELETE FROM animals WHERE id > 10;
DELETE FROM animals WHERE health_status LIKE 'B%';
DELETE FROM animals WHERE breed IN (SELECT health_status FROM animals WHERE animal_type='Oaie');


