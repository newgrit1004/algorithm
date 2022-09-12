--mysql v8.0.28
CREATE PROCEDURE solution()
BEGIN
	SELECT name, continent, population
	FROM countries
	where continent='Africa'
	order by name;
END