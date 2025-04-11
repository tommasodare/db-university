/* 
- degrees
- departments

select degrees.name as degree_name, departments.name as department_name
from degrees
join departments on degrees.department_id = departments.id
*/

/* 
select *
from exams
where hour > '14:00:00'
order by date asc
*/

/*
SELECT COUNT(id) as total_courses, cfu
from courses
group by cfu
// order by cfu asc //
*/

/* 
select count(id) as total_students, year(date_of_birth) as year_of_birth
from students
group by year_of_birth
// order by year_of_birth asc //
*/

/* 
- Selezionare il voto più basso dato ad ogni appello d'esame
- MIN()

select min(vote) as lowest_vote, exam_id
from exam_student
group by exam_id
*/

/* 
- Contare gli appelli d'esame del mese di Luglio raggruppati per giorno
- exams
- MONTH()
- DAY()
- COUNT()

select COUNT(*) as `total_exams`, DAY(`date`) as `day`
from exams
where MONTH(`date`) = '07'
GROUP BY `day`
*/





