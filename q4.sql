SELECT edited_sex as sex,
       edited_age/10 AS decade,
       COUNT(*) AS count,
       AVG(duration)/60.0 AS gaming_hours
FROM activities
JOIN roster
ON activities.case_id = roster.case_id
   and roster.line_no = 1
WHERE activity_code=120307
GROUP BY 1,2;
