-- 1. Select all students born in 1990
SELECT * FROM `students`
WHERE `date_of_birth` LIKE '1990%'
LIMIT 160;