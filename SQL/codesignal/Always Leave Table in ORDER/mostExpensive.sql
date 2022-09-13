--mysql v8.0.28
CREATE PROCEDURE solution()
BEGIN
	select name
	from products
	order by price*quantity desc, name ASC
	limit 1;
END