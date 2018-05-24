SELECT state_code,
       AVG(educational_attainment >= 39) AS HS
FROM cps
WHERE educational_attainment > 0 -- i.e. defined
GROUP BY state_code
ORDER BY HS
LIMIT 1;

-- Texas

