CREATE TABLE course
(
  courseID INT NOT NULL,
  name INT NOT NULL,
  describe INT NOT NULL,
  PRIMARY KEY (courseID)
);

CREATE TABLE subject
(
  courseID INT NOT NULL,
  name INT NOT NULL,
  describe INT NOT NULL,
  tinChi INT NOT NULL,
  PRIMARY KEY (courseID)
);

CREATE TABLE teacher
(
  teacherID INT NOT NULL,
  name INT NOT NULL,
  phoneNumber INT NOT NULL,
  email INT NOT NULL,
  address INT NOT NULL,
  courseID INT NOT NULL,
  PRIMARY KEY (teacherID),
  FOREIGN KEY (courseID) REFERENCES subject(courseID)
);

CREATE TABLE class
(
  classID INT NOT NULL,
  name INT NOT NULL,
  numberOfStudent INT NOT NULL,
  teacherID INT NOT NULL,
  PRIMARY KEY (classID),
  FOREIGN KEY (teacherID) REFERENCES teacher(teacherID)
);

CREATE TABLE study
(
  classID INT NOT NULL,
  courseID INT NOT NULL,
  PRIMARY KEY (classID, courseID),
  FOREIGN KEY (classID) REFERENCES class(classID),
  FOREIGN KEY (courseID) REFERENCES subject(courseID)
);

CREATE TABLE student
(
  studentID INT NOT NULL,
  name INT NOT NULL,
  phoneNumber INT NOT NULL,
  email INT NOT NULL,
  classID INT NOT NULL,
  PRIMARY KEY (studentID),
  FOREIGN KEY (classID) REFERENCES class(classID)
);

CREATE TABLE Relationship
(
  studentID INT NOT NULL,
  courseID INT NOT NULL,
  PRIMARY KEY (studentID, courseID),
  FOREIGN KEY (studentID) REFERENCES student(studentID),
  FOREIGN KEY (courseID) REFERENCES course(courseID)
);