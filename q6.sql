SELECT edited_sex, 
       educational_attainment, 
       AVG(duration/60.0) as housework_hours
FROM activities
JOIN roster
ON activities.case_id = roster.case_id AND
   roster.line_no = 1
JOIN cps
   ON activities.case_id = cps.case_id
WHERE activity_code / 10000 = 2 AND
      educational_attainment > 0
GROUP BY 1,2;
