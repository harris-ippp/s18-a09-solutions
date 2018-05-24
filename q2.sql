SELECT AVG(worked_last_week-1) AS p_worked_last_week
FROM respondents
WHERE worked_last_week < 3;
