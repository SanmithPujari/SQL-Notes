CREATE TABLE tbl_users (
    user_id varchar(30) PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
);
drop table tbl_users
select * from tbl_users order by user_id


INSERT INTO tbl_users VALUES
('user_001', 'Aarav', 'Singh', 'aarav.singh@gmail.com', 'password1'),
('user_002', 'Aarohi', 'Sharma', 'aarohi.sharma@yahoo.com', 'password2'),
('user_003', 'Abhishek', 'Gupta', 'abhishek.gupta@gmail.com', 'password3'),
('user_004', 'Aditi', 'Chopra', 'aditi.chopra@yahoo.com', 'password4'),
('user_005', 'Advait', 'Joshi', 'advait.joshi@gmail.com', 'password5'),
('user_006', 'Ahana', 'Malhotra', 'ahana.malhotra@yahoo.com', 'password6'),
('user_007', 'Akhil', 'Nair', 'akhil.nair@gmail.com', 'password7'),
('user_008', 'Akshara', 'Menon', 'akshara.menon@yahoo.com', 'password8'),
('user_009', 'Akshay', 'Kumar', 'akshay.kumar@gmail.com', 'password9'),
('user_010', 'Alok', 'Verma', 'alok.verma@yahoo.com', 'password10'),
('user_011', 'Amit', 'Sharma', 'amit.sharma@gmail.com', 'password11'),
('user_012', 'Amrita', 'Nair', 'amrita.nair@yahoo.com', 'password12'),
('user_013', 'Anand', 'Pillai', 'anand.pillai@gmail.com', 'password13'),
('user_014', 'Ananya', 'Saxena', 'ananya.saxena@yahoo.com', 'password14'),
('user_015', 'Aniket', 'Jain', 'aniket.jain@gmail.com', 'password15'),
('user_016', 'Anil', 'Kapoor', 'anil.kapoor@yahoo.com', 'password16'),
('user_017', 'Anish', 'Mathew', 'anish.mathew@gmail.com', 'password17'),
('user_018', 'Anjali', 'Shah', 'anjali.shah@yahoo.com', 'password18'),
('user_019', 'Anjana', 'Menon', 'anjana.menon@gmail.com', 'password19'),
('user_020', 'Ankit', 'Gupta', 'ankit.gupta@yahoo.com', 'password20'),
('user_021', 'Ansh', 'Singh', 'ansh.singh@gmail.com', 'password21'),
('user_022', 'Aparna', 'Kumar', 'aparna.kumar@yahoo.com', 'password22'),
('user_023', 'Apoorva', 'Sharma', 'apoorva.sharma@gmail.com', 'password23'),
('user_024', 'Aravind', 'Nair', 'aravind.nair@yahoo.com', 'password24'),
('user_025', 'Arjun', 'Pillai', 'arjun.pillai@gmail.com', 'password25'),
('user_026', 'Arnav', 'Saxena', 'arnav.saxena@yahoo.com', 'password26'),
('user_027', 'Aryan', 'Chopra', 'aryan.chopra@gmail.com', 'password27'),
('user_028', 'Ashok', 'Menon', 'ashok.menon@yahoo.com', 'password28'),
('user_029', 'Ashwani', 'Kapoor', 'ashwani.kapoor@gmail.com', 'password29'),
('user_030', 'Avi', 'Sharma', 'avi.sharma@yahoo.com', 'password30'),
('user_031', 'Avinash', 'Singh', 'avinash.singh@gmail.com', 'password31'),
('user_032', 'Bhavana', 'Nair', 'bhavana.nair@yahoo.com', 'password32'),
('user_033', 'Bhavesh', 'Joshi', 'bhavesh.joshi@gmail.com', 'password33'),
('user_034', 'Bhuvan', 'Verma', 'bhuvan.verma@yahoo.com', 'password34'),
('user_035', 'Chirag', 'Shah', 'chirag.shah@gmail.com', 'password35'),
('user_036', 'Dhruv', 'Menon', 'dhruv.menon@yahoo.com', 'password36'),
('user_037', 'Divya', 'Kapoor', 'divya.kapoor@gmail.com', 'password37'),
('user_038', 'Gaurav', 'Singh', 'gaurav.singh@yahoo.com', 'password38'),
('user_039', 'Geeta', 'Nair', 'geeta.nair@gmail.com', 'password39'),
('user_040', 'Girish', 'Jain', 'girish.jain@yahoo.com', 'password40'),
('user_041', 'Hari', 'Sharma', 'hari.sharma@gmail.com', 'password41'),
('user_042', 'Harish', 'Pillai', 'harish.pillai@yahoo.com', 'password42'),
('user_043', 'Isha', 'Menon', 'isha.menon@gmail.com', 'password43'),
('user_044', 'Jaya', 'Kumar', 'jaya.kumar@yahoo.com', 'password44'),
('user_045', 'Jitendra', 'Singh', 'jitendra.singh@gmail.com', 'password45'),
('user_046', 'Kabir', 'Verma', 'kabir.verma@yahoo.com', 'password46'),
('user_047', 'Kalyani', 'Nair', 'kalyani.nair@gmail.com', 'password47'),
('user_048', 'Kapil', 'Shah', 'kapil.shah@yahoo.com', 'password48'),
('user_049', 'Kartik', 'Jain', 'kartik.jain@gmail.com', 'password49'),
('user_050', 'Kavita', 'Kapoor', 'kavita.kapoor@yahoo.com', 'password50'),
('user_051', 'Krishna', 'Singh', 'krishna.singh@gmail.com', 'password51'),
('user_052', 'Kritika', 'Sharma', 'kritika.sharma@yahoo.com', 'password52'),
('user_053', 'Kunal', 'Pillai', 'kunal.pillai@gmail.com', 'password53'),
('user_054', 'Lakshmi', 'Nair', 'lakshmi.nair@yahoo.com', 'password54'),
('user_055', 'Mahesh', 'Kumar', 'mahesh.kumar@gmail.com', 'password55'),
('user_056', 'Manish', 'Singh', 'manish.singh@yahoo.com', 'password56'),
('user_057', 'Mayank', 'Shah', 'mayank.shah@gmail.com', 'password57'),
('user_058', 'Mohan', 'Jain', 'mohan.jain@yahoo.com', 'password58'),
('user_059', 'Nandini', 'Menon', 'nandini.menon@gmail.com', 'password59'),
('user_060', 'Neha', 'Kapoor', 'neha.kapoor@yahoo.com', 'password60'),
('user_061', 'Nikhil', 'Sharma', 'nikhil.sharma@gmail.com', 'password61'),
('user_062', 'Nitin', 'Pillai', 'nitin.pillai@yahoo.com', 'password62'),
('user_063', 'Pooja', 'Verma', 'pooja.verma@gmail.com', 'password63'),
('user_064', 'Prachi', 'Nair', 'prachi.nair@yahoo.com', 'password64'),
('user_065', 'Pradeep', 'Kumar', 'pradeep.kumar@gmail.com', 'password65'),
('user_066', 'Pranav', 'Singh', 'pranav.singh@yahoo.com', 'password66'),
('user_067', 'Prasad', 'Shah', 'prasad.shah@gmail.com', 'password67'),
('user_068', 'Prashant', 'Jain', 'prashant.jain@yahoo.com', 'password68'),
('user_069', 'Priya', 'Menon', 'priya.menon@gmail.com', 'password69'),
('user_070', 'Rahul', 'Kapoor', 'rahul.kapoor@yahoo.com', 'password70'),
('user_071', 'Raj', 'Singh', 'raj.singh@gmail.com', 'password71'),
('user_072', 'Rajeev', 'Nair', 'rajeev.nair@yahoo.com', 'password72'),
('user_073', 'Rakesh', 'Shah', 'rakesh.shah@gmail.com', 'password73'),
('user_074', 'Ranbir', 'Verma', 'ranbir.verma@yahoo.com', 'password74'),
('user_075', 'Ravi', 'Pillai', 'ravi.pillai@gmail.com', 'password75'),
('user_076', 'Riya', 'Nair', 'riya.nair@yahoo.com', 'password76'),
('user_077', 'Ronak', 'Kumar', 'ronak.kumar@gmail.com', 'password77'),
('user_078', 'Sagar', 'Singh', 'sagar.singh@yahoo.com', 'password78'),
('user_079', 'Sameer', 'Sharma', 'sameer.sharma@gmail.com', 'password79'),
('user_080', 'Sanjay', 'Jain', 'sanjay.jain@yahoo.com', 'password80')

CREATE TABLE tbl_buses (
    bus_id VARCHAR(30) PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    source VARCHAR(30) NOT NULL,
    destination VARCHAR(30) NOT NULL,
    departure_time DATETIME NOT NULL,
    arrival_time DATETIME NOT NULL,
	total_seats INT NOT NULL,
    fare DECIMAL(10,2) NOT NULL,
);
drop table tbl_buses
select * from tbl_buses

INSERT INTO tbl_buses VALUES
('bus_001', 'Express', 'Delhi', 'Mumbai', '2023-06-01 06:00:00', '2023-06-01 20:00:00', 40, 1200.00),
('bus_002', 'Fastway', 'Mumbai', 'Delhi', '2023-06-02 09:00:00', '2023-06-02 23:00:00', 30, 1500.00),
('bus_003', 'Swift', 'Delhi', 'Chandigarh', '2023-06-05 07:00:00', '2023-06-05 11:00:00', 25, 800.00),
('bus_004', 'Hima', 'Chandigarh', 'Delhi', '2023-06-08 15:00:00', '2023-06-08 19:00:00', 35, 1000.00),
('bus_005', 'Rajdhani', 'Mumbai', 'Chennai', '2023-06-10 08:00:00', '2023-06-10 23:00:00', 40, 2000.00),
('bus_006', 'Mitra', 'Chennai', 'Mumbai', '2023-06-12 11:00:00', '2023-06-12 22:00:00', 30, 1800.00),
('bus_007', 'Super Express', 'Delhi', 'Lucknow', '2023-06-15 09:00:00', '2023-06-15 15:00:00', 20, 600.00),
('bus_008', 'Sleeper', 'Lucknow', 'Delhi', '2023-06-18 22:00:00', '2023-06-19 04:00:00', 50, 800.00),
('bus_009', 'Gujju', 'Mumbai', 'Ahmedabad', '2023-06-21 08:00:00', '2023-06-21 20:00:00', 35, 1500.00),
('bus_010', 'Katka', 'Ahmedabad', 'Bangalore', '2023-06-23 14:00:00', '2023-06-24 04:00:00', 30, 2200.00),
('bus_011', 'Shatabdi', 'Delhi', 'Amritsar', '2023-06-26 06:00:00', '2023-06-26 12:00:00', 40, 900.00),
('bus_012', 'Volvo', 'Amritsar', 'Delhi', '2023-06-29 16:00:00', '2023-06-29 22:00:00', 30, 800.00),
('bus_013', 'Garuda', 'Bangalore', 'Chennai', '2023-06-05 10:00:00', '2023-06-05 16:00:00', 25, 700.00),
('bus_014', 'Pinto', 'Chennai', 'Jaipur', '2023-06-10 14:00:00', '2023-06-11 05:00:00', 35, 1900.00),
('bus_015', 'Harish', 'Jaipur', 'Delhi', '2023-06-19 08:00:00', '2023-06-19 12:00:00', 30, 600.00);

alter table tbl_buses
drop column total_seats

CREATE TABLE tbl_booking (
    booking_id INT PRIMARY KEY,
    user_id VARCHAR(30) NOT NULL,
    bus_id VARCHAR(30) NOT NULL,
    number_of_seats INT NOT NULL,
    total_fare DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES tbl_users(user_id),
    FOREIGN KEY (bus_id) REFERENCES tbl_buses(bus_id)
);
delete from tbl_booking
drop table tbl_booking
select * from tbl_booking

--select bus_id,sum(number_of_seats) from tbl_booking group by bus_id

INSERT INTO tbl_booking (booking_id, user_id, bus_id, number_of_seats, total_fare)
VALUES
    (1, 'user_007', 'bus_011', 4, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_011') * 4),
    (2, 'user_059', 'bus_004', 2, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_004') * 2),
    (3, 'user_076', 'bus_003', 1, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_003') * 1),
    (4, 'user_041', 'bus_013', 3, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_013') * 3),
    (5, 'user_034', 'bus_008', 2, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_008') * 2),
    (6, 'user_021', 'bus_006', 1, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_006') * 1),
    (7, 'user_080', 'bus_012', 2, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_012') * 2),
    (8, 'user_052', 'bus_002', 3, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_002') * 3),
    (9, 'user_016', 'bus_015', 1, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_015') * 1),
    (10, 'user_069', 'bus_010', 2, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_010') * 2),
    (11, 'user_044', 'bus_001', 3, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_001') * 3),
    (12, 'user_022', 'bus_014', 2, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_014') * 2),
    (13, 'user_017', 'bus_007', 1, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_007') * 1),
    (14, 'user_062', 'bus_005', 4, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_005') * 4),
    (15, 'user_030', 'bus_011', 1, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_011') * 1),
    (16, 'user_028', 'bus_004', 2, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_004') * 2),
    (17, 'user_078', 'bus_003', 3, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_003') * 3),
    (18, 'user_063', 'bus_013', 1, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_013') * 1),
    (19, 'user_057', 'bus_008', 2, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_008') * 2),
    (20, 'user_042', 'bus_006', 4, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_006') * 4),
	(21, 'user_075', 'bus_012', 2, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_012') * 2),
(22, 'user_035', 'bus_002', 3, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_002') * 3),
(23, 'user_018', 'bus_015', 1, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_015') * 1),
(24, 'user_070', 'bus_010', 2, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_010') * 2),
(25, 'user_045', 'bus_001', 3, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_001') * 3),
(26, 'user_023', 'bus_014', 2, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_014') * 2),
(27, 'user_068', 'bus_007', 1, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_007') * 1),
(28, 'user_064', 'bus_005', 4, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_005') * 4),
(29, 'user_031', 'bus_011', 1, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_011') * 1),
(30, 'user_029', 'bus_004', 2, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_004') * 2),
(31, 'user_079', 'bus_003', 3, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_003') * 3),
(32, 'user_065', 'bus_013', 1, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_013') * 1),
(33, 'user_058', 'bus_008', 2, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_008') * 2),
(34, 'user_043', 'bus_006', 4, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_006') * 4),
(35, 'user_056', 'bus_012', 2, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_012') * 2),
(36, 'user_036', 'bus_002', 3, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_002') * 3),
(37, 'user_019', 'bus_015', 1, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_015') * 1),
(38, 'user_071', 'bus_010', 2, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_010') * 2),
(39, 'user_046', 'bus_001', 3, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_001') * 3),
(40, 'user_024', 'bus_014', 2, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_014') * 2),
(41, 'user_049', 'bus_007', 1, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_007') * 1),
(42, 'user_032', 'bus_011', 1, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_011') * 1),
(43, 'user_030', 'bus_004', 2, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_004') * 2),
(44, 'user_080', 'bus_003', 3, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_003') * 3),
(45, 'user_066', 'bus_013', 1, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_013') * 1),
(46, 'user_059', 'bus_008', 2, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_008') * 2),
(47, 'user_044', 'bus_006', 4, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_006') * 4),
(48, 'user_067', 'bus_012', 2, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_012') * 2),
(49, 'user_037', 'bus_002', 3, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_002') * 3),
(50, 'user_020', 'bus_015', 1, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_015') * 1),
(51, 'user_072', 'bus_010', 2, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_010') * 2),
(52, 'user_047', 'bus_001', 3, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_001') * 3),
(53, 'user_025', 'bus_014', 2, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_014') * 2),
(54, 'user_040', 'bus_007', 1, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_007') * 1),
(55, 'user_033', 'bus_011', 1, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_011') * 1),
(56, 'user_051', 'bus_003', 3, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_003') * 3),
(57, 'user_067', 'bus_013', 1, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_013') * 1),
(58, 'user_060', 'bus_008', 2, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_008') * 2),
(59, 'user_045', 'bus_006', 4, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_006') * 4),
(60, 'user_018', 'bus_012', 2, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_012') * 2),
(61, 'user_038', 'bus_002', 3, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_002') * 3),
(62, 'user_021', 'bus_015', 1, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_015') * 1),
(63, 'user_073', 'bus_010', 2, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_010') * 2),
(64, 'user_048', 'bus_001', 3, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_001') * 3),
(65, 'user_026', 'bus_014', 2, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_014') * 2),
(66, 'user_041', 'bus_007', 1, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_007') * 1),
(67, 'user_034', 'bus_011', 1, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_011') * 1),
(68, 'user_072', 'bus_003', 3, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_003') * 3),
(69, 'user_068', 'bus_013', 1, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_013') * 1),
(70, 'user_061', 'bus_009', 2, (SELECT fare FROM tbl_buses WHERE bus_id = 'bus_008') * 2);

--update tbl_booking
--set bus_id='bus_009' where booking_id=70

select sum(number_of_seats) from tbl_booking group by bus_id where booking_id=9

CREATE TABLE tbl_payments (
    payment_id VARCHAR(30) PRIMARY KEY,
    booking_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    created_at DATETIME NOT NULL, 
    FOREIGN KEY (booking_id) REFERENCES tbl_booking(booking_id)
);

drop table tbl_payments
select * from tbl_payments

INSERT INTO tbl_payments (payment_id, booking_id, amount, created_at) VALUES
('01', 01, 3600.00, '2023-05-11 10:30:00'),
('02', 02, 2000.00, '2023-05-11 11:30:00'),
('03', 03, 800.00, '2023-05-11 12:30:00'),
('04', 4, 2100.00, '2023-05-11 13:30:00'),
('05', 5, 1600.00, '2023-05-11 14:30:00'),
('06', 6, 1800.00, '2023-05-11 15:30:00'),
('07', 7, 1600.00, '2023-05-11 16:30:00'),
('08', 8, 4500.00, '2023-05-11 17:30:00'),
('09', 9, 600.00, '2023-05-11 18:30:00'),
('10', 10, 4400.00, '2023-05-11 19:30:00'),
('11', 11, 3600.00, '2023-05-11 20:30:00'),
('12', 12, 3800.00, '2023-05-11 21:30:00'),
('13', 13, 600.00, '2023-05-11 22:30:00'),
('14', 14, 8000.00, '2023-05-11 23:30:00'),
('15', 15, 900.00, '2023-05-12 00:30:00'),
('16', 16, 2000.00, '2023-05-12 01:30:00'),
('17', 17, 2400.00, '2023-05-12 02:30:00'),
('18', 18, 700.00, '2023-05-12 03:30:00'),
('19', 19, 1600.00, '2023-05-12 04:30:00'),
('20', 20, 7200.00, '2023-05-12 05:30:00'),
('21', 21, 1600.00, '2023-05-12 06:30:00'),
('22', 22, 4500.00, '2023-05-12 07:30:00'),
('23', 23, 600.00, '2023-05-12 08:30:00'),
('24', 24, 4400.00, '2023-05-12 09:30:00'),
('25', 25, 3600.00, '2023-05-12 10:30:00'),
('26', 26, 3800.00, '2023-05-12 11:30:00'),
('27', 27, 600.00, '2023-05-12 12:30:00'),
('28', 28, 8000.00, '2023-05-12 13:30:00'),
('29', 29, 900.00, '2023-05-12 14:30:00'),
('30', 30, 2000.00, '2023-05-12 15:30:00'),
('31', 31, 2400.00, '2023-05-12 16:30:00'),
('32', 32, 700.00, '2023-05-12 17:30:00'),
('33', 33, 1600.00, '2023-05-12 18:30:00'),
('34', 34, 7200.00, '2023-05-12 19:30:00'),
('35', 35, 1600.00, '2023-05-12 20:30:00'),
('36', 36, 4500.00, '2023-05-12 21:30:00'),
('37', 37, 600.00, '2023-05-12 22:30:00'),
('38', 38, 4400.00, '2023-05-12 23:30:00'),
('39', 39, 3600.00, '2023-05-13 00:30:00'),
('40', 40, 3800.00, '2023-05-11 13:30:00'),
('41', 41, 600.00, '2023-05-11 14:30:00'),
('42', 42, 900.00, '2023-05-11 15:30:00'),
('43', 43, 2000.00, '2023-05-11 16:30:00'),
('44', 44, 2400.00, '2023-05-11 17:30:00'),
('45', 45, 700.00, '2023-05-11 18:30:00'),
('46', 46, 1600.00, '2023-05-11 19:30:00'),
('47', 47, 7200.00, '2023-05-11 20:30:00'),
('48', 48, 1600.00, '2023-05-11 21:30:00'),
('49', 49, 4500.00, '2023-05-11 22:30:00'),
('50', 50, 600.00, '2023-05-11 23:30:00'),
('51', 51,4400.00, '2023-05-12 00:30:00'),
('52', 52, 3600.00, '2023-05-12 01:30:00'),
('53', 53, 3800.00, '2023-05-12 02:30:00'),
('54', 54, 600.00, '2023-05-12 03:30:00'),
('55', 55, 900.00, '2023-05-12 04:30:00'),
('56', 56, 2400.00, '2023-05-12 05:30:00'),
('57', 57, 700.00, '2023-05-11 13:30:00'),
('58', 58, 1600.00, '2023-05-11 14:30:00'),
('59', 59, 7200.00, '2023-05-11 15:30:00'),
('60', 60, 1600.00, '2023-05-11 16:30:00'),
('61', 61, 4500.00, '2023-05-11 17:30:00'),
('62', 62, 600.00, '2023-05-11 18:30:00'),
('63', 63, 4400.00, '2023-05-11 19:30:00'),
('64', 64, 3600.00, '2023-05-11 20:30:00'),
('65', 65, 3800.00, '2023-05-11 21:30:00'),
('66', 66, 600.00, '2023-05-11 22:30:00'),
('67', 67, 900.00, '2023-05-11 23:30:00'),
('68', 68, 2400.00, '2023-05-11 13:30:00'),
('69', 69, 700.00, '2023-05-11 14:30:00'),
('70', 70, 1600.00, '2023-05-11 15:30:00')

CREATE TABLE tbl_reviews (
    review_id VARCHAR(30) PRIMARY KEY,
    user_id VARCHAR(30) NOT NULL,
    bus_id VARCHAR(30) NOT NULL,
    rating INT NOT NULL,
    review_text VARCHAR(255) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES tbl_users(user_id),
    FOREIGN KEY (bus_id) REFERENCES tbl_buses(bus_id)
);

drop table tbl_reviews
select * from tbl_reviews

INSERT INTO tbl_reviews (review_id, user_id, bus_id, rating, review_text)
VALUES
('rev_001', 'user_005', 'bus_001', 4, 'Great service and comfortable seats.'),
('rev_002', 'user_002', 'bus_002', 3, 'The bus was clean but the seats were not very comfortable.'),
('rev_003', 'user_004', 'bus_003', 5, 'Excellent experience, would definitely recommend.'),
('rev_004', 'user_003', 'bus_004', 2, 'The bus was late and the seats were not comfortable.'),
('rev_005', 'user_001', 'bus_005', 4, 'Great service and on-time arrival.'),
('rev_006', 'user_010', 'bus_006', 3, 'The bus was clean but the AC was not working properly.'),
('rev_007', 'user_006', 'bus_007', 5, 'Very comfortable seats and great service.'),
('rev_008', 'user_007', 'bus_008', 2, 'The bus was not very clean and the seats were uncomfortable.'),
('rev_009', 'user_011', 'bus_009', 4, 'Overall a good experience.'),
('rev_010', 'user_008', 'bus_010', 5, 'The bus was very comfortable and the service was excellent.'),
('rev_011', 'user_009', 'bus_011', 3, 'The bus was late and the seats were not very comfortable.'),
('rev_012', 'user_015', 'bus_012', 4, 'The bus was clean and the seats were comfortable.'),
('rev_013', 'user_014', 'bus_013', 4, 'Good service and comfortable seats.'),
('rev_014', 'user_013', 'bus_014', 5, 'The bus was very comfortable and the service was great.'),
('rev_015', 'user_012', 'bus_015', 2, 'The bus was very late and the seats were not comfortable.'),
('rev_016', 'user_005', 'bus_007', 5, 'Excellent service and comfortable seats.'), 
       ('rev_017', 'user_008', 'bus_010', 2, 'The bus was not very clean and the seats were uncomfortable.'), 
       ('rev_018', 'user_010', 'bus_005', 4, 'Great experience overall. Would definitely recommend.'), 
       ('rev_019', 'user_006', 'bus_012', 3, 'The journey was average. Nothing special.'), 
       ('rev_020', 'user_009', 'bus_003', 5, 'Amazing service and great value for money.'),
	('rev_021', 'user_015', 'bus_006', 4, 'Great journey with excellent staff.'),
('rev_022', 'user_013', 'bus_008', 2, 'The bus was very late and the staff was not helpful.'),
('rev_023', 'user_020', 'bus_013', 5, 'Comfortable seats and on-time departure.'),
('rev_024', 'user_009', 'bus_007', 3, 'The bus was clean but the AC was not working well.'),
('rev_025', 'user_006', 'bus_010', 4, 'The bus was well-maintained and the staff was friendly.'),
('rev_026', 'user_017', 'bus_011', 5, 'The journey was comfortable and the staff was very helpful.'),
('rev_027', 'user_010', 'bus_012', 2, 'The seats were not very comfortable and the bus was delayed.'),
('rev_028', 'user_014', 'bus_015', 3, 'The bus was clean but the staff was not very friendly.'),
('rev_029', 'user_008', 'bus_004', 4, 'The journey was comfortable and the staff was polite.'),
('rev_030', 'user_016', 'bus_005', 5, 'The seats were very comfortable and the journey was smooth.'),
('rev_031', 'user_012', 'bus_003', 2, 'The bus was not well-maintained and the staff was not helpful.'),
('rev_032', 'user_005', 'bus_009', 4, 'The bus was clean and the journey was on-time.'),
('rev_033', 'user_019', 'bus_011', 5, 'The staff was very helpful and the journey was comfortable.'),
('rev_034', 'user_007', 'bus_002', 3, 'The seats were not very comfortable but the bus was on-time.'),
('rev_035', 'user_004', 'bus_014', 4, 'The journey was comfortable and the staff was polite.'),
('rev_036', 'user_018', 'bus_010', 5, 'The journey was smooth and the staff was very friendly.'),
('rev_037', 'user_011', 'bus_008', 2, 'The bus was very late and the staff was not helpful.'),
('rev_038', 'user_002', 'bus_015', 3, 'The bus was clean but the staff was not very friendly.'),
('rev_039', 'user_003', 'bus_001', 4, 'The seats were comfortable and the journey was on-time.'),
('rev_040', 'user_001', 'bus_003', 2, 'The bus was not well-maintained and the staff was not helpful.'),
('rev_041', 'user_015', 'bus_013', 5, 'Excellent service and comfortable seats.'),
('rev_042', 'user_012', 'bus_007', 3, 'The bus was clean but the seats were not very comfortable.'),
('rev_043', 'user_007', 'bus_012', 2, 'The bus was delayed and the staff was not very helpful.'),
('rev_044', 'user_020', 'bus_005', 4, 'The journey was comfortable and the staff was friendly.'),
('rev_045', 'user_018', 'bus_004', 5, 'The journey was smooth and the staff was very helpful.'),
('rev_046', 'user_011', 'bus_010', 2, 'The seats were not very comfortable and the bus was delayed.'),
('rev_047', 'user_013', 'bus_014', 3, 'The bus was clean but the staff was not very friendly.'),
('rev_048', 'user_006', 'bus_002', 4, 'The journey was comfortable and the staff was polite.'),
('rev_049', 'user_019', 'bus_009', 5, 'The staff was very helpful and the journey was smooth.'),
('rev_050', 'user_008', 'bus_015', 2, 'The seats were not very comfortable and the staff was not helpful.'),
('rev_051', 'user_001', 'bus_001', 1, 'Terrible experience. Bus was dirty and staff was rude.'),
       ('rev_052', 'user_002', 'bus_002', 1, 'Worst bus journey ever. Uncomfortable seats and terrible service.'),
       ('rev_053', 'user_003', 'bus_003', 1, 'The bus was late and the staff was unhelpful.'),
       ('rev_054', 'user_004', 'bus_004', 1, 'I would never travel on this bus again. The AC was not working properly.'),
       ('rev_055', 'user_005', 'bus_005', 1, 'Horrible experience. The bus was dirty and the staff was unprofessional.'),
       ('rev_056', 'user_006', 'bus_006', 1, 'The seats were uncomfortable and the bus was late.'),
       ('rev_057', 'user_007', 'bus_007', 1, 'I regret choosing this bus. The journey was terrible and the staff was rude.'),
       ('rev_058', 'user_008', 'bus_008', 1, 'I had a terrible experience. The bus was dirty and the staff was unhelpful.'),
       ('rev_059', 'user_009', 'bus_009', 1, 'The worst bus journey ever. The bus was late and the staff was unprofessional.'),
       ('rev_060', 'user_010', 'bus_010', 1, 'I would not recommend this bus to anyone. The staff was rude and unprofessional.');

create table tbl_seats(
bus_id varchar(30),
total_seats int,
available_seats int,
FOREIGN KEY (bus_id) REFERENCES tbl_buses(bus_id)
)
drop table tbl_seats
select * from tbl_seats
INSERT INTO tbl_seats VALUES
('bus_001', 40, 40-(select sum(number_of_seats) from tbl_booking where bus_id='bus_001')),
('bus_002', 30, 30-(select sum(number_of_seats) from tbl_booking where bus_id='bus_002')),
('bus_003', 25, 25-(select sum(number_of_seats) from tbl_booking where bus_id='bus_003')),
('bus_004', 35, 35-(select sum(number_of_seats) from tbl_booking where bus_id='bus_004')),
('bus_005', 40, 40-(select sum(number_of_seats) from tbl_booking where bus_id='bus_005')),
('bus_006', 30, 30-(select sum(number_of_seats) from tbl_booking where bus_id='bus_006')),
('bus_007', 20, 20-(select sum(number_of_seats) from tbl_booking where bus_id='bus_007')),
('bus_008', 50, 50-(select sum(number_of_seats) from tbl_booking where bus_id='bus_008')),
('bus_009', 35, 35-(select sum(number_of_seats) from tbl_booking where bus_id='bus_009')),
('bus_010', 30, 30-(select sum(number_of_seats) from tbl_booking where bus_id='bus_010')),
('bus_011', 40, 40-(select sum(number_of_seats) from tbl_booking where bus_id='bus_011')),
('bus_012', 30, 30-(select sum(number_of_seats) from tbl_booking where bus_id='bus_012')),
('bus_013', 25, 25-(select sum(number_of_seats) from tbl_booking where bus_id='bus_013')),
('bus_014', 35, 35-(select sum(number_of_seats) from tbl_booking where bus_id='bus_014')),
('bus_015', 30, 30-(select sum(number_of_seats) from tbl_booking where bus_id='bus_015'));


select * from tbl_users
select * from tbl_buses
select * from tbl_booking
select * from tbl_payments
select * from tbl_reviews
select * from tbl_seats

--Triggers
--AUDIT TABLE
drop table customerTriggerAudit

CREATE TABLE customerTriggerAudit
(id INT IDENTITY(1,1), audit_text VARCHAR(100) )

select * from customerTriggerAudit;

--EMAIL TABLE
drop table emailTrigger
CREATE TABLE emailTrigger
(id INT IDENTITY(1,1),email varchar(40),email_text VARCHAR(100) )

select * from emailTrigger

--BUS CONFIRMATION TABLE
CREATE TABLE confirmationTrigger
(id INT IDENTITY(1,1),confirmation_text VARCHAR(100) )

drop table confirmationTrigger
select * from confirmationTrigger

--Trigger to update in customerTriggerAudit on insertion
create TRIGGER tr_tbl_users_ForInsert
ON tbl_users
FOR INSERT
AS
BEGIN
DECLARE @text VARCHAR(100)
SELECT @text=first_name+' '+last_name FROM Inserted
INSERT INTO customerTriggerAudit 
VALUES('New user named ' +@text+  ' registered ')
END

delete from tbl_users where user_id='user_081'
insert into tbl_users values('user_081','Sanmith','Pujari','sanmith@gmail.com',
'pass123')


--Trigger to update in customerTriggerAudit on deletion
create TRIGGER tr_tbl_users_ForDelete
ON tbl_users
FOR DELETE
AS
BEGIN
DECLARE @id varchar(30)
SELECT @id=user_id FROM deleted
INSERT INTO customerTriggerAudit 
VALUES('user with id ' + @id +  ' deleted ')
END

delete from tbl_users where user_id='user_081'

--Trigger to update emailTrigger on insertion
create TRIGGER tr_tbl_users_email_ForInsert
ON tbl_users
FOR INSERT
AS
BEGIN
DECLARE @text VARCHAR(100),@email VARCHAR(50)
select @email=email from tbl_users
SELECT @text=first_name+' '+last_name FROM Inserted
INSERT INTO emailTrigger
VALUES(@email,'Thank you ' +@text+  ' for using our services!')
END


--confirmation trigger on tbl_booking 
create TRIGGER tr_tbl_users_email_ForBooking
ON tbl_booking
FOR INSERT
AS
BEGIN
DECLARE @busNum VARCHAR(30),@busName VARCHAR(30)
select @busNum=bus_id from inserted
--select @busName=name from inserted where bus_id in (select @busNum=bus_id from inserted)
select @busName=name from tbl_buses b,tbl_booking tb where b.bus_id=tb.bus_id
INSERT INTO confirmationTrigger
VALUES('Your bus name and number is '+@busName+' and '+@busNum+'!')
END


select * from tbl_booking
insert into tbl_booking values (71,'user_061','bus_008',3,(SELECT fare FROM tbl_buses WHERE bus_id = 'bus_008') * 3)
delete from tbl_booking where booking_id=71
select * from confirmationTrigger


--update Trigger to show changes occuring 
create table updateTriggeraudit(id int identity,audit text);
select * from updateTriggeraudit

select * from tbl_users

alter trigger tr_user_updation
on tbl_users
for update 
as 
begin 
declare @user_id varchar(20)
declare @oldFN varchar(20),@newFN varchar(20)
declare @oldLN varchar(20),@newLN varchar(20)
declare @oldEmail varchar(30),@newEmail varchar(30)
declare @oldPass varchar(30),@newPass varchar(30)
declare @AuditText varchar(1000);

select * into #temptable from inserted

while(exists(select user_id from #temptable))
begin
set @AuditText=' '
select top 1 @user_id=user_id,@newFN=first_name,@newLN=last_name,
@newEmail=email,@newPass=password from #temptable

select @oldFN=first_name,@oldLN=last_name,@oldEmail=email,@oldPass=password from deleted where user_id=@user_id

set @AuditText='User with Id='+cast(@user_id as varchar)+' changed'
if (@oldFN<> @newFN )
set @AuditText=@AuditText+' first name from '+@oldFN +' to '+@newFN

if (@oldLN<> @newLN )
set @AuditText=@AuditText+' last name from '+@oldLN +' to '+@newLN

if (@oldEmail<> @newEmail )
set @AuditText=@AuditText+' email from '+@oldEmail +' to '+@newEmail

if(@oldpass <>@newpass)
set @AuditText=@AuditText+' pass from '+@oldPass +' to '+@newPass

insert into updateTriggeraudit values (@AuditText)
delete from #temptable where user_id=@user_id
end
end

update tbl_users set last_name='Kotian' where user_id='user_001'

select * from tbl_users







--STORED PROCEDURES
-- To count the total users
create PROC spUserCount
@count int OUTPUT
as 
begin
select @count=COUNT(*) from tbl_users
end

DECLARE @count INT
EXECUTE spUserCount @count OUT
PRINT @count

--seat availability for specified bus
create PROC spAvailableSeats
@busNo varchar(30)
as
begin
select s.bus_id,name,available_seats from tbl_seats s,tbl_buses b 
where s.bus_id=@busNo and s.bus_id=b.bus_id
end

spAvailableSeats 'bus_009'


--check bus availability on specified dates
create PROC spBusAvailability
@busNo varchar(30),
@date datetime
as
begin
select bus_id,name from tbl_buses where bus_id=@busNo and departure_time>@date
end

spBusAvailability 'bus_009','2023-06-21 00:00:00.000'

--sp to get reviews on bus mentioned
create PROC spBusReviews
@busNo varchar(30)
as
begin
select first_name+' '+last_name as username,name as busname,rating,review_text 
from tbl_users u,tbl_buses b,tbl_reviews r
where r.bus_id=@busNo and u.user_id=r.user_id and b.bus_id=r.bus_id
end

spBusReviews 'bus_005'

--sp to get reviews based on rating
create PROC spBusReviewsOnRating
@busNo varchar(30),
@rating int
as
begin
select first_name+' '+last_name as username,name as busname,rating,review_text 
from tbl_users u,tbl_buses b,tbl_reviews r
where r.bus_id=@busNo and u.user_id=r.user_id and b.bus_id=r.bus_id and rating=@rating
end

spBusReviewsOnRating 'bus_005',4

--stored procedure to check seats
select * from tbl_users
select * from tbl_buses
select * from tbl_booking

select * from tbl_payments
select* from tbl_seats

alter PROCEDURE spBusSeat
@userid varchar(20),
@busid varchar(20),
@bookedSeats Int
AS 
BEGIN
DECLARE @seatAvailable INT
SELECT @seatAvailable=available_seats FROM 
tbl_seats WHERE bus_id=@busid

if(@seatAvailable<@bookedSeats)
BEGIN
RAISERROR('Not enough seats available',16,1)
END
ELSE
BEGIN
BEGIN TRY
BEGIN TRAN
UPDATE tbl_seats
SET available_seats=(available_seats-@bookedSeats) where 
bus_id=@busid;

DECLARE @MaxBookingId INT

SELECT @MaxBookingId=CASE WHEN MAX(booking_id) IS NULL THEN 0 
ELSE MAX(booking_id) END FROM tbl_booking
SET @MaxBookingId=@MaxBookingId+1

DECLARE @MaxPaymentId int
SELECT @MaxPaymentId=CASE WHEN MAX(payment_id) IS NULL THEN 0 
ELSE MAX(payment_id) END FROM tbl_payments
SET @MaxPaymentId=@MaxPaymentId+1

INSERT INTO tbl_booking VALUES(@MaxBookingId,@userid,
@busid,@bookedSeats,@bookedSeats*(SELECT fare from 
tbl_buses where bus_id =@busid ));
INSERT INTO tbl_payments VALUES(@MaxPaymentId,@MaxBookingId,
@bookedSeats*(SELECT fare from tbl_buses where bus_id =@busid ),current_timestamp);
COMMIT TRANSACTION
END TRY
BEGIN CATCH
ROLLBACK TRAN
END CATCH
END
END


spBusSeat 'user_075','bus_005',5
