CREATE TABLE company
(
  companyID INT NOT NULL,
  address INT NOT NULL,
  hotline INT NOT NULL,
  name INT NOT NULL,
  PRIMARY KEY (companyID)
);

CREATE TABLE project
(
  projectID INT NOT NULL,
  name INT NOT NULL,
  dateOfStart INT NOT NULL,
  dateOfEnd INT NOT NULL,
  companyID INT NOT NULL,
  PRIMARY KEY (projectID),
  FOREIGN KEY (companyID) REFERENCES company(companyID)
);

CREATE TABLE branch
(
  branchID INT NOT NULL,
  name INT NOT NULL,
  companyID INT NOT NULL,
  FOREIGN KEY (companyID) REFERENCES company(companyID)
);

CREATE TABLE staff
(
  staffID INT NOT NULL,
  name INT NOT NULL,
  position INT NOT NULL,
  companyID INT NOT NULL,
  PRIMARY KEY (staffID),
  FOREIGN KEY (companyID) REFERENCES company(companyID)
);