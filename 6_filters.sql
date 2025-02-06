--filters employees
--AND:
SELECT * FROM employees WHERE employee_role = 'Specialist irigatji' AND salary > 30000;
--OR: 
SELECT * FROM employees WHERE employee_role = 'Administrator' OR employee_role = 'Veterinar';
--LIKE:
SELECT * FROM employees WHERE employee_name LIKE 'Raluca%';
--BETWEEN:
SELECT * FROM employees WHERE hire_date BETWEEN '2022-01-01' AND '2023-12-31';

--filters tasks
--AND:
SELECT * FROM tasks WHERE status = 'În desfășurare' AND due_date > '2025-04-01';
--OR: 
SELECT * FROM tasks WHERE status = 'Finalizat' OR status = 'În așteptare';
--LIKE: 
SELECT * FROM tasks WHERE description LIKE '%Plantare%';
--BETWEEN: 
SELECT * FROM tasks WHERE due_date BETWEEN '2025-03-01' AND '2025-04-30';

--filters combined crops
--AND + LIKE: 
SELECT * FROM crops WHERE crop_type = 'Orez brun' AND growth_stage LIKE '%Coacere%';
--OR + BETWEEN: 
SELECT * FROM crops WHERE planting_date BETWEEN '2024-02-01' AND '2024-03-31' OR harvest_date BETWEEN '2024-07-01' AND '2024-09-30';
--LIKE + AND + BETWEEN: 
SELECT * FROM crops WHERE crop_type LIKE '%Orez%' AND planting_date BETWEEN '2024-01-01' AND '2024-03-31';
--OR + LIKE + BETWEEN: 
SELECT * FROM crops WHERE crop_type = 'Orez brun' OR crop_type LIKE '%Floare%' AND harvest_date BETWEEN '2024-07-01' AND '2024-09-30';

--filters combined tools
--AND + LIKE: 
SELECT * FROM tools WHERE tool_condition = 'Excelent' AND tool_name LIKE '%Pulverizator%';
--OR + BETWEEN: 
SELECT * FROM tools WHERE tool_type = 'Pesticide' OR tool_type = 'Monitorizare' AND price BETWEEN 5000 AND 15000;
--LIKE + AND + BETWEEN: 
SELECT * FROM tools WHERE tool_name LIKE '%Tractor%' AND price BETWEEN 10000 AND 20000;
--OR + LIKE + BETWEEN: 
SELECT * FROM tools WHERE tool_type = 'Prelucrare sol' OR tool_name LIKE '%Freză%' AND price BETWEEN 5000 AND 10000;

