CREATE TABLE
  `USER` (
    `id` int unsigned NOT NULL AUTO_INCREMENT,
    `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `username` varchar(255) NOT NULL,
    `hashedPassword` longtext NOT NULL,
    `salt` longtext NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `username` (`username`)
  )
