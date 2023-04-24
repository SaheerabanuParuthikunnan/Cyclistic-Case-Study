SELECT 
      member_casual,
      day_name, 
      COUNT(ride_id) AS num_rides

FROM 
    cyclistic_project.dbo.Q1
GROUP BY 
      member_casual, 
      day_name
ORDER BY 
       num_rides DESC
