/* Selezionare tutti i corsi del **Corso di Laurea** in **Informatica** (22)
*/

/* 
- Selezionare le informazioni sul corso con id = 144, con tutti i relativi appelli d’esame
- courses
- exams
- courses_id = 144

select courses.id as course_id, courses.name, courses.description, period, year, cfu, website, exams.id as exams_id, exams.date, exams.hour, exams.location, exams.address
from courses
JOIN exams ON exams.course_id = courses.id
WHERE courses.id = 144
*/

/* 
- Selezionare a quale dipartimento appartiene il Corso di Laurea in Diritto dell'Economia (Dipartimento di Scienze politiche, giuridiche e studi internazionali)
- departments
- degrees 
SELECT `departments`.*
FROM departments
JOIN degrees ON degrees.department_id = departments.id
WHERE degrees.name = 'Dipartimento di Scienze politiche, giuridiche e studi internazionali'
*/

/* 
- Selezionare tutti gli appelli d'esame del Corso di Laurea Magistrale in Fisica del primo anno
- exams
- degrees
- courses



SELECT courses.name, courses.period, courses.cfu, exams.hour, exams.location, exams.date
FROM exams
JOIN courses ON exams.course_id = courses.id
JOIN degrees ON courses.degree_id = degrees.id
WHERE degrees.name = 'Corso di Laurea Magistrale in Fisica'
AND courses.year = 1;
*/

/* 
- Selezionare tutti i docenti che insegnano nel Corso di Laurea in Lettere (21)
- teachers
- courses
- degrees
- course_teacher

SELECT DISTINCT `teachers`.*
FROM `teachers`
JOIN `course_teacher` ON `course_teacher`.`teacher_id` = `teachers`.`id`
JOIN `courses` ON `course_teacher`.`course_id`= `courses`.`id`
JOIN `degrees` ON `courses`.`degree_id` = `degrees`.`id`
WHERE `degrees`.`name` = 'Corso di Laurea in Lettere'
*/

/* 
- Selezionare il voto medio di superamento d'esame per ogni corso, con anche i dati del corso di laurea associato, ordinati per media voto decrescente
- exams
- courses
- degrees
- exams_student

SELECT AVG(exam_student.vote) as vote_avarage, courses.name as course_name, degrees.name as degree_name
FROM exam_student
JOIN exams ON exam_student.exam_id = exams.id
JOIN courses ON exams.course_id = courses.id
JOIN degrees ON courses.degree_id = degrees.id
WHERE exam_student.vote >= 18
GROUP BY courses.id 
ORDER BY vote_avarage DESC
*/



