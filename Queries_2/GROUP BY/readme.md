## Query 1 - Contare quanti iscritti ci sono stati ogni anno

SELECT COUNT(`id`), YEAR(`enrolment_date`)
FROM `students`
GROUP BY YEAR(`enrolment_date`)

## Query 2 - Contare gli insegnanti che hanno l'ufficio nello stesso edificio

SELECT COUNT(`id`), `office_address`
FROM `teachers`
GROUP BY `office_address`
ORDER BY COUNT(`id`) ASC