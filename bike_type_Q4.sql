SELECT 
  member_casual, 
  rideable_type,
  COUNT(ride_id) as num_riders
FROM 
     cyclistic_project.dbo.Q4
GROUP BY 
        member_casual, rideable_type
ORDER BY 
        COUNT(ride_id) DESC
