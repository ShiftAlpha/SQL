CREATE DATABASE DomingoRoofWorks_16012775_POE;



CREATE TABLE CUST(
CUST_ID VARCHAR(80) NOT NULL primary key,
CUST_NAME VARCHAR(100) NOT NULL,
CUST_SURNAME VARCHAR(100) NOT NULL,
CUST_ADDRESS VARCHAR(100) NOT NULL,
CUST__PROVINCE VARCHAR(80) NOT NULL,
CUST_ZIPCODE VARCHAR(10) NOT NULL,

)

CREATE TABLE JOB_TYPES
(
JOB_TYPE_ID INT NOT NULL primary key,
JOB_TYPE VARCHAR(80) NOT NULL,
DAILY_RATE DECIMAL NOT NULL,

)

CREATE TABLE JOBS
(
JOB_CARD_NO INT NOT NULL primary key,
JOB_TYPE_ID INT FOREIGN KEY REFERENCES JOB_TYPES(JOB_TYPE_ID),
NO_OF_DAYS INT NOT NULL,
CUST_ID VARCHAR(80) FOREIGN KEY REFERENCES CUST(CUST_ID)
)

CREATE TABLE EMPS
(
EMP_NO VARCHAR(80) NOT NULL primary key,
EMP_NAME VARCHAR(80) NOT NULL,
EMP_SURNAME VARCHAR(80) NOT NULL,

)
CREATE TABLE EMPS_JOBS
(
EMP_JOB_ID VARCHAR(30) NOT NULL primary key,
JOB_CARD_NO INT FOREIGN KEY REFERENCES JOBS(JOB_CARD_NO),
EMP_NO VARCHAR (80) FOREIGN KEY REFERENCES EMPS(EMP_NO),

)
CREATE TABLE MATERIALS
(
MAT_ID INT NOT NULL primary key,
MAT_TYPE VARCHAR(100) NOT NULL,

)

CREATE TABLE MATERIALS_PER_PROJECT
(
MAT_PROJECT_ID VARCHAR(20) NOT NULL primary key,
JOB_CARD_NO INT FOREIGN KEY REFERENCES JOBS(JOB_CARD_NO),
MAT_ID INT FOREIGN KEY REFERENCES MATERIALS(MAT_ID),
QUANTITY INT NOT NULL

)
CREATE TABLE INVOICE( 
INVOICE_ID VARCHAR(20) NOT NULL PRIMARY KEY, 
JOB_CARD_NO INT not null, 
foreign key (job_card_no) references JOBS(JOB_CARD_NO),
CUST_ID Varchar(80) not null, 
foreign key (CUST_ID) references CUST(CUST_ID), 
job_type_id int not null, 
foreign key (job_type_id) references JOB_TYPES(JOB_TYPE_ID), 
invoice_amount decimal(8,2) not null, 
)

insert into job_types(job_type_id, daily_rate, job_type)
values(01,1440, 'Full-Conversion');
insert into job_types(job_type_id, daily_rate, job_type)
values(02,1080, 'Semi-Conversion');
insert into job_types(job_type_id, daily_rate, job_type)
values(03,900, 'Floor-Borading');
insert into job_types(job_type_id, daily_rate, job_type)
values(04,1440, 'Full-Conversion');
insert into job_types(job_type_id, daily_rate, job_type)
values(05,1080, 'Semi-Conversion');
insert into job_types(job_type_id, daily_rate, job_type)
values(06,1440, 'Full-Conversion');
insert into job_types(job_type_id, daily_rate, job_type)
values(07,1440, 'Full-Conversion');
insert into job_types(job_type_id, daily_rate, job_type)
values(08,1080, 'Semi-Conversion');
insert into job_types(job_type_id, daily_rate, job_type)
values(09,1080, 'Semi-Conversion');
insert into job_types(job_type_id, daily_rate, job_type)
values(10,900, 'Floor-Boarding');

insert into EMPs(EMP_no, EMP_name, EMP_surname)
values('emp100','Albert','Malose');
insert into EMPs(EMP_no, EMP_name, EMP_surname)
values('emp920','Chris','Byne');
insert into EMPs(EMP_no, EMP_name, EMP_surname)
values('emp010','John','Hendricks');
insert into EMPs(EMP_no, EMP_name, EMP_surname)
values('emp711','Smallboy','Modipa');
insert into EMPs(EMP_no, EMP_name, EMP_surname)
values('emp681','Stanley','Jacobs');

insert into CUST(CUST_id, CUST_name,CUST_surname,CUST_address,CUST__province,CUST_zipcode)
values(001,'Tendai', 'Ndoro', '3 Leos Place 457 Church Str PRETORIA, 0002', 'PRETORIA','8897');
insert into CUST(CUST_id, CUST_name,CUST_surname,CUST_address,CUST__province,CUST_zipcode)
values(002,'Donald', 'Puttingh', '408 oubos 368 Prinsloo Street PRETORIA, 0001', 'PRETORIA','8897');
insert into CUST(CUST_id, CUST_name,CUST_surname,CUST_address,CUST__province,CUST_zipcode)
values(003,'Tracy', 'Samson', '206 Albertros 269 Stead Avenue PRETORIA, 0186', 'PRETORIA','8897');
insert into CUST(CUST_id, CUST_name,CUST_surname,CUST_address,CUST__province,CUST_zipcode)
values(004,'Jacob', 'Smith', 'A201 Ocerton 269 Debouvlrd Str PRETORIA, 0002', 'PRETORIA','8897');
insert into CUST(CUST_id, CUST_name,CUST_surname,CUST_address,CUST__province,CUST_zipcode)
values(005,'Thato', 'Molepo', '11 Luttig Court 289 MALTZAN Str PRETORIA, 0001', 'PRETORIA','8897');
insert into CUST(CUST_id, CUST_name,CUST_surname,CUST_address,CUST__province,CUST_zipcode)
values(006,'Dakalo', 'Mudua', '1182 CEBINIA Str PRETORIA, 0082', 'PRETORIA','8897');
insert into CUST(CUST_id, CUST_name,CUST_surname,CUST_address,CUST__province,CUST_zipcode)
values(007,'Sfiso', 'Myeni', '503 Hamilton Gardens 337 Visagie Str PRETORIA, 0001', 'PRETORIA','8897');
insert into CUST(CUST_id, CUST_name,CUST_surname,CUST_address,CUST__province,CUST_zipcode)
values(008,'Ricardo', 'Keyl', '10 Silville 614 Jasmyn Str PRETORIA, 0184', 'PRETORIA','8897');
insert into CUST(CUST_id, CUST_name,CUST_surname,CUST_address,CUST__province,CUST_zipcode)
values(009,'Smallboy', 'Mtshali', '307 FOERA East PRETORIA-WEST, 0183', 'PRETORIA','8897');
insert into CUST(CUST_id, CUST_name,CUST_surname,CUST_address,CUST__province,CUST_zipcode)
values(010,'Wilson', 'Jansen', '701 Monticchico Flat 251 Jacob Mare Str PRETORIA, 0002', 'PRETORIA','8897');

insert into jobs(job_card_no,CUST_id, job_type_id, no_of_days)
values(11000, 001, 01, 7);
insert into jobs(job_card_no,CUST_id, job_type_id, no_of_days)
values(10479, 002, 02, 2);
insert into jobs(job_card_no,CUST_id, job_type_id, no_of_days)
values(14254, 003, 03, 2);
insert into jobs(job_card_no,CUST_id, job_type_id, no_of_days)
values(11259, 004, 04, 8);
insert into jobs(job_card_no,CUST_id, job_type_id, no_of_days)
values(12059, 005, 05, 3);
insert into jobs(job_card_no,CUST_id, job_type_id, no_of_days)
values(13698, 006, 06, 7);
insert into jobs(job_card_no,CUST_id, job_type_id, no_of_days)
values(10212, 007, 07, 7);
insert into jobs(job_card_no,CUST_id, job_type_id, no_of_days)
values(10472, 008, 08, 2);
insert into jobs(job_card_no,CUST_id, job_type_id, no_of_days)
values(13522, 009, 09, 3);
insert into jobs(job_card_no,CUST_id, job_type_id, no_of_days)
values(10103, 010, 10, 2);

insert into INVOICE(INVOICE_ID,JOB_CARD_NO,CUST_id,invoice_amount,job_type_id)
values('INV001',10103,010, 3693.00,10);

select * from INVOICE;
select * from JOBS;
select * from JOB_TYPES;
select* from EMPS;
select * from CUST;