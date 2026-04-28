CREATE DATABASE LibraryDB;
USE LibraryDB;

CREATE TABLE Books (
 book_id INT PRIMARY KEY AUTO_INCREMENT,
 title VARCHAR(100),
 author VARCHAR(100),
 genre VARCHAR(50),
 available_copies INT
);

CREATE TABLE Members (
 member_id INT PRIMARY KEY AUTO_INCREMENT,
 name VARCHAR(100),
 email VARCHAR(100),
 join_date DATE
);
