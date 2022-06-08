WITH RECURSIVE tblnums
as (
    SELECT 2 AS NUMS
    UNION ALL
    SELECT NUMS+1
    FROM tblnums
    WHERE NUMS<1000
)

SELECT GROUP_CONCAT(TT.NUMS ORDER BY TT.NUMS SEPARATOR '&') AS NUMS
FROM tblnums TT
WHERE NOT EXISTS
--the num should not be divisible by any number less than it
    (SELECT 1 FROM tblnums T2
    WHERE T2.NUMS <= TT.NUMS/2 AND MOD(TT.NUMS,T2.NUMS)=0)