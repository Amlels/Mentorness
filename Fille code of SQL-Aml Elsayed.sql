SELECT TOP (1000) [Booking_ID]
      ,[no_of_adults]
      ,[no_of_children]
      ,[no_of_weekend_nights]
      ,[no_of_week_nights]
      ,[type_of_meal_plan]
      ,[room_type_reserved]
      ,[lead_time]
      ,[arrival_date]
      ,[market_segment_type]
      ,[avg_price_per_room]
      ,[booking_status]
  FROM [hotel_reservations].[dbo].['Hotel Reservation Dataset$']

SELECT COUNT(*) AS total_reservations FROM [hotel_reservations].[dbo].['Hotel Reservation Dataset$'] ;



  SELECT type_of_meal_plan, COUNT(*) AS count
FROM [hotel_reservations].[dbo].['Hotel Reservation Dataset$']
GROUP BY type_of_meal_plan
ORDER BY count DESC
LIMIT 1;

SELECT TOP 1 room_type_reserved, COUNT(*) AS count
FROM [hotel_reservations].[dbo].['Hotel Reservation Dataset$']
GROUP BY room_type_reserved
ORDER BY count DESC;

SELECT AVG(avg_price_per_room) AS average_price
FROM [hotel_reservations].[dbo].['Hotel Reservation Dataset$']
WHERE no_of_children > 0;

SELECT COUNT(*) AS reservations_in_year
FROM  [hotel_reservations].[dbo].['Hotel Reservation Dataset$']
WHERE YEAR(arrival_date) = 2018;

SELECT room_type_reserved, COUNT(*) AS count
FROM  [hotel_reservations].[dbo].['Hotel Reservation Dataset$']
GROUP BY room_type_reserved
ORDER BY count DESC
LIMIT 1;

SELECT TOP 1 room_type_reserved, COUNT(*) AS count
FROM  [hotel_reservations].[dbo].['Hotel Reservation Dataset$']
GROUP BY room_type_reserved
ORDER BY count DESC;


  SELECT MAX(lead_time) AS max_lead_time, MIN(lead_time) AS min_lead_time
FROM  [hotel_reservations].[dbo].['Hotel Reservation Dataset$'] ;
  

  SELECT market_segment_type, COUNT(*) AS count
FROM  [hotel_reservations].[dbo].['Hotel Reservation Dataset$']
GROUP BY market_segment_type
ORDER BY count DESC
LIMIT 1;

 SELECT TOP 1 market_segment_type, COUNT(*) AS count
FROM  [hotel_reservations].[dbo].['Hotel Reservation Dataset$']
GROUP BY market_segment_type
ORDER BY count DESC;

SELECT COUNT(*) AS confirmed_reservations
FROM  [hotel_reservations].[dbo].['Hotel Reservation Dataset$']
WHERE booking_status = 'Not_Canceled';

SELECT SUM(no_of_adults) AS total_adults, SUM(no_of_children) AS total_children
FROM [hotel_reservations].[dbo].['Hotel Reservation Dataset$'];


SELECT AVG(no_of_weekend_nights) AS average_weekend_nights
FROM [hotel_reservations].[dbo].['Hotel Reservation Dataset$']
WHERE no_of_children > 0;
 

 SELECT AVG(no_of_weekend_nights) AS average_weekend_nights
FROM [hotel_reservations].[dbo].['Hotel Reservation Dataset$']
 where (no_of_children) > 0; 

SELECT MONTH(arrival_date) AS month, COUNT(*) AS reservations_count
FROM [hotel_reservations].[dbo].['Hotel Reservation Dataset$']
GROUP BY MONTH(arrival_date);

SELECT AVG([no_of_weekend_nights]) AS average_weekend_nights
FROM [hotel_reservations].[dbo].['Hotel Reservation Dataset$'];
WHERE [no_of_children] > 0;



SELECT AVG(no_of_weekend_nights) AS average_weekend_nights
FROM [hotel_reservations].[dbo].['Hotel Reservation Dataset$']
 where (no_of_children) > 0; 



SELECT MONTH(arrival_date) AS month, COUNT(*) AS reservations_count
FROM [hotel_reservations].[dbo].['Hotel Reservation Dataset$']
GROUP BY MONTH(arrival_date)
ORDER BY month;

SELECT room_type_reserved, 
       AVG(no_of_weekend_nights + no_of_week_nights) AS average_nights
FROM [hotel_reservations].[dbo].['Hotel Reservation Dataset$']
GROUP BY room_type_reserved;\



SELECT room_type_reserved, COUNT(*) AS count, AVG(avg_price_per_room) AS average_price
FROM [hotel_reservations].[dbo].['Hotel Reservation Dataset$']
WHERE no_of_children > 0
GROUP BY room_type_reserved
ORDER BY count DESC
LIMIT 1;

SELECT TOP 1
    room_type_reserved,
    COUNT(*) AS count,
    AVG(avg_price_per_room) AS average_price
FROM [hotel_reservations].[dbo].['Hotel Reservation Dataset$']
WHERE no_of_children > 0
GROUP BY room_type_reserved
ORDER BY count DESC;

SELECT TOP 1
    market_segment_type,
    AVG(avg_price_per_room) AS average_price
FROM  [hotel_reservations].[dbo].['Hotel Reservation Dataset$']
GROUP BY market_segment_type
ORDER BY average_price DESC;
