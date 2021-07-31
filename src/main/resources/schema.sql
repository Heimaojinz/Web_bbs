DROP DATABASE IF EXISTS ssm;
CREATE DATABASE ssm CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE ssm;
CREATE TABLE Todo
(
    `id`      INT          NOT NULL AUTO_INCREMENT,
    `content`   VARCHAR(255) NOT NULL,
    PRIMARY KEY (`id`)
);


CREATE TABLE `ssm`.`Topic` (
`id` INT NOT NULL AUTO_INCREMENT,
`title` VARCHAR(200) NOT NULL,
`content` VARCHAR(1000) NOT NULL,
`userId` INT NOT NULL,
PRIMARY KEY (`id`));



CREATE TABLE `ssm`.`user` (
 `id` INT NOT NULL AUTO_INCREMENT,
 `username` VARCHAR(45) NOT NULL,
 `password` VARCHAR(100) NOT NULL,
 `avatar` VARCHAR(100) NOT NULL,
 `role` ENUM('admin', 'guest', 'normal') NOT NULL,
 `email` VARCHAR(45) NOT NULL,
 `createdTime` INT NOT NULL,
 `updatedTime` INT NOT NULL,
 PRIMARY KEY (`id`));



CREATE TABLE `ssm`.`topiccomment` (
 `id` INT NOT NULL AUTO_INCREMENT,
 `content` VARCHAR(1000) NOT NULL,
 `userId` INT NOT NULL,
 `topicId` INT NOT NULL,
 `createdTime` INT NOT NULL,
 `updatedTime` INT NOT NULL,
 PRIMARY KEY (`id`));




CREATE TABLE `ssm`.`message` (
`id` INT NOT NULL AUTO_INCREMENT,
`content` VARCHAR(300) NOT NULL,
`senderId` INT NOT NULL,
`receiverId` INT NOT NULL,
`createdTime` INT NOT NULL,
`updatedTime` INT NOT NULL,
PRIMARY KEY (`id`));


CREATE TABLE `ssm`.`board` (
 `id` INT NOT NULL AUTO_INCREMENT,
 `name` VARCHAR(45) NOT NULL,
 `sign` VARCHAR(45) NOT NULL,
 PRIMARY KEY (`id`));
