SELECT 
      member_casual, 
      COUNT(ride_id) AS num_rides

FROM 
     master.[dbo].[year_wise_data]
GROUP BY 
        member_casual
ORDER BY 
        num_rides DESC 
