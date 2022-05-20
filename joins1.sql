CREATE TABLE [dbo].[City](
	[CityId] [int] NULL,
	[CityName] [varchar](50) NULL
)

CREATE TABLE [dbo].[Customer](
	[CustomerId] [int] NULL,
	[CityID] [int] NULL,
	[CustomerName] [varchar](50) NULL
)

INSERT [dbo].[City] ([CityId], [CityName]) VALUES (1, N'Durban')
INSERT [dbo].[City] ([CityId], [CityName]) VALUES (2, N'Pretoria')
INSERT [dbo].[City] ([CityId], [CityName]) VALUES (3, N'Cape Town')
INSERT [dbo].[Customer] ([CustomerId], [CityID], [CustomerName]) VALUES (1, 1, N'Bob Smith')
INSERT [dbo].[Customer] ([CustomerId], [CityID], [CustomerName]) VALUES (2, 1, N'Sally Smith')
INSERT [dbo].[Customer] ([CustomerId], [CityID], [CustomerName]) VALUES (3, 2, N'Tom Ryan')
INSERT [dbo].[Customer] ([CustomerId], [CityID], [CustomerName]) VALUES (4, NULL, N'Mary Roberts')

SELECT * FROM Customer 

SELECT * FROM City


SELECT * FROM Customer Inner Join City on Customer.Cityid=City.Cityid

SELECT * FROM Customer Left Outer Join City on Customer.Cityid=City.Cityid
SELECT * FROM Customer Right Outer Join City on Customer.Cityid=City.Cityid
SELECT * FROM Customer Full Outer Join City on Customer.Cityid=City.Cityid

SELECT * FROM Customer CROSS Join City where Customer.Cityid=City.Cityid

SELECT Cityid FROM Customer
Union ALL
SELECT Cityid FROM City
Order by Cityid