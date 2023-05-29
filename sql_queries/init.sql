CREATE DATABASE `TFM`;
USE `TFM`;

CREATE TABLE
  `USER` (
    `id` int unsigned NOT NULL AUTO_INCREMENT,
    `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `username` varchar(20) NOT NULL,
    `hashedPassword` longtext NOT NULL,
    `salt` longtext NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `username` (`username`)
  );


CREATE TABLE
    `USER_TELEGRAM` (
    `id` int unsigned NOT NULL AUTO_INCREMENT,
    `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `userId` int unsigned NOT NULL,
    `telegramId` varchar(25) NOT NULL,
    `securityToken` varchar(25) DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `userId` (`userId`),
    CONSTRAINT `USER_TELEGRAM_FK_USER_ID` FOREIGN KEY (`userId`) REFERENCES `USER` (`id`)
    );

CREATE TABLE
  `USER_FILES` (
    `id` int unsigned NOT NULL AUTO_INCREMENT,
    `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `userId` int unsigned NOT NULL,
    `fileName` varchar(255) NOT NULL,
    `fileSize` int unsigned NOT NULL,
    `fileType` varchar(20) NOT NULL,
    `fileExtension` varchar(10) NOT NULL,
    `uuid` varchar(255) NOT NULL,
    `size` int unsigned NOT NULL,
    `origin` char(8) NOT NULL,
    `originalSize` int unsigned NOT NULL,
    PRIMARY KEY (`id`),
    KEY `userId` (`userId`),
    CONSTRAINT `USER_FILES_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `USER` (`id`)
  );

