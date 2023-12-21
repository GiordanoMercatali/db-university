-- 1. Select all students who are taking an economy degree
SELECT * FROM `students`
INNER JOIN `degrees` ON `students`.`degree_id` = `degrees`.`id`
WHERE  `degrees`.`name` = 'Corso di Laurea in Economia';

-- 2. Select all Master's Degrees in Neuroscience Department
SELECT * FROM `degrees`
INNER JOIN `departments` ON `departments`.`id` = `degrees`.`department_id`
WHERE  `departments`.`name` = 'Dipartimento di Neuroscienze' AND `degrees`.`level` = 'Magistrale';

-- SELECT * FROM `departments`
-- INNER JOIN `degrees` ON `degrees`.`department_id` = `departments`.`id`
-- WHERE  `departments`.`name` = 'Dipartimento di Neuroscienze' AND `degrees`.`level` = 'Magistrale';

