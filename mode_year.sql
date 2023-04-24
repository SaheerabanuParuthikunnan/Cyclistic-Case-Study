--for busiest day in 2022 year--

 WITH 
      mode_year 
AS 
    (
      SELECT
            DISTINCT member_casual,
            day_name, 
            ROW_NUMBER() OVER (PARTITION BY member_casual ORDER BY COUNT(day_name) DESC ) rn

FROM
    master.dbo.year_wise_data

GROUP BY
        member_casual, 
        day_name 
                    )

SELECT 
       member_casual,
       day_name AS mode_day_of_week

FROM
     mode_year

WHERE
      rn = 1

ORDER BY

member_casual DESC 
