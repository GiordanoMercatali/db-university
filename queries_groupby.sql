-- 1. Count how many students enrolled for each year
SELECT COUNT(*) as `students_of_year`, YEAR(`enrolment_date`) as `year_of_enrolment`
FROM `students`
GROUP BY YEAR(`enrolment_date`);