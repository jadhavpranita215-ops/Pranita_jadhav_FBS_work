create database healthcare ;
show databases;
use healthcare;
create table Patient(
patient_id int primary key,
name VARCHAR(50),
date_of_birth DATE,
gender varchar(10),
contact_no varchar(30),
address VARCHAR(80),
insurance_no VARCHAR(30),
insurance_info VARCHAR(100));
INSERT INTO Patient
(patient_id, name, date_of_birth, gender, contact_no, address, insurance_no, insurance_info)
VALUES
(1, 'Aarav Patil', '2001-05-12', 'Male', '9876543210', 'Pune', 'INS1001', 'Health Secure'),
(2, 'Sneha Joshi', '2002-08-21', 'Female', '9876543211', 'Mumbai', 'INS1002', 'MediCare'),
(3, 'Rohan Shinde', '2000-03-15', 'Male', '9876543212', 'Nashik', 'INS1003', 'Health Secure'),
(4, 'Pranita Jadhav', '2002-11-10', 'Female', '9876543213', 'Pune', 'INS1004', 'Star Health'),
(5, 'Akash Pawar', '1999-07-25', 'Male', '9876543214', 'Satara', 'INS1005', 'MediCare'),
(6, 'Bhakti Bhade', '2001-01-18', 'Female', '9876543215', 'Pimpri', 'INS1006', 'Health Secure'),
(7, 'Vikas More', '1998-09-30', 'Male', '9876543216', 'Solapur', 'INS1007', 'Star Health'),
(8, 'Neha Kulkarni', '2003-04-14', 'Female', '9876543217', 'Pune', 'INS1008', 'MediCare'),
(9, 'Om Deshmukh', '2000-12-05', 'Male', '9876543218', 'Kolhapur', 'INS1009', 'Health Secure'),
(10, 'Sneha Gajare', '2002-06-22', 'Female', '9876543219', 'Pune', 'INS1010', 'Star Health'),
(11, 'Rahul Pawar', '1997-10-11', 'Male', '9876543220', 'Ahmednagar', 'INS1011', 'MediCare'),
(12, 'Pooja Shinde', '2001-02-27', 'Female', '9876543221', 'Nashik', 'INS1012', 'Health Secure'),
(13, 'Kunal Patil', '1999-05-19', 'Male', '9876543222', 'Pune', 'INS1013', 'Star Health'),
(14, 'Riya More', '2003-08-08', 'Female', '9876543223', 'Mumbai', 'INS1014', 'MediCare'),
(15, 'Sagar Jadhav', '1998-01-29', 'Male', '9876543224', 'Pune', 'INS1015', 'Health Secure'),
(16, 'Megha Joshi', '2002-10-16', 'Female', '9876543225', 'Thane', 'INS1016', 'Star Health'),
(17, 'Aditya Shinde', '2000-07-03', 'Male', '9876543226', 'Pune', 'INS1017', 'MediCare'),
(18, 'Komal Patil', '2001-12-24', 'Female', '9876543227', 'Nagpur', 'INS1018', 'Health Secure'),
(19, 'Vivek More', '1999-03-09', 'Male', '9876543228', 'Pune', 'INS1019', 'Star Health'),
(20, 'Anjali Pawar', '2003-09-17', 'Female', '9876543229', 'Nashik', "INS1020","medicare");
select* from patient;
 CREATE TABLE Doctor (
    doctor_id INT PRIMARY KEY,
    name VARCHAR(50),
    specialization VARCHAR(100),
    gender VARCHAR(10),
    contact_no VARCHAR(15),
    email VARCHAR(100),
    experience_years INT);
    desc doctor;
    INSERT INTO Doctor
(doctor_id, name, specialization, gender, contact_no, email, experience_years)
VALUES
(1,'Dr. Amit Sharma','Cardiologist','Male','9876501001','amit.sharma@gmail.com',10),
(2,'Dr. Priya Patil','Gynecologist','Female','9876501002','priya.patil@gmail.com',8),
(3,'Dr. Rahul Joshi','Neurologist','Male','9876501003','rahul.joshi@gmail.com',12),
(4,'Dr. Neha Kulkarni','Dermatologist','Female','9876501004','neha.kulkarni@gmail.com',6),
(5,'Dr. Suresh Pawar','Orthopedic','Male','9876501005','suresh.pawar@gmail.com',15),
(6,'Dr. Sneha More','Pediatrician','Female','9876501006','sneha.more@gmail.com',7),
(7,'Dr. Rohan Deshmukh','General Physician','Male','9876501007','rohan.deshmukh@gmail.com',9),
(8,'Dr. Pooja Shinde','ENT Specialist','Female','9876501008','pooja.shinde@gmail.com',5),
(9,'Dr. Kunal Patil','Cardiologist','Male','9876501009','kunal.patil@gmail.com',11),
(10,'Dr. Riya Jadhav','Gynecologist','Female','9876501010','riya.jadhav@gmail.com',8),
(11,'Dr. Vikram More','Neurologist','Male','9876501011','vikram.more@gmail.com',13),
(12,'Dr. Anjali Joshi','Dermatologist','Female','9876501012','anjali.joshi@gmail.com',6),
(13,'Dr. Akash Pawar','Orthopedic','Male','9876501013','akash.pawar@gmail.com',10),
(14,'Dr. Megha Patil','Pediatrician','Female','9876501014','megha.patil@gmail.com',7),
(15,'Dr. Nikhil Shinde','General Physician','Male','9876501015','nikhil.shinde@gmail.com',9),
(16,'Dr. Komal More','ENT Specialist','Female','9876501016','komal.more@gmail.com',5),
(17,'Dr. Aditya Patil','Cardiologist','Male','9876501017','aditya.patil@gmail.com',14),
(18,'Dr. Swati Kulkarni','Gynecologist','Female','9876501018','swati.kulkarni@gmail.com',8),
(19,'Dr. Mahesh Jadhav','Orthopedic','Male','9876501019','mahesh.jadhav@gmail.com',12),
(20,'Dr. Kavita Shinde','General Physician','Female','9876501020','kavita.shinde@gmail.com',6);
 CREATE TABLE Appointment (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    time TIME,
    admission_date DATE,
    discharge_date DATE,
    status VARCHAR(30),
    reason VARCHAR(100),
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctor(doctor_id));
    desc appointment;
    INSERT INTO Appointment
(appointment_id, patient_id, doctor_id, appointment_date, time, admission_date, discharge_date, status, reason)
VALUES
(1,1,1,'2026-10-05','10:00:00','2026-10-05','2026-10-06','Completed','Fever'),
(2,2,2,'2026-10-06','11:00:00','2026-10-06','2026-10-07','Completed','Regular Checkup'),
(3,3,3,'2026-10-07','09:30:00','2026-10-07','2026-10-08','Completed','Headache'),
(4,4,4,'2026-10-08','12:00:00','2026-10-08','2026-10-09','Completed','Skin Allergy'),
(5,5,5,'2026-10-09','10:30:00','2026-10-09','2026-10-10','Completed','Back Pain'),
(6,6,6,'2026-10-10','11:30:00','2026-10-10','2026-10-11','Completed','Child Checkup'),
(7,7,7,'2026-10-11','09:00:00','2026-10-11','2026-10-12','Completed','Blood Pressure'),
(8,8,8,'2026-10-12','01:00:00','2026-10-12','2026-10-13','Completed','Ear Pain'),
(9,9,9,'2026-10-13','10:00:00','2026-10-13','2026-10-14','Completed','Heart Checkup'),
(10,10,10,'2026-10-14','11:00:00','2026-10-14','2026-10-15','Completed','Regular Checkup'),
(11,11,11,'2026-10-15','09:30:00','2026-10-15','2026-10-16','Completed','Migraine'),
(12,12,12,'2026-10-16','12:30:00','2026-10-16','2026-10-17','Completed','Skin Problem'),
(13,13,13,'2026-10-17','10:30:00','2026-10-17','2026-10-18','Completed','Joint Pain'),
(14,14,14,'2026-10-18','11:30:00','2026-10-18','2026-10-19','Completed','Child Checkup'),
(15,15,15,'2026-10-19','09:00:00','2026-10-19','2026-10-20','Completed','General Checkup'),
(16,16,16,'2026-10-20','01:30:00','2026-10-20','2026-10-21','Completed','Throat Pain'),
(17,17,17,'2026-10-21','10:00:00','2026-10-21','2026-10-22','Completed','Fever'),
(18,18,18,'2026-10-22','11:00:00','2026-10-22','2026-10-23','Completed','Regular Checkup'),
(19,19,19,'2026-10-23','09:30:00','2026-10-23','2026-10-24','Completed','Back Pain'),
(20,20,20,'2026-10-24','12:00:00','2026-10-24','2026-10-25','Completed','Allergy');
 CREATE TABLE Medical_History (
    history_id INT PRIMARY KEY,
    patient_id INT,
    diagnosis VARCHAR(100),
    allergies VARCHAR(100),
    chronic_conditions VARCHAR(100),
    previous_treatments VARCHAR(100),
    record_date DATE,
    notes VARCHAR(200),
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id));
    INSERT INTO Medical_History
(history_id, patient_id, diagnosis, allergies, chronic_conditions, previous_treatments, record_date, notes)
VALUES
(1,1,'Fever','None','None','Medication','2026-01-10','Recovering well'),
(2,2,'Diabetes','Penicillin','Diabetes','Insulin','2026-01-12','Regular checkup'),
(3,3,'Asthma','Dust','Asthma','Inhaler','2026-01-15','Stable condition'),
(4,4,'Migraine','None','Migraine','Painkillers','2026-01-18','Follow-up required'),
(5,5,'Cold','None','None','Medication','2026-01-20','Improving'),
(6,6,'Anemia','Iron','Anemia','Iron supplements','2026-01-22','Continue treatment'),
(7,7,'Hypertension','None','High BP','Tablets','2026-01-25','BP monitoring'),
(8,8,'Fever','None','None','Medication','2026-01-28','Recovering'),
(9,9,'Back Pain','None','None','Physiotherapy','2026-02-01','Physiotherapy advised'),
(10,10,'Allergy','Pollen','Allergy','Antihistamine','2026-02-03','Avoid allergens'),
(11,11,'Diabetes','None','Diabetes','Insulin','2026-02-05','Regular monitoring'),
(12,12,'Asthma','Dust','Asthma','Inhaler','2026-02-08','Stable'),
(13,13,'Gastritis','None','Gastritis','Medicine','2026-02-10','Diet advised'),
(14,14,'Migraine','None','Migraine','Painkillers','2026-02-12','Follow-up required'),
(15,15,'Hypertension','None','High BP','Tablets','2026-02-15','BP under control'),
(16,16,'Anemia','None','Anemia','Iron supplements','2026-02-18','Continue supplements'),
(17,17,'Fever','None','None','Medication','2026-02-20','Improving'),
(18,18,'Cold','None','None','Medication','2026-02-22','Recovering well'),
(19,19,'Back Pain','None','None','Physiotherapy','2026-02-25','Exercise advised'),
(20,20,'Allergy','Pollen','Allergy','Antihistamine','2026-02-28','Avoid allergens');

CREATE TABLE Encounter (
    encounter_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    encounter_date DATE,
    diagnosis VARCHAR(100),
    treatment VARCHAR(100),
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctor(doctor_id));
INSERT INTO Encounter
(encounter_id, patient_id, doctor_id, encounter_date, diagnosis, treatment)
VALUES
(1,1,1,'2026-10-05','Fever','Medication'),
(2,2,2,'2026-10-06','Diabetes','Insulin'),
(3,3,3,'2026-10-07','Migraine','Painkillers'),
(4,4,4,'2026-10-08','Skin Allergy','Antihistamine'),
(5,5,5,'2026-10-09','Back Pain','Physiotherapy'),
(6,6,6,'2026-10-10','Anemia','Iron Supplements'),
(7,7,7,'2026-10-11','Hypertension','Tablets'),
(8,8,8,'2026-10-12','Ear Pain','Ear Drops'),
(9,9,9,'2026-10-13','Heart Problem','Medication'),
(10,10,10,'2026-10-14','Regular Checkup','Health Monitoring'),
(11,11,11,'2026-10-15','Migraine','Painkillers'),
(12,12,12,'2026-10-16','Skin Allergy','Antihistamine'),
(13,13,13,'2026-10-17','Joint Pain','Physiotherapy'),
(14,14,14,'2026-10-18','Fever','Medication'),
(15,15,15,'2026-10-19','Hypertension','Tablets'),
(16,16,16,'2026-10-20','Throat Infection','Antibiotics'),
(17,17,17,'2026-10-21','Fever','Medication'),
(18,18,18,'2026-10-22','Cold','Cough Syrup'),
(19,19,19,'2026-10-23','Back Pain','Physiotherapy'),
(20,20,20,'2026-10-24','Allergy','Antihistamine');
CREATE TABLE Diagnostic_Test (
    test_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    test_name VARCHAR(100),
    test_date DATE,
    result VARCHAR(100),
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctor(doctor_id));
    INSERT INTO Diagnostic_Test
(test_id, patient_id, doctor_id, test_name, test_date, result)
VALUES
(1,1,1,'Blood Test','2026-10-05','Normal'),
(2,2,2,'Blood Sugar Test','2026-10-06','High'),
(3,3,3,'MRI Scan','2026-10-07','Normal'),
(4,4,4,'Skin Test','2026-10-08','Positive'),
(5,5,5,'X-Ray','2026-10-09','Normal'),
(6,6,6,'Hemoglobin Test','2026-10-10','Low'),
(7,7,7,'Blood Pressure Test','2026-10-11','High'),
(8,8,8,'Hearing Test','2026-10-12','Normal'),
(9,9,9,'ECG','2026-10-13','Normal'),
(10,10,10,'Blood Test','2026-10-14','Normal'),
(11,11,11,'Blood Sugar Test','2026-10-15','High'),
(12,12,12,'Skin Test','2026-10-16','Positive'),
(13,13,13,'X-Ray','2026-10-17','Normal'),
(14,14,14,'Blood Test','2026-10-18','Normal'),
(15,15,15,'Blood Pressure Test','2026-10-19','High'),
(16,16,16,'Throat Test','2026-10-20','Positive'),
(17,17,17,'Blood Test','2026-10-21','Normal'),
(18,18,18,'Chest X-Ray','2026-10-22','Normal'),
(19,19,19,'X-Ray','2026-10-23','Normal'),
(20,20,20,'Allergy Test','2026-10-24','Positive');
 CREATE TABLE Prescription (
    prescription_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    medication_id INT,
    prescription_date DATE,
    dosage VARCHAR(50),
    duration VARCHAR(50),
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctor(doctor_id));
INSERT INTO Prescription
(prescription_id, patient_id, doctor_id, medication_id, prescription_date, dosage, duration)
VALUES
(1,1,1,1,'2026-10-05','1 tablet twice daily','5 days'),
(2,2,2,2,'2026-10-06','10 units daily','30 days'),
(3,3,3,3,'2026-10-07','1 tablet daily','7 days'),
(4,4,4,4,'2026-10-08','1 tablet twice daily','5 days'),
(5,5,5,5,'2026-10-09','1 tablet daily','10 days'),
(6,6,6,6,'2026-10-10','1 tablet daily','30 days'),
(7,7,7,7,'2026-10-11','1 tablet twice daily','15 days'),
(8,8,8,8,'2026-10-12','2 drops twice daily','7 days'),
(9,9,9,9,'2026-10-13','1 tablet daily','10 days'),
(10,10,10,10,'2026-10-14','1 tablet daily','5 days'),
(11,11,11,11,'2026-10-15','10 units daily','30 days'),
(12,12,12,12,'2026-10-16','1 tablet daily','7 days'),
(13,13,13,13,'2026-10-17','1 tablet twice daily','10 days'),
(14,14,14,14,'2026-10-18','1 tablet daily','5 days'),
(15,15,15,15,'2026-10-19','1 tablet twice daily','15 days'),
(16,16,16,16,'2026-10-20','1 tablet twice daily','7 days'),
(17,17,17,17,'2026-10-21','1 tablet daily','5 days'),
(18,18,18,18,'2026-10-22','10 ml twice daily','7 days'),
(19,19,19,19,'2026-10-23','1 tablet daily','10 days'),
(20,20,20,20,'2026-10-24','1 tablet daily','7 days');
CREATE TABLE Medication (
    medication_id INT PRIMARY KEY,
    medication_name VARCHAR(100),
    dosage VARCHAR(50),
    manufacturer VARCHAR(100),
    price DECIMAL(10,2));
    INSERT INTO Medication
(medication_id, medication_name, dosage, manufacturer, price)
VALUES
(1,'Paracetamol','500 mg','Cipla',25.00),
(2,'Metformin','500 mg','Sun Pharma',40.00),
(3,'Sumatriptan','50 mg','Dr Reddy',80.00),
(4,'Cetirizine','10 mg','Cipla',30.00),
(5,'Ibuprofen','400 mg','Abbott',45.00),
(6,'Ferrous Sulfate','200 mg','Sun Pharma',35.00),
(7,'Amlodipine','5 mg','Cipla',50.00),
(8,'Ofloxacin Ear Drops','5 ml','Mankind',60.00),
(9,'Aspirin','75 mg','Bayer',35.00),
(10,'Vitamin D3','1000 IU','Mankind',90.00),
(11,'Glimepiride','2 mg','Sun Pharma',55.00),
(12,'Loratadine','10 mg','Cipla',45.00),
(13,'Diclofenac','50 mg','Novartis',40.00),
(14,'Paracetamol','650 mg','Cipla',30.00),
(15,'Losartan','50 mg','Dr Reddy',65.00),
(16,'Amoxicillin','500 mg','Abbott',75.00),
(17,'Azithromycin','500 mg','Cipla',85.00),
(18,'Cough Syrup','100 ml','Mankind',70.00),
(19,'Naproxen','250 mg','Sun Pharma',60.00),
(20,'Levocetirizine','5 mg','Cipla',50.00);

CREATE TABLE Procedure_Surgery (
    procedure_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    procedure_name VARCHAR(100),
    procedure_date DATE,
    description VARCHAR(200),
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctor(doctor_id));
    INSERT INTO Procedure_Surgery
(procedure_id, patient_id, doctor_id, procedure_name, procedure_date, description)
VALUES
(1,1,1,'Blood Pressure Check','2026-10-05','Routine examination'),
(2,2,2,'Diabetes Checkup','2026-10-06','Blood sugar monitoring'),
(3,3,3,'MRI Examination','2026-10-07','Brain scan'),
(4,4,4,'Skin Examination','2026-10-08','Skin allergy examination'),
(5,5,5,'X-Ray Examination','2026-10-09','Back examination'),
(6,6,6,'Hemoglobin Check','2026-10-10','Blood examination'),
(7,7,7,'BP Monitoring','2026-10-11','Blood pressure monitoring'),
(8,8,8,'Ear Examination','2026-10-12','Ear checkup'),
(9,9,9,'ECG Test','2026-10-13','Heart examination'),
(10,10,10,'General Checkup','2026-10-14','Routine examination'),
(11,11,11,'Neurological Examination','2026-10-15','Migraine assessment'),
(12,12,12,'Skin Examination','2026-10-16','Allergy assessment'),
(13,13,13,'Joint Examination','2026-10-17','Orthopedic assessment'),
(14,14,14,'General Checkup','2026-10-18','Routine examination'),
(15,15,15,'BP Monitoring','2026-10-19','Blood pressure assessment'),
(16,16,16,'Throat Examination','2026-10-20','Throat infection check'),
(17,17,17,'Fever Examination','2026-10-21','Routine examination'),
(18,18,18,'Chest Examination','2026-10-22','Chest checkup'),
(19,19,19,'Back Examination','2026-10-23','Spine assessment'),
(20,20,20,'Allergy Examination','2026-10-24','Allergy assessment');
CREATE TABLE Surgeon (
    surgeon_id INT PRIMARY KEY,
    name VARCHAR(50),
    specialization VARCHAR(100),
    contact_no VARCHAR(15),
    experience_years INT);
    INSERT INTO Surgeon
(surgeon_id, name, specialization, contact_no, experience_years)
VALUES
(1,'Dr. Rajesh Patil','General Surgeon','9876502001',15),
(2,'Dr. Anil Sharma','Cardiac Surgeon','9876502002',18),
(3,'Dr. Meena Joshi','Neurosurgeon','9876502003',12),
(4,'Dr. Suresh More','Orthopedic Surgeon','9876502004',14),
(5,'Dr. Priya Kulkarni','General Surgeon','9876502005',10),
(6,'Dr. Rahul Pawar','Plastic Surgeon','9876502006',11),
(7,'Dr. Sneha Patil','Gynecologic Surgeon','9876502007',9),
(8,'Dr. Amit Deshmukh','Cardiac Surgeon','9876502008',16),
(9,'Dr. Neha Shinde','Neurosurgeon','9876502009',13),
(10,'Dr. Vikram Jadhav','Orthopedic Surgeon','9876502010',17),
(11,'Dr. Pooja More','General Surgeon','9876502011',8),
(12,'Dr. Kunal Patil','Plastic Surgeon','9876502012',10),
(13,'Dr. Riya Joshi','Gynecologic Surgeon','9876502013',9),
(14,'Dr. Mahesh Pawar','Cardiac Surgeon','9876502014',15),
(15,'Dr. Kavita Shinde','Neurosurgeon','9876502015',12),
(16,'Dr. Nikhil More','Orthopedic Surgeon','9876502016',14),
(17,'Dr. Swati Patil','General Surgeon','9876502017',7),
(18,'Dr. Akash Jadhav','Plastic Surgeon','9876502018',11),
(19,'Dr. Anjali Deshmukh','Gynecologic Surgeon','9876502019',10),
(20,'Dr. Sameer Kulkarni','Cardiac Surgeon','9876502020',16);

show tables;
select *from patient 
where gender = 'female';
select * from patient 
where gender = 'female'
and address ='pune';
select * from patient 
where not gender = 'male';
select * from patient
where name like'%a%';
select * from patient
where address in ('pune', 'mumbai', 'nashik');
select* from patient;
select * from doctor;
select * from encounter;
select * from surgeon;
select * from procedure_surgery;
select * from procrdure_surgery;
select * from patient
where patient_id between 5 and 10;
select * from doctor
where specialization = 'cardiologist';
select * from doctor 
where gender = 'female'
and specialization = 'gynecologist';
select * from doctor
where specialization = 'cardiologist'
or specialization = 'gynecologist';
select * from doctor
where specialization = 'cardiogist'
or specialization = 'neurologist';
alter table prescription
add constraint
fk_prescription_medication
foreign key(medication_id)
references medication(medication_id);
desc prescription;
select * 
from patient
order by name asc;
select distinct address
from patient;
select * from doctor 
where not gender= 'male';
select *
from patient 
inner join appointment
on patient. patient_id =
appointment.patient_id;
select *
from patient 
inner join appointment
on patient. patient_id =
appointment.patient_id;
select*
from patient
left join appointment
on patient.patient_id =
appointment.patient_id;
select diagnosis, count(*) as
total_patients
from medical_history
group by diagnosis;
SELECT min(price) as minimum_price,
       max (price) as maximum_price
from medication;
Select sum(price)as total_price
from medication;
select avg(price)as average_price
from medication;
select count(*)as
total_diagnostic_tests
from diagnostic_test;
select*from patient
where patient_id in (
select patient_id
from medical_history
where diagnosis = 'diabetes');
SELECT
    Procedure_Surgery.procedure_id,
    Patient.name AS patient_name,
    Procedure_Surgery.procedure_name,
    Procedure_Surgery.procedure_date,
    Procedure_Surgery.description
FROM Procedure_Surgery
INNER JOIN Patient
    ON Procedure_Surgery.patient_id = Patient.patient_id;
    SELECT
    Procedure_Surgery.*,
    Patient.name AS patient_name
FROM Procedure_Surgery
INNER JOIN Patient
    ON Procedure_Surgery.patient_id = Patient.patient_id;
    SELECT
    Procedure_Surgery.procedure_id,
    Patient.name AS patient_name,
    Procedure_Surgery.procedure_name,
    Procedure_Surgery.procedure_date,
    Procedure_Surgery.description
FROM Procedure_Surgery
INNER JOIN Patient
    ON Procedure_Surgery.patient_id = Patient.patient_id;
SELECT
    Procedure_Surgery.*,
    Patient.name AS patient_name
FROM Procedure_Surgery
INNER JOIN Patient
    ON Procedure_Surgery.patient_id = Patient.patient_id;
DELIMITER //

CREATE PROCEDURE GetPatientMedicalHistory(IN p_patient_id INT)
BEGIN
    SELECT
        Patient.*,
        Medical_History.history_id,
        Medical_History.diagnosis,
        Medical_History.allergies,
        Medical_History.chronic_conditions,
        Medical_History.previous_treatments,
        Medical_History.record_date,
        Medical_History.notes
    FROM Patient
    INNER JOIN Medical_History
        ON Patient.patient_id = Medical_History.patient_id
    WHERE Patient.patient_id = p_patient_id;
END //

DELIMITER ;
call getpatientmedicalhistory(4);
DELIMITER //

CREATE TRIGGER set_appointment_status
BEFORE INSERT ON Appointment
FOR EACH ROW
BEGIN
    IF NEW.discharge_date IS NOT NULL THEN
        SET NEW.status = 'Completed';
    END IF;
END //

DELIMITER ;
alter table patient
add constraint uq_patient_insurance
unique (insurance_no);
SELECT
    medication_id,
    medication_name,
    price,
    CASE
        WHEN price >= 70 THEN 'Expensive'
        WHEN price >= 40 THEN 'Moderate'
        ELSE 'Low Cost'
    END AS price_category
FROM Medication;
SELECT 'Patient' AS table_name, COUNT(*) AS total_records FROM Patient
UNION ALL
SELECT 'Medical_History', COUNT(*) FROM Medical_History
UNION ALL
SELECT 'Doctor', COUNT(*) FROM Doctor
UNION ALL
SELECT 'Appointment', COUNT(*) FROM Appointment
UNION ALL
SELECT 'Encounter', COUNT(*) FROM Encounter
UNION ALL
SELECT 'Diagnostic_Test', COUNT(*) FROM Diagnostic_Test
UNION ALL
SELECT 'Prescription', COUNT(*) FROM Prescription
UNION ALL
SELECT 'Medication', COUNT(*) FROM Medication
UNION ALL
SELECT 'Procedure_Surgery', COUNT(*) FROM Procedure_Surgery
UNION ALL
SELECT 'Surgeon', COUNT(*) FROM Surgeon;

alter table procedure_surgery add surgeon_id int;
update procedure_surgery set  surgeon_id  = procedure_id;

alter table procedure_surgery
ADD CONSTRAINT fk_procedure_surgeon
foreign key (surgeon_id) references surgeon (surgeon_id);








    
    
    
    
































