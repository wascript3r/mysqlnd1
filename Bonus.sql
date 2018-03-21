/*
Bonus
Generuojam lenteles
*/
DROP TABLE IF EXISTS `News`;
CREATE TABLE `News` (
    `newsId` int(11) NOT NULL AUTO_INCREMENT,
    `text` text NOT NULL,
    `date` date NOT NULL,
    PRIMARY KEY (`newsId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `Comments`;
CREATE TABLE `Comments` (
    `commentId` int(11) NOT NULL AUTO_INCREMENT,
    `text` text NOT NULL,
    `date` date NOT NULL,
    `newsId` int(11) DEFAULT NULL,
    PRIMARY KEY (`commentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Užpildome lenteles duomenimis
INSERT INTO `Comments` (`commentId`, `text`, `date`, `newsId`) VALUES
(1,	'Komentaras 1 straipsniui 1',	'2017-03-07',	1),
(2,	'Komentaras 1 straipsniui 2',	'2017-03-12',	2),
(3,	'Komentaras 1 straipsniui 3',	'2017-03-07',	3),
(4,	'Komentaras 1 straipsniui 4',	'2017-03-17',	4),
(5,	'Komentaras 1 straipsniui 5',	'2017-03-14',	5),
(6,	'Komentaras 1 straipsniui 6',	'2017-03-06',	6),
(7,	'Komentaras 1 straipsniui 7',	'2017-03-29',	7),
(8,	'Komentaras 1 straipsniui 8',	'2017-03-04',	8),
(9,	'Komentaras 1 straipsniui 9',	'2017-03-21',	9),
(10, 'Komentaras 1 straipsniui 10', '2017-03-11', 10),
(11, 'Komentaras 1 straipsniui 11', '2017-03-21', 11),
(12, 'Komentaras 1 straipsniui 12', '2017-03-04', 12),
(13, 'Komentaras 1 straipsniui 13', '2017-03-09', 13),
(14, 'Komentaras 1 straipsniui 14', '2017-03-29', 14),
(15, 'Komentaras 2 straipsniui 1', '2017-03-08', 1),
(16, 'Komentaras 2 straipsniui 2', '2017-03-13', 2),
(17, 'Komentaras 2 straipsniui 3', '2017-03-06', 3),
(18, 'Komentaras 2 straipsniui 4', '2017-03-16', 4),
(19, 'Komentaras 2 straipsniui 5', '2017-03-15', 5),
(20, 'Komentaras 5 straipsniui 6', '2017-03-08', 6),
(21, 'Komentaras 2 straipsniui 7', '2017-03-28', 7),
(22, 'Komentaras 2 straipsniui 8', '2017-03-03', 8),
(23, 'Komentaras 2 straipsniui 9', '2017-03-22', 9),
(24, 'Komentaras 2 straipsniui 10', '2017-03-15', 10),
(25, 'Komentaras 2 straipsniui 11', '2017-03-19', 11),
(26, 'Komentaras 2 straipsniui 12', '2017-03-03', 12),
(27, 'Komentaras 2 straipsniui 13', '2017-03-11', 13),
(28, 'Komentaras 2 straipsniui 14', '2017-03-31', 14);

INSERT INTO `News` (`newsId`, `text`, `date`) VALUES
(1,	'Straipsnis 1',	'2017-02-05'),
(2,	'Straipsnis 2',	'2017-02-07'),
(3,	'Straipsnis 3',	'2017-02-17'),
(4,	'Straipsnis 4',	'2017-02-28'),
(5,	'Straipsnis 5',	'2017-02-04'),
(6,	'Straipsnis 6',	'2017-02-10'),
(7,	'Straipsnis 7',	'2017-02-09'),
(8,	'Straipsnis 8',	'2017-02-14'),
(9,	'Straipsnis 9',	'2017-02-11'),
(10, 'Straipsnis 10', '2017-02-21'),
(11, 'Straipsnis 11', '2017-02-13'),
(12, 'Straipsnis 12', '2017-02-12'),
(13, 'Straipsnis 13', '2017-02-21'),
(14, 'Straipsnis 11', '2017-02-06');

-- Išgauname naujausius 10 straipsnių su paskutiniu parašytu komentaru
SELECT `n`.*, `c`.`text` AS lastComment, `c`.`date` AS commentDate FROM `News` `n` INNER JOIN `Comments` `c` ON (`n`.`newsId` = `c`.`newsId` AND `c`.`date` = (SELECT MAX(`date`) FROM `Comments` WHERE `newsId` = `c`.`newsId` ORDER BY `commentId` DESC)) ORDER BY `n`.`date` DESC LIMIT 10;