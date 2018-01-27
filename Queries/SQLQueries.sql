--- Advanced Queries
--- Last updated: Jan. 26, 2018; Time: 7pm
--- Group 6


-- 1) User Homepage
-- Registered Query: Displays the courses names, course numbers
-- and meeting days where the instructor is registered in.
SELECT
ci.course_name,
ci.course_num,
sc.meeting_days

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
    WHERE user_id = ?
  )
)
AND (cart.status = 1)
ORDER BY se.id ASC;

-- SIMILAR
-- Cart Query: Displays the courses names, course numbers
-- and meeting days where the instructor has a pending status.
SELECT
ci.course_name,
ci.course_num,
sc.meeting_days

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
  FROM instructor_course_link_cart
  WHERE instructor_id
  IN(
    SELECT id
    FROM instructors
    WHERE user_id = ?
  )
)
AND (cart.status = 0)
ORDER BY se.id ASC;


-- 2) View Classes
-- Displays detailed class information to the user for the
-- classes they have been linked for (registered apporved). 
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
    WHERE user_id = ?
  )
)
ORDER BY se.id ASC;


-- 3) Search Classes
-- A fast search for classes by: 
-- excpected popultaion, meeting days, course number, course name
-- and course status. 
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


-- 4) Advanced Search (Detailed)
-- A advanced search for the user to find classes by:
-- expected population, term, meeting days, course number,
-- course name and course status. All these fields are optional.
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


-- 5) Registration Cart
-- Displays the name of the courses in the cart that have a staus of 
-- 'registered'.
SELECT
ci.course_name

FROM course_information ci
WHERE ci.course_num = (
  SELECT cs.course_num
  FROM course_sections cs
  WHERE cs.section_num = (
    SELECT ic.section_id
    FROM instructor_course_link_cart ic
    WHERE ic.instructor_id = ?
  )
)
ORDER BY ci.course_name ASC;


-- 6) Course Schedule information
-- Shows the courses information for schedule viewing includes:
-- course name, department, section number, meeting days and time
SELECT
ci.course_name,
ci.dept,
cs.section_num,
ch.meeting_days,
ch.time_start,
ch.time_end

FROM course_information ci
LEFT OUTER JOIN course_sections cs
ON ci.course_num = cs.course_num
LEFT OUTER JOIN course_schedule ch
ON cs.section_num = ch.section_id
WHERE cs.section_num IN
(
  SELECT section_id
  FROM instructor_course_link_registered
  WHERE instructor_id = ?
)
AND
( 
  ci.course_num = cs.course_num
)


-- 7) Account Information 
-- Shows the user's username, first and last name, email and/or secondary email,
-- phone number (optional), and required minimum courses (if they have filled their 
-- requirement, it will show up as 0)

SELECT
users.user_name,
users.first_name,
users.last_name,
users.email,
users.phone_num,
users.secondary_email,
ins.req_courses,
(ins.req_courses - registered_req_courses) AS remaining

FROM instructors ins
LEFT OUTER JOIN users
ON ins.user_id = users.id
LEFT OUTER JOIN
(SELECT COUNT(instructor_id) AS registered_req_courses
 FROM instructor_course_link_registered) AS registered_req_courses
ON ins.user_id = users.id
WHERE instructor_id = ?
