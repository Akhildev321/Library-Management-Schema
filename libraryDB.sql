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


-- Sample data for Members Table
INSERT INTO Members (name, email, phone, address, join_date) VALUES
('Allu Arjun', 'allu.arjun@tollywood.com', '9000000001', 'Jubilee Hills, Hyderabad', '2024-01-10'),
('Mahesh Babu', 'mahesh.babu@tollywood.com', '9000000002', 'Banjara Hills, Hyderabad', '2024-01-15'),
('Prabhas Raju', 'prabhas@tollywood.com', '9000000003', 'Film Nagar, Hyderabad', '2024-01-20'),
('N. T. Rama Rao Jr.', 'ntr@tollywood.com', '9000000004', 'Kukatpally, Hyderabad', '2024-01-25'),
('Ram Charan', 'ram.charan@tollywood.com', '9000000005', 'Gachibowli, Hyderabad', '2024-02-01'),
('Vijay Deverakonda', 'vijay.d@tollywood.com', '9000000006', 'Madhapur, Hyderabad', '2024-02-05'),
('Pawan Kalyan', 'pawan.kalyan@tollywood.com', '9000000007', 'Begumpet, Hyderabad', '2024-02-10'),
('Ravi Teja', 'ravi.teja@tollywood.com', '9000000008', 'Ameerpet, Hyderabad', '2024-02-15'),
('Nani Ghanta', 'nani@tollywood.com', '9000000009', 'Dilsukhnagar, Hyderabad', '2024-02-20'),
('Nagarjuna Akkineni', 'nagarjuna@tollywood.com', '9000000010', 'Somajiguda, Hyderabad', '2024-03-01'),
('Chiranjeevi', 'chiru@tollywood.com', '9000000011', 'Kondapur, Hyderabad', '2024-03-05'),
('Venkatesh Daggubati', 'venky@tollywood.com', '9000000012', 'KPHB, Hyderabad', '2024-03-10'),
('Sai Dharam Tej', 'sai.tej@tollywood.com', '9000000013', 'Panjagutta, Hyderabad', '2024-03-15'),
('Akhil Akkineni', 'akhil@tollywood.com', '9000000014', 'Uppal, Hyderabad', '2024-03-20'),
('Siddharth Narayan', 'siddharth@tollywood.com', '9000000015', 'Charminar, Hyderabad', '2024-03-25');

-- Sample data for Books Table
INSERT INTO Books (title, author, genre, isbn, publish_year) VALUES
('Baahubali: The Beginning', 'S.S. Rajamouli', 'Historical Fiction', '9781234567001', 2015),
('Pushpa: The Rise', 'Sukumar', 'Crime Drama', '9781234567002', 2021),
('RRR: Rise Roar Revolt', 'Rajamouli', 'Action', '9781234567003', 2022),
('Arjun Reddy', 'Sandeep Reddy Vanga', 'Romantic Drama', '9781234567004', 2017),
('Sye', 'Rajamouli', 'Sports Fiction', '9781234567005', 2004),
('Jersey', 'Gowtam Tinnanuri', 'Sports Drama', '9781234567006', 2019),
('Ala Vaikunthapurramuloo', 'Trivikram Srinivas', 'Family Drama', '9781234567007', 2020),
('Gabbar Singh', 'Harish Shankar', 'Action Comedy', '9781234567008', 2012),
('Eega', 'Rajamouli', 'Fantasy', '9781234567009', 2012),
('Vedam', 'Krish Jagarlamudi', 'Anthology', '9781234567010', 2010);

-- Sample data for Borrowing Table
INSERT INTO Borrowings (book_id, member_id, borrowed_date, due_date, return_date) VALUES
(1, 3, '2024-06-01', '2024-06-15', '2024-06-14'),
(2, 1, '2024-06-05', '2024-06-19', NULL),
(3, 5, '2024-06-10', '2024-06-24', '2024-06-22'),
(4, 7, '2024-06-12', '2024-06-26', NULL),
(5, 2, '2024-06-14', '2024-06-28', NULL),
(6, 4, '2024-06-15', '2024-06-29', NULL),
(7, 10, '2024-06-20', '2024-07-04', '2024-07-01'),
(8, 6, '2024-06-22', '2024-07-06', NULL),
(9, 9, '2024-06-25', '2024-07-09', '2024-07-07'),
(10, 11, '2024-06-28', '2024-07-12', NULL);

-- Sample data for Fines Table
INSERT INTO Fines (borrowing_id, amount, paid) VALUES
(2, 50.00, false),
(4, 100.00, false),
(5, 30.00, true),
(6, 25.00, false),
(8, 75.00, false),
(10, 60.00, true);


