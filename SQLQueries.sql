-- Find the contacts of an instructor of a certain course (Course -> Course info -> Instructor -> Instructor info) 
SELECT email, phone_num
FROM user
-- instructor only
WHERE role_id = 2
  {
  SELECT user 
  };


-- Check for schedule conflicts (Course -> Course Info -> Course Section/Days/Time (compare ‘brute force’-like))
