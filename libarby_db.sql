CREATE DATABASE LibraryDB;
USE LibraryDB;

CREATE TABLE Books (
  Book_id INT PRIMARY KEY,
  Title VARCHAR(255) NOT NULL,
  Author VARCHAR(255) NOT NULL,
  Published_Year INT,
  Genre VARCHAR(50),
  Available_Copies INT
);

CREATE TABLE Members (
  Member_id INT PRIMARY KEY,
  Name VARCHAR(100) NOT NULL,
  Email VARCHAR(100) UNIQUE,
  Join_Date DATE
);

CREATE TABLE Borrowed_Books (
  Borrow_id INT PRIMARY KEY,
  Book_Id INT,
  Member_Id INT,
  Borrow_Date DATE,
  Return_Date DATE,
  FOREIGN KEY (Book_Id) REFERENCES Books (Book_Id),
  FOREIGN KEY (Member_Id) REFERENCES Members (Member_Id)
);