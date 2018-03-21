-- 8.1
DROP TABLE IF EXISTS `AuthorsBooks`;
CREATE TABLE `AuthorsBooks` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `bookId` int(11) DEFAULT NULL,
    `authorId` int(11) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO `AuthorsBooks` (`bookId`, `authorId`) SELECT `bookId`, `authorId` FROM `Books`;
ALTER TABLE `Books` DROP `authorId`;

ALTER TABLE `Books` CHARACTER SET utf8, MODIFY `title` VARCHAR(255) CHARACTER SET utf8 NOT NULL;