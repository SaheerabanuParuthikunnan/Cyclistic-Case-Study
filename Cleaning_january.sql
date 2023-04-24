--cleaning 202201-divvy-tripdata--

CREATE TABLE jan_edited 

                ( ride_id varchar(255),
                rideable_type varchar(255),
                start_station_name varchar(255),
                start_station_id varchar(255),
                member_casual varchar(255),
                ride_date date,
                start_time time,end_time time,
                 ride_length time,
                  week_day int)

INSERT INTO jan_edited

SELECT 
      [ride_id],
      [rideable_type],
      [start_station_name],
      [start_station_id],
      [member_casual],
      [ride_date],
      CAST ([start_time] AS time) AS start_time,
      CAST ([end_time] AS time) AS end_time,
      CAST([ride_length] AS time) AS ride_length,
      CAST([week_day] AS int) AS week_day
FROM 
      [dbo].[202201-divvy-tripdata]
