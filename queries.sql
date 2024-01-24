-- SQLite
-- SELECT everything FROM table_name;
-- SELECT * FROM doctors;

-- SELECT column_name FROM table_name;
-- SELECT first_name, last_name FROM doctors;
-- SELECT age FROM doctors;

-- WHERE to specify a filter
-- SELECT * FROM patients
-- WHERE age > 25;

-- % allows other characters
-- SELECT * FROM doctors
-- WHERE specialty LIKE 'c%';

-- Aggregators
-- SELECT COUNT(*) FROM doctors;
-- SELECT SUM(age) FROM doctors;
-- SELECT ROUND(AVG(age), 1) FROM doctors;

-- SELECT COUNT(*) FROM doctors
-- WHERE specialty = 'Chemistry';

-- GROUP BY is used with aggregators SUM, COUNT, AVG
-- SELECT specialty
-- FROM doctors
-- GROUP BY s;

-- READ ALL THE APPOINTMENTS WITH DOCTORS INFOS
-- SELECT * FROM appointments
-- JOIN doctors ON doctors.id = appointments.doctor_id;

-- READ ALL PATIENTS FIRST & LAST NAMES ALONG WITH THEIR CONSULTATIONS DATES
-- SELECT patients.first_name, patients.last_name, appointments.occurs_on
-- FROM patients
-- JOIN appointments ON patients.id = appointments.patient_id
-- JOIN doctors ON doctors.id = appointments.doctor_id;

-- READ SARAH'S CONSULTATIONS DATES ALONG WITH HER PATIENTS FIRST NAME & LAST NAME
-- SELECT patients.first_name, patients.last_name, appointments.occurs_on
-- FROM patients
-- JOIN appointments ON appointments.patient_id = patients.id
-- JOIN doctors ON doctors.id = appointments.doctor_id
-- WHERE doctors.first_name = 'Sarah' AND doctors.last_name = 'Amour';

-- INSERT INTO doctors (first_name, last_name, specialty)
-- VALUES ('Gregory', 'House', 'Generalist; DROP TABLE doctors;');

SELECT * FROM doctors;

-- UPDATE doctors SET age = 40, first_name = 'John', last_name = 'Smith'
-- WHERE id = 3;

-- UPDATE doctors SET age = 49
-- WHERE id = 50;

-- DELETE FROM doctors WHERE id = 2;

-- DELETE FROM doctors WHERE id = 12;
