--mysql v8.0.28
CREATE PROCEDURE solution()
BEGIN
	select name, country, scored, missed, wins
	from results
	order by wins;
END