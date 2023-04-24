--creating Q1--

SELECT * INTO Q1 

FROM
    jan_edited

UNION

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
        [dbo].[202202-divvy-tripdata]

UNION

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
      [dbo].[202203-divvy-tripdata]
