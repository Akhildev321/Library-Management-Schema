-- Creating database
create database libraryDB;
USE libraryDB;
 
-- Members Table
CREATE TABLE Members(
member_id INT auto_increment PRIMARY KEY,
name varchar(100) NOT NULL,
email varchar(100) UNIQUE NOT NULL,
phone varchar(13),
address varchar(250),
join_date date NOT NULL
);

-- Books Table
create table Books(
book_id INT auto_increment primary key,
title varchar(100) NOT NULL,
author varchar(100),
genre varchar(50),
isbn varchar(20) unique,    -- INTERNATIONAL STANDARD BOOK NUMBER
publish_year YEAR 
);

-- Borrowings Table
create table Borrowings(
borrowing_id INT auto_increment primary key,
book_id INT,
member_id INT,
borrowed_date date NOT NULL,
due_date date NOT NULL,
return_date date,
foreign key (book_id) references Books(book_id),
foreign key(member_id) references Members(member_id)
);

-- Librarians Table
create table Librarians(
librarian_id INT auto_increment primary key,
name varchar(100),
email varchar(100) UNIQUE,
password varchar(255)
);

-- Fines Table
create table Fines (
fine_id int auto_increment primary key,
borrowing_id int,
amount decimal(6,2),
paid boolean default false,
foreign key (borrowing_id) references Borrowings (borrowing_id)
);