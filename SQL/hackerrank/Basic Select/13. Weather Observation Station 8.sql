--mysql
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[aeiou]' and CITY REGEXP '[aeiou]$'