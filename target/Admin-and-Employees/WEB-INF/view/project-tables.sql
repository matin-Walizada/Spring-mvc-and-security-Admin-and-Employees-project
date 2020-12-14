  
-- please excute the following scripts one by one in a databse

-- first we excute this script
CREATE TABLE `users` (
  `first_Name` varchar(50) NOT NULL,
  `last_Name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date_reg` varchar(50) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `id_UNIQUE` (`username`)
);


-- seconde we excute this script
INSERT INTO `users`
(
`first_Name`,
`last_Name`,
`username`,
`password`,
`phone`,
`email`,
`date_reg`,
`enabled`)
VALUES
('sana', 'zainab', 'sana', '{noop}asdf', '34353234', 'sana@gmail.com', '2020-11-18 18:29:00.881', '1'),
('maryam', 'karim', 'maryam', '{noop}abc', '2342424', 'mari@gmail.com', '2020-11-16 16:29:00.881', '1'),
('samir', 'khan', 'samir', '{noop}xyz', '3333333333', 'samir@gmail.com', '2020-11-17 17:29:00.881', '1');

-- thired we excute this script
CREATE TABLE `authorities` (
  `username` varchar(50) NOT NULL,
  `authority` varchar(50) NOT NULL,
  UNIQUE KEY `authorities_idx_1` (`username`,`authority`),
  CONSTRAINT `authorities_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
);


 -- fourth we excute this script
INSERT INTO `authorities`
 (`username`, `authority`) 
VALUES 
('sana', 'ROLE_EMPLOYEE'),
('maryam', 'ROLE_EMPLOYEE'),
 ('maryam', 'ROLE_ADMIN'),
 ('samir', 'ROLE_EMPLOYEE'),
 ('samir', 'ROLE_MANAGER');




