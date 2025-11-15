CREATE DATABASE HOSPITAL_DATABASE;
USE HOSPITAL_DATABASE;

CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    PatientName VARCHAR(50),
    Age INT,
    Gender ENUM('M','F','T'),
    AdmissionDate DATEdepartments
);

ALTER TABLE Patients
ADD COLUMN Doctors_Assigned VARCHAR(50);

ALTER TABLE Patients
MODIFY PatientName VARCHAR(100);

ALTER TABLE Patients
RENAME Patients_Info;

TRUNCATE Patients_Info;
DROP TABLE Patients_Info;
