-- 1. Select all students born in 1990
SELECT * FROM `students`
WHERE `date_of_birth` LIKE '1990%';

-- 2. Select all courses which cfu is more than 10
SELECT * FROM `courses`
WHERE `cfu` > 10;

-- 3. Select all students older than 30 years
SELECT * FROM `students`
WHERE DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), date_of_birth)), '%e') > 30;

-- 4. Select all courses of the first semester of the first year
SELECT * FROM `courses`
WHERE `year` = 1 AND `period` LIKE 'I semestre';

-- 5. Select all exams that take place in the afternoon of 2020/06/20
SELECT * FROM `exams`
WHERE HOUR(`hour`) = 14 AND DATE(`date`) = '2020-06-20';

-- 6. Select all master's degrees
SELECT * FROM `degrees`
WHERE `name` LIKE '%Magistrale%';

-- 7. Count all departments
SELECT COUNT(*) FROM `departments`;

-- 8. Count all teachers without a phone number
SELECT COUNT(*) FROM `teachers`
WHERE `phone` IS NULL;