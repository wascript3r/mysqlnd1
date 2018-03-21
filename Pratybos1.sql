-- 1.1
SELECT * FROM `Books`;
-- 1.2
SELECT `title` FROM `Books` ORDER BY `title` ASC;
-- 1.3
SELECT `authorId`, COUNT(*) AS `booksCount` FROM `Books` GROUP BY `authorId`;