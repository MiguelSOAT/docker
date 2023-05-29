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
  ) ENGINE = InnoDB AUTO_INCREMENT = 71 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci