----------------------------------------------------------------------------------------
---------------------------------INDEPENDENT INSTITUTE OF EDUCATION------------------------
-------------------------------------------------------------------------------------------
                                -------DATA6212 EXAM_A 2017-------
                                -------CREATED ON 20170707-------



------------------------------------------------------------------------CREATES ALL TABLES
CREATE DATABASE DATA6212_EXAM2017

        CREATE TABLE CDS
        (
            CD_CODE VARCHAR(5),
            TITLE NVARCHAR(40) NOT NULL,
            ARTIST NVARCHAR(40) NOT NULL,
            TRACKS SMALLINT NOT NULL,
            RELEASE_DATE SMALLDATETIME NOT NULL,
            PRICE SMALLMONEY NOT NULL   
        )

        CREATE TABLE STORES
        (
            STORE_CODE VARCHAR(5),
            STORE_NAME VARCHAR(20) NOT NULL,
            ADDRESS NVARCHAR(50) NOT NULL,
            CITY VARCHAR(20) NOT NULL
        )

        CREATE TABLE AVAILABILITY
        (
            CD_CODE VARCHAR(5),
            STORE_CODE VARCHAR(5),
            AVAILABLE_STOCK SMALLINT NOT NULL            
        )
------------------------------------------------------------------------INSERTS ALL DATA
INSERT INTO CDS VALUES
('CD001','Awesome 80s Collection','Various',24,'1991-01-01',99),
('CD002','Anti','Rihanna',13,'2016-02-01',183),
('CD003','Now 75','Various',22,'2017-03-01',140),
('CD004','The Afterlove','James Blunt',10,'2017-04-01',170),
('CD005','Oh My My','One Republic',16,'2016-10-01',151)

INSERT INTO STORES VALUES
('ST001','Musica','Victoria Wharf Shopping Centre','Cape Town'),
('ST002','Game', 'City View Shopping Centre','Durban'),
('ST003','Musica', 'Blue Route Mall', 'Cape Town'),
('ST004','Makro', 'Ascot Road','Johannesburg'),
('ST005','Musica','Rooihuiskraal Road', 'Pretoria')

INSERT INTO AVAILABILITY VALUES
('CD002', 'ST001',13),
('CD002', 'ST004',9),
('CD003', 'ST005',8),
('CD004', 'ST003',5),
('CD004', 'ST001',9)

SELECT * FROM CDS
SELECT * FROM STORES
SELECT * FROM AVAILABILITY