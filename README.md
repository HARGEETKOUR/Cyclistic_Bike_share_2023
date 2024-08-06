# Cyclistic_Bike_share_Case_Study_2023
## 📚INTRODUCTION
The project **Cyclistic bike-share analysis case study** is the Capstone project of the [GOOGLE DATA ANALYTICS PROFESSIONAL CERTIFICATE](https://www.coursera.org/professional-certificates/google-data-analytics) In this project, I will use the steps and strategies learned from the course to answer the questions of stakeholders. The Steps that I will use are: <ins>Ask, Prepare, Process, Analyze, Share, Act.</ins>
## 📝SCENARIO
Being a junior Data Analyst, I am working on a Marketing Analyst team in the company **Cyclistic, a bike-share
company in Chicago**.
##  📜ABOUT THE COMPANY
Cyclists, a leading bike-share company based in Chicago, has achieved remarkable success since its inception in 2016. The program has expanded exponentially, boasting an impressive fleet of 5,824 bicycles and a comprehensive network of 692 tracked stations strategically located throughout the city. This extensive infrastructure enables users to effortlessly rent bicycles from one station and return them to any other station within the network, promoting cycling as a convenient and appealing mode of transportation.

Cyclistic's marketing strategy has traditionally focused on building broad awareness and catering to diverse consumer segments through flexible pricing plans. These plans include single-ride passes, full-day passes, and annual memberships, ensuring users can choose the best option. Moreover, the company has demonstrated a commitment to inclusivity by offering adaptive bicycles, such as reclining bikes, hand tricycles, and cargo bikes, to accommodate individuals with disabilities and those who require alternative cycling options.

According to Cyclistic's user data, most users leverage the bike-sharing program for leisure activities, while approximately 30% rely on the service for their daily commute to work. Interestingly, traditional bicycles remain the most popular choice, although around 8% of users opt for the adaptive alternatives.

In light of these insights, Cyclistic's marketing director has identified a key opportunity for growth: maximizing the number of annual memberships. To achieve this goal, my team and I, as junior data analysts, have been tasked with conducting an in-depth analysis of the usage patterns and behaviors of both casual riders and annual members. By uncovering these two user groups' distinct characteristics and preferences, we will develop a targeted marketing strategy to convert casual riders into loyal annual members, further solidifying Cyclistic's position as a leading bike-share company.
## 🔍ANALYSING PROCESS...**
### 1. ASK
**Goal of the project**: Design marketing strategies to convert casual riders into annual members by analyzing the key difference between casual riders and members and how digital media could affect their marketing tactics.<br>
>Questions to be answered for the goal:
> 1.  How do annual members and casual riders use Cyclistic bikes differently?
> 2. Why would casual riders buy Cyclistic annual memberships?
> 3. How can Cyclistic use digital media to influence casual riders to become members?

**Task Assigned**: "How do annual members and casual riders use Cyclistic bikes differently?"<br>
### 2. PREPARE<br>

**Data Source**<br>[divvy-tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html)<br>
[Note-The data has been made available by Motivate International Inc. under this [<ins>License</ins>](https://divvybikes.com/data-license-agreement)]<br>
<br>
**Tools used**<br>-Data Preparing, Processing and Analyzing:[Big Query](https://console.cloud.google.com/bigquery?hl=en&project=hargeet&ws=!1m10!1m4!1m3!1shargeet!2sbquxjob_68398910_1910c5ff729!3sUS!1m4!4m3!1shargeet!2sCyclistic_Bike_Share_2023!3sCyclistics_bike_share_2023_combined_data)<br>
-Data Visualization: [Tableau](https://public.tableau.com/views/Cyclistics_Bike_Share_2023/Dashboard1?:language=en-GB&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)<br>

### 3. PROCESS<br>
The gathered data for this analysis is 2023 Cyclistics data from the data source and the steps are:<br>
1. [Data Combining](https://github.com/HARGEETKOUR/Cyclistic_Bike_share_2023/blob/main/Data_Combining.sql)<br>
The data from Jan 2023 to Dec 2023 has been combined to create a table.<br>
[Note: The data of a few months has been divided into two parts to create the table in SQL]<br>
2. [Data Prepartion](https://github.com/HARGEETKOUR/Cyclistic_Bike_share_2023/blob/main/Data_Preparation.sql
   )<br>
The data then has been prepared for further analysis by exploring it.<br>
4. [Data Cleaning](https://github.com/HARGEETKOUR/Cyclistic_Bike_share_2023/blob/main/--Data%20Cleaning.sql)<br>
A new table has been created with cleaned data.<br>
5. [Data Analysis](https://github.com/HARGEETKOUR/Cyclistic_Bike_share_2023/blob/main/Data_Analysis.sql)<br>
The cleaned table is used for the analysis process.<br>

#### Data Combining<br> 
The 12 tables from January 2023 to December 2023 were extracted and combined into a single table. The combined table consists of  5719877 rows.<br>
#### Data Exploration<br>
Ran the queries to determine the null values in each column and the following outputs were determined:<br>
>1. 875716 null start station names<br>
>2. 875848 null start station id<br>
>3. 929202 null end station names<br>
>4. 929343 null end station id<br>
>5. 6990 null end lat and end lng<br>

The data consists of 13 variables as follows:<br>
| **No.**|  **Variable**       |  **Description**                                        |
|--------|------------------   | --------------------------------------------------------|
| 1      | ride_id             | Unique ID for each ride                                 |
| 2      | rideable_type       | bike used for ride: classic, docked, or electric        |
| 3      | started_at          | Date and time at the start of trip                      |
| 4      | ended_at            | Date and time at the end of trip                        |
| 5      | start_station_name  | Name of the station where the ride journey started from |
| 6      | start_station_id    | ID of the station where the ride journey started from   |
| 7      | end_station_name    | Name of the station where the ride trip ended at        |
| 8      | end_station_id      | ID of the station where the ride trip ended at          |
| 9      | start_lat           | Latitude of starting station                            |
| 10     | start_lng           | Longitude of starting station                           |
| 11     | end_lat             | Latitude of ending station                              |
| 12     | end_lng             | Longitude of ending station                             |                            
| 13     | member_casual       | Type of membership of each rider                        |



and the **data type** of each variable is as shown below<br>

![image](https://github.com/user-attachments/assets/8ea40f37-551c-4592-bf00-31bfe5bc3072)<br>

#### Data Cleaning<br>
-3 new columns were created:<br>
>**Months**<br>
>**Day_of_week**<br>
>**Ride_length_in_mins**<br>

-Entries with **null values are removed**<br>
-Exclusing the **rides with duration less than a minute** or **longer than a day**<br>
After cleaning, **4195741** rows are returned in total, means **1524136** rows were removed.<br>

### 3. ANALYZE<br>
#### Data Analyzing<br>
Question assigned for the **Analysis**<br>
>How do annual members and casual riders use Cyclistic bikes differently?<br>
The cleaned data is imported into Tableau for further analysis and the resulting figures are as follows:
### - Types of Bike<br>
The chart shows the different types of bikes used by riders<br>
[Type of Bike](https://public.tableau.com/app/profile/hargeet.kour/viz/Cyclistics_Bike_Share_2023/Dashboard1)



