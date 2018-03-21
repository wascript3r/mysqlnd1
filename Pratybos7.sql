-- 7.1
DROP TABLE IF EXISTS `AuthorsBooks`;
CREATE TABLE `AuthorsBooks` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `bookId` int(11) DEFAULT NULL,
    `authorId` int(11) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
-- 7.2
INSERT INTO `AuthorsBooks` (`bookId`, `authorId`) SELECT `bookId`, `authorId` FROM `Books`;
ALTER TABLE `Books` DROP `authorId`;
INSERT INTO `AuthorsBooks` (`bookId`, `authorId`) VALUES(2, 3);
INSERT INTO `AuthorsBooks` (`bookId`, `authorId`) VALUES(2, 5);
-- 7.3
SELECT `b`.*, GROUP_CONCAT(`a`.`name`) AS authors FROM `Books` `b` INNER JOIN `AuthorsBooks` `ab` ON `b`.`bookId` = `ab`.`bookId` INNER JOIN `Authors` `a` ON `ab`.`authorId` = `a`.`authorId` GROUP BY `b`.`bookId`;
/*
7.4
Keičiam lentelės bei stulpelio charset'ą
*/
ALTER TABLE `Books` CHARACTER SET utf8, MODIFY `title` VARCHAR(255) CHARACTER SET utf8 NOT NULL;