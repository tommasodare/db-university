/*
- Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
- students
- degrees

SELECT `students`.*, `degrees`.name AS degree_name
FROM `students`
JOIN `degrees` ON `students`.`degree_id` = `degrees`.`id`
WHERE `degrees`.`name` = 'Corso di Laurea in Economia';
*/

/* 
- Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
- degrees
- departments
- WHERE departments.level = magistrale

SELECT *
FROM `degrees`
JOIN `departments` ON `degrees`.`department_id` = `departments`.`id`
WHERE degrees.level = 'magistrale'
AND departments.name = 'Dipartimento di Neuroscienze'
*/

/*
- Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
- teachers
- courses
- course_teacher

SELECT *
 FROM `courses`
 JOIN `course_teacher` ON `course_teacher`.`course_id` = `courses`.`id`
 WHERE `course_teacher`.`teacher_id` = 44;
 */
 
 
/* 
- Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
- students
- departments
- degrees

SELECT `students`.`name`,`students`.`surname`, `students`.`date_of_birth`, `departments`.`name` AS department_name, `degrees`.`name` AS degree_name
FROM `students`
JOIN `degrees` ON `students`.`degree_id` = `degrees`.`id`
JOIN `departments` ON `degrees`.`department_id` = `departments`.`id`
ORDER BY `students`.`name` ASC, `students`.`surname` ASC;
*/

/*
-  Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
- degrees
- courses
- teachers

SELECT `degrees`.`name` AS degree_name,
`teachers`.`name` AS teacher_name,
`teachers`.`surname` AS teacher_surname, `courses`.*
FROM `degrees`
JOIN `courses` ON `courses`.`degree_id` = `degrees`.`id`
JOIN `course_teacher` ON `course_teacher`.`course_id` = `courses`.`id`
JOIN `teachers` ON `teachers`.`id` = `course_teacher`.`teacher_id`
 */

/* 
- Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)
- teachers
- departments

SELECT DISTINCT teachers.* 
FROM teachers 
JOIN course_teacher ON course_teacher.teacher_id = teachers.id 
JOIN courses ON course_teacher.course_id = courses.id 
JOIN degrees ON courses.degree_id = degrees.id 
JOIN departments ON degrees.department_id = departments.id 
WHERE departments.name = 'Dipartimento di Matematica'
*/










