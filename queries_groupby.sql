-- 1. Count how many students enrolled for each year
SELECT COUNT(*) as `students_of_year`, YEAR(`enrolment_date`) as `year_of_enrolment`
FROM `students`
GROUP BY YEAR(`enrolment_date`);

-- 2. Count how many teachers have their office at the same address
SELECT COUNT(*) as `offices_at_address`, `office_address`
FROM `teachers`
GROUP BY `office_address`;

-- 3. Average of votes for each exam
SELECT `exam_id`, AVG(`vote`) as `votes_average`
FROM `exam_student`
-- WHERE `vote` >= 18 AND `vote` <= 30 in case we wanted to count only the students who passed the exam
GROUP BY `exam_id`;