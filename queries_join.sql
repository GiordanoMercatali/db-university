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

-- 3. Select all courses in which Fulvio Amato teaches
SELECT * FROM `courses`
INNER JOIN `course_teacher` ON `course_teacher`.`course_id` = `courses`.`id`
INNER JOIN `teachers` ON `teachers`.`id` = `course_teacher`.`teacher_id`
WHERE `teachers`.`name` = 'Fulvio' AND `teachers`.`surname` = 'Amato';

-- 4. Select all students with all the info on their degree and degree's department, in alphabetical order by surname and name 
SELECT * FROM `students`
INNER JOIN `degrees` ON `degrees`.`id` = `students`.`degree_id`
INNER JOIN `departments` ON `departments`.`id` = `degrees`.`department_id`
ORDER BY `students`.`surname` ASC, `students`.`name` ASC;

-- 5. Select all degrees with all the info on their courses and teachers
SELECT * FROM `degrees`
INNER JOIN `courses` ON `courses`.`degree_id` = `degrees`.`id`
JOIN `course_teacher` ON `course_teacher`.`course_id` = `courses`.`id`
JOIN `teachers` ON `teachers`.`id` = `course_teacher`.`teacher_id`;