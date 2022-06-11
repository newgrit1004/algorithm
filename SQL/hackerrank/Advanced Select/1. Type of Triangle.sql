SELECT CASE
    WHEN A+B>C and A+C>B and B+C>A THEN
        CASE
            WHEN A=B and B=C THEN 'Equilateral'
            WHEN A=B or B=C or A=C THEN 'Isosceles'
            ELSE 'Scalene'
        END
    ELSE 'Not A Triangle'
    END
FROM Triangles
