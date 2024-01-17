CREATE TABLE store
(
  storeID INT NOT NULL,
  name INT NOT NULL,
  address INT NOT NULL,
  hotline INT NOT NULL,
  PRIMARY KEY (storeID)
);

CREATE TABLE customer
(
  customerID INT NOT NULL,
  name INT NOT NULL,
  address INT NOT NULL,
  email INT NOT NULL,
  phoneNumber INT NOT NULL,
  PRIMARY KEY (customerID)
);

CREATE TABLE distributor
(
  distributorID INT NOT NULL,
  name INT NOT NULL,
  address INT NOT NULL,
  phoneNumber INT NOT NULL,
  PRIMARY KEY (distributorID)
);

CREATE TABLE product
(
  productID INT NOT NULL,
  name INT NOT NULL,
  price INT NOT NULL,
  quantityInStock INT NOT NULL,
  storeID INT NOT NULL,
  distributorID INT NOT NULL,
  PRIMARY KEY (productID),
  FOREIGN KEY (storeID) REFERENCES store(storeID),
  FOREIGN KEY (distributorID) REFERENCES distributor(distributorID)
);

CREATE TABLE buy
(
  customerID INT NOT NULL,
  productID INT NOT NULL,
  PRIMARY KEY (customerID, productID),
  FOREIGN KEY (customerID) REFERENCES customer(customerID),
  FOREIGN KEY (productID) REFERENCES product(productID)
);