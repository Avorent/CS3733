-- Find the contacts of an instructor of a certain course (Course -> Course info -> Instructor -> Instructor info)
SELECT email, phone_num
FROM user
-- instructor only
WHERE role_id = 2
  {
  SELECT user
  };

  -- Selects all information about the registered courses for the instructor's homepage.
SELECT *
FROM course_sections se
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
    WHERE user_id = ?
  )
)
ORDER BY se.id ASC;

--SIMILAR
-- Selects all information about the pending courses for the instructor's homepage.
SELECT *
FROM course_sections se
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
    WHERE user_id = ?
  )
)
ORDER BY se.id ASC;
