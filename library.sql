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
CREATE TABLE Borrow (
 borrow_id INT PRIMARY KEY AUTO_INCREMENT,
 member_id INT,
 book_id INT,
 borrow_date DATE,
 return_date DATE,
 FOREIGN KEY (member_id) REFERENCES Members(member_id),
 FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

INSERT INTO Books (title, author, genre, available_copies) VALUES
('Harry Potter','J.K Rowling','Fantasy',5),
('Atomic Habits','James Clear','Self Help',4);

INSERT INTO Members (name,email,join_date) VALUES
('Debanjan','deb@gmail.com','2026-04-28');

SELECT * FROM Books;
SELECT * FROM Members;
