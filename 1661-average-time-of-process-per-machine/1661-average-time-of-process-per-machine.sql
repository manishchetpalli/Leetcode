-- # Write your MySQL query statement below
-- SELECT
--     machine_id,
--     ROUND(AVG(end_time - start_time), 3) AS processing_time
-- FROM (
--     SELECT
--         a.machine_id,
--         a.process_id,
--         MAX(CASE WHEN a.activity_type = 'start' THEN a.timestamp END) AS start_time,
--         MAX(CASE WHEN a.activity_type = 'end' THEN a.timestamp END) AS end_time
--     FROM Activity a
--     GROUP BY a.machine_id, a.process_id
-- ) t
-- GROUP BY machine_id;


SELECT
    s.machine_id,
    ROUND(AVG(e.timestamp - s.timestamp), 3) AS processing_time
FROM Activity s
JOIN Activity e
    ON s.machine_id = e.machine_id
   AND s.process_id = e.process_id
   AND s.activity_type = 'start'
   AND e.activity_type = 'end'
GROUP BY s.machine_id;
