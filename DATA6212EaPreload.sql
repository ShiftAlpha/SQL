-------------------------------------------------------------------------------------------
---------------------------------INDEPENDENT INSTITUTE OF EDUCATION------------------------
-------------------------------------------------------------------------------------------
								
------------------------------------------------------------------------CREATES ALL TABLES
CREATE DATABASE "16012775_DATA6121_EXAMQ1"
		CREATE TABLE VENUES
		(
			VENUE_ID NVARCHAR(5),
			VENUE_NAME NVARCHAR(30) NOT NULL,
            MAX_CAPACITY SMALLINT NOT NULL,
			PRIMARY KEY(VENUE_ID)
		)


		CREATE TABLE MODULES
		(
			MODULE_CODE NVARCHAR(10) NOT NULL,
			MODULE_NAME NVARCHAR(40) NOT NULL,
            NUMBER_REGISTERED SMALLINT NOT NULL,
			PRIMARY KEY(MODULE_CODE)
		)


		CREATE TABLE VENUE_BOOKINGS
		(
			VENUE_ID NVARCHAR(5) NOT NULL,
			MODULE_CODE NVARCHAR(10) NOT NULL,
            BOOKING_DATE DATE NOT NULL,
            STARTING_TIME TIME NOT NULL,
            DURATION SMALLINT NOT NULL,
	    PRIMARY KEY(VENUE_ID, MODULE_CODE, BOOKING_DATE, STARTING_TIME),
            FOREIGN KEY (VENUE_ID) REFERENCES VENUES(VENUE_ID),
            FOREIGN KEY (MODULE_CODE) REFERENCES MODULES(MODULE_CODE)
		)
------------------------------------------------------------------------INSERTS ALL DATA

INSERT INTO VENUES VALUES
('V0001','Lecture Room 5',60),
('V0002','Lecture Room 13',40),
('V0003','Meeting Room 1',20),
('V0004','Conference Room 4',150),
('V0005','Lecture Hall A',200)
 
INSERT INTO MODULES VALUES
('DATA6212','Database Intermediate',60),
('INPU221','Desktop Publishing',40),
('PROG6211','Programming 2A',50),
('PROG6212','Programming 2B',60),
('WEDE220', 'Web Development (Intermediate)',100)

INSERT INTO VENUE_BOOKINGS VALUES
('V0001','DATA6212','2018-10-23','09:00',60),
('V0002','INPU221','2018-10-23','09:00',60),
('V0004','WEDE220','2018-11-23','9:00',60),
('V0001','PROG6212','2018-11-24','09:00',120),
('V0001','PROG6212','2018-11-30','10:00',90),
('V0004','WEDE220','2018-11-27','10:00',120)

SELECT * FROM VENUES
SELECT * FROM MODULES
SELECT * FROM VENUE_BOOKINGS;


