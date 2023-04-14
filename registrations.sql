CREATE TABLE student_courses (
  studentid INTEGER,
  course VARCHAR(40),
  grade FLOAT DEFAULT NULL,
  FOREIGN KEY (studentid) REFERENCES students(id),
  FOREIGN KEY (course) REFERENCES courses(code),
  PRIMARY KEY (studentid, course)
);

INSERT INTO student_courses (studentid, course) VALUES (1, 'INFO330A');
INSERT INTO student_courses (studentid, course) VALUES (1, 'INFO448A');
INSERT INTO student_courses (studentid, course) VALUES (1, 'INFO314');
INSERT INTO student_courses (studentid, course) VALUES (3, 'INFO330A');
INSERT INTO student_courses (studentid, course) VALUES (3, 'INFO449A');
INSERT INTO student_courses (studentid, course) VALUES (2, 'BAW010');
INSERT INTO student_courses (studentid, course) VALUES (2, 'BAW100A');
INSERT INTO student_courses (studentid, course) VALUES (4, 'BAW010');
