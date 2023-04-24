SELECT
      distinct member_casual,
      day_name,
      CAST(CAST(PERCENTILE_DISC(0.5) WITHIN GROUP(ORDER BY CAST(CAST(ride_length AS datetime)AS float)) OVER(PARTITION BY member_casual,day_name)AS datetime)AS time) AS median_ride_length
FROM 
      cyclistic_project.dbo.Q1

 ORDER BY 
       member_casual,median_ride_length desc
