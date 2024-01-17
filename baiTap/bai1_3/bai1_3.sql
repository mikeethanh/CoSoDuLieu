CREATE TABLE library
(
  libraryID INT NOT NULL,
  name INT NOT NULL,
  address INT NOT NULL,
  PRIMARY KEY (libraryID)
);

CREATE TABLE book
(
  bookID INT NOT NULL,
  name INT NOT NULL,
  publishingYear INT NOT NULL,
  author INT NOT NULL,
  inventoryQuantity INT NOT NULL,
  libraryID INT NOT NULL,
  FOREIGN KEY (libraryID) REFERENCES library(libraryID)
);

CREATE TABLE book_reader
(
  bookReaderID INT NOT NULL,
  name INT NOT NULL,
  address INT NOT NULL,
  phoneNumber INT NOT NULL,
  PRIMARY KEY (bookReaderID)
);