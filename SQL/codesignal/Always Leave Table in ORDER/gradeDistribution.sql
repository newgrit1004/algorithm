--mysql v8.0.28
CREATE PROCEDURE solution()
BEGIN
	SELECT NAME, ID
	FROM grades
	WHERE midterm1*0.25+midterm2*0.25+final*0.5 < final AND
			midterm1*0.5+midterm2*0.5 < final
	ORDER BY LEFT(NAME, 3), ID;
END