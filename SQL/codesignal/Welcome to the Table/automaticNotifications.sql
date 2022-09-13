--mysql v8.0.28
CREATE PROCEDURE solution()
BEGIN
    SELECT email
    FROM users
    WHERE role not in ("admin", "premium")

    ORDER BY email;
END
