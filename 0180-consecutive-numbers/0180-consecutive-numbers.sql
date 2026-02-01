# Write your MySQL query statement below
SELECT num AS ConsecutiveNums
FROM (
    SELECT
        num,
        SUM(
            CASE
                WHEN num = lg AND num = ld THEN 1
                ELSE 0
            END
        ) AS cnt
    FROM (
        SELECT
            id,
            num,
            LAG(num)  OVER (ORDER BY id) AS lg,
            LEAD(num) OVER (ORDER BY id) AS ld
        FROM Logs
    ) t1
    GROUP BY num
) t2
WHERE cnt >= 1;
