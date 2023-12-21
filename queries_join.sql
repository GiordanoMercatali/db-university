-- 1. Select all students who are taking an economy degree
SELECT * FROM `students`
INNER JOIN `degrees` ON `students`.`degree_id` = `degrees`.`id`
WHERE  `degrees`.`name` = 'Corso di Laurea in Economia';