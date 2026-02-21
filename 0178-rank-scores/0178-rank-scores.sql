-- SELECT score,
--     RANK() OVER (ORDER BY score asc) AS rank
-- FROM Scores

SELECT score,
    DENSE_RANK() OVER (ORDER BY score desc) AS 'rank'
FROM Scores;