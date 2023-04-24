--busiest day in Q1--

 WITH 
      mode_Q1 AS 
      (
      SELECT
            DISTINCT member_casual,
            day_name, 
            ROW_NUMBER() OVER (PARTITION BY member_casual ORDER BY COUNT(day_name) DESC ) rn

FROM
     cyclistic_project.dbo.Q1

GROUP BY
member_casual, day_name )

SELECT 
      member_casual,
      day_name AS mode_day_of_week

FROM
    mode_Q1

 WHERE
      rn = 1

ORDER BY

      member_casual DESC 
