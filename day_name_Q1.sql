--creating a column for specifying day of week--

-- for Q1--

ALTER TABLE 
          cyclistic_project.dbo.Q1 
ADD 
     day_name VARCHAR(255)  NULL
 UPDATE 
        cyclistic_project.dbo.Q1
 SET
        day_name =

                    CASE WHEN week_day = '1' THEN 'sunday'
                         WHEN week_day = '2' THEN 'monday'
                         WHEN week_day = '3' THEN 'tuesday'
                         WHEN week_day = '4' THEN 'wednusday'
                         WHEN week_day = '5' THEN 'thursday'
                         WHEN week_day = '6' THEN 'friday'
                         WHEN week_day = '7' THEN 'saturday'
 

END
WHERE
      week_day IN ('1' , '2', '3', '4', '5', '6', '7')
