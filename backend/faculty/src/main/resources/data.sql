-- USER --
insert into users(id, name, surname, parental, role, about, course, faculty, avatar_id)
values (1, 'Mandy', 'Dolton', 'Claire', 'STUDENT', 'about todo', 1, 'INFORMATICS', 1);

insert into users(id, name, surname, parental, role, about, course, faculty, avatar_id)
values (2, 'Paulina', 'Valencia', 'Timur', 'STUDENT', 'about todo', 1, 'INFORMATICS', 1);

insert into users(id, name, surname, parental, role, about, course, faculty, avatar_id)
values (3, 'Phebe', 'Bowes', 'Hania', 'STUDENT', 'about todo', 1, 'INFORMATICS', 2);

insert into users(id, name, surname, parental, role, about, avatar_id)
values (4, 'Bradley', 'Devine', 'Zayan', 'TEACHER', 'about todo', 1);

insert into users(id, name, surname, parental, role, about, avatar_id)
values (5, 'Kian', 'Mullen', 'Gunn', 'TEACHER', 'about todo', 1);

insert into users(id, name, surname, parental, role, about, avatar_id)
values (6, 'Teagan', 'Nicholson', 'Benton', 'TEACHER', 'about todo', 1);

insert into users(id, name, surname, parental, role, about, avatar_id)
values (7, 'Richard', 'Gill', 'Fletcher', 'TEACHER', 'about todo', 1);

insert into users(id, name, surname, parental, role, about, avatar_id)
values (8, 'Bentley', 'Avila', 'Hull', 'ADMINISTRATOR', 'about todo', 1);

-- SUBJECT --
insert into subject(id, name, faculty, speciality, course, code, trim)
values (1, 'Computer Science', 'INFORMATICS', 'Computer Science', 1, 111111, 1);

insert into subject(id, name, faculty, speciality, course, code, trim)
values (2, 'Introduction to Computer Networks', 'INFORMATICS', 'Computer Science', 2, 111112, 1);

insert into subject(id, name, faculty, speciality, course, code, trim)
values (3, 'Databases', 'INFORMATICS', 'Software Engineering', 3, 111113, 1);

insert into subject(id, name, faculty, speciality, course, code, trim)
values (4, 'Algebra', 'INFORMATICS', 'Mathematics', 1, 111114, 1);

insert into subject(id, name, faculty, speciality, course, code, trim)
values (5, 'Computer Structure', 'INFORMATICS', 'Software Engineering', 2, 111115, 1);

insert into subject(id, name, faculty, speciality, course, code, trim)
values (6, 'Computer Architecture', 'INFORMATICS', 'Computer Science', 2, 111116, 2);

-- EVENT --
insert into event(id, organizer, subject_id, datetime, groups, name, auditory, request)
values (1, 4, 1, '2021-09-01 08:30:00.591', 'gr1', 'Algebra lecture', '3-311', false);

insert into event(id, organizer, subject_id, datetime, groups, name, auditory, request)
values (2, 4, 1, '2021-09-01 10:00:00.591', 'gr2', 'Algebra practice', '3-312', false);

insert into event(id, organizer, subject_id, datetime, groups, name, auditory, request)
values (3, 5, 2, '2021-09-01 10:00:00.591', 'gr1', 'Computer Structure lecture', '1-311', false);

insert into event(id, organizer, subject_id, datetime, groups, name, auditory, request)
values (4, 5, 3, '2021-09-02 08:30:00.591', 'gr1', 'Computer Structure practice', '1-311', false);

insert into event(id, organizer, subject_id, datetime, groups, name, auditory, request)
values (5, 6, 4, '2021-09-01 08:30:00.591', 'gr1', 'Computer Architecture lecture', '1-215', false);


-- ATENDEE --
insert into atendee(id, user_id, event_id) values(1,1,1);
insert into atendee(id, user_id, event_id) values(2,1,2);
insert into atendee(id, user_id, event_id) values(3,2,1);
insert into atendee(id, user_id, event_id) values(4,2,2);
insert into atendee(id, user_id, event_id) values(5,3,3);
insert into atendee(id, user_id, event_id) values(6,3,3);


-- REQUEST --
-- insert into request values();
