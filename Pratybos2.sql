-- 2.1
INSERT INTO `Authors` (`name`) VALUES ('Jonas Jonaitis');
INSERT INTO `Authors` (`name`) VALUES ('Petras Petraitis');
-- 2.2
INSERT INTO `Books` (`authorId`, `title`, `year`) VALUES (8, 'Apie uki ir bites', 2011);
INSERT INTO `Books` (`authorId`, `title`, `year`) VALUES (8, 'Haris Poteris', 2008);
INSERT INTO `Books` (`authorId`, `title`, `year`) VALUES (9, 'Sename dvare', 1976);
-- 2.3
UPDATE `Books` SET `authorId` = 9 WHERE `bookId` = 10;