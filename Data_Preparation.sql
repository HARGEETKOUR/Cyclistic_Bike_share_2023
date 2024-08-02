--null values in each column
select count(*)- count(ride_id) ride_id,
count(*)- count(rideable_type) rideable_type,
count(*)- count(started_at) started_at,
count(*)- count(ended_at) ended_at,
count(*)- count(start_station_name) start_station_name,
count(*)- count(start_station_id) start_station_id,
count(*)- count(end_station_name) end_station_name,
count(*)- count(end_station_id) end_station_id,
count(*)- count(start_lat) start_lat,
count(*)- count(start_lng) start_lat,
count(*)- count(end_lat) end_lat,
count(*)- count(end_lng) end_lng,
count(*)- count(member_casual) member_casual
from `hargeet.Cyclistic_Bike_Share_2023.Cyclistics_bike_share_2023_combined_data`;
--875716 null start station names
--875848 null start station id
--929202 null end station names
--929343 null end station id
--6990 null end lat and end lng

-- Data Preparation

-- 1) rider_id length
select length(ride_id) as rider_id_length
from `hargeet.Cyclistic_Bike_Share_2023.Cyclistics_bike_share_2023_combined_data`
group by length(ride_id);
--the length of rider id is of 16 characters


-- 2) Rideable_type
select rideable_type
from `hargeet.Cyclistic_Bike_Share_2023.Cyclistics_bike_share_2023_combined_data`
group by rideable_type;
--Three types of bikes are determined:electric,classic,docked


-- 3) Ride Duration
select ride_id, started_at, ended_at
from `hargeet.Cyclistic_Bike_Share_2023.Cyclistics_bike_share_2023_combined_data`
where
timestamp_diff(ended_at, started_at, MINUTE) <= 1 or
timestamp_diff(ended_at, started_at, MINUTE) >= 1440;
--Durations are formatted as YYY-MM-DD HH:MM:SS UTC 

-- 4) Name & id of start_station and end_station
select distinct start_station_name, count(*) as start_station_count
from `hargeet.Cyclistic_Bike_Share_2023.Cyclistics_bike_share_2023_combined_data`
group by start_station_name;
--Total of 1593 distinct start stations names are determined
--875716 are null entries 

select distinct end_station_name, count(*) as end_station_count
from `hargeet.Cyclistic_Bike_Share_2023.Cyclistics_bike_share_2023_combined_data`
group by end_station_name;
--Total of 1598 distinct end station names are determined
--929202 are null entries
 

select distinct start_station_id, end_station_id
from `hargeet.Cyclistic_Bike_Share_2023.Cyclistics_bike_share_2023_combined_data`
where start_station_id is not null or
end_station_id is not null;


-- 5) lat & lng of start and end
select * 
from `hargeet.Cyclistic_Bike_Share_2023.Cyclistics_bike_share_2023_combined_data`
where
start_lat is null or
start_lng is null or
end_lat is null or
end_lng is null;


-- 6) member_casual: type of membership 
select member_casual, count(*) as membership_count
from `hargeet.Cyclistic_Bike_Share_2023.Cyclistics_bike_share_2023_combined_data`
group by  member_casual;
--members:3660698
--casuals:2059179
