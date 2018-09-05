CREATE DATABASE `library`;
USE `library`;

CREATE TABLE `users` (
	`id` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(20) NOT NULL UNIQUE,
    `password` VARCHAR(200) NOT NULL,
    `firstname` VARCHAR(50) NOT NULL,
    `lastname` VARCHAR(50) NOT NULL,
    `email` VARCHAR(200) NOT NULL UNIQUE
) ENGINE=InnoDB, CHARSET=utf8, COLLATE=utf8_general_ci;