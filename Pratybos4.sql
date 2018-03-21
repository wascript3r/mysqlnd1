-- 4.1
SELECT `a`.`authorId`, `a`.`name`, COUNT(`b`.`bookId`) AS `knyguKiekis` FROM `Authors` `a` LEFT JOIN `Books` `b` ON `a`.`authorId` = `b`.`authorId` GROUP BY `a`.`authorId`;
SELECT `a`.`authorId`, `a`.`name`, COUNT(`b`.`bookId`) AS `knyguKiekis` FROM `Authors` `a` INNER JOIN `Books` `b` ON `a`.`authorId` = `b`.`authorId` GROUP BY `a`.`authorId`;
-- 4.2
DELETE FROM `Books` WHERE `authorId` IS NULL;