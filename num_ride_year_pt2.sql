SELECT 
      member_casual,
       week_day, 
       COUNT(ride_id) AS num_rides

FROM 
    master.[dbo].[year_wise_data]

GROUP BY 
        member_casual, week_day

ORDER BY 
        num_rides DESC
