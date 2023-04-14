CREATE TABLE buildings (
  name VARCHAR(80) NOT NULL,
  shortname VARCHAR(10) UNIQUE,
  id INTEGER PRIMARY KEY AUTOINCREMENT
);

CREATE TABLE rooms (
  number INTEGER,
  buildingid INTEGER,
  seating INTEGER,
  PRIMARY KEY (number, buildingid),
  FOREIGN KEY (buildingid) REFERENCES buildings(id)
);

INSERT INTO buildings (name, shortname) VALUES ('Mary Gates Hall', 'MGH');
INSERT INTO buildings (name, shortname) VALUES ('Johnson Hall', 'JHN');
INSERT INTO buildings (name, shortname) VALUES ('Smith Hall', 'SMI');

INSERT INTO rooms (number, buildingid, seating) VALUES (101, (SELECT id FROM buildings WHERE shortname='MGH'), 50);
INSERT INTO rooms (number, buildingid, seating) VALUES (201, (SELECT id FROM buildings WHERE shortname='JHN'), 25);
INSERT INTO rooms (number, buildingid, seating) VALUES (301, (SELECT id FROM buildings WHERE shortname='SMI'), 40);

