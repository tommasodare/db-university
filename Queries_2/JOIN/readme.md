## Query 1 - Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia

SELECT `students`.*, `degrees`.name AS degree_name
FROM `students`
JOIN `degrees` ON `students`.`degree_id` = `degrees`.`id`
WHERE `degrees`.`name` = 'Corso di Laurea in Economia'

## Query 2 - Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze

SELECT *
FROM `degrees`
JOIN `departments` ON `degrees`.`department_id` = `departments`.`id`
WHERE degrees.level = 'magistrale'
AND departments.name = 'Dipartimento di Neuroscienze'

## Query 3 - Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)

 SELECT `courses`.*
 FROM `courses`
 JOIN `course_teacher` ON `course_teacher`.`course_id` = `courses`.`id`
 WHERE `course_teacher`.`teacher_id` = 44;