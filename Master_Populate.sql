--Populate_User_Setup
INSERT INTO user_roles(is_admin)
VALUES(TRUE);
INSERT INTO user_roles(is_admin)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);
INSERT INTO user_states(deleted)
VALUES(FALSE);

-- Populate_Users
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id)
VALUES('cew','Craig', 'Wills', 229256,2666271,'cew@wpi.edu',1,1); --5088315357
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id,phone_num)
VALUES('emmanuel','Emmanuel','Agu',61829,277727,'emmanuel@wpi.edu',2,2,5088315568);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id,phone_num)
VALUES('josephbeck','Joseph','Beck',327373793,26126621,'josephbeck@wpi.edu',2,3,5088316156);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id,phone_num)
VALUES('dcb','David','Brown',2178226,6817236,'dcb@wpi.edu',2,4,5088315618);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id,phone_num)
VALUES('ciaraldi','Michael','Ciaraldi',347253,232738,'ciaraldi@wpi.edu',2,5,5088315117);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id,phone_num)
VALUES('claypool','Mark','Claypool',1272691,216272,'claypool@wpi.edu',2,6,5088315409);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id)
VALUES('jmcuneo','Joshua','Cuneo',129712,129273,'jmcuneo@wpi.edu',2,7);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id,phone_num)
VALUES('dd','Daniel','Dougherty',277676,999999,'dd@wpi.edu',2,8,5088315621);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id,phone_num)
VALUES('meltabakh','Mohamed','Eltabakh',2731991,1886611,'meltabakh@wpi.edu',2,9,5088316421);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id)
VALUES('lfihera','Loris','Fichera',1289731229,127368263381,'lfichera@wpi.edu',2,10);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id,phone_num)
VALUES('kfisler','Kathryn','Fisler',1278628761,1279687261,'kfisler@wpi.edu',2,11,5088315118);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id,phone_num)
VALUES('michaelg','Michael','Gennert',7182682,268726381,'michaelg@wpi.edu',2,12,5088315476);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id)
VALUES('tian','Tian','Guo',1293182,127388236,'tian@wpi.edu',2,13);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id,phone_num)
VALUES('ghamel','Glynis','Hamel',72726381,1291721,'ghamel@wpi.edu',2,14,5088315252);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id,phone_num)
VALUES('ltharrison','Lane','Harrison',1278621,1277212,'ltharrison@wpi.edu',2,15,9802008363);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id,phone_num)
VALUES('nth','Neil','Heffernan',2179812,12166178,'nth@wpi.edu',2,16,5088315569);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id,phone_num)
VALUES('heineman','George','Heineman',28739186273918,12631872631,'heineman@wpi.edu',2,17,5088315502);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id)
VALUES('hofri','Micha','Hofri',28731987239182,1982312763871,'hofri@wpi.edu',2,18); --5088315357
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id)
VALUES('rek','Robert','Kinicki',1278871267812,381627361872,'rek@wpi.edu',2,19); --5088315357
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id)
VALUES('xkong','Xiangnan','Kong',12762871,277263871,'xkong@wpi.edu',2,20);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id)
VALUES('dkorkin','Dmitry','Korkin',778736,12776222,'dkorkin@wpi.edu',2,21);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id,phone_num)
VALUES('lauer','Hugh','Lauer',827981618,1687381,'lauer@wpi.edu',2,22,5088315493);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id,phone_num)
VALUES('kmlee','Kyumin','Lee',1276176871,1871681,'kmlee@wpi.edu',2,23,5088316826);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id)
VALUES('yli15','yanhua','Li',117263876,129312681,'yli15Wpi.edu',2,24);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id)
VALUES('simellostark','Suzanne','Mello-Stark',276817123,127639817,'simellostark@wpi.edu',2,25);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id)
VALUES('rneamtu','Rodica','Neamtu',2381652,12763187,'rneamtu@wpi.edu',2,26);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id)
VALUES('cpinciroli','Carlo','Pinciroli',28176287,127638177,'cpinciroli@wpi.edu',2,27);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id)
VALUES('gpollice','Gary','Pollice',72163817,27631826,'gpollice@wpi.edu',2,28);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id,phone_num)
VALUES('ruiz','Carolina','Ruiz',761826187,276318762,'ruiz@wpi.edu',2,29,5088315640);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id,phone_num)
VALUES('rundenst','Elke','Rundensteiner',276817267,27658122,'rundenst@wpi.edu',2,30,5088315815);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id,phone_num)
VALUES('gsarkozy','Gabor','Sarkozy',276178176,127618712,'gsarkozy@wpi.edu',2,31,5088315408);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id)
VALUES('dselent','Douglas','Selent',276817628,12768126,'dselent@wpi.edu',2,32);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id,phone_num)
VALUES('cshue','Craig','Shue',276182681,1268716,'cshue@wpi.edu',2,33,5088314933);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id)
VALUES('sidner','Candace','Sidner',2768181,192763817,'sidner@wpi.edu',2,34);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id)
VALUES('gmsmith','Gillian','Smith',276187268,12768172,'gmsmith@wpi.edu',2,35);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id,phone_num)
VALUES('kven','Krishna','Venkatasubramanian',28176817,27168272,'kven@wpi.edu',2,36,5088316571);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id)
VALUES('rjwalls','Robert','Walls',27861861,12761871,'rjwalls@wpi.edu',2,37);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id)
VALUES('jrwhitehill','Jacob','Whitehill',2178817,31872917,'jrwhitehill@wpi.edu',2,38);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id,phone_num)
VALUES('wwong2','Wilson','Wong',22761761,1293618,'wwong2@wpi.edu',2,39,5088315705);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id)
VALUES('jxiao2','Jing','Xiao',287918729,1231792,'jxiao2@wpi.edu',2,40);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id,phone_num)
VALUES('iarroyo','Ivon','Arroyo',2768783,3987933,'iarroyo@wpi.edu',2,41,5088316715);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id)
VALUES('breecher','Jerry','Breecher',273681627,137618726,'breecher@wpi.edu',2,42); -- 5088315357
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id)
VALUES('tgannon','Thomas','Gannon',26816628,12976812,'tgannon@wpi.edu',2,43); -- 5088315357
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id,phone_num)
VALUES('kal','Karen','Lemone',2768168,276182,'kal@wpi.edu',2,44,5088315529);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id,phone_num)
VALUES('kap','Keith','Pray',21761826,2761862,'kap@wpi.edu',2,45,5088310926);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id)
VALUES('sms','Stanley','Selkow',26871682,29761823,'sms@wpi.edu',2,46); -- 5088315357
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id)
VALUES('jsingh','Jitendra','Singh',2998793,39879736,'jsingh@wpi.edu',2,47); -- 5088315357

--Extra
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id)
VALUES('akabir','Kabir','Ahmedul',2966793,9979736,'akabir@wpi.edu',2,48);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id)
VALUES('benelson','Blake','Nelson',8172637,9747772,'benelson@wpi.edu',2,49);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id)
VALUES('cngan','Chun','Ngan',8555637,978768,'cngan@wpi.edu',2,50);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id,phone_num)
VALUES('rich','Charles','Rich',1168,1182,'rich@wpi.edu',2,51,5088315945);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id)
VALUES('hcloi','Hao','Loi',85677,1168,'hcloi@wpi.edu',2,52);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id,phone_num)
VALUES('hservat','Herman','Servatius',89999,18949,'hservat@wpi.edu',2,53,5088315361);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id)
VALUES('jatoro','Jorge','Toro',1767889,876893,'jatoro@wpi.edu',2,55);
INSERT INTO users(user_name,first_name,last_name,encrypted_password,salt,email,user_role,user_state_id,phone_num)
VALUES('slandau','Susan','Landau',7776688,3344445,'slandau@wpi.edu',2,57,4132592018);

--Populate_Instructors
INSERT INTO instructors(user_id,req_courses)
VALUES(1,3);
INSERT INTO instructors(user_id,req_courses)
VALUES(2,4);
INSERT INTO instructors(user_id,req_courses)
VALUES(3,3);
INSERT INTO instructors(user_id,req_courses)
VALUES(4,3);
INSERT INTO instructors(user_id,req_courses)
VALUES(5,1);
INSERT INTO instructors(user_id,req_courses)
VALUES(6,2);
INSERT INTO instructors(user_id,req_courses)
VALUES(7,3);
INSERT INTO instructors(user_id,req_courses)
VALUES(8,4);
INSERT INTO instructors(user_id,req_courses)
VALUES(9,3);
INSERT INTO instructors(user_id,req_courses)
VALUES(10,3);
INSERT INTO instructors(user_id,req_courses)
VALUES(11,3);
INSERT INTO instructors(user_id,req_courses)
VALUES(12,2);
INSERT INTO instructors(user_id,req_courses)
VALUES(13,0);
INSERT INTO instructors(user_id,req_courses)
VALUES(14,2);
INSERT INTO instructors(user_id,req_courses)
VALUES(15,3);
INSERT INTO instructors(user_id,req_courses)
VALUES(16,4);
INSERT INTO instructors(user_id,req_courses)
VALUES(17,2);
INSERT INTO instructors(user_id,req_courses)
VALUES(18,3);
INSERT INTO instructors(user_id,req_courses)
VALUES(19,3);
INSERT INTO instructors(user_id,req_courses)
VALUES(20,1);
INSERT INTO instructors(user_id,req_courses)
VALUES(21,3);
INSERT INTO instructors(user_id,req_courses)
VALUES(22,3);
INSERT INTO instructors(user_id,req_courses)
VALUES(23,0);
INSERT INTO instructors(user_id,req_courses)
VALUES(24,4);
INSERT INTO instructors(user_id,req_courses)
VALUES(25,3);
INSERT INTO instructors(user_id,req_courses)
VALUES(26,3);
INSERT INTO instructors(user_id,req_courses)
VALUES(27,4);
INSERT INTO instructors(user_id,req_courses)
VALUES(28,3);
INSERT INTO instructors(user_id,req_courses)
VALUES(29,0);
INSERT INTO instructors(user_id,req_courses)
VALUES(30,1);
INSERT INTO instructors(user_id,req_courses)
VALUES(31,2);
INSERT INTO instructors(user_id,req_courses)
VALUES(32,3);
INSERT INTO instructors(user_id,req_courses)
VALUES(33,3);
INSERT INTO instructors(user_id,req_courses)
VALUES(34,1);
INSERT INTO instructors(user_id,req_courses)
VALUES(35,2);
INSERT INTO instructors(user_id,req_courses)
VALUES(36,3);
INSERT INTO instructors(user_id,req_courses)
VALUES(37,3);
INSERT INTO instructors(user_id,req_courses)
VALUES(38,3);
INSERT INTO instructors(user_id,req_courses)
VALUES(39,4);
INSERT INTO instructors(user_id,req_courses)
VALUES(40,2);
INSERT INTO instructors(user_id,req_courses)
VALUES(41,3);
INSERT INTO instructors(user_id,req_courses)
VALUES(42,1);
INSERT INTO instructors(user_id,req_courses)
VALUES(43,3);
INSERT INTO instructors(user_id,req_courses)
VALUES(44,0);
INSERT INTO instructors(user_id,req_courses)
VALUES(45,1);
INSERT INTO instructors(user_id,req_courses)
VALUES(46,3);
INSERT INTO instructors(user_id,req_courses)
VALUES(47,3);
INSERT INTO instructors(user_id,req_courses)
VALUES(48,3);
INSERT INTO instructors(user_id,req_courses)
VALUES(49,4);
INSERT INTO instructors(user_id,req_courses)
VALUES(50,2);
INSERT INTO instructors(user_id,req_courses)
VALUES(51,3);
INSERT INTO instructors(user_id,req_courses)
VALUES(52,1);
INSERT INTO instructors(user_id,req_courses)
VALUES(53,3);
INSERT INTO instructors(user_id,req_courses)
VALUES(54,0);
INSERT INTO instructors(user_id,req_courses)
VALUES(55,1);

--Populate_Users_Roles_Links
INSERT INTO users_roles_links(user_id,role_id)
VALUES(1,1);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(2,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(3,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(4,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(5,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(6,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(7,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(8,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(9,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(10,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(11,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(12,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(13,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(14,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(15,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(16,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(17,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(18,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(19,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(20,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(21,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(22,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(23,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(24,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(25,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(26,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(27,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(28,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(29,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(30,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(31,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(32,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(33,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(34,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(35,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(36,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(37,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(38,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(39,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(40,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(41,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(42,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(43,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(44,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(45,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(46,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(47,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(48,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(49,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(50,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(51,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(52,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(53,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(54,2);
INSERT INTO users_roles_links(user_id,role_id)
VALUES(55,2);

-- Populate_Course_Information
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '1004', 'Regular', TRUE, 2, 'Intro. to Prog. for Non-Majors');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '1101', 'Regular', TRUE, 4, 'Intro. to Program Design');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '1102', 'Regular', TRUE, 1, 'Accel. Intro. to Program Design');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '2022', 'Regular', TRUE, 2, 'Discrete Math.');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '2303', 'Regular', TRUE, 3, 'Systems Programming Concepts');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '3013', 'Regular', TRUE, 3, 'Operating Systems');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '3043', 'Regular', TRUE, 9, 'Social Implic. of Info. Processing');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '3133', 'Regular', TRUE, 2, 'Foundations of Comp. Sci.');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '3431', 'Regular', TRUE, 2, 'Database Systems I');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '3516', 'Regular', TRUE, 2, 'Computer Networks');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '4233', 'Regular', TRUE, 2, 'Object-Oriented Analysis and Design');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '4241', 'Regular', TRUE, 1, 'Webware: Comp Tech for Network Info Systems');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '4341', 'Regular', TRUE, 3, 'Intro to Artificial Intelligence');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '2011', 'Regular', TRUE, 2, 'Intro to Machine Org. and Assembly Lang.');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '2102', 'Regular', TRUE, 4, 'Object Oriented Design Concepts');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '210x', 'Regular', TRUE, 1, 'Accelerated Object Oriented Design Concepts');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '2223', 'Regular', TRUE, 2, 'Algorithms');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '2301', 'Regular', TRUE, 2, 'Systems Programming for Non-Majors');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '3041', 'Regular', TRUE, 2, 'Human-Computer Interaction');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '3733', 'Regular', TRUE, 4, 'Software Engineering');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('MA', '3457', 'Regular', TRUE, 1, 'Numerical Methods for Calc. and Diff. Equations');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('IMGD', '4100', 'Regular', TRUE, 1, 'A.I. for Interactive Media and Games');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '4123', 'Regular', TRUE, 1, 'Theory of Computation');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '4445/4803', 'Regular', TRUE, 1, 'Data Mining');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '4518', 'Regular', TRUE, 2, 'Mobile and Ubiquitous Computing');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('MA', '2201', 'Regular', TRUE, 1, 'Discrete Mathematics');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('MA', '3257', 'Regular', TRUE, 1, 'Numerical Methods for Linear and Nonlinear Systems');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '4536', 'Regular', TRUE, 1, 'Programming Languages');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '4731', 'Regular', TRUE, 1, 'Computer Graphics');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '4802', 'Regular', TRUE, 1, 'Biovisualization');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '2119', 'Regular', TRUE, 1, 'Application Building with Object-Oriented Concepts');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '453X', 'Regular', TRUE, 1, 'Machine Learning');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '4120', 'Regular', TRUE, 1, 'Analysis of Algorithms');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '4401', 'Regular', TRUE, 1, 'Software Security Engineering');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '4432', 'Regular', TRUE, 1, 'Database Systems II');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '4513', 'Regular', TRUE, 1, 'Distributed Computing Systems');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '5007', 'Regular', FALSE, 1, 'Intro to Applications of Computer Science with Data Structures and Algorithms');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '502', 'Regular', FALSE, 1, 'Operating Systems (Grad)');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '5084', 'Regular', FALSE, 1, 'Intro. to Algorithms: Design and Analysis');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '513', 'Regular', FALSE, 1, 'Computer Networks (Grad)');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('MA', '510', 'Regular', FALSE, 1, 'Numerical Methods');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '528', 'Regular', FALSE, 1, 'Mobile and Ubiquitous Computing (Grad)');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '534', 'Regular', FALSE, 2, 'Artificial Intelligence');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '542', 'Regular', FALSE, 2, 'Database Management Systems');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '548/583', 'Regular', FALSE, 1, 'Data Mining (Grad)');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '558', 'Regular', FALSE, 1, 'Computer Network Security');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '578', 'Regular', FALSE, 1, 'Cryptography and Data Security');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '584', 'Regular', FALSE, 1, 'Algorithms, Design and Analysis');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '585', 'Regular', FALSE, 2, 'Big Data Management');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '586', 'Regular', FALSE, 2, 'Big Data Analytics');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '5003', 'Regular', FALSE, 1, 'Foundations of Comp. Sci.: an Introduction');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '503', 'Regular', FALSE, 1, 'Foundations of Computer Science');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '509', 'Regular', FALSE, 2, 'Design of  Software Systems');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('RBE595', '525-R', 'Regular', FALSE, 1, 'Topics in Computer Science (R)');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '525-T', 'Regular', FALSE, 1, 'Topics in Computer Science (T)');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '525-W', 'Regular', FALSE, 1, 'Topics in Computer Science (W)');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '539', 'Regular', FALSE, 1, 'Machine Learning (Grad)');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '543', 'Regular', FALSE, 1, 'Computer Graphics (Grad)');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '565', 'Regular', FALSE, 1, 'User Modeling' );
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '573/582', 'Regular', FALSE, 1, 'Data Visualization');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '4033', 'Regular', TRUE, 1, 'Numerical Methods for Calculus and Differential Equations');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '4032', 'Regular', TRUE, 1, 'Numerical Methods for Linear and Nonlinear Systems (CS)');
INSERT INTO course_information (dept, course_num, type, level, num_sections, course_name) VALUES ('CS', '522', 'Regular', TRUE, 1, 'Numerical Methods (Grad)');

--Populate_Course_Sections
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(1004,1,'A',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(1004,2,'C',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(1101,1,'A',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(1101,2,'A',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(1101,3,'A',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(1101,4,'C',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(1102,1,'A',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(2022,1,'A',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(2022,2,'C',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(2022,3,'D',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(2303,1,'A',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(2303,2,'C',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(2303,3,'C',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(2011,1,'B',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(2011,2,'D',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(2102,1,'B',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(2102,2,'B',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(2102,3,'D',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES('210x',1,'B',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(2223,1,'B',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(2223,2,'D',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(2223,3,'D',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(2301,1,'B',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(2301,2,'D',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(2119,1,'D',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(3013,1,'A',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(3013,2,'C',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(3013,3,'C',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(3043,1,'A',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(3043,2,'A',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(3043,3,'A',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(3043,4,'C',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(3043,5,'C',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(3043,6,'D',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(3043,7,'D',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(3043,8,'D',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(3133,1,'A',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(3133,2,'C',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(3431,1,'A',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(3431,2,'C',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(3516,1,'A',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(3516,2,'B',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(3733,1,'B',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(3733,2,'C',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(3733,3,'D',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(3733,4,'D',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(3041,1,'B',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(3043,1,'B',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(4233,1,'A',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(4241,1,'A',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(4341,1,'A',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(4341,2,'A',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(4341,3,'C',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(4033,1,'B',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(4100,1,'B',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(4123,1,'B',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES('4445/4803',1,'B',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(4518,1,'B',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(4518,2,'C',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(4032,1,'C',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(4536,1,'C',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(4731,1,'C',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(4802,1,'C',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES('453X',1,'D',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(4120,1,'D',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(4233,1,'D',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(4401,1,'D',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(4432,1,'D',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(4513,1,'D',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(5007,1,'F',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(502,1,'F',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(5084,1,'F',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(509,1,'F',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(513,1,'F',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(522,1,'F',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(528,1,'F',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(534,1,'F',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(542,1,'F',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES('548/583',1,'F',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(558,1,'F',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(578,1,'F',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(584,1,'F',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(585,1,'F',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(586,1,'F',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(5003,1,'S',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(503,1,'S',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(509,2,'S',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(534,2,'S',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(539,1,'S',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(542,2,'S',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(543,1,'S',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(565,1,'S',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES('573/582',1,'S',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(585,2,'S',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(586,2,'S',30,FALSE);
INSERT INTO course_sections(course_num,section_num,term,expected_pop,deleted)
VALUES(3041,1,'D',30,FALSE);