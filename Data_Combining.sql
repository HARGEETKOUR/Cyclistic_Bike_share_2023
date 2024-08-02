--Combine all the tables from Jan 2023 to Dec 2023

create table hargeet.Cyclistic_Bike_Share_2023.Cyclistics_bike_share_2023_combined_data as
(select * from `hargeet.Cyclistic_Bike_Share_2023.Jan_2023`
union all 
select * from `hargeet.Cyclistic_Bike_Share_2023.Feb_2023`
union all
select * from `hargeet.Cyclistic_Bike_Share_2023.Mar_2023`
union all 
select * from `hargeet.Cyclistic_Bike_Share_2023.Apr_2023`
union all 
select * from `hargeet.Cyclistic_Bike_Share_2023.May_2023_1`
union all
select * from `hargeet.Cyclistic_Bike_Share_2023.May_2023_2`
union all 
select * from `hargeet.Cyclistic_Bike_Share_2023.June_2023_1`
union all 
select * from `hargeet.Cyclistic_Bike_Share_2023.June_2023_2`
union all 
select * from `hargeet.Cyclistic_Bike_Share_2023.July_2023_1`
union all 
select * from `hargeet.Cyclistic_Bike_Share_2023.July_2023_2`
union all
select * from `hargeet.Cyclistic_Bike_Share_2023.Aug_2023_1`
union all 
select * from `hargeet.Cyclistic_Bike_Share_2023.Aug_2023_2`
union all
select * from `hargeet.Cyclistic_Bike_Share_2023.Sept_2023_1`
union all
select * from `hargeet.Cyclistic_Bike_Share_2023.Sept_2023_2`
union all
select * from `hargeet.Cyclistic_Bike_Share_2023.Oct_2023_1`
union all
select * from `hargeet.Cyclistic_Bike_Share_2023.Oct_2023_2`
union all
select * from `hargeet.Cyclistic_Bike_Share_2023.Nov_2023`
union all 
select * from `hargeet.Cyclistic_Bike_Share_2023.Dec_2023`);