--mysql v8.0.28
CREATE PROCEDURE solution()
BEGIN
	SELECT DISTINCT(name)
	FROM projectLog
	ORDER BY name asc;
END