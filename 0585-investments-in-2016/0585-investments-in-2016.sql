select round(sum(tiv_2016),2) as tiv_2016 from Insurance
where tiv_2015 in 
(select tiv_2015
from Insurance
group by tiv_2015
having count(1)>1) and (lat,lon) in (select lat,lon
from Insurance
group by lat,lon
having count(1)=1)


-- SELECT ROUND(SUM(TIV_2016),2) AS tiv_2016
-- from (SELECT TIV_2016,
--        COUNT(TIV_2015) OVER (PARTITION BY TIV_2015) AS COUNT_TIV2015,
--        COUNT(LAT) OVER (PARTITION BY LAT,LON) AS COUNT_LL
-- FROM INSURANCE) AS TABLE_COUNT
-- WHERE COUNT_TIV2015>1 AND COUNT_LL=1