SELECT 
      member_casual, 
      rideable_type,
      COUNT(ride_id) as num_riders

FROM 
    master.[dbo].[year_wise_data]

GROUP BY 
        member_casual, rideable_type

ORDER BY 
        COUNT(ride_id) DESC
