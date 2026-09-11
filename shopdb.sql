create database medicare;
use medicare;
 create table doctors(DoctorID Integer PRIMARY KEY,
 DoctorName VARCHAR(100) NOT NULL,
 Specialization VARCHAR(50),
 ConsultationFee DECIMAL(7,2) CHECK (ConsultationFee > 0),
 ExperienceYears Integer CHECK (ExperienceYears >= 0));
 desc doctors;
 create table patients(PatientID Integer PRIMARY KEY,
 FirstName VARCHAR(50) NOT NULL, 
 LastName VARCHAR(50),
 Email VARCHAR(100) UNIQUE,
 RegistrationDate DATE DEFAULT "2026-02-21")
 desc patients;
 alter table doctors add AvailabilityStatus VARCHAR(20) default "Available";
 alter table doctors drop Specialization;
 alter table patients modify column email varchar(255);
 insert into doctors values(301,"Dr.Arjun Rao",800.00,12,"Available");
 select * from doctors;