CREATE DATABASE CLDVTASK2_16012775;

CREATE TABLE HARDCOPYRECORDS (
JobCardNo INT PRIMARY KEY NOT NULL,
Customer VARCHAR(40) NOT NULL,
Address VARCHAR(65) NOT NULL,
JobType VARCHAR(50) NOT NULL,
NoOfDays INT NOT NULL,
MaterialUsed VARCHAR(160) NOT NULL
);

INSERT INTO HARDCOPYRECORDS(JobCardNo, Customer, Address, JobType, NoOfDays,
MaterialUsed)
values(11000,'Tendai Ndoro','3 Leos Place 457 Church Str PRETORA, 0002','Full
Conversion',7,'90 x standard floor boards, 3 x power points, 20 metres standard
electrical wiring, Standard stairs pack');
INSERT INTO HARDCOPYRECORDS(JobCardNo, Customer, Address, JobType, NoOfDays,
MaterialUsed)
values(10478,'Donald Puttingh','408 Oubos 368 Prinsloo Street PRETORA, 0001','Semi
Conversion',2,'50 x standard floor boards, 1 x power points, 10 metres standard
electrical wiring');
INSERT INTO HARDCOPYRECORDS(JobCardNo, Customer, Address, JobType, NoOfDays,
MaterialUsed)
values(14253,'Tracy Samson','206 Albertros 269 Stead Avenue PRETORA, 0186','Floor
Boarding',2,'40 x standard floor boards');
INSERT INTO HARDCOPYRECORDS(JobCardNo, Customer, Address, JobType, NoOfDays,
MaterialUsed)
values(11258,'Jacob Smith','A201 Ocerton 269 Debouvlrde Str PRETORIA, 0002','Full
Conversion',8,'80 x standard floor boards, 3 x power points, 20 metres standard
electrical wiring, Standard stairs pack');
INSERT INTO HARDCOPYRECORDS(JobCardNo, Customer, Address, JobType, NoOfDays,
MaterialUsed)
values(12058,'Thato Molepo','11 Luttig Court 289 MALTZAN Str PRETORIA, 0001','Semi
Conversion',3,'60 x standard floor boards, 2 x power points, 15 metres standard
electrical wiring');
INSERT INTO HARDCOPYRECORDS(JobCardNo, Customer, Address, JobType, NoOfDays,
MaterialUsed)
values(13697,'Dakalo Mudau','1182 CEBINIA Str PRETORA, 0082&#39','Full Conversion',7,'80 x
standard floor boards, 4 x power points, 40 metres standard electrical wiring,
Standard stairs pack');
INSERT INTO HARDCOPYRECORDS(JobCardNo, Customer, Address, JobType, NoOfDays,
MaterialUsed)
values(10211,'Sfiso Myeni','503 Hamilton Gardens 337 Visagie Str PRETORA, 0001','Full
Conversion',7,'100 x standard floor boards, 5 x power points, 30 metres standard
electrical wiring, Standard stairs pack');
INSERT INTO HARDCOPYRECORDS(JobCardNo, Customer, Address, JobType, NoOfDays,
MaterialUsed)
values(10471,'Ricardo Keyl','10 Silville 614 Jasmyn Str PRETORA, 0184','Semi
Conversion',2,'40 x standard floor boards, 1 x power points, 8 metres standard
electrical wiring');
INSERT INTO HARDCOPYRECORDS(JobCardNo, Customer, Address, JobType, NoOfDays,
MaterialUsed)
values(13521,'Smallboy Mtshali','307 FEORA East PRETORIA-WEST, 0183','Semi
Conversion',3,'65 x standard floor boards, 3 x power points, 18 metres standard
electrical wiring');
INSERT INTO HARDCOPYRECORDS(JobCardNo, Customer, Address, JobType, NoOfDays,
MaterialUsed)
values(10102,'Wilson Jansen','701 Monticchico Flat 251 Jacob Mare Str PRETORA,
0002','Floor Boarding',2,'70 x standard floor boards');

CREATE TABLE EMPLOYEESASSIGNEDJOBCARDS (
JobCardNo INT NOT NULL,
EmployeeNo VARCHAR(6) NOT NULL,
Names VARCHAR(30) NOT NULL,
FOREIGN KEY (JobCardNo) REFERENCES HARDCOPYRECORDS(JobCardNo)
);

INSERT INTO EMPLOYEESASSIGNEDJOBCARDS(JobCardNo, EmployeeNo, Names)
values(11000,'EMP100','Albert Malose');
INSERT INTO EMPLOYEESASSIGNEDJOBCARDS(JobCardNo, EmployeeNo, Names)
values(11000,'EMP920','Chris Byne');
INSERT INTO EMPLOYEESASSIGNEDJOBCARDS(JobCardNo, EmployeeNo, Names)
values(11000,'EMP010','John Hendriks');
INSERT INTO EMPLOYEESASSIGNEDJOBCARDS(JobCardNo, EmployeeNo, Names)
values(10478,'EMP920','Chris Byne');
INSERT INTO EMPLOYEESASSIGNEDJOBCARDS(JobCardNo, EmployeeNo, Names)
values(14253,'EMP771','Smallboy Modipa');
INSERT INTO EMPLOYEESASSIGNEDJOBCARDS(JobCardNo, EmployeeNo, Names)
values(11258,'EMP681','Stanley Jacobs');
INSERT INTO EMPLOYEESASSIGNEDJOBCARDS(JobCardNo, EmployeeNo, Names)
values(11258,'EMP010','John Hendriks');
INSERT INTO EMPLOYEESASSIGNEDJOBCARDS(JobCardNo, EmployeeNo, Names)
values(11258,'EMP771','Smallboy Modipa');
INSERT INTO EMPLOYEESASSIGNEDJOBCARDS(JobCardNo, EmployeeNo, Names)
values(12058,'EMP681','Stanley Jacobs');

CREATE TABLE RATESBYJOBTYPE (
JobType VARCHAR(45) NOT NULL,
DailyRate VARCHAR(10) NOT NULL
);

INSERT INTO RATESBYJOBTYPE(JobType, DailyRate)
values('Full Conversion','R1 200.00');
INSERT INTO RATESBYJOBTYPE(JobType, DailyRate)
values('Semi Conversion','R1 080.00');
INSERT INTO RATESBYJOBTYPE(JobType, DailyRate)
values('Flor Boarding','R900.00');


SELECT * FROM HARDCOPYRECORDS;

SELECT * FROM RATESBYJOBTYPE;

SELECT * FROM EMPLOYEESASSIGNEDJOBCARDS;

SELECT Names,JobCardNo FROM EMPLOYEESASSIGNEDJOBCARDS;

SELECT JobCardNo,Names FROM EMPLOYEESASSIGNEDJOBCARDS;

SELECT MaterialUsed,JobCardNo FROM HARDCOPYRECORDS;

SELECT JobCardNo,Names FROM EMPLOYEESASSIGNEDJOBCARDS;

SELECT MaterialUsed,JobType FROM HARDCOPYRECORDS WHERE JobType = 'Full Conversion';

SELECT JobCardNo FROM EMPLOYEESASSIGNEDJOBCARDS WHERE Names = 'Chris Byne';

SELECT JobCardNo FROM HARDCOPYRECORDS WHERE Address LIKE '%0001%' OR Address LIKE '%0002%';

SELECT COUNT(*) AS 'Number of jobs' FROM HARDCOPYRECORDS WHERE MaterialUsed = '%electrical wiring%';


SELECT SUM (JobCardNo) AS 'Inoice Prep'
SUM (JobCardNo) * 0.14 AS VATCalc

SELECT * FROM [dbo].[HARDCOPYRECORDS];