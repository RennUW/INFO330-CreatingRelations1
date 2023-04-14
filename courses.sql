CREATE TABLE courses (
  code VARCHAR(40) PRIMARY KEY NOT NULL CHECK(length(code) >= 7),
  description VARCHAR(400),
  start DATE NOT NULL,
  end DATE NOT NULL CHECK(end > start)
);

INSERT INTO courses (code, start, end, description) VALUES ('INFO330A', '2023-04-01', '2023-06-01', 'Data and databases');
INSERT INTO courses (code, start, end, description) VALUES ('INFO314', '2023-04-01', '2023-06-01', 'Networking and distributed Systems');
INSERT INTO courses (code, start, end, description) VALUES ('INFO448A', '2023-09-25', '2023-12-19', 'Introduction to iOS');
INSERT INTO courses (code, start, end, description) VALUES ('INFO449A', '2023-09-25', '2023-12-19', 'Introduction to Android');
INSERT INTO courses (code, start, end, description) VALUES ('BAW010', '2023-04-01', '2023-06-01', 'Introduction to Basket-Weaving');
INSERT INTO courses (code, start, end, description) VALUES ('BAW100A', '2023-04-01', '2023-06-01', 'Underwater Basket-Weaving');
