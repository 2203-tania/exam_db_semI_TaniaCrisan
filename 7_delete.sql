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

-- delete crops
DELETE FROM crops WHERE id = (SELECT MAX(id) FROM crops);

CREATE VIEW crops_view AS SELECT id, crop_type, growth_stage, planting_date, harvest_date FROM crops;
DELETE FROM crops_view WHERE crop_type = 'Orez brun' AND planting_date < '2024-02-01';



-- delete animals

-- delete sales

-- delete pest_and_disease

-- delete farm

-- delete weather

select * from tools
