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
  ) ENGINE = InnoDB AUTO_INCREMENT = 27 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci