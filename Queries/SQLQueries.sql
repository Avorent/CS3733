---
--- 1) (user homepage) Selects all information about the registered courses for the instructor's homepage.
SELECT
sc.meeting_days,
ci.course_num, ci.course_name

FROM course_sections se
LEFT JOIN course_schedule sc
ON se.id = sc.section_id
LEFT JOIN course_information ci
ON se.course_num = ci.course_num
WHERE se.id
IN(
  SELECT section_id
  FROM instructor_course_link_registered
  WHERE instructor_id
  IN(
    SELECT id
    FROM instructors
    WHERE user_id = 15
  )
)
ORDER BY se.id ASC;

--SIMILAR
-- Selects all information about the pending courses for the instructor's homepage.

SELECT
sc.meeting_days,
ci.course_num, ci.course_name

FROM course_sections se
LEFT JOIN course_schedule sc
ON se.id = sc.section_id
LEFT JOIN course_information ci
ON se.course_num = ci.course_num
WHERE se.id
IN(
  SELECT section_id
  FROM instructor_course_link_cart
  WHERE instructor_id
  IN(
    SELECT id
    FROM instructors
    WHERE user_id = 15
  )
)
ORDER BY se.id ASC;

-- 2 (View classes)

SELECT
se.expected_pop,
sc.meeting_days,
ci.course_num, ci.course_name,
cart.status

FROM course_sections se
LEFT JOIN course_schedule sc
ON se.id = sc.section_id
LEFT JOIN course_information ci
ON se.course_num = ci.course_num
LEFT JOIN instructor_course_link_cart cart
ON se.id = cart.section_id
WHERE se.id
IN(
  SELECT section_id
  FROM instructor_course_link_registered
  WHERE instructor_id
  IN(
    SELECT id
    FROM instructors
    WHERE user_id = 15
  )
)
ORDER BY se.id ASC;

-- 3 (Search classes)

SELECT
se.expected_pop,
sc.meeting_days,
ci.course_num, ci.course_name,
cart.status

FROM course_sections se
LEFT JOIN course_schedule sc
ON se.id = sc.section_id
LEFT JOIN course_information ci
ON se.course_num = ci.course_num
LEFT JOIN instructor_course_link_cart cart
ON se.id = cart.section_id
WHERE (term = ? OR ? = 'false') -- need more than 1 for semester
AND (ci.dept = ? OR ? = 'false')
ORDER BY se.id ASC;

-- 4 (Search (Detailed))

SELECT
se.expected_pop, se.term,
sc.meeting_days,
ci.course_num, ci.course_name,
cart.status

FROM course_sections se
LEFT JOIN course_schedule sc
ON se.id = sc.section_id
LEFT JOIN course_information ci
ON se.course_num = ci.course_num
LEFT JOIN instructor_course_link_cart cart
ON se.id = cart.section_id
WHERE (se.term = ? OR ? = 'false') -- need more than 1 for semester
AND (ci.dept = ? OR ? = 'false')
AND (se.expected_pop > ? OR se.expected_pop < ? 'false')
AND (ci.type = ? OR ? = 'false')
AND (sc.type = ? OR ? = 'false')
AND (ci.level = ? OR ? = 'false')
AND (sc.meeting_days = ? OR ? = 'false')


ORDER BY se.id ASC;
