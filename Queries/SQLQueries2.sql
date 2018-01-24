-- Find the contacts of an instructor of a certain course (Course -> Course info -> Instructor -> Instructor info) 
SELECT email, phone_num
FROM user
-- instructor only
WHERE role_id = 2
  {
  SELECT user 
  };


-- Check for schedule conflicts (Course -> Course Info -> Course Section/Days/Time (compare ‘brute force’-like))

---NEW CODE -----------


-- Selects all information about the registered courses forthe instructor's homepage.

SELECT *
FROM course_sections
LEFT OUTER JOIN courses
ON course_sections.course_id = courses.id
WHERE course_sections.id
IN(
  SELECT section_num
  FROM link_course
  WHERE instructor_id
  IN (
    SELECT id
    FROM instructor
    WHERE user_id = X
  )
)
ORDER BY course_sections.id ASC;

-- Collects the course name, registration status, course number, days, expected population of a course from given instructor info
SELECT course_name, /*reg stat*/, course_num, 
