-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.8-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for csfinal
CREATE DATABASE IF NOT EXISTS `csfinal` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `csfinal`;

-- Dumping structure for table csfinal.authorities
CREATE TABLE IF NOT EXISTS `authorities` (
  `authority` varchar(255) NOT NULL,
  `username` bigint(20) NOT NULL,
  PRIMARY KEY (`username`,`authority`),
  CONSTRAINT `FKhjuy9y4fd8v5m3klig05ktofg` FOREIGN KEY (`username`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table csfinal.authorities: ~0 rows (approximately)
/*!40000 ALTER TABLE `authorities` DISABLE KEYS */;
/*!40000 ALTER TABLE `authorities` ENABLE KEYS */;

-- Dumping structure for table csfinal.dcom
CREATE TABLE IF NOT EXISTS `dcom` (
  `position` int(11) NOT NULL,
  `Genres` varchar(255) DEFAULT NULL,
  `ImdbRating` double DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `constant` varchar(255) DEFAULT NULL,
  `Runtime` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table csfinal.dcom: ~150 rows (approximately)
/*!40000 ALTER TABLE `dcom` DISABLE KEYS */;
INSERT INTO `dcom` (`position`, `Genres`, `ImdbRating`, `title`, `release_date`, `constant`, `Runtime`, `url`) VALUES
	(1, 'Drama, Family, Sport', 6.7, 'Tiger Town', '1983-10-09', 'tt0086439', 95, 'https://www.imdb.com/title/tt0086439/'),
	(2, 'Comedy, Crime', 6, 'Gone Are the Dayes', '1984-05-06', 'tt0087351', 90, 'https://www.imdb.com/title/tt0087351/'),
	(3, 'Drama, Family, History', 7.8, 'Love Leads the Way: A True Story', '1984-10-07', 'tt0087642', 99, 'https://www.imdb.com/title/tt0087642/'),
	(4, 'Adventure, History', 6.7, 'Black Arrow', '1985-01-06', 'tt0088813', 90, 'https://www.imdb.com/title/tt0088813/'),
	(5, 'Comedy, Drama, Family', 6.5, 'Lots of Luck', '1985-02-03', 'tt0089506', 88, 'https://www.imdb.com/title/tt0089506/'),
	(6, 'Drama, Comedy', 6.5, 'The Undergrads', '1985-04-01', 'tt0090232', 103, 'https://www.imdb.com/title/tt0090232/'),
	(7, 'Family, Comedy', 6.3, 'The Parent Trap II', '1986-07-26', 'tt0091721', 81, 'https://www.imdb.com/title/tt0091721/'),
	(8, 'Comedy, Crime, Family', 6.6, 'Spot Marks the X', '1986-10-18', 'tt0091999', 90, 'https://www.imdb.com/title/tt0091999/'),
	(9, 'Western', 6.8, 'Louis L\'Amour\'s Down the Long Hills', '1986-11-15', 'tt0091436', 85, 'https://www.imdb.com/title/tt0091436/'),
	(10, 'Family, Sci-Fi, Comedy', 6.2, 'Not Quite Human', '1987-06-19', 'tt0093649', 97, 'https://www.imdb.com/title/tt0093649/'),
	(11, 'Family, Comedy', 6.9, 'Save the Dog!', '1988-03-19', 'tt0096042', 87, 'https://www.imdb.com/title/tt0096042/'),
	(12, 'Adventure, Romance, Fantasy, Mystery, Drama', 6.3, 'The Night Train to Kathmandu', '1988-06-05', 'tt0095733', 102, 'https://www.imdb.com/title/tt0095733/'),
	(13, 'Family', 7.2, 'Strange Companions', '1983-12-04', 'tt0078328', 92, 'https://www.imdb.com/title/tt0078328/'),
	(14, 'Comedy, Family', 7.3, 'Ollie Hopnoodle\'s Haven of Bliss', '1988-08-06', 'tt0098023', 89, 'https://www.imdb.com/title/tt0098023/'),
	(15, 'Drama, History', 6.8, 'A Friendship in Vienna', '1988-08-27', 'tt0095181', 100, 'https://www.imdb.com/title/tt0095181/'),
	(16, 'Action, Adventure, Family', 6.8, 'Good Old Boy: A Delta Boyhood', '1988-11-11', 'tt0095239', 108, 'https://www.imdb.com/title/tt0095239/'),
	(17, 'Drama, Family', 7.1, 'Goodbye, Miss 4th of July', '1988-12-03', 'tt0095240', 89, 'https://www.imdb.com/title/tt0095240/'),
	(18, 'Adventure, Drama, Family', 6.7, 'Danny the Champion of the World', '1989-04-29', 'tt0097152', 99, 'https://www.imdb.com/title/tt0097152/'),
	(19, 'Drama, Family', 7.5, 'Looking for Miracles', '1989-06-03', 'tt0097779', 103, 'https://www.imdb.com/title/tt0097779/'),
	(20, 'Comedy, Family, Sci-Fi', 6.1, 'Not Quite Human II', '1989-09-23', 'tt0098003', 91, 'https://www.imdb.com/title/tt0098003/'),
	(21, 'Drama', 7, 'Spooner', '1989-12-02', 'tt0098376', 98, 'https://www.imdb.com/title/tt0098376/'),
	(22, 'Drama, Family', 7, 'Lantern Hill', '1989-08-29', 'tt0099974', 111, 'https://www.imdb.com/title/tt0099974/'),
	(23, 'Adventure, Drama, Family, War', 6.8, 'Chips, the War Dog', '1990-03-24', 'tt0099262', 92, 'https://www.imdb.com/title/tt0099262/'),
	(24, 'Adventure, Family, Fantasy, Musical, Mystery', 7.6, 'Mother Goose Rock \'n\' Rhyme', '1990-05-19', 'tt0100192', 96, 'https://www.imdb.com/title/tt0100192/'),
	(25, 'Crime, Drama', 6.2, 'The Little Kidnappers', '1990-08-17', 'tt0100033', 92, 'https://www.imdb.com/title/tt0100033/'),
	(26, 'Family, Adventure', 6.4, 'Back to Hannibal: The Return of Tom Sawyer and Huckleberry Finn', '1990-10-21', 'tt0099087', 92, 'https://www.imdb.com/title/tt0099087/'),
	(27, 'Action, Adventure, Comedy, Family', 6.8, 'Bejewelled', '1991-01-20', 'tt0101426', 95, 'https://www.imdb.com/title/tt0101426/'),
	(28, 'Drama, Family, Music', 7.5, 'Perfect Harmony', '1991-03-31', 'tt0102653', 93, 'https://www.imdb.com/title/tt0102653/'),
	(29, 'Biography, Drama', 6.9, 'Mark Twain and Me', '1991-11-22', 'tt0102404', 93, 'https://www.imdb.com/title/tt0102404/'),
	(30, 'Comedy, Family, Sci-Fi', 5.9, 'Still Not Quite Human', '1992-05-31', 'tt0105473', 84, 'https://www.imdb.com/title/tt0105473/'),
	(31, 'Drama', 7.4, 'The Ernest Green Story', '1993-01-17', 'tt0106826', 101, 'https://www.imdb.com/title/tt0106826/'),
	(32, 'Drama', 7.8, 'On Promised Land', '1994-04-17', 'tt0110727', 105, 'https://www.imdb.com/title/tt0110727/'),
	(33, 'Drama', 7.1, 'The Old Curiosity Shop', '1995-03-19', 'tt0108886', 120, 'https://www.imdb.com/title/tt0108886/'),
	(34, 'Adventure, Family, Fantasy, Sci-Fi', 6.5, 'Escape to Witch Mountain', '1995-04-29', 'tt0112985', 87, 'https://www.imdb.com/title/tt0112985/'),
	(35, 'Fantasy, Drama, Family', 7.4, 'The Four Diamonds', '1995-08-12', 'tt0113100', 96, 'https://www.imdb.com/title/tt0113100/'),
	(36, 'Comedy, Family, Fantasy', 6, 'Freaky Friday', '1995-05-06', 'tt0113112', 86, 'https://www.imdb.com/title/tt0113112/'),
	(37, 'Drama', 6.8, 'The Little Riders', '1996-03-24', 'tt0116896', 96, 'https://www.imdb.com/title/tt0116896/'),
	(38, 'Drama', 6.7, 'Nightjohn', '1996-04-21', 'tt0117180', 92, 'https://www.imdb.com/title/tt0117180/'),
	(39, 'Comedy, Family, Fantasy', 6.7, 'Wish Upon a Star', '1996-11-12', 'tt0118178', 90, 'https://www.imdb.com/title/tt0118178/'),
	(40, 'Comedy, Drama, Family, Fantasy', 7.3, 'Susie Q', '1996-12-31', 'tt0117794', 85, 'https://www.imdb.com/title/tt0117794/'),
	(41, 'Adventure, Comedy, Drama, Family', 6.8, 'The Paper Brigade', '1996-09-25', 'tt0117287', 90, 'https://www.imdb.com/title/tt0117287/'),
	(42, 'Drama', 5.6, 'Northern Lights', '1997-08-23', 'tt0123197', 111, 'https://www.imdb.com/title/tt0123197/'),
	(43, 'Comedy, Family, Horror', 6.5, 'Under Wraps', '1997-10-25', 'tt0128801', 95, 'https://www.imdb.com/title/tt0128801/'),
	(44, 'Comedy, Family, Fantasy, Mystery', 4.7, 'You Lucky Dog', '1998-06-27', 'tt0153992', 89, 'https://www.imdb.com/title/tt0153992/'),
	(45, 'Drama, Family, Sport', 7.1, 'Brink!', '1998-08-29', 'tt0162212', 99, 'https://www.imdb.com/title/tt0162212/'),
	(46, 'Adventure, Comedy, Family, Fantasy', 6.8, 'Halloweentown', '1998-10-17', 'tt0173886', 84, 'https://www.imdb.com/title/tt0173886/'),
	(47, 'Adventure, Comedy, Family, Sci-Fi', 6.4, 'Zenon: Girl of the 21st Century', '1999-01-23', 'tt0186726', 97, 'https://www.imdb.com/title/tt0186726/'),
	(48, 'Comedy, Family, Sci-Fi', 5.1, 'Can of Worms', '1999-04-10', 'tt0186910', 90, 'https://www.imdb.com/title/tt0186910/'),
	(49, 'Comedy, Family, Fantasy', 6, 'The Thirteenth Year', '1999-05-15', 'tt0200208', 95, 'https://www.imdb.com/title/tt0200208/'),
	(50, 'Comedy, Drama, Family, Sci-Fi', 6.3, 'Smart House', '1999-06-26', 'tt0192618', 82, 'https://www.imdb.com/title/tt0192618/'),
	(51, 'Drama, Family, Sport', 6.3, 'Johnny Tsunami', '1999-07-24', 'tt0206064', 88, 'https://www.imdb.com/title/tt0206064/'),
	(52, 'Comedy, Family, Romance, Sci-Fi', 6.3, 'Genius', '1999-08-21', 'tt0193187', 82, 'https://www.imdb.com/title/tt0193187/'),
	(53, 'Family, Fantasy', 6.9, 'Don\'t Look Under the Bed', '1999-10-09', 'tt0208101', 100, 'https://www.imdb.com/title/tt0208101/'),
	(54, 'Drama, Family', 6.2, 'Horse Sense', '1999-11-20', 'tt0219813', 92, 'https://www.imdb.com/title/tt0219813/'),
	(55, 'Biography, Drama, Family', 7.2, 'The Color of Friendship', '2000-02-05', 'tt0213565', 87, 'https://www.imdb.com/title/tt0213565/'),
	(56, 'Drama, Family, Sport', 6.1, 'Alley Cats Strike', '2000-03-18', 'tt0217990', 103, 'https://www.imdb.com/title/tt0217990/'),
	(57, 'Comedy, Family, Fantasy, Sci-Fi', 5.6, 'Up, Up, and Away!', '2000-01-22', 'tt0211174', 90, 'https://www.imdb.com/title/tt0211174/'),
	(58, 'Drama, Family, Romance', 6.2, 'Rip Girls', '2000-04-22', 'tt0244764', 87, 'https://www.imdb.com/title/tt0244764/'),
	(59, 'Biography, Comedy, Drama, Family, Sport', 6, 'Miracle in Lane 2', '2000-05-13', 'tt0218440', 120, 'https://www.imdb.com/title/tt0218440/'),
	(60, 'Comedy, Family, Sci-Fi', 6, 'Stepsister from Planet Weird', '2000-06-17', 'tt0250754', 85, 'https://www.imdb.com/title/tt0250754/'),
	(61, 'Family, Sport', 5.3, 'Ready to Run', '2000-07-14', 'tt0253550', 96, 'https://www.imdb.com/title/tt0253550/'),
	(62, 'Comedy, Drama, Family', 5.7, 'Quints', '2000-08-18', 'tt0245380', 83, 'https://www.imdb.com/title/tt0245380/'),
	(63, 'Comedy, Family, Sci-Fi', 6.1, 'The Other Me', '2000-09-08', 'tt0246834', 90, 'https://www.imdb.com/title/tt0246834/'),
	(64, 'Comedy, Family, Fantasy, Horror', 5.9, 'Mom\'s Got a Date with a Vampire', '2000-10-13', 'tt0250593', 85, 'https://www.imdb.com/title/tt0250593/'),
	(65, 'Action, Comedy, Family, Mystery', 6.5, 'Phantom of the Megaplex', '2000-11-10', 'tt0266850', 89, 'https://www.imdb.com/title/tt0266850/'),
	(66, 'Comedy, Family', 5.9, 'The Ultimate Christmas Present', '2000-12-01', 'tt0256466', 85, 'https://www.imdb.com/title/tt0256466/'),
	(67, 'Comedy, Family, Adventure, Sci-Fi', 5.9, 'Zenon: The Zequel', '2001-01-12', 'tt0271271', 100, 'https://www.imdb.com/title/tt0271271/'),
	(68, 'Action, Adventure, Family', 6.6, 'Motocrossed', '2001-02-16', 'tt0273842', 110, 'https://www.imdb.com/title/tt0273842/'),
	(69, 'Adventure, Comedy, Drama, Family, Fantasy, Sport', 6.2, 'The Luck of the Irish', '2001-03-09', 'tt0274636', 86, 'https://www.imdb.com/title/tt0274636/'),
	(70, 'Comedy, Drama, Family', 5.1, 'Hounded', '2001-04-30', 'tt0274557', 91, 'https://www.imdb.com/title/tt0274557/'),
	(71, 'Action, Adventure, Comedy, Family, Sci-Fi', 6.2, 'Jett Jackson: The Movie', '2001-06-08', 'tt0272606', 100, 'https://www.imdb.com/title/tt0272606/'),
	(72, 'Adventure, Drama, Family', 5.2, 'The Jennie Project', '2001-07-13', 'tt0274584', 76, 'https://www.imdb.com/title/tt0274584/'),
	(73, 'Family, Adventure, Comedy, Drama', 6.2, 'Jumping Ship', '2001-08-17', 'tt0271172', 93, 'https://www.imdb.com/title/tt0271172/'),
	(74, 'Comedy, Family, Sci-Fi', 4.6, 'The Poof Point', '2001-09-14', 'tt0274728', 90, 'https://www.imdb.com/title/tt0274728/'),
	(75, 'Adventure, Family, Fantasy', 6.5, 'Halloweentown II: Kalabar\'s Revenge', '2001-10-12', 'tt0274761', 81, 'https://www.imdb.com/title/tt0274761/'),
	(76, 'Comedy, Family', 5.5, '\'Twas the Night', '2001-12-07', 'tt0282223', 84, 'https://www.imdb.com/title/tt0282223/'),
	(77, 'Biography, Drama, Family, Sport', 6.1, 'Double Teamed', '2002-01-18', 'tt0281905', 120, 'https://www.imdb.com/title/tt0281905/'),
	(78, 'Comedy, Drama, Family', 5.5, 'Cadet Kelly', '2002-03-08', 'tt0294425', 101, 'https://www.imdb.com/title/tt0294425/'),
	(79, 'Drama, Comedy, Family', 7.5, 'Tru Confessions', '2002-04-05', 'tt0296251', 112, 'https://www.imdb.com/title/tt0296251/'),
	(80, 'Comedy, Crime, Family, Mystery', 5.1, 'Get a Clue', '2002-06-28', 'tt0282521', 83, 'https://www.imdb.com/title/tt0282521/'),
	(81, 'Comedy, Drama, Family', 5.7, 'Gotta Kick It Up!', '2002-07-26', 'tt0299943', 78, 'https://www.imdb.com/title/tt0299943/'),
	(82, 'Drama, Family, Romance', 6.1, 'A Ring of Endless Light', '2002-08-23', 'tt0282123', 88, 'https://www.imdb.com/title/tt0282123/'),
	(83, 'Comedy, Family, Fantasy, Horror', 6.7, 'The Scream Team', '2002-10-11', 'tt0313634', 100, 'https://www.imdb.com/title/tt0313634/'),
	(84, 'Comedy, Family, Fantasy, Drama', 6.1, 'You Wish!', '2003-01-10', 'tt0329783', 84, 'https://www.imdb.com/title/tt0329783/'),
	(85, 'Biography, Drama, Family', 6.3, 'Right on Track', '2003-03-21', 'tt0323810', 89, 'https://www.imdb.com/title/tt0323810/'),
	(86, 'Comedy, Family', 6.2, 'The Even Stevens Movie', '2003-06-13', 'tt0327698', 93, 'https://www.imdb.com/title/tt0327698/'),
	(87, 'Comedy, Family, Sport', 6, 'Eddie\'s Million Dollar Cook-Off', '2003-07-18', 'tt0365149', 110, 'https://www.imdb.com/title/tt0365149/'),
	(88, 'Drama, Family, Sport', 5.7, 'Full-Court Miracle', '2003-11-21', 'tt0382142', 90, 'https://www.imdb.com/title/tt0382142/'),
	(89, 'Family, Sci-Fi, Comedy, Fantasy, Music', 5.7, 'Pixel Perfect', '2004-01-16', 'tt0393596', 85, 'https://www.imdb.com/title/tt0393596/'),
	(90, 'Drama, Family, Sport', 6.8, 'Going to the Mat', '2004-03-19', 'tt0399104', 120, 'https://www.imdb.com/title/tt0399104/'),
	(91, 'Comedy, Family, Music', 5.6, 'Stuck in the Suburbs', '2004-07-16', 'tt0410696', 76, 'https://www.imdb.com/title/tt0410696/'),
	(92, 'Drama, Family', 6.2, 'Tiger Cruise', '2004-08-06', 'tt0397113', 88, 'https://www.imdb.com/title/tt0397113/'),
	(93, 'Adventure, Comedy, Family, Sci-Fi', 5.5, 'Zenon: Z3', '2004-06-11', 'tt0379060', 81, 'https://www.imdb.com/title/tt0379060/'),
	(94, 'Comedy, Family, Fantasy', 6.2, 'Halloweentown High', '2004-10-08', 'tt0414078', 82, 'https://www.imdb.com/title/tt0414078/'),
	(95, 'Drama, Family, Fantasy, Mystery', 6.3, 'Now You See It...', '2005-01-14', 'tt0426568', 83, 'https://www.imdb.com/title/tt0426568/'),
	(96, 'Family', 5.7, 'Buffalo Dreams', '2005-03-11', 'tt0430932', 89, 'https://www.imdb.com/title/tt0430932/'),
	(97, 'Animation, Action, Adventure, Comedy, Family, Fantasy, Sci-Fi', 7.1, 'Kim Possible: So the Drama', '2005-04-08', 'tt0446724', 71, 'https://www.imdb.com/title/tt0446724/'),
	(98, 'Comedy, Drama, Family, Sport', 5.7, 'Go Figure', '2005-06-10', 'tt0447987', 88, 'https://www.imdb.com/title/tt0447987/'),
	(99, 'Comedy, Family', 4.9, 'Life Is Ruff', '2005-07-15', 'tt0450455', 84, 'https://www.imdb.com/title/tt0450455/'),
	(100, 'Animation, Adventure, Comedy, Family, Fantasy, Sci-Fi', 5.3, 'The Proud Family Movie', '2005-08-19', 'tt0448090', 90, 'https://www.imdb.com/title/tt0448090/'),
	(101, 'Comedy, Drama, Family, Fantasy', 5.7, 'Twitches', '2005-10-14', 'tt0467421', 86, 'https://www.imdb.com/title/tt0467421/'),
	(102, 'Comedy, Drama, Family, Music, Musical, Romance', 5.3, 'High School Musical', '2006-01-20', 'tt0475293', 98, 'https://www.imdb.com/title/tt0475293/'),
	(103, 'Comedy, Family, Romance', 5.2, 'Cow Belles', '2006-03-24', 'tt0489007', 90, 'https://www.imdb.com/title/tt0489007/'),
	(104, 'Action, Adventure, Family', 5.4, 'Wendy Wu: Homecoming Warrior', '2006-06-16', 'tt0790781', 91, 'https://www.imdb.com/title/tt0790781/'),
	(105, 'Comedy, Drama, Family', 5.5, 'Read It and Weep', '2006-07-21', 'tt0494716', 84, 'https://www.imdb.com/title/tt0494716/'),
	(106, 'Comedy, Drama, Family, Music, Musical', 4.8, 'The Cheetah Girls', '2003-08-15', 'tt0338852', 100, 'https://www.imdb.com/title/tt0338852/'),
	(107, 'Comedy, Drama, Family, Music, Musical', 4.9, 'The Cheetah Girls 2', '2006-08-25', 'tt0800318', 96, 'https://www.imdb.com/title/tt0800318/'),
	(108, 'Comedy, Family, Fantasy', 5.6, 'Return to Halloweentown', '2006-10-20', 'tt0816520', 88, 'https://www.imdb.com/title/tt0816520/'),
	(109, 'Comedy, Drama, Family, Romance, Sport', 5.3, 'Jump In!', '2007-01-12', 'tt0805559', 85, 'https://www.imdb.com/title/tt0805559/'),
	(110, 'Comedy, Drama, Family, Sport', 5.5, 'Johnny Kapahala: Back on Board', '2007-06-08', 'tt0942378', 90, 'https://www.imdb.com/title/tt0942378/'),
	(111, 'Comedy, Drama, Family, Music, Musical, Romance', 4.9, 'High School Musical 2', '2007-08-17', 'tt0810900', 104, 'https://www.imdb.com/title/tt0810900/'),
	(112, 'Drama, Family, Fantasy', 5.8, 'Twitches Too', '2007-10-12', 'tt1017465', 83, 'https://www.imdb.com/title/tt1017465/'),
	(113, 'Adventure, Comedy, Family, Sci-Fi', 5.8, 'Minutemen', '2008-01-25', 'tt1072755', 98, 'https://www.imdb.com/title/tt1072755/'),
	(114, 'Comedy, Family, Music, Musical, Romance', 5.1, 'Camp Rock', '2008-06-20', 'tt1055366', 94, 'https://www.imdb.com/title/tt1055366/'),
	(115, 'Comedy, Drama, Family, Musical', 4.6, 'The Cheetah Girls: One World', '2008-08-12', 'tt1013542', 90, 'https://www.imdb.com/title/tt1013542/'),
	(116, 'Action, Adventure, Comedy, Crime, Family', 4.9, 'Dadnapped', '2009-02-16', 'tt1090750', 84, 'https://www.imdb.com/title/tt1090750/'),
	(117, 'Comedy, Family', 5.4, 'Hatching Pete', '2009-04-24', 'tt1222818', 90, 'https://www.imdb.com/title/tt1222818/'),
	(118, 'Comedy, Drama, Family', 5.6, 'Princess Protection Program', '2009-05-20', 'tt1196339', 90, 'https://www.imdb.com/title/tt1196339/'),
	(119, 'Adventure, Comedy, Drama, Family, Fantasy', 6.2, 'Wizards of Waverly Place: The Movie', '2009-08-28', 'tt1369845', 94, 'https://www.imdb.com/title/tt1369845/'),
	(120, 'Comedy, Family, Music, Romance', 6.1, 'StarStruck', '2010-02-14', 'tt1579247', 90, 'https://www.imdb.com/title/tt1579247/'),
	(121, 'Family, Romance, Sport', 5.4, 'Den Brother', '2010-08-13', 'tt1376699', 89, 'https://www.imdb.com/title/tt1376699/'),
	(122, 'Comedy, Family, Music, Musical, Romance', 5.2, 'Camp Rock 2: The Final Jam', '2010-09-03', 'tt1252380', 97, 'https://www.imdb.com/title/tt1252380/'),
	(123, 'Drama, Family, Fantasy', 5.7, 'Avalon High', '2010-11-12', 'tt1614950', 90, 'https://www.imdb.com/title/tt1614950/'),
	(124, 'Adventure, Comedy, Crime, Drama, Family, Sci-Fi', 5.3, 'The Suite Life Movie', '2011-03-25', 'tt1754799', 79, 'https://www.imdb.com/title/tt1754799/'),
	(125, 'Comedy, Drama, Family, Music, Musical', 6.9, 'Lemonade Mouth', '2011-04-15', 'tt1648204', 103, 'https://www.imdb.com/title/tt1648204/'),
	(126, 'Animation, Action, Adventure, Comedy, Family, Musical, Sci-Fi', 7.4, 'Phineas and Ferb the Movie: Across the 2nd Dimension', '2011-08-05', 'tt1825918', 78, 'https://www.imdb.com/title/tt1825918/'),
	(127, 'Comedy, Drama, Family, Romance', 6.4, 'Geek Charming', '2011-11-11', 'tt1835977', 94, 'https://www.imdb.com/title/tt1835977/'),
	(128, 'Comedy, Drama, Family', 6.4, 'Good Luck Charlie, It\'s Christmas!', '2011-12-02', 'tt1828976', 90, 'https://www.imdb.com/title/tt1828976/'),
	(129, 'Comedy, Drama, Family', 5.1, 'Frenemies', '2012-01-13', 'tt1865368', 87, 'https://www.imdb.com/title/tt1865368/'),
	(130, 'Comedy, Drama, Family', 6, 'Radio Rebel', '2012-02-17', 'tt2008633', 85, 'https://www.imdb.com/title/tt2008633/'),
	(131, 'Drama, Family, Music', 6.4, 'Let It Shine', '2012-06-01', 'tt2165933', 104, 'https://www.imdb.com/title/tt2165933/'),
	(132, 'Action, Adventure, Comedy, Family, Fantasy, Sci-Fi', 5.5, 'Girl Vs. Monster', '2012-10-12', 'tt2326087', 89, 'https://www.imdb.com/title/tt2326087/'),
	(133, 'Family, Fantasy, Musical', 5.9, 'Teen Beach Movie', '2013-07-19', 'tt2325989', 110, 'https://www.imdb.com/title/tt2325989/'),
	(134, 'Action, Adventure, Drama, Family, Sport', 6.6, 'Cloud 9', '2014-01-17', 'tt2762970', 85, 'https://www.imdb.com/title/tt2762970/'),
	(135, 'Comedy, Family, Fantasy', 5.1, 'Zapped', '2014-06-23', 'tt3544734', 102, 'https://www.imdb.com/title/tt3544734/'),
	(136, 'Comedy, Family, Sci-Fi', 5.5, 'How to Build a Better Boy', '2014-08-15', 'tt3098874', 90, 'https://www.imdb.com/title/tt3098874/'),
	(137, 'Adventure, Comedy, Family', 6, 'Bad Hair Day', '2015-02-13', 'tt3856042', 87, 'https://www.imdb.com/title/tt3856042/'),
	(138, 'Family, Fantasy, Musical', 6.1, 'Teen Beach 2', '2015-06-26', 'tt3764966', 104, 'https://www.imdb.com/title/tt3764966/'),
	(139, 'Comedy, Family, Fantasy, Musical', 6.4, 'Descendants', '2015-07-31', 'tt3440298', 112, 'https://www.imdb.com/title/tt3440298/'),
	(140, 'Adventure, Comedy, Family, Fantasy', 6.1, 'Invisible Sister', '2015-10-09', 'tt4420110', 80, 'https://www.imdb.com/title/tt4420110/'),
	(141, 'Adventure, Comedy, Family', 6, 'Adventures in Babysitting', '2016-06-17', 'tt4456850', 105, 'https://www.imdb.com/title/tt4456850/'),
	(142, 'Comedy, Family, Fantasy', 6.2, 'The Swap', '2016-10-07', 'tt5653444', 100, 'https://www.imdb.com/title/tt5653444/'),
	(143, 'Action, Adventure, Family, Fantasy, Romance', 6.5, 'Descendants 2', '2017-07-21', 'tt5117876', 111, 'https://www.imdb.com/title/tt5117876/'),
	(144, 'Family, Musical, Romance', 6.3, 'Z-O-M-B-I-E-S', '2018-02-16', 'tt6878820', 94, 'https://www.imdb.com/title/tt6878820/'),
	(145, 'Comedy, Family', 5.5, 'Bob the Butler', '2005-03-10', 'tt0216584', 90, 'https://www.imdb.com/title/tt0216584/'),
	(146, 'Drama, Family, Fantasy, Romance', 5.4, '16 Wishes', '2010-06-25', 'tt1646876', 90, 'https://www.imdb.com/title/tt1646876/'),
	(147, 'Comedy, Family', 4.6, 'Harriet the Spy: Blog Wars', '2010-03-26', 'tt1545097', 87, 'https://www.imdb.com/title/tt1545097/'),
	(148, 'Action, Adventure, Comedy', 3.6, 'Kim Possible', '2019-02-15', 'tt7979492', 86, 'https://www.imdb.com/title/tt7979492/'),
	(149, 'Comedy, Fantasy, Musical', 3.6, 'Freaky Friday', '2018-08-10', 'tt7631348', 90, 'https://www.imdb.com/title/tt7631348/'),
	(150, 'Adventure, Family, Musical', 6.8, 'Descendants 3', '2019-08-02', 'tt8022928', 106, 'https://www.imdb.com/title/tt8022928/');
/*!40000 ALTER TABLE `dcom` ENABLE KEYS */;

-- Dumping structure for table csfinal.hibernate_sequence
CREATE TABLE IF NOT EXISTS `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table csfinal.hibernate_sequence: ~1 rows (approximately)
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` (`next_val`) VALUES
	(1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;

-- Dumping structure for table csfinal.movie_review
CREATE TABLE IF NOT EXISTS `movie_review` (
  `MovieId` bigint(20) NOT NULL,
  `RevId` bigint(20) NOT NULL,
  UNIQUE KEY `UK_tikx61f5fr1ac8mgux2pygxv2` (`RevId`),
  KEY `FKnu5xvx9j8l11uj8vf2d6of9ni` (`MovieId`),
  CONSTRAINT `FKanfedyaucda93460lfa9wcj4r` FOREIGN KEY (`RevId`) REFERENCES `reviews` (`RevId`),
  CONSTRAINT `FKnu5xvx9j8l11uj8vf2d6of9ni` FOREIGN KEY (`MovieId`) REFERENCES `user_movies` (`MovieId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table csfinal.movie_review: ~0 rows (approximately)
/*!40000 ALTER TABLE `movie_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `movie_review` ENABLE KEYS */;

-- Dumping structure for table csfinal.reviews
CREATE TABLE IF NOT EXISTS `reviews` (
  `RevId` bigint(20) NOT NULL AUTO_INCREMENT,
  `Rating` int(11) DEFAULT NULL,
  `RatingId` bigint(20) DEFAULT NULL,
  `review` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`RevId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table csfinal.reviews: ~0 rows (approximately)
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;

-- Dumping structure for table csfinal.users
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table csfinal.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table csfinal.user_movies
CREATE TABLE IF NOT EXISTS `user_movies` (
  `MovieId` bigint(20) NOT NULL AUTO_INCREMENT,
  `MovieName` varchar(255) DEFAULT NULL,
  `MovieYear` int(11) DEFAULT NULL,
  PRIMARY KEY (`MovieId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table csfinal.user_movies: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_movies` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_movies` ENABLE KEYS */;

-- Dumping structure for table csfinal.user_movies_users
CREATE TABLE IF NOT EXISTS `user_movies_users` (
  `User_Movies_MovieId` bigint(20) NOT NULL,
  `user_user_id` bigint(20) NOT NULL,
  KEY `FKp713re7l9w82db1f51cc895kg` (`user_user_id`),
  KEY `FK2x8vfwqxf3vpwxt0kskpsv8xn` (`User_Movies_MovieId`),
  CONSTRAINT `FK2x8vfwqxf3vpwxt0kskpsv8xn` FOREIGN KEY (`User_Movies_MovieId`) REFERENCES `user_movies` (`MovieId`),
  CONSTRAINT `FKp713re7l9w82db1f51cc895kg` FOREIGN KEY (`user_user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table csfinal.user_movies_users: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_movies_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_movies_users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
