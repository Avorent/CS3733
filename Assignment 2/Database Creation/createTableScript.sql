/*
	user states: This table is used to determine whether a user has been deleted or not
	@Param id: This is the users ID (aka the primary key)
	@Param created_at: timestamp
	@Param updated_at: timestamp
	@Param deleted: Whether or not the user has been deleted (virtual deletion)
*/
CREATE TABLE user_states
(
	id serial PRIMARY KEY,
	deleted boolean NOT NULL DEFAULT(FALSE),
	created_at timestamp with time zone NOT NULL DEFAULT(CURRENT_TIMESTAMP),
	updated_at timestamp with time zone NOT NULL DEFAULT(CURRENT_TIMESTAMP)
);



/*
	user_roles: What the user's role in the system is. Will determine their privileges.
	@Param id: This is the users ID (aka the primary key)
	@Param is_admin: Whether or not the user is an admin (TRUE=admin, FALSE=Instructor)
	@Param created_at: timestamp
	@Param updated_at: timestamp
	--course num and term need to be inherited
*/
CREATE TABLE user_roles
(
	id serial PRIMARY KEY,
	is_admin boolean NOT NULL,
	created_at timestamp with time zone NOT NULL DEFAULT(CURRENT_TIMESTAMP),
	updated_at timestamp with time zone NOT NULL DEFAULT(CURRENT_TIMESTAMP)
);



/*
	Users: This will be the "master" table that holds all of the basic information about users.
			Other tables related to users will probably reference this table. When an admin creates a user,
			the information will go directly into this table.
	@Param id: This is the users ID (aka the primary key)
	@Param user_name: A unique username for a user
	@Param first_name: First name of the user
	@Param last_name: Last name of the user
	@Param email: Email of the user
	@Param phone_num: Phone number of the user
	@Param secondary_email: (Optional) prefered email of the user
	@Param encrypted_password: Password for the user
	@Param salt: Used for the password encryption integrity
	@Param user_role: Whether or not they are an admin: 0 - not an admin, 1 - admin
	@Param user_state_id: This is whether or not a user has been deleted
	@param admin_inbox: This is a link to the admin inbox. Only users that are admins will be able to access this inbox(this will be done through Java).
	@Param created_at: timestamp
	@Param updated_at: timestamp
	Note:
		-Added line starting with "user_role", not sure if correct
*/
CREATE TABLE users
(
	id serial PRIMARY KEY,
	user_name varchar(255) UNIQUE NOT NULL,
	first_name varchar(255) NOT NULL,
	last_name varchar(255) NOT NULL,
	email varchar(255) UNIQUE NOT NULL,
	phone_num bigint,
	secondary_email varchar(255) UNIQUE,
	encrypted_password varchar(255) NOT NULL,
	salt varchar(255) UNIQUE NOT NULL,
	user_role integer NOT NULL REFERENCES user_roles(id),
	user_state_id integer NOT NULL REFERENCES user_states(id),
	created_at timestamp with time zone NOT NULL DEFAULT(CURRENT_TIMESTAMP),
	updated_at timestamp with time zone NOT NULL DEFAULT(CURRENT_TIMESTAMP)
);



/*
users_history: This will keep record of a user's history.
	@Param id: This is the users ID (aka the primary key)
	@Param user_id: The primary key of the user in the "Master" table. This will be taken from the master table.
	@Param user_name: A unique username for a user
	@Param first_name: First name of the user
	@Param last_name: Last name of the user
	@Param email: Email of the user
	@Param encrypted_password: Password for the user
	@Param salt: Used for the password encryption integrity
	@Param user_state_id: This is whether or not a user has been deleted
	@Param created_at: timestamp
	--course num and term need to be inherited
*/
CREATE TABLE users_history
(
	id serial PRIMARY KEY,
	user_id integer NOT NULL REFERENCES users(id) ON DELETE CASCADE, --HAS TO REFERENCE
	user_name varchar(255) NOT NULL,
	first_name varchar(255) NOT NULL,
	last_name varchar(255) NOT NULL,
	email varchar(255) NOT NULL,
	encrypted_password varchar(255) NOT NULL,
	salt varchar(255) NOT NULL,
	user_state_id integer NOT NULL REFERENCES user_states(id),
	created_at timestamp with time zone NOT NULL DEFAULT(CURRENT_TIMESTAMP)
);



/*
	users_roles_links: This is the table that will link a specific user to a specific role.
	@Param id: Primary key
	@Param user_id: The primary key of the user in the "Master" table. This will be taken from the master table.
	@Param role_id: The role that they have. Taken from the user_role table.
	@Param created_at: timestamp
	@Param updated_at: timestamp
	@Param deleted: Whether or not the user has been virtually deleted from the system.
	--course num and term need to be inherited
*/
CREATE TABLE users_roles_links
(
	id serial PRIMARY KEY,
	user_id integer NOT NULL REFERENCES users(id) ON DELETE CASCADE,
	role_id integer NOT NULL REFERENCES user_roles(id) ON DELETE CASCADE,
	created_at timestamp with time zone NOT NULL DEFAULT(CURRENT_TIMESTAMP),
	updated_at timestamp with time zone NOT NULL DEFAULT(CURRENT_TIMESTAMP),
	deleted boolean NOT NULL DEFAULT(FALSE),
	UNIQUE(user_id, role_id, deleted)
);



/*
	instructors: This will be the table that holds all of the information directly related to instructors
	@Param instructor_id: This is the instructor ID, which will uniquely identify every instructor (aka the primary key)
	@Param user_id: This will be "taken/referenced" from the parent table of users
	@Param req_courses: The amount of credits that they need to teach a year
*/
CREATE TABLE instructors
(
	instructor_id serial PRIMARY KEY,
	user_id integer UNIQUE NOT NULL REFERENCES users(id), --Use this as a reference
	req_courses float NOT NULL
);



/*
	course_information: This a "master" table that will hold all of the information about a course. Other tables
			about courses will probably reference this table. When an admin creates a course, the information will go
			directly into this table.
	@Param id: This is the users ID (aka the primary key)
	@Param course_num: Course number
	@Param course_name: Course name
	@Param term: The term the course is taught
	@Param type: The type of course: (MQP/IQP/regular/etc.)
	@Param level: The level of the course (Undergraduate=TRUE, Graduate=FALSE)
	@Param dept: What department the course is taught in (CS, MA, RBE, etc.)
	@Param num_sections: The number of sections that are offered for the course
	@Param req_frequency: This is an encoded tag. With the first letter denoting the years it's offered and the 
			next 5 digits will represent the terms it's offered. Encoded as follows:
			A00000
			1st Letter: Can be an A or a B. A=Every year, B=Every other year
			1st Number: A ONE if its offered this term (A-Term). A ZERO if not.
			2st Number: A ONE if its offered this term (B-Term). A ZERO if not.
			3st Number: A ONE if its offered this term (C-Term). A ZERO if not.
			4st Number: A ONE if its offered this term (D-Term). A ZERO if not.
			5st Number: A ONE if its offered this term (E-Term). A ZERO if not.
*/
CREATE TABLE course_information
(
	id serial PRIMARY KEY,
	course_num varchar(255) NOT NULL,
	course_name varchar(255) UNIQUE NOT NULL,
	type varchar(255) NOT NULL,
	level boolean NOT NULL,
	dept varchar(255) NOT NULL,
	num_sections integer NOT NULL,
	req_frequency integer NOT NULL,
	UNIQUE(dept, course_num)
);



/*
	course_sections: This is the "Child" table of the course_information table. This will hold the
			information specifically related to the course sections.
	@Param id: Primary key
	@Param course_num: The couse number that is "Taken/referenced" from the parent table.
	@Param section_num: The specific section number (Each row will have a unique section number in its given course and term). The number of sections will be taken form the parent table.
	@Param term: The term the course is offered in. (Thi will also be used to create a unique section number: A01, B03, etc.)
	@Param expected_pop: this is the expected population of a class section
	@Param deleted: whether the given section has been taken or not: FALSE = not taken, or available; TRUE = taken, or not available
	@Param created_at: timestamp
	@Param updated_at: timestamp
*/
CREATE TABLE course_sections
(
	id serial PRIMARY KEY,
	course_num varchar(255) NOT NULL,
	dept varchar(255) NOT NULL,
	section_num integer NOT NULL, --automatically generated on the front end (user inputs amount of sections, app generates numbers for each one, ex: 01, 02, 03)
	term varchar(5) NOT NULL,
	expected_pop integer NOT NULL,
	deleted boolean NOT NULL DEFAULT(FALSE),
	created_at timestamp with time zone NOT NULL DEFAULT(CURRENT_TIMESTAMP),
	updated_at timestamp with time zone NOT NULL DEFAULT(CURRENT_TIMESTAMP),
	FOREIGN KEY (course_num, dept) REFERENCES course_information (course_num, dept)
);



/*
	course_schedule: This will hold the information about the course meeting times. Each course section and lecture type will have
			it's own row.
			EXAMPLE: MA 2621, Taught in C-Term. This will represent the lecture meeting times per week.
			course_id=2621C01,
			type=lecture,
			meeting_days= MTRF,
			time_start=0900,
			time_end=1000,
	@Param id: This is the course ID (aka the primary key)
	@Param type: This is the type of class. (Lecture, Lab, Conference, etc.). This will be taken from the parent table (course_information).
	@Param m: Monday (Meets on this day=True, Does NOT meet on this day=False)
	@Param t: Tuesday (Meets on this day=True, Does NOT meet on this day=False)
	@Param w: Wednesday (Meets on this day=True, Does NOT meet on this day=False)
	@Param r: Thursday (Meets on this day=True, Does NOT meet on this day=False)
	@Param f: Friday (Meets on this day=True, Does NOT meet on this day=False)
	@Param time_start: When the specific course, course section and lecture type starts (24-Hour format).
	@Param time_end: When the specific course, course section and lecture type ends (24-Hour format).
	@Param created_at: timestamp
	@Param updated_at: timestamp
*/
CREATE TABLE course_schedule
(
	id serial PRIMARY KEY,
	section_id integer NOT NULL REFERENCES course_sections(id), --HAS TO REFERENCE course_sections in some way
	type varchar(255) NOT NULL,
	meeting_days varchar(255) NOT NULL,
	time_start integer NOT NULL,
	time_end integer NOT NULL,
	created_at timestamp with time zone NOT NULL DEFAULT(CURRENT_TIMESTAMP),
	updated_at timestamp with time zone NOT NULL DEFAULT(CURRENT_TIMESTAMP)
);



/*
	instructor_course_link_registered: This will be the table that links (registers) a specific instructor to a
			specific couse section.
	@Param id: This is the users ID (aka the primary key)
	@Param instructor_id: The id of the instructor that registered for the course section. This will be taken from the instructors table.
	@Param section_id: The id of the given registered section taken from course_sections
	@Param deleted: whether or not the given section has been removed from its instructor's registered courses, FALSE = not deleted
	@Param created_at: timestamp
	@Param updated_at: timestamp
*/
CREATE TABLE instructor_course_link_registered
(
	id serial PRIMARY KEY,
	instructor_id integer NOT NULL REFERENCES instructors(instructor_id), --HAS TO REFERENCE
	section_id integer NOT NULL REFERENCES course_sections(id),
	deleted boolean NOT NULL DEFAULT(FALSE),
	created_at timestamp with time zone NOT NULL DEFAULT(CURRENT_TIMESTAMP),
	updated_at timestamp with time zone NOT NULL DEFAULT(CURRENT_TIMESTAMP)
);



/*
	instructor_course_link_cart: This will be the table that links (registers) a specific instructor to a
			specific couse section.
	@Param id: This is the users ID (aka the primary key)
	@Param instructor_id: The id of the instructor that registered for the course section. This will be taken from the instructors table.
	@Param section_id: The id of the given registered section taken from course_sections
	@Param status: what the given course's status is: 0 = pending, 1 = accepted, 2 = rejected
	@Param created_at: timestamp
	@Param updated_at: timestamp
*/
CREATE TABLE instructor_course_link_cart
(
	id serial PRIMARY KEY,
	instructor_id integer NOT NULL REFERENCES instructors(instructor_id), --HAS TO REFERENCE
	section_id integer NOT NULL REFERENCES course_sections(id),
	status integer NOT NULL DEFAULT(0),
	created_at timestamp with time zone NOT NULL DEFAULT(CURRENT_TIMESTAMP),
	updated_at timestamp with time zone NOT NULL DEFAULT(CURRENT_TIMESTAMP)
);

CREATE UNIQUE INDEX users_user_name ON users(user_name);



/*
	admin_inbox: This is the table that will work as the [shared] inbox for all admins in the system.
	@Param id: Primary key.
	@Param sender: Who sent (made the entry into the table).
	@Param subject_line: The subject line of the message. This will be automatically generated. The user will not be able to modify this.
	@Param content: Contents of the message.
	@Param status: Whether or not the admin has accepted or rejected the request (could also be deleted or unread).
	@Param created_at: timestamp
	@Param updated_at: timestamp
	--course num and term need to be inherited
*/
CREATE TABLE admin_inbox
(
	id serial PRIMARY KEY,
	inbox_user integer NOT NULL REFERENCES users(id),
	sender integer NOT NULL,
	subject_line varchar(255) NOT NULL,
	content varchar(1027) NOT NULL,
	status boolean,
	created_at timestamp with time zone NOT NULL DEFAULT(CURRENT_TIMESTAMP),
	updated_at timestamp with time zone NOT NULL DEFAULT(CURRENT_TIMESTAMP)
);

/*
course_sections_history: This will keep record of a user's history.
	@Param id: This is the course's ID (aka the primary key)
	@Param course_id: The primary key of the course in the "Master" table. This will be taken from the master table.
	@Param course_name: Course name
	@Param course_num: The course number that is "Taken/referenced" from the parent table.
	@Param section_num: The specific section number (Each row will have a unique section number in its given course and term). The number of sections will be taken form the parent table.
	@Param term: The term the course is taught
	@Param expected_pop: Expected population of class (How many seats will be offered)
	@Param created_at: timestamp
*/
CREATE TABLE course_sections_history
(
	id serial PRIMARY KEY,
	course_id integer NOT NULL REFERENCES course_sections(id) ON DELETE CASCADE, --HAS TO REFERENCE
	course_name varchar(255) NOT NULL,
	course_num varchar(255) NOT NULL,
	section_num integer NOT NULL,
	term varchar(5) NOT NULL,
	expected_pop integer NOT NULL,
	modified_at timestamp with time zone NOT NULL DEFAULT(CURRENT_TIMESTAMP)
);



CREATE FUNCTION insert_users_history() RETURNS TRIGGER AS
$BODY$
BEGIN
INSERT INTO users_history(user_id, user_name, first_name, last_name, email, phone_num,secondary_email, encrypted_password, salt, user_role, user_state_id)
VALUES(OLD.id, OLD.user_name, OLD.first_name, OLD.last_name, OLD.email, OLD.phone_num,OLD.secondary_email, OLD.encrypted_password, OLD.salt, OLD.user_role, OLD.user_state_id);
RETURN NEW;
END;
$BODY$
LANGUAGE plpgsql VOLATILE;

CREATE TRIGGER update_users
BEFORE UPDATE ON users
FOR EACH ROW
EXECUTE PROCEDURE insert_users_history();

CREATE FUNCTION insert_course_history() RETURNS TRIGGER AS
$BODY$
BEGIN
INSERT INTO course_history(course_id, course_name, course_num, section_num, term, expected_pop)
VALUES(OLD.course_id, OLD.course_name, OLD.course_num, OLD.section_num, OLD.term, OLD.expected_pop);
RETURN NEW;
END;
$BODY$
LANGUAGE plpgsql VOLATILE;

CREATE TRIGGER update_courses
BEFORE UPDATE ON course_sections
FOR EACH ROW
EXECUTE PROCEDURE insert_course_history();

----------------------------------------------------------------------------------------------------------------------

/*
DROP TRIGGER update_users ON users;
DROP FUNCTION insert_users_history();

DROP TABLE users_roles_links;
DROP TABLE user_roles;
DROP TABLE users_history;
DROP TABLE users;
DROP TABLE user_states;
*/