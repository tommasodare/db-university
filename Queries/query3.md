## Query 3 - Selezionare tutti gli studenti che hanno più di 30 anni

SELECT *
FROM `students`
WHERE YEAR(date_of_birth) < 1995

select *
from students
where timestampdiff(year, date_of_birth, curdate()) >= 30