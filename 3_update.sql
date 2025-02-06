--update farm

UPDATE farm SET farm_name = 'Ferma Litoral' WHERE area > 180;
UPDATE farm SET farm_location = 'Strada Litoralului 123, Constanța' WHERE farm_name LIKE '%Verde%';
UPDATE farm SET area = area * 1.05 WHERE farm_location LIKE '%Arad%';
UPDATE farm SET area = area - 10 WHERE farm_name LIKE 'Ferma%' AND contact_info LIKE '%ro';
UPDATE farm SET farm_location = 'Strada Agricolă 777, Bacău' WHERE farm_name = 'Ferma Verde';
UPDATE farm SET contact_info = 'contact@ferma_litoral.ro' WHERE id = 1;
UPDATE farm SET area = area + 15 WHERE farm_name LIKE 'Câmpurile%';
UPDATE farm SET farm_location = 'Aleea Sălciilor 321, Cluj' WHERE id IN (2, 3);
UPDATE farm SET area = area / 2 WHERE farm_name = 'Ferma de pe Malul Râului';
UPDATE farm SET farm_location = 'Drumul Stejarului 321, Suceava' WHERE farm_name LIKE '%Stejarului%';
UPDATE farm SET area = 250.00 WHERE farm_name = 'Ferma din Câmpie';
UPDATE farm SET farm_location = 'Strada Pădurii 555, Arad' WHERE area <140;

-- update weather

UPDATE weather SET temperature = 30 WHERE description = 'Arșiță';
UPDATE weather SET wind_speed = 10 WHERE wind_direction LIKE 'N%';
UPDATE weather SET humidity = 65 WHERE description LIKE 'Noros%';
UPDATE weather SET wind_speed = wind_speed + 5 WHERE wind_direction = 'NE';
UPDATE weather SET description = 'Vânt Ușor' WHERE description = 'Vânt puternic';
UPDATE weather SET temperature = temperature - 3 WHERE humidity > 80;
UPDATE weather SET description = 'Furtună cu tunete' WHERE wind_speed > 20;
UPDATE weather SET wind_direction = 'S' WHERE time_of_recording = '2024-06-11 09:30:00';
UPDATE weather SET description = 'Ninsoare ușoară' WHERE temperature < 0;
UPDATE weather SET humidity = humidity + 0.5 WHERE description = 'Ceață';
UPDATE weather SET time_of_recording = '2024-06-25 12:00:00' WHERE time_of_recording < '2024-06-20';
UPDATE weather SET wind_speed = wind_speed + 2 WHERE description = 'Arșiță';

-- update tasks

UPDATE tasks SET description = 'Plantare de grâu' WHERE status = 'În așteptare';
UPDATE tasks SET status = 'Finalizat' WHERE due_date < '2025-02-28';
UPDATE tasks SET due_date = '2025-04-10' WHERE description LIKE 'Recoltare%';
UPDATE tasks SET status = 'În desfășurare' WHERE description LIKE 'Fertiliz%';
UPDATE tasks SET description = 'Verificare animale' WHERE description = 'Verificarea animale';
UPDATE tasks SET due_date = '2025-04-20' WHERE status = 'În desfășurare';
UPDATE tasks SET status = 'Finalizat' WHERE description = 'Reparație echipamente';
UPDATE tasks SET description = 'Mentenanță echipamente' WHERE description LIKE 'Mentenanță%';
UPDATE tasks SET due_date = '2025-03-15' WHERE status = 'În așteptare';
UPDATE tasks SET status = 'În desfășurare' WHERE due_date = '2025-03-18';
UPDATE tasks SET description = 'Verificare sol' WHERE description LIKE 'Testare sol';
UPDATE tasks SET due_date = '2025-03-05' WHERE status = 'În așteptare' AND description LIKE 'Plantare%';

-- update tools

UPDATE tools SET price = price * 0.5 WHERE tool_condition = 'Bun';
UPDATE tools SET tool_type = 'Tractor' WHERE id_farm = 1;
UPDATE tools SET price = price - 1000 WHERE tool_condition = 'Mediu';
UPDATE tools SET tool_condition = 'Nou' WHERE tool_name LIKE 'Dronă%';
UPDATE tools SET tool_condition = 'Bun' WHERE tool_type = 'Irigare';
UPDATE tools SET price = 20000 WHERE tool_name = 'Tractor ZX';
UPDATE tools SET price = price + 500 WHERE tool_type = 'Prelucrare sol';
UPDATE tools SET tool_condition = 'Mediu' WHERE id_farm IN (4, 5);
UPDATE tools SET tool_name = 'Semănătoare ' WHERE tool_name LIKE 'Semănătoare%';
UPDATE tools SET price = price * 0.95 WHERE tool_condition = 'Bun';
UPDATE tools SET price = 7500 WHERE tool_name = 'Furcă';
UPDATE tools SET tool_type = 'Transport' WHERE tool_name LIKE 'Remorcă';

--update employees

UPDATE employees SET salary = salary + 500 WHERE employee_role = 'Manager';
UPDATE employees SET salary = 38000 WHERE employee_name LIKE 'Ana';
UPDATE employees SET hire_date= '2023-03-10' WHERE employee_role = 'Veterinar';
UPDATE employees SET contact_info = 'contact@ferma.ro' WHERE hire_date < '2023-01-01';
UPDATE employees SET salary = salary * 1.05 WHERE employee_role = 'Contabil' and contact_info LIKE '@ferma';
UPDATE employees SET employee_role = 'Specialist irigații' WHERE salary < 35000;
UPDATE employees SET salary = salary + 2000 WHERE hire_date > '2022-01-01';
UPDATE employees SET employee_name = 'Raluca Nistor' WHERE id_farm = 6;
UPDATE employees SET salary = 4000 WHERE employee_name LIKE '%Vasilescu';
UPDATE employees SET hire_date = '2023-02-01' WHERE contact_info LIKE 'ana@ferma.ro';
UPDATE employees SET employee_role = 'Administrator' WHERE employee_name LIKE 'Ion%';
UPDATE employees SET salary= 35000 WHERE employee_name LIKE 'Maria%';

-- update crops WITH SUBQUERIES

UPDATE crops SET growth_stage = 'Maturitate' WHERE harvest_date > (SELECT MAX(harvest_date) FROM crops);
UPDATE crops SET planting_date = (SELECT MIN(planting_date) FROM crops WHERE growth_stage = 'Semănat') WHERE growth_stage = 'Semănat';
UPDATE crops SET harvest_date = '2025-05-06' WHERE planting_date < (SELECT MIN(planting_date) FROM crops WHERE growth_stage = 'Maturitate');
UPDATE crops SET growth_stage = 'Coacere' WHERE id IN (SELECT id FROM fields WHERE area > (SELECT AVG(area) FROM fields));
UPDATE crops SET harvest_date = (SELECT MAX(harvest_date) FROM crops WHERE growth_stage = 'Maturitate')WHERE growth_stage = 'Maturitate' AND harvest_date IS NULL;
UPDATE crops SET growth_stage = 'Maturitate' WHERE planting_date > (SELECT MAX(planting_date) FROM crops WHERE growth_stage = 'Semănat'); 
UPDATE crops SET crop_type = 'Mar verde' WHERE id IN (SELECT id_crops FROM crops_pest_and_disease WHERE id_pest_and_disease = 2);
UPDATE crops SET crop_type = 'Porumb salbatic' WHERE id IN (SELECT id_crops FROM crops_pest_and_disease WHERE id_pest_and_disease = 5);
UPDATE crops SET crop_type = 'Floare de camp' WHERE id IN (SELECT id_crops FROM sales WHERE quantity >500);
UPDATE crops SET crop_type = 'Orez brun' WHERE id IN ( SELECT id FROM fields WHERE area < 50);

-- update fields

UPDATE fields SET area = 60.00 WHERE field_location = 'Dealul Însorit' AND id_farm = 4;
UPDATE fields SET area = 50.75 WHERE field_location = 'Zona Sudică' AND id_farm = 1;
UPDATE fields SET soil_type = 'Lutos' WHERE field_location = 'Teren Riveran' AND id_farm = 6;
UPDATE fields SET field_location = 'Zona Experimentală' WHERE id_farm = 7;
UPDATE fields SET soil_type = 'Humic' WHERE id_farm = 8;
UPDATE fields SET area = 45.30 WHERE field_location = 'Valea Mare' AND id_farm = 3;
UPDATE fields SET area = 28.80 WHERE field_location = 'Zona Experimentală' AND id_farm = 7;
UPDATE fields SET field_location = 'Pajiștea Înaltă' WHERE id_farm = 12;
UPDATE fields SET area = 55.25 WHERE field_location = 'Teren Riveran' AND id_farm = 6;
UPDATE fields SET soil_type = 'Calcaros' WHERE field_location = 'Livezile Sud' AND id_farm = 9;
UPDATE fields SET field_location = 'Pajiștea Răsărit' WHERE id_farm = 5;
UPDATE fields SET soil_type = 'Nisipos' WHERE field_location = 'Colțul Nord' AND id_farm = 10;

--update pest_and_disease

UPDATE pest_and_disease SET treatement = 'Tratamente fungicide și prevenire exces umiditate' WHERE plant_state LIKE '%Frunze%' AND pest_disease_type = 'Boală';
UPDATE pest_and_disease SET treatement = 'Aplicare insecticid și monitorizare constantă' WHERE nomenclature LIKE '%Molia%' AND plant_state = 'Spiculețe afectate';
UPDATE pest_and_disease SET treatement = 'Aplicare fungicid cupru' WHERE nomenclature = 'Rugină' AND plant_state LIKE '%frunze%';
UPDATE pest_and_disease SET plant_state = 'Tulpini și rădăcini perforate' WHERE nomenclature LIKE '%Viermele%' AND pest_disease_type = 'Insectă';
UPDATE pest_and_disease SET plant_state = 'Mucegai pe fructe' WHERE pest_disease_type = 'Boală' AND nomenclature LIKE '%Putregaiul%';
UPDATE pest_and_disease SET plant_state = 'Frunze atacate', treatement = 'Aplicare insecticid' WHERE nomenclature LIKE '%Gândacul%' AND pest_disease_type = 'Insectă';
UPDATE pest_and_disease SET treatement = 'Aplicare insecticid organic și aplicare soluții naturale' WHERE nomenclature LIKE '%Afidele%' AND plant_state LIKE '%Plante slăbite%';
UPDATE pest_and_disease SET plant_state = 'Rădăcini deteriorate' WHERE nomenclature LIKE '%Nematode%' AND plant_state = 'Rădăcini deteriorate';
UPDATE pest_and_disease SET treatement = 'Utilizare semințe certificate și eliminarea plantelor afectate' WHERE pest_disease_type = 'Boală' AND nomenclature LIKE '%Virusul mozaicului%';
UPDATE pest_and_disease SET plant_state = 'Frunze galbene', treatement = 'Tratamente cu sulfat de cupru' WHERE nomenclature LIKE '%Mana%' AND pest_disease_type = 'Boală';

-- update animals

UPDATE animals SET age = age + 1 WHERE health_status = 'Sănătos';
UPDATE animals SET animal_type = 'Bivol' WHERE breed = 'Pekinez';
UPDATE animals SET health_status = 'Mediu' WHERE age > 5;
UPDATE animals SET breed = 'Frizian' WHERE animal_type = 'Bivol';
UPDATE animals SET health_status = 'Excelent' WHERE breed = 'Angus';
UPDATE animals SET age = 2 WHERE breed = 'Merinos';
UPDATE animals SET health_status = 'Bun' WHERE animal_type = 'Rață';
UPDATE animals SET breed = 'Mangalița' WHERE id_farm IN (4, 5);
UPDATE animals SET animal_type = 'Oaie' WHERE breed LIKE 'Pătată';
UPDATE animals SET age = age * 0.9 WHERE health_status = 'Mediu';
UPDATE animals SET health_status = 'Sănătos' WHERE breed = 'Pekinez';
UPDATE animals SET animal_type = 'Porc' WHERE breed LIKE 'Andaluz';

-- update sales

UPDATE sales SET price = price * 0.5 WHERE sale_type = 'Cultură';
UPDATE sales SET sale_type = 'Animale' WHERE id_crops is null;
UPDATE sales SET quantity = quantity - 500 WHERE sale_type = 'Cultură' AND quantity > 5000;
UPDATE sales SET price = price + 2000 WHERE sale_date > '2024-06-01';
UPDATE sales SET sale_type = 'Fruct' WHERE items LIKE 'Mere';
UPDATE sales SET quantity = 100 WHERE items = 'Bivol Carpatin';
UPDATE sales SET price = price * 0.95 WHERE sale_type = 'Animal';
UPDATE sales SET sale_date = '2024-08-01' WHERE id_farm IN (1, 2);
UPDATE sales SET items = 'Porc Mangalița' WHERE items LIKE 'Porc';
UPDATE sales SET quantity = quantity + 50 WHERE items = 'Găină Pestriță';
UPDATE sales SET price = 1500 WHERE items = 'Oaie Merinos';
UPDATE sales SET sale_type = 'Fruct' WHERE items LIKE 'Afine';



