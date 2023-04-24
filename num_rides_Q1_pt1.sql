SELECT 
      member_casual, 
      COUNT(ride_id) AS num_rides 
FROM 
      cyclistic_project.dbo.Q1
GROUP BY 
       member_casual 
