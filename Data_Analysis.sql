-- Types of bike
SELECT member_casual, rideable_type, 
COUNT(*) AS total_rides
FROM `hargeet.Cyclistic_Bike_Share_2023.Cyclistics_bike_share_2023_cleaned_data`
GROUP BY member_casual, rideable_type
ORDER BY member_casual, total_rides DESC;
--All rideable types are used by Casual members
--Both Casuals and Members preferred Classic bikes more than others
--Population of members are more than Casuals
--The maximum used bike is classic by members:1765220 while the minimum used one is docked bikes type by casuals:75151 

-- No. of rides per month
SELECT member_casual, month, 
COUNT(*) AS total_rides_per_month
FROM `hargeet.Cyclistic_Bike_Share_2023.Cyclistics_bike_share_2023_cleaned_data`
GROUP BY member_casual, month
ORDER BY member_casual;
--Members used maximum bikes in the month of August:341666 AND minimum bikes in the month of February:110594
--Casuals used maximum bikes in the month of August:239524 AND minimum bikes in the month of January:28580


-- No.of rides per day of week 
SELECT member_casual, day_of_week,COUNT(*) AS total_rides_per_week
FROM `hargeet.Cyclistic_Bike_Share_2023.Cyclistics_bike_share_2023_cleaned_data`
GROUP BY member_casual,day_of_week
ORDER BY member_casual;
--Members used maximum bikes on Wednesday:437141 AND minimum bikes on Sunday:297158
--Casuals used maximum bikes on Saturday:302524 AND minimum bikes on Monday:171170


-- No. of trips per hour
SELECT member_casual, 
EXTRACT(HOUR FROM started_at) AS hour_of_day, 
COUNT(*) AS total_trips
FROM `hargeet.Cyclistic_Bike_Share_2023.Cyclistics_bike_share_2023_cleaned_data`
GROUP BY member_casual,hour_of_day
ORDER BY member_casual;

-- Average ride length per day of week
SELECT member_casual, day_of_week, 
AVG(ride_length_in_mins) AS avg_ride_length, 
AVG(AVG(ride_length_in_mins)) OVER(PARTITION BY member_casual) AS combined_avg_ride_length
FROM `hargeet.Cyclistic_Bike_Share_2023.Cyclistics_bike_share_2023_cleaned_data`
GROUP BY member_casual, day_of_week
ORDER BY member_casual;

-- Starting location for member
SELECT member_casual, start_station_name,
AVG(start_lat) AS start_lat, 
AVG(start_lng) AS start_lng,
COUNT(*) AS total_rides
FROM `hargeet.Cyclistic_Bike_Share_2023.Cyclistics_bike_share_2023_cleaned_data`
WHERE member_casual = 'casual'
GROUP BY member_casual, start_station_name;

-- Ending location for member
SELECT member_casual, end_station_name,
AVG(end_lat) AS end_lat, 
AVG(end_lng) AS end_lng,
COUNT(*) AS total_rides
FROM `hargeet.Cyclistic_Bike_Share_2023.Cyclistics_bike_share_2023_cleaned_data`
WHERE member_casual = 'member'
GROUP BY member_casual, end_station_name;

-- Starting location for casual
SELECT member_casual, start_station_name,
AVG(start_lat) AS start_lat, 
AVG(start_lng) AS start_lng,
COUNT(*) AS total_rides
FROM `hargeet.Cyclistic_Bike_Share_2023.Cyclistics_bike_share_2023_cleaned_data`
WHERE member_casual = 'casual'
GROUP BY member_casual, start_station_name;

-- Ending location for casual 
SELECT member_casual, end_station_name,
AVG(end_lat) AS end_lat, 
AVG(end_lng) AS end_lng,
COUNT(*) AS total_rides
FROM `hargeet.Cyclistic_Bike_Share_2023.Cyclistics_bike_share_2023_cleaned_data`
WHERE member_casual = 'member'
GROUP BY member_casual, end_station_name;