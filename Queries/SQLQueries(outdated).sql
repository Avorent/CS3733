/*
-- Find the contacts of an instructor of a certain course (Course -> Course info -> Instructor -> Instructor info) 
SELECT email, phone_num
FROM user
-- instructor only
WHERE role_id = 2
  {
  SELECT user 
  };


-- Check for schedule conflicts (Course -> Course Info -> Course Section/Days/Time (compare ‘brute force’-like))

*/

---NEW CODE!!!!!!!!!!!!!!!!!! -----------


-- Selects all information about the registered courses for the instructor's homepage.

SELECT *
FROM course_sections se
LEFT JOIN courses_information ci
ON se.id = ci.course_num
WHERE id
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
ORDER BY course_sections.id ASC;

--(CART(?)) Collects the course name, registration status, course number, days, expected population of a course from given instructor info
SELECT
se.expected_pop,
sc.m, sc.t, sc.w, sc.r , sc.f,
ci.course_num, ci.course_name,
cart.status

FROM course_sections se
LEFT JOIN course_schedule sc
ON se.id = sc.course_id
LEFT JOIN course_information ci
ON se.course_num = ci.course_num
LEFT JOIN instructor_course_link_cart cart
ON se.id = cart.section_id
WHERE id
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
ORDER BY se.id ASC;


/* Josue's version for above code
SELECT
 course_information.course_name,
 instructor_course_link_cart.status,
 course_information.course_num,
 course_schedule.m,
 course_schedule.t,
 course_schedule.w,
 course_schedule.r, 
 course_schedule.f,
 course_sections.expected_pop
FROM course_information
  JOIN course_sections
    ON course_sections.id =  course_information
  JOIN instructor_course_link_cart
    ON instructor_course_link_cart.id = course_information
WHERE instructor_course_link_cart.id = x
*/

--Search for classes (UI) - Semester and Subject
-- DO NOT SHOW DELETED courses
SELECT
se.expected_pop,
sc.m, sc.t, sc.w, sc.r , sc.f,
ci.course_num, ci.course_name,
cart.status

FROM course_sections se
LEFT JOIN course_schedule sc
ON se.id = sc.course_id
LEFT JOIN course_information ci
ON se.course_num = ci.course_num
LEFT JOIN instructor_course_link_cart cart
ON se.id = cart.section_id
WHERE
(? = 'false' OR term = ? AND ? = 'false' OR term = ?) AND
(? = 'false' OR )

ORDER BY id ASC;


--Search for classes (UI) - Project 
