--q1--
CREATE VIEW NovemberLongSessions AS
SELECT VENUE_ID, MODULE_CODE, BOOKING_DATE, STARTING_TIME, DURATION
FROM VENUE_BOOKINGS
WHERE DATEPART(MM,BOOKING_DATE)=11
AND DURATION >= 100

SELECT * from NovemberLongSessions

--q2--
CREATE PROCEDURE FindModuleBookings @findModule NVarChar(10) 
AS SELECT VENUE_NAME, BOOKING_DATE, STARTING_TIME, DURATION
FROM VENUE_BOOKINGS VB, VENUES V
WHERE MODULE_CODE = @findModule
AND VB.VENUE_ID =  V.VENUE_ID

Exec FindModuleBookings 'WEDE220'

--q3--
SELECT DISTINCT M.*,'BOOKING_STATUS' = 
CASE 
WHEN VB.MODULE_CODE IS NOT NULL THEN 'Bookings recorded'
ELSE 'No Bookings recorded'
END
FROM MODULES M
LEFT OUTER JOIN VENUE_BOOKINGS VB ON M.MODULE_CODE = 
VB.MODULE_CODE

--q4--
SELECT V.VENUE_NAME,SUM(B.DURATION) AS 'TOTAL MINUTES BOOKED'
FROM VENUES V
LEFT OUTER JOIN VENUE_BOOKINGS B ON V.VENUE_ID = B.VENUE_ID
GROUP BY V.VENUE_NAME
ORDER BY SUM(B.DURATION)DESC

--q5--
SELECT V.VENUE_NAME
FROM VENUES V
LEFT OUTER JOIN VENUE_BOOKINGS B ON
V.VENUE_ID = B.VENUE_ID
WHERE B.VENUE_ID IS NULL


