# Display customer name and gender whose names start or end with character 'A'.

SELECT * FROM customer AS c WHERE (C.CUS_NAME LIKE 'A%' OR C.CUS_NAME LIKE '%A');