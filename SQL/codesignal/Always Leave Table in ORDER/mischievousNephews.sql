--mysql v8.0.28
/*Please add ; after each select statement*/
CREATE PROCEDURE solution()
BEGIN
    SELECT
        WEEKDAY(mischief.`mischief_date`) AS `weekday`,
        mischief.*
    FROM
        mischief
    ORDER BY
        `weekday` ASC,
        FIELD(mischief.`author`, 'Huey', 'Dewey', 'Louie'),
        mischief.`mischief_date`,
        mischief.`title` ASC;
END