SELECT * FROM studentinfo;

SELECT country, count(*) , avg(age) FROM studentinfo
GROUP BY country
HAVING avg(age) >23 ;