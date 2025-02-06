INSERT INTO farm (farm_name, farm_location, area, contact_info) VALUES
('Ferma Valea Verde', 'Strada Principală 123, Cluj', 120.50, 'contact@valeaverde.ro'),
('Ferma Răsăritului', 'Șoseaua Agriculturii 456, Iași', 200.75, 'contact@fermarasaritului.ro'),
('Câmpurile Recoltei', 'Strada Câmpului 789, Brașov', 150.30, 'info@campurilerecoltei.ro'),
('Pajiștile Florilor', 'Aleea Rurală 321, Sibiu', 175.00, 'admin@pajistileflorilor.ro'),
('Ferma Stejarului', 'Drumul Stejarului 654, Suceava', 220.10, 'contact@fermăstejarului.ro'),
('Câmpurile Aurii', 'Strada Aurie 987, Alba Iulia', 180.40, 'info@campurileaurii.ro'),
('Ferma de pe Malul Râului', 'Aleea Malului 111, Timișoara', 210.60, 'info@fermariver.ro'),
('Ferma Verde', 'Strada Pădurii 222, Arad', 130.90, 'contact@fermaverde.ro'),
('Dealurile cu Afine', 'Strada Afinelor 333, Bistrița', 190.20, 'info@dealurilecuafine.ro'),
('Ferma din Câmpie', 'Calea Câmpiei 444, Buzău', 140.80, 'ferma@campie.ro'),
('Pajiștile Înalte', 'Drumul Înalt 555, Oradea', 205.70, 'contact@pajistileinalte.ro'),
('Ferma Izvorului', 'Strada Izvorului 666, Pitești', 195.50, 'info@fermaizvorului.ro');

INSERT INTO weather (description, temperature, humidity, time_of_recording, wind_speed, wind_direction) VALUES
('Însorit', 25.5, 45.3, '2024-06-10 14:00:00', 12, 'NE'),
('Ploios', 18.2, 80.5, '2024-06-11 09:30:00', 8, 'SW'),
('Noros', 20.3, 60.7, '2024-06-12 12:15:00', 5, 'NW'),
('Furtună', 15.0, 90.0, '2024-06-13 18:45:00', 20, 'SE'),
('Vânt puternic', 22.1, 50.2, '2024-06-14 16:20:00', 15, 'E'),
('Ceață', 12.3, 95.4, '2024-06-15 07:10:00', 3, 'W'),
('Ninsoare', -2.0, 85.1, '2024-06-16 22:30:00', 10, 'N'),
('Arșiță', 30.6, 40.5, '2024-06-17 13:50:00', 6, 'NE'),
('Tunete și fulgere', 16.4, 88.9, '2024-06-18 19:25:00', 25, 'SW'),
('Noros', 19.9, 70.0, '2024-06-19 11:55:00', 7, 'SE'),
('Vânt ușor', 23.0, 49.3, '2024-06-20 08:05:00', 9, 'NW'),
('Burniță', 17.8, 78.5, '2024-06-21 15:40:00', 4, 'E');

INSERT INTO tasks (description, status, due_date) VALUES
('Arat', 'În așteptare', '2025-03-15'),
('Întreținerea sistem irigare', 'În desfășurare', '2025-04-01'),
('Recoltare grâu', 'Finalizat', '2025-02-20'),
('Ierbicizare', 'În așteptare', '2025-03-10'),
('Fertilizare', 'În desfășurare', '2025-03-25'),
('Verificarea animale', 'Finalizat', '2025-02-28'),
('Testare sol', 'În așteptare', '2025-04-05'),
('Mentenanță seră', 'În desfășurare', '2025-03-30'),
('Plantare semințe', 'În așteptare', '2025-03-20'),
('Reparație echipamente', 'Finalizat', '2025-02-22'),
('Organizare depozit', 'În desfășurare', '2025-03-18'),
('Actualizare sistem securitate', 'În așteptare', '2025-04-02');

INSERT INTO tools (tool_name, tool_type, tool_condition, price, id_farm, id_tasks) VALUES
('Tractor ZX', 'Tractor', 'Bun', 25000, 1, 1),
('Sistem de irigare', 'Irigare', 'Excelent', 12000, 2, 2),
('Combină Claas', 'Recoltare', 'Bun', 30000, 3, 3),
('Plug', 'Prelucrare sol', 'Mediu', 5000, 4, 4),
('Semănătoare', 'Plantare', 'Bun', 15000, 5, 5),
('Pulverizator', 'Pesticide', 'Excelent', 8000, 6, 6),
('Furcă', 'Manual', 'Bun', 500, 7, 7),
('Dronă', 'Monitorizare', 'Nou', 10000, 8, 8),
('Remorcă', 'Transport', 'Bun', 7000, 9, 9),
('Motoferăstrău', 'Tăiere', 'Bun', 3000, 10, 10),
('Freză', 'Prelucrare sol', 'Excelent', 5500, 11, 11),
('Cântar industrial', 'Măsurare', 'Mediu', 2000, 12, 12);

INSERT INTO employees (employee_name, employee_role, salary, hire_date, contact_info, id_farm, id_tasks) VALUES
('Ion Popescu', 'Manager', 45000.00, '2022-01-10', 'ion@ferma.ro', 1, 1),
('Maria Ionescu', 'Specialist irigații', 35000.00, '2023-02-20', 'maria@ferma.ro', 2, 2),
('Gheorghe Vasilescu', 'Operator tractor', 40000.00, '2021-06-15', 'gheorghe@ferma.ro', 3, 3),
('Elena Dumitru', 'Agronom', 42000.00, '2022-07-05', 'elena@ferma.ro', 4, 4),
('Vasile Neagu', 'Veterinar', 50000.00, '2020-09-30', 'vasile@ferma.ro', 5, 5),
('Ana Stancu', 'Specialist culturi', 38000.00, '2023-03-25', 'ana@ferma.ro', 6, 6),
('Doru Marinescu', 'Muncitor', 32000.00, '2021-05-18', 'doru@ferma.ro', 7, 7),
('Gabriela Moise', 'Expert ierbicizare', 37000.00, '2023-04-22', 'gabriela@ferma.ro', 8, 8),
('Mihai Gheorghiu', 'Responsabil recoltare', 41000.00, '2022-08-10', 'mihai@ferma.ro', 9, 9),
('Raluca Nistor', 'Administrator', 46000.00, '2019-11-12', 'raluca@ferma.ro', 10, 10),
('Adrian Pavel', 'Contabil', 43000.00, '2021-12-01', 'adrian@ferma.ro', 11, 11),
('Oana Tudor', 'Asistent tehnic', 31000.00, '2024-01-05', 'oana@ferma.ro', 12, 12);

INSERT INTO crops (crop_type, growth_stage, planting_date, harvest_date) VALUES
('Grâu', 'Dezvoltare', '2024-03-15', '2024-08-20'),
('Porumb', 'Început', '2024-04-10', '2024-09-30'),
('Cartofi', 'Maturitate', '2024-02-20', '2024-07-15'),
('Rapiță', 'Dezvoltare', '2024-03-25', '2024-09-10'),
('Floarea-soarelui', 'Semănat', '2024-04-05', '2024-09-25'),
('Sfeclă de zahăr', 'Dezvoltare', '2024-03-10', '2024-10-05'),
('Orz', 'Maturitate', '2024-02-28', '2024-07-20'),
('Soia', 'Germinare', '2024-04-15', '2024-10-15'),
('Orez', 'Dezvoltare', '2024-05-01', '2024-11-10'),
('Afine', 'Maturitate', '2024-01-15', '2024-07-01'),
('Căpșuni', 'Înflorire', '2024-02-05', '2024-06-10'),
('Mere', 'Început', '2024-03-20', '2024-09-01');

INSERT INTO fields (area, field_location, soil_type, id_farm, id_crops) VALUES
(50.75, 'Zona Sudică', 'Lutos', 1, 1),
(30.20, 'Câmpia Vest', 'Argilos', 2, 2),
(45.30, 'Valea Mare', 'Nisipos', 3, 3),
(60.00, 'Dealul Însorit', 'Humic', 4, 4),
(40.50, 'Pajiștea Răsărit', 'Calcaros', 5, 5),
(55.25, 'Teren Riveran', 'Lutos', 6, 6),
(35.10, 'Colțul Nord', 'Nisipos', 7, 7),
(28.80, 'Zona Experimentală', 'Argilos', 8, 8),
(47.60, 'Ferma Centrală', 'Humic', 9, 9),
(52.15, 'Livezile Sud', 'Calcaros', 10, 10),
(49.90, 'Valea Afine', 'Lutos', 11, 11),
(38.75, 'Pajiștea Înaltă', 'Nisipos', 12, 12);

INSERT INTO pest_and_disease (pest_disease_type, nomenclature, plant_state, treatement) VALUES
('Insectă', 'Gândacul de Colorado', 'Frunze atacate', 'Aplicare insecticid'),
('Boală', 'Făinare', 'Frunze albe', 'Aplicare fungicid si indepartare frunze atacate'),
('Insectă', 'Afidele', 'Plante slăbite', 'Introducere pradatori naturali: buburuze'),
('Boală', 'Rugină', 'Pete roșcate pe frunze', 'Aplicare fungicid cupru și monitorizare umiditate'),
('Insectă', 'Molia porumbului', 'Spiculețe afectate', 'Aplicare insecticid organic'),
('Boală', 'Mana viței de vie', 'Frunze galbene', 'Tratamente cu sulfat de cupru'),
('Insectă', 'Tripsii', 'Deformări pe frunze', 'Aplicare ulei și introducere acarieni benefici'),
('Boală', 'Putregaiul cenușiu', 'Mucegai pe fructe', 'Reducerea densității plantelor și aplicare fungicide naturale'),
('Insectă', 'Nematode', 'Rădăcini deteriorate', 'Utilizare culturi capcană'),
('Boală', 'Virusul mozaicului', 'Frunze deformate și îngălbenite', 'Utilizare semințe certificate și eliminarea plantelor afectate'),
('Insectă', 'Viermele sârmă', 'Tulpini și rădăcini perforate', 'Aplicare granule insecticide'),
('Boală', 'Alternarioza', 'Puncte negre pe frunze', 'Tratamente fungicide și prevenire exces umiditate');

INSERT INTO crops_pest_and_disease (id_crops, id_pest_and_disease) VALUES
(1, 2),  -- Grâu - Făinare
(2, 5),  -- Porumb - Molia porumbului
(3, 1),  -- Cartofi - Gândacul de Colorado
(4, 3),  -- Rapiță - Afide
(5, 6),  -- Floarea-soarelui - Mana viței de vie
(6, 8),  -- Sfeclă de zahăr - Putregaiul cenușiu
(7, 9),  -- Orz - Nematode
(8, 10), -- Soia - Virusul mozaicului
(9, 4),  -- Orez - Rugină
(10, 7), -- Afine - Tripsii
(11, 11), -- Căpșuni - Viermele sârmă
(12, 12); -- Mere - Alternarioza

INSERT INTO animals (animal_type, breed, age, health_status, id_farm) VALUES
('Vacă', 'Angus', 5, 'Sănătos', 1),
('Oaie', 'Merinos', 3, 'Sănătos', 2),
('Cal', 'Frizian', 7, 'Bun', 3),
('Porc', 'Mangalița', 4, 'Excelent', 4),
('Găină', 'Pestriță', 2, 'Sănătos', 5),
('Iepure', 'German', 1, 'Bun', 6),
('Rață', 'Pekinez', 2, 'Sănătos', 7),
('Capră', 'Alpină', 3, 'Mediu', 8),
('Curcan', 'Maro', 1, 'Sănătos', 9),
('Bivol', 'Carpatin', 6, 'Excelent', 10),
('Gâscă', 'Pătată', 3, 'Bun', 11),
('Măgar', 'Andaluz', 5, 'Sănătos', 12);

INSERT INTO sales (sale_type, items, quantity, price, sale_date, id_crops, id_farm, id_animals) VALUES
('Cultură', 'Grâu', 5000, 75000.00, '2024-07-15', 1, 1, NULL),
('Cultură', 'Porumb', 7000, 98000.00, '2024-08-10', 2, 2, NULL),
('Cultură', 'Cartofi', 3000, 45000.00, '2024-06-20', 3, 3, NULL),
('Cultură', 'Floarea-soarelui', 4000, 62000.00, '2024-09-05', 5, 5, NULL),
('Cultură', 'Sfeclă de zahăr', 5000, 85000.00, '2024-10-15', 6, 6, NULL),
('Cultură', 'Orz', 2000, 28000.00, '2024-07-30', 7, 7, NULL),
('Animal', 'Vacă Angus', 3, 15000.00, '2024-05-10', NULL, 1, 1),
('Animal', 'Porc Mangaliță', 5, 12500.00, '2024-06-12', NULL, 4, 4),
('Animal', 'Oaie Merinos', 10, 8000.00, '2024-07-01', NULL, 2, 2),
('Animal', 'Găină Pestriță', 30, 900.00, '2024-04-05', NULL, 5, 5),
('Animal', 'Bivol Carpatin', 2, 18000.00, '2024-09-10', NULL, 10, 10),
('Cultură', 'Mere', 2500, 37500.00, '2024-09-20', 12, 12, NULL);

