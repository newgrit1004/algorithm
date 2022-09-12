--mysql v8.0.28
CREATE PROCEDURE solution()
BEGIN
	select id, scholarship/12
	from scholarships
	order by id asc;
END