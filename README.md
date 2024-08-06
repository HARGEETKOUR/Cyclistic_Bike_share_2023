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

### 4. ANALYZE<br>
#### Data Analyzing<br>
Question assigned for the **Analysis**<br>
>How do annual members and casual riders use Cyclistic bikes differently?<br>
The cleaned data is imported into Tableau for further analysis and the resulting figures are as follows:
##### - Types of Bike<br>
The chart shows the different types of bikes used by riders<br>
![Types_Of_Bikes_2023](https://github.com/user-attachments/assets/48846445-f042-43aa-8c3d-aef89f25a06b)<br>
- Three types of bikes were determined:<ins>**Electric, Classic and docked**</ins><br>
-Both Cyclistic members and casual riders tend to favor **traditional bicycles** over e-bikes.<br>
-Casual riders also used **Docked bikes**.<br>
##### -Total Rides in 2023<br>
The chart below depicts the total rides taken throughout the year 2023:<br>
![Total_Rides_2023](https://github.com/user-attachments/assets/0d53315b-ef61-4c7b-84c9-3cc5dfb667e4)<br>
-Cyclistic members showed a **higher level of bike usage** compared to casual riders.Cyclistic **members** are observed with the account of **2701114** rides while **casual** riders have taken **1494627** rides.<br>
-**Cyclistic Members** contributed about **64.37%** of rides throughout the year while **casuals** only for **35.63%**.<br>
##### -Average Ride Length in 2023<br>
The below-shown figure is obtained by plotting the membership type against the average total rides<br> 
![Average_Ride_Length_2023](https://github.com/user-attachments/assets/edb33c73-41e0-4e25-9a2b-9f3494d22ab5)<br>
-Cyclistic **members** can ride their bikes for about **13.187** minutes on average whereas **casuals** have **15.527** minutes of average ride.<br>
##### -Weekly Rides in 2023<br>
The observed data has been obtained by plotting total rides per week against the days of the week:<br>
![Weekly_Rides_2023](https://github.com/user-attachments/assets/069de3a7-3116-4ad3-8ce7-e9214411f719)<br>
-**Maximum** bike rides are most preferred on **Saturday**.<br>
-Cyclistic **members** have taken **more rides** than casuals every day of the week.<br>
-Cyclistic **members** have **maximum activity**(above 43k rides) during the **middle of the week**  while **casuals** ride(about 30k) maximum on **Sunday**.<br>
|Member_Casual    |Day of week   |Maximum     |Minimum     |
|-----------------|--------------|------------|------------|
|Member           |Wednesday     | 437141     |            |
|Member           |Sunday        |            |297158      |
|Casual           |Saturday      |302524      |            |
|Casual           |Monday        |            |171170      |<br>

##### -Weekly Average Ride Length in 2023<br>
The visualization shown below is obtained using an average of ride length in minutes against days of the week.<br>
![Weekly_Average_Ride_length_2023](https://github.com/user-attachments/assets/bc6a1725-5505-4ab4-affb-abf9a0cf068c)<br>
-**Members** ride longest on **Saturday** with an average of **19.121** minutes whereas **Causals** have longest average ride of **16.460** minutes on **Saturday**<br>
##### -Total Rides per Month in 2023<br>
A study of monthly rides is done based on the data below:<br>
![Total_Rides_Per_Month_2023](https://github.com/user-attachments/assets/e367fa78-9d93-4836-9f75-e0e1bb3c19d5)
-Members have cycled more than Casuals every month throughout the year.<br>
-**Members** are having their **maximum** trips in the month of **August(341666)** while **Casuals** are having in the month of **July(239524)**<br>
-Both **Cyclistic members** and **casuals** have the **lowest activity** of rides in the months of **January** and **February**<br>
##### -Monthly Average Rides in 2023<br>
The below graph depicts the Average ride throughout the year per month:<br>
![Monthly_Average_Rides_2023](https://github.com/user-attachments/assets/32df5f8f-c800-485d-925e-29ff148d0e5d)<br>
-The monthly average ride duration for Cyclistic members is the highest in **April(19.38 minutes)** while for casuals riders, it is in **August(15.38)**.<br>
-Based on the graph, both **cyclisitc members** and **casuals** have **avearge monthly minimum rides** during winter, that is, **December(9.53 minutes)** and **January(5.50 minutes)** respectively.<br>
### 5. Share<br>
![Dashboard](https://github.com/user-attachments/assets/b17ff51f-50f5-49b4-9919-68e88fbab575)<br>
View [Dashboard](https://public.tableau.com/app/profile/hargeet.kour/viz/Cyclistics_Bike_Share_2023/Dashboard1)





