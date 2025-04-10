## Query 8 - Quanti sono gli insegnanti che non hanno un numero di telefono? (50)

SELECT COUNT(`id`)
FROM `teachers`
WHERE `phone` IS NULL