-- 1. Select all students born in 1990
SELECT * FROM `students`
WHERE `date_of_birth` LIKE '1990%'
LIMIT 160;

-- 2. Select all courses which cfu is more than 10
SELECT * FROM `courses`
WHERE `cfu` > 10
LIMIT 479;

-- 4. Select all courses of the first semester of the first year
SELECT * FROM `courses`
WHERE `year` = 1 AND `period` LIKE 'I semestre'
LIMIT 286;