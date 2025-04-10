## Query 5 - Selezionare tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14) del 20/06/2020 (21)

SELECT *
FROM `exams`
WHERE `hour` >= '14:00:00'
AND DATE(date) = '2020-06-20'