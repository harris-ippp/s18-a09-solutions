SELECT spouse_or_partner_present,
       AVG(worked_last_week-1) AS p_worked_last_week
FROM respondents
WHERE worked_last_week < 3
GROUP BY spouse_or_partner_present;
