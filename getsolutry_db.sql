-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 27, 2022 at 11:21 PM
-- Server version: 5.6.51-cll-lve
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `getsolutry_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'admin@admin.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5b13ed3a6e006', '5b13ed3a9436a'),
('5b13ed72489d8', '5b13ed7263d70'),
('629bae20688e7', '629bae208eaba'),
('629bae20df740', '629bae20eaf73'),
('629bae214cc90', '629bae2153c97'),
('629bae2187eac', '629bae2196faf'),
('629bae21bce62', '629bae21c31eb'),
('629bae21e7e4d', '629bae21f0d6e'),
('629bae2221351', '629bae2227c4e'),
('629bae224c348', '629bae2252a29'),
('629bae226c623', '629bae2272cf7'),
('629bae228ca58', '629bae22930b7'),
('629bb6086a42c', '629bb6087bf75'),
('629bb608e6063', '629bb608ea69c'),
('629bb609121d7', '629bb6091684a'),
('629bb609325e8', '629bb6093ed42'),
('629bb60957392', '629bb60960125'),
('629bb60979bec', '629bb60980532'),
('629bb6099cb32', '629bb609a33e9'),
('629bb609c37cc', '629bb609c7e22'),
('629bb662a03cb', '629bb662af462'),
('629bb662e504f', '629bb662e91e1'),
('629bb66312bcb', '629bb663167bc'),
('629bb66332f60', '629bb66336b79'),
('629bb66353332', '629bb6635f08f'),
('629bb66373770', '629bb663773ce'),
('629bb6638bae7', '629bb6638f6d2'),
('629bb663c2a0d', '629bb663d1763'),
('629bb66414339', '629bb66418877'),
('629bb66445ebb', '629bb66449ee4'),
('629bc066032d4', '629bc0661af9f'),
('629bc0666e65a', '629bc0668902f'),
('629bc066a2689', '629bc066aa979'),
('629bc066c17a4', '629bc066c555b'),
('629bc066e1b68', '629bc066e58e9'),
('629bc0a04a587', '629bc0a07e85a'),
('629bc0a133853', '629bc0a137f84'),
('629bc0a14d74d', '629bc0a151478'),
('629bc0a179617', '629bc0a17dd4b'),
('629bc0a199a7e', '629bc0a1a4a9c'),
('629bc0e6719ee', '629bc0e698f49'),
('629bc0e72502a', '629bc0e73608b'),
('629bc0e74ffe8', '629bc0e756480'),
('629bc0e77afad', '629bc0e78146b'),
('629bc0e7a8aef', '629bc0e7aef6f'),
('629bc0e7cb988', '629bc0e7d1e50'),
('629bc0e81e2d6', '629bc0e822ae0'),
('629bc0e84302f', '629bc0e846ae8'),
('629bc0e85dd3e', '629bc0e8618d9'),
('629bc0e876007', '629bc0e879ba7'),
('629f930a4ab15', '629f930a4af37'),
('629f930a4b1df', '629f930a4b256'),
('629f930a4b4cb', '629f930a4b53e');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `message`) VALUES
(5, 'Hammad', 'ahmedhammad262@gmail.com', 'good'),
(6, 'zahra', 'zahrayousufmirza@gmail.com', 'A very knowledgeable website.'),
(7, 'suman', 'sumanashfa@gmail.com', 'good idea n good luck'),
(8, 'Rasikh Ikram', 'rasikhikram06@gmial.com', 'keep it up\r\n'),
(9, 'Ayesha Zunaira', 'azunaira@iba.edu.pk', 'You did very well guys'),
(10, 'mahwish Ahmed', 'soc_cict@iba.edu.pk', 'wonderful effort '),
(11, 'younus', 'younusghoghari@gmail.com', 'keep it up'),
(12, 'Jawad Raza', 'jawadraza451@gmail.com', 'What a useful website for preperation for exams,with a wonderful color theme and easy to use '),
(13, 'tayyab ali', 'tali09602@gmail.com', 'This website is so good and user friendly. waiting for its new version in which all subject papers are given.  '),
(14, 'Knawer Usama Jamil', 'kanwer.usama@pgnig.pk', 'Considering start from zero this is a good effort a appreciating idea. Good work and keep it up'),
(15, 'Muhammad Muzammil', 'muhammadmuzammilqadri@gmail.com', 'Nice website\r\n'),
(16, 'no name', 'abc@gmail.com', 'apna km kr'),
(17, 'kanwar ArFEEN jAMEEL', 'kanwarhania1@gmail.com', 'welldone keep it up nd specially best of luck'),
(18, 'abdul moeid khan', 'hamkhan088@gmail.com', 'nice work'),
(19, 'Haseeb Awan', 'haseebawan.1560@gmail.com', 'work Hard'),
(20, 'almas', 'maarijo@gmail.com', 'Good work '),
(21, 'almas', 'maarijo@gmail.com', 'Good work '),
(22, 'umair ali bhutto', 'ibaumairalibhutto@gmail.com', 'Website is good looking and the user interface is well made thank you for studying'),
(23, 'Azhar Ali ', 'azhar.naper@gmail.com', 'Good work'),
(25, 'Zobia Mateen', 'zubiamateen1903@gmail.com', 'Best ever idea, good effort and the very helpful websiteðŸ‘ŒðŸ‘â˜ºï¸'),
(26, 'Ariba ', 'aribaqureshi1999@gmail.com', 'Wow this is very useful for educational purposes ðŸ‘ great job dost');

-- --------------------------------------------------------

--
-- Table structure for table `eanswer`
--

CREATE TABLE `eanswer` (
  `name` float NOT NULL,
  `qans` text NOT NULL,
  `correctans` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eanswer`
--

INSERT INTO `eanswer` (`name`, `qans`, `correctans`) VALUES
(0, 'The Union of rational and irrational numbers is called ___________ numbers.', 'Real'),
(0, 'Rational numbers denoted by ___________', 'Q'),
(0, 'The Union of rational and irrational numbers is called ___________ numbers.', 'Real'),
(0, 'Rational numbers denoted by ___________', 'Q'),
(0, 'The Union of rational and irrational numbers is called ___________ numbers.', 'Real'),
(0, 'Rational numbers denoted by ___________', 'Q'),
(0, 'The Union of rational and irrational numbers is called ___________ numbers.', 'Real'),
(0, 'Rational numbers denoted by ___________', 'Q'),
(0, 'e', 'w'),
(0, 'helo', 'e'),
(0, 'well', 'r'),
(0, '43r', 'g'),
(0, 'fagggg', 'f'),
(0, 'ewew', 'r'),
(0, 'The additive inverse of -10 is _________', '10'),
(0, 'The multiplicative inverse of 0 is__________', 'Does not exist'),
(0, 'If a,b â‚¬ R then a=b <> b=a is called _________property', 'Symmetric'),
(0, 'If a +(-a)=0 then a and -a are _____________ inverse of each other', 'Additive'),
(0, 'The product of any two real numbers is again __________number.', 'Real'),
(0, 'If a,b,c â‚¬ R then a>b or a<b or a=b is called _________property\r\n', 'Trichotomy'),
(0, 'If 6 â‚¬R then 6=6 is called __________ property', 'Reflexive'),
(0, '5<7 => 5x12 < ________Ã—_______', '7Ã—12'),
(0, 'If a, b ,c â‚¬R Such that a=b then ac = bc is called _______property', 'Multiplicative'),
(0, '3 (2+3)= 3x2 + 3x3 is called _________Distributive property', 'Left'),
(0, 'âˆšxÃ—âˆšx is called ________', 'x'),
(0, 'The exponential form of âˆš(na) = ___________', 'a^(1/n)'),
(0, 'The symbol of âˆš is called __________', 'Redical'),
(0, 'Transform  (1/12)^(1/6)  into radical form = ___________\r\n', 'âˆš(6&1/12)'),
(0, 'The base of (-20)^10   is _________', '10'),
(0, 'The symbol âˆ› is called ________', 'Cube root'),
(0, 'The expression mâˆš(a ) Â±nâˆš(a )  = _________', '(mÂ±n) âˆš(a )'),
(0, 'What is the properties of âˆš(mn&a)', 'a^(1/mn)'),
(0, '	The expression âˆša/âˆš(a ) is __________\r\n	âˆš(a/a)\r\n	a\r\n	1\r\n', '1'),
(0, 'Solve a/âˆša is __________', 'a'),
(0, 'Name the property which is used ã€–{(xy)ã€—^3}^5 ________', 'law of power of quotient'),
(0, 'Simplify (2^4.5^3)/ã€–10ã€—^2  =__________', '20'),
(0, 'By simplifying  (3)^5/3^2 we get __________', '27'),
(0, 'If any non zero real number has zero power is _______', '0'),
(0, 'The symbol âˆ› is called ________', 'Cube root'),
(0, 'log_xâ¡y.   log_yâ¡ã€–z= log_xâ¡z ã€—', 'equal'),
(0, 'By simplifying  (3)^5/3^2 we get __________', '27'),
(0, 'If any non zero real number has zero power is _______', '0'),
(0, '(a)^2Ã—(a)^3is equal _____________', '(a)^(2+3)'),
(0, 'Name the property which is used ã€–{(xy)ã€—^3}^5 ________\r\n', 'law of power of quotient'),
(0, 'The value of e is __________', '2.71828'),
(0, 'Who develop the table of base 10', 'Henry Briggs'),
(0, 'The value of e is __________', '2.71828'),
(0, 'Who develop the table of base 10', 'Henry Briggs'),
(0, 'Can base is available in logarithm', 'yes'),
(0, 'log_xâ¡y.   log_yâ¡z= log_xâ¡z ', 'LHS=RHS'),
(0, 'log_ab.   log_bc= log_ac', 'equal'),
(0, 'Who developed the table of base 10 ', 'Henry Briggs'),
(0, 'Who developed the concept of logarithm', 'John Napier'),
(0, 'The number and base of logarithm are same then', '10'),
(0, 'The reciprocal of x is  ____________', '1/x'),
(0, 'The reciprocal of 1/3 is  ____________', '3/1'),
(0, 'Congugate of  âˆš2 - 9', ' âˆš2 + 9'),
(0, 'Congugate of  âˆšx - c ', 'âˆšx + c '),
(0, 'Congugate of  9+ âˆšx', '9 - âˆšx'),
(0, 'find the conjugate is 2âˆš5+ âˆš7', '2âˆš5- âˆš7'),
(0, 'find the conjugate is 4âˆš115+ âˆš6', '4âˆš115 - âˆš6'),
(0, 'find the conjugate is 4âˆš5+ âˆš7', '-  4âˆš5 - âˆš7'),
(0, 'find the conjugate is 4âˆš5+ âˆš7', ' 4âˆš5  - âˆš7'),
(0, 'find the conjugate is - 2âˆš5+ âˆš7', '- 2âˆš5 - âˆš7');

-- --------------------------------------------------------

--
-- Table structure for table `eoption`
--

CREATE TABLE `eoption` (
  `name` float NOT NULL,
  `qans` varchar(500) NOT NULL,
  `eopt` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eoption`
--

INSERT INTO `eoption` (`name`, `qans`, `eopt`) VALUES
(0, 'The Union of rational and irrational numbers is called ___________ numbers.', 'Real'),
(0, 'The Union of rational and irrational numbers is called ___________ numbers.', 'Rational'),
(0, 'The Union of rational and irrational numbers is called ___________ numbers.', 'Irrational'),
(0, 'The Union of rational and irrational numbers is called ___________ numbers.', 'None of these'),
(0, 'Rational numbers denoted by ___________', 'Qâ€™ '),
(0, 'Rational numbers denoted by ___________', 'R'),
(0, 'Rational numbers denoted by ___________', 'Q'),
(0, 'Rational numbers denoted by ___________', 'None of these'),
(0, 'The Union of rational and irrational numbers is called ___________ numbers.', 'Real'),
(0, 'The Union of rational and irrational numbers is called ___________ numbers.', 'Rational'),
(0, 'The Union of rational and irrational numbers is called ___________ numbers.', 'Irrational'),
(0, 'The Union of rational and irrational numbers is called ___________ numbers.', 'None of these'),
(0, 'Rational numbers denoted by ___________', 'Qâ€™ '),
(0, 'Rational numbers denoted by ___________', 'R'),
(0, 'Rational numbers denoted by ___________', 'Q'),
(0, 'Rational numbers denoted by ___________', 'None of these'),
(0, 'The Union of rational and irrational numbers is called ___________ numbers.', 'Real'),
(0, 'The Union of rational and irrational numbers is called ___________ numbers.', 'Rational'),
(0, 'The Union of rational and irrational numbers is called ___________ numbers.', 'Irrational'),
(0, 'The Union of rational and irrational numbers is called ___________ numbers.', 'None of these'),
(0, 'Rational numbers denoted by ___________', 'Qâ€™ '),
(0, 'Rational numbers denoted by ___________', 'R'),
(0, 'Rational numbers denoted by ___________', 'Q'),
(0, 'Rational numbers denoted by ___________', 'None of these'),
(0, 'The Union of rational and irrational numbers is called ___________ numbers.', 'Real'),
(0, 'The Union of rational and irrational numbers is called ___________ numbers.', 'Rational'),
(0, 'The Union of rational and irrational numbers is called ___________ numbers.', 'Irrational'),
(0, 'The Union of rational and irrational numbers is called ___________ numbers.', 'None of these'),
(0, 'Rational numbers denoted by ___________', 'Qâ€™ '),
(0, 'Rational numbers denoted by ___________', 'R'),
(0, 'Rational numbers denoted by ___________', 'Q'),
(0, 'Rational numbers denoted by ___________', 'None of these'),
(0, 'e', 'w'),
(0, 'e', 'e'),
(0, 'e', 'e'),
(0, 'e', 'e'),
(0, 'helo', 'h'),
(0, 'helo', 'e'),
(0, 'helo', 'l'),
(0, 'helo', 'o'),
(0, 'well', 'w'),
(0, 'well', 'e'),
(0, 'well', 'r'),
(0, 'well', 't'),
(0, '43r', 'r3r'),
(0, '43r', 'g'),
(0, '43r', 'g'),
(0, '43r', 's'),
(0, 'fagggg', 'd'),
(0, 'fagggg', 'f'),
(0, 'fagggg', 's'),
(0, 'fagggg', 'g'),
(0, 'ewew', 'r'),
(0, 'ewew', 'r'),
(0, 'ewew', '2'),
(0, 'ewew', '3'),
(0, 'The additive inverse of -10 is _________', 'Â±10'),
(0, 'The additive inverse of -10 is _________', '- 1/10'),
(0, 'The additive inverse of -10 is _________', '10'),
(0, 'The additive inverse of -10 is _________', 'None of these'),
(0, 'The multiplicative inverse of 0 is__________', '1/0'),
(0, 'The multiplicative inverse of 0 is__________', '0/1'),
(0, 'The multiplicative inverse of 0 is__________', 'Does not exist'),
(0, 'The multiplicative inverse of 0 is__________', 'None of these'),
(0, 'If a,b â‚¬ R then a=b <> b=a is called _________property', 'Transitive'),
(0, 'If a,b â‚¬ R then a=b <> b=a is called _________property', 'Symmetric'),
(0, 'If a,b â‚¬ R then a=b <> b=a is called _________property', 'Multiplicative'),
(0, 'If a,b â‚¬ R then a=b <> b=a is called _________property', 'None of these'),
(0, 'If a +(-a)=0 then a and -a are _____________ inverse of each other', 'Additive'),
(0, 'If a +(-a)=0 then a and -a are _____________ inverse of each other', 'Multiplicative'),
(0, 'If a +(-a)=0 then a and -a are _____________ inverse of each other', 'Commutative'),
(0, 'If a +(-a)=0 then a and -a are _____________ inverse of each other', 'None of these'),
(0, 'The product of any two real numbers is again __________number.', 'Real'),
(0, 'The product of any two real numbers is again __________number.', 'Rational'),
(0, 'The product of any two real numbers is again __________number.', 'Integer'),
(0, 'The product of any two real numbers is again __________number.', 'None of these'),
(0, 'If a,b,c â‚¬ R then a>b or a<b or a=b is called _________property\r\n', 'Transitive'),
(0, 'If a,b,c â‚¬ R then a>b or a<b or a=b is called _________property\r\n', 'Trichotomy'),
(0, 'If a,b,c â‚¬ R then a>b or a<b or a=b is called _________property\r\n', 'Reciprocative'),
(0, 'If a,b,c â‚¬ R then a>b or a<b or a=b is called _________property\r\n', 'None of these'),
(0, 'If 6 â‚¬R then 6=6 is called __________ property', 'Reflexive'),
(0, 'If 6 â‚¬R then 6=6 is called __________ property', 'Trichotomy'),
(0, 'If 6 â‚¬R then 6=6 is called __________ property', 'Transitive'),
(0, 'If 6 â‚¬R then 6=6 is called __________ property', 'None of these'),
(0, '5<7 => 5x12 < ________Ã—_______', '7Ã—5'),
(0, '5<7 => 5x12 < ________Ã—_______', '5Ã—12'),
(0, '5<7 => 5x12 < ________Ã—_______', '7Ã—12'),
(0, '5<7 => 5x12 < ________Ã—_______', 'None of these'),
(0, 'If a, b ,c â‚¬R Such that a=b then ac = bc is called _______property', 'Symmetric'),
(0, 'If a, b ,c â‚¬R Such that a=b then ac = bc is called _______property', 'Multiplicative'),
(0, 'If a, b ,c â‚¬R Such that a=b then ac = bc is called _______property', 'Additive'),
(0, 'If a, b ,c â‚¬R Such that a=b then ac = bc is called _______property', 'None of these'),
(0, '3 (2+3)= 3x2 + 3x3 is called _________Distributive property', 'Left'),
(0, '3 (2+3)= 3x2 + 3x3 is called _________Distributive property', 'Right'),
(0, '3 (2+3)= 3x2 + 3x3 is called _________Distributive property', 'Both'),
(0, '3 (2+3)= 3x2 + 3x3 is called _________Distributive property', 'None of these'),
(0, 'âˆšxÃ—âˆšx is called ________', 'âˆšx'),
(0, 'âˆšxÃ—âˆšx is called ________', '2âˆšx'),
(0, 'âˆšxÃ—âˆšx is called ________', 'x'),
(0, 'âˆšxÃ—âˆšx is called ________', 'None of these'),
(0, 'The exponential form of âˆš(na) = ___________', 'a^(1/n)'),
(0, 'The exponential form of âˆš(na) = ___________', 'a^n'),
(0, 'The exponential form of âˆš(na) = ___________', 'n^a'),
(0, 'The exponential form of âˆš(na) = ___________', 'None of these'),
(0, 'The symbol of âˆš is called __________', 'Redical'),
(0, 'The symbol of âˆš is called __________', 'Index'),
(0, 'The symbol of âˆš is called __________', 'Radicand'),
(0, 'The symbol of âˆš is called __________', 'None of these'),
(0, 'Transform  (1/12)^(1/6)  into radical form = ___________\r\n', 'âˆš(6&12)'),
(0, 'Transform  (1/12)^(1/6)  into radical form = ___________\r\n', 'âˆš(6&1/12)'),
(0, 'Transform  (1/12)^(1/6)  into radical form = ___________\r\n', 'âˆš(12&1/6) '),
(0, 'Transform  (1/12)^(1/6)  into radical form = ___________\r\n', 'None of these'),
(0, 'The base of (-20)^10   is _________', '20'),
(0, 'The base of (-20)^10   is _________', '-20'),
(0, 'The base of (-20)^10   is _________', '10'),
(0, 'The base of (-20)^10   is _________', 'None of these'),
(0, 'The symbol âˆ› is called ________', 'Square root'),
(0, 'The symbol âˆ› is called ________', 'Cube root'),
(0, 'The symbol âˆ› is called ________', 'nth root'),
(0, 'The symbol âˆ› is called ________', 'None of these'),
(0, 'The expression mâˆš(a ) Â±nâˆš(a )  = _________', '(m+n) âˆš(a )'),
(0, 'The expression mâˆš(a ) Â±nâˆš(a )  = _________', '(m-n) âˆš(a )'),
(0, 'The expression mâˆš(a ) Â±nâˆš(a )  = _________', '(mÂ±n) âˆš(a )'),
(0, 'The expression mâˆš(a ) Â±nâˆš(a )  = _________', 'None of these'),
(0, 'What is the properties of âˆš(mn&a)', 'a^mn'),
(0, 'What is the properties of âˆš(mn&a)', 'a^(1/mn)'),
(0, 'What is the properties of âˆš(mn&a)', 'a^(m/n)'),
(0, 'What is the properties of âˆš(mn&a)', 'None of these'),
(0, '	The expression âˆša/âˆš(a ) is __________\r\n	âˆš(a/a)\r\n	a\r\n	1\r\n', '1'),
(0, '	The expression âˆša/âˆš(a ) is __________\r\n	âˆš(a/a)\r\n	a\r\n	1\r\n', 'a'),
(0, '	The expression âˆša/âˆš(a ) is __________\r\n	âˆš(a/a)\r\n	a\r\n	1\r\n', 'âˆš(a/a)'),
(0, '	The expression âˆša/âˆš(a ) is __________\r\n	âˆš(a/a)\r\n	a\r\n	1\r\n', 'None of these'),
(0, 'Solve a/âˆša is __________', 'âˆša/a'),
(0, 'Solve a/âˆša is __________', 'âˆša'),
(0, 'Solve a/âˆša is __________', 'a'),
(0, 'Solve a/âˆša is __________', 'None of these'),
(0, 'Name the property which is used ã€–{(xy)ã€—^3}^5 ________', 'law of power of quotient'),
(0, 'Name the property which is used ã€–{(xy)ã€—^3}^5 ________', 'law of power of power'),
(0, 'Name the property which is used ã€–{(xy)ã€—^3}^5 ________', 'law of power of product'),
(0, 'Name the property which is used ã€–{(xy)ã€—^3}^5 ________', 'all'),
(0, 'Simplify (2^4.5^3)/ã€–10ã€—^2  =__________', '20'),
(0, 'Simplify (2^4.5^3)/ã€–10ã€—^2  =__________', '10'),
(0, 'Simplify (2^4.5^3)/ã€–10ã€—^2  =__________', '5'),
(0, 'Simplify (2^4.5^3)/ã€–10ã€—^2  =__________', '0'),
(0, 'By simplifying  (3)^5/3^2 we get __________', '243'),
(0, 'By simplifying  (3)^5/3^2 we get __________', '2187'),
(0, 'By simplifying  (3)^5/3^2 we get __________', '27'),
(0, 'By simplifying  (3)^5/3^2 we get __________', 'None of these'),
(0, 'If any non zero real number has zero power is _______', '0'),
(0, 'If any non zero real number has zero power is _______', '1'),
(0, 'If any non zero real number has zero power is _______', 'any number'),
(0, 'If any non zero real number has zero power is _______', 'None of these'),
(0, 'The symbol âˆ› is called ________', 'Cube root'),
(0, 'The symbol âˆ› is called ________', 'Square root '),
(0, 'The symbol âˆ› is called ________', 'root'),
(0, 'The symbol âˆ› is called ________', 'None of these'),
(0, 'log_xâ¡y.   log_yâ¡ã€–z= log_xâ¡z ã€—', 'equal'),
(0, 'log_xâ¡y.   log_yâ¡ã€–z= log_xâ¡z ã€—', 'not equal'),
(0, 'log_xâ¡y.   log_yâ¡ã€–z= log_xâ¡z ã€—', 'non property'),
(0, 'log_xâ¡y.   log_yâ¡ã€–z= log_xâ¡z ã€—', 'None of these'),
(0, 'By simplifying  (3)^5/3^2 we get __________', '27'),
(0, 'By simplifying  (3)^5/3^2 we get __________', '287'),
(0, 'By simplifying  (3)^5/3^2 we get __________', '2187'),
(0, 'By simplifying  (3)^5/3^2 we get __________', 'None of these'),
(0, 'If any non zero real number has zero power is _______', '0'),
(0, 'If any non zero real number has zero power is _______', '1'),
(0, 'If any non zero real number has zero power is _______', 'non integer'),
(0, 'If any non zero real number has zero power is _______', 'None of these'),
(0, '(a)^2Ã—(a)^3is equal _____________', '(a)^(2-3)'),
(0, '(a)^2Ã—(a)^3is equal _____________', '(a)^(2+3)'),
(0, '(a)^2Ã—(a)^3is equal _____________', '(a)^6'),
(0, '(a)^2Ã—(a)^3is equal _____________', 'All of these'),
(0, 'Name the property which is used ã€–{(xy)ã€—^3}^5 ________\r\n', 'law of power of quotient'),
(0, 'Name the property which is used ã€–{(xy)ã€—^3}^5 ________\r\n', 'law of power of power'),
(0, 'Name the property which is used ã€–{(xy)ã€—^3}^5 ________\r\n', 'law of power of product'),
(0, 'Name the property which is used ã€–{(xy)ã€—^3}^5 ________\r\n', 'None of these'),
(0, 'The value of e is __________', '3.78129'),
(0, 'The value of e is __________', '2.71828'),
(0, 'The value of e is __________', '1.71828'),
(0, 'The value of e is __________', 'None of these'),
(0, 'Who develop the table of base 10', 'Jobst Brige'),
(0, 'Who develop the table of base 10', 'Henry Briggs'),
(0, 'Who develop the table of base 10', 'John Napier'),
(0, 'Who develop the table of base 10', 'None of these'),
(0, 'The value of e is __________', '3.78129'),
(0, 'The value of e is __________', '1.71828'),
(0, 'The value of e is __________', '2.71828'),
(0, 'The value of e is __________', '6'),
(0, 'Who develop the table of base 10', 'Jobst Briggs'),
(0, 'Who develop the table of base 10', 'John Napier'),
(0, 'Who develop the table of base 10', 'Henry Briggs'),
(0, 'Who develop the table of base 10', 'All of these'),
(0, 'Can base is available in logarithm', 'no'),
(0, 'Can base is available in logarithm', 'yes'),
(0, 'Can base is available in logarithm', 'maybe'),
(0, 'Can base is available in logarithm', 'None of these'),
(0, 'log_xâ¡y.   log_yâ¡z= log_xâ¡z ', 'LHS=RHS'),
(0, 'log_xâ¡y.   log_yâ¡z= log_xâ¡z ', 'not equal'),
(0, 'log_xâ¡y.   log_yâ¡z= log_xâ¡z ', 'non property'),
(0, 'log_xâ¡y.   log_yâ¡z= log_xâ¡z ', 'None of these'),
(0, 'log_ab.   log_bc= log_ac', 'not equal'),
(0, 'log_ab.   log_bc= log_ac', 'equal'),
(0, 'log_ab.   log_bc= log_ac', 'non property'),
(0, 'log_ab.   log_bc= log_ac', 'always'),
(0, 'Who developed the table of base 10 ', 'John Napier'),
(0, 'Who developed the table of base 10 ', 'Henry Barten'),
(0, 'Who developed the table of base 10 ', 'Henry Briggs'),
(0, 'Who developed the table of base 10 ', 'None of these'),
(0, 'Who developed the concept of logarithm', 'John Napier'),
(0, 'Who developed the concept of logarithm', 'Henry Carten'),
(0, 'Who developed the concept of logarithm', 'Henry Briggs'),
(0, 'Who developed the concept of logarithm', 'All of these'),
(0, 'The number and base of logarithm are same then', '10'),
(0, 'The number and base of logarithm are same then', '0'),
(0, 'The number and base of logarithm are same then', '1'),
(0, 'The number and base of logarithm are same then', 'None of these'),
(0, 'The reciprocal of x is  ____________', '1'),
(0, 'The reciprocal of x is  ____________', 'x/1'),
(0, 'The reciprocal of x is  ____________', '1/x'),
(0, 'The reciprocal of x is  ____________', 'None of these'),
(0, 'The reciprocal of 1/3 is  ____________', 'cube'),
(0, 'The reciprocal of 1/3 is  ____________', '3'),
(0, 'The reciprocal of 1/3 is  ____________', '3/1'),
(0, 'The reciprocal of 1/3 is  ____________', 'All of these'),
(0, 'Congugate of  âˆš2 - 9', ' âˆš2 + 9'),
(0, 'Congugate of  âˆš2 - 9', ' -âˆš2 - 9'),
(0, 'Congugate of  âˆš2 - 9', ' -âˆš2 + 9'),
(0, 'Congugate of  âˆš2 - 9', 'None of these'),
(0, 'Congugate of  âˆšx - c ', 'âˆšx + c '),
(0, 'Congugate of  âˆšx - c ', '-âˆšx - c '),
(0, 'Congugate of  âˆšx - c ', '-âˆšx - c '),
(0, 'Congugate of  âˆšx - c ', 'All of these'),
(0, 'Congugate of  9+ âˆšx', '9 - âˆšx'),
(0, 'Congugate of  9+ âˆšx', '-9 + âˆšx'),
(0, 'Congugate of  9+ âˆšx', '-9+ âˆšx'),
(0, 'Congugate of  9+ âˆšx', 'None of these'),
(0, 'find the conjugate is 2âˆš5+ âˆš7', '-2âˆš5+ âˆš7'),
(0, 'find the conjugate is 2âˆš5+ âˆš7', '-2âˆš5- âˆš7'),
(0, 'find the conjugate is 2âˆš5+ âˆš7', '2âˆš5- âˆš7'),
(0, 'find the conjugate is 2âˆš5+ âˆš7', 'None of these'),
(0, 'find the conjugate is 4âˆš115+ âˆš6', '- 4âˆš115+ âˆš6'),
(0, 'find the conjugate is 4âˆš115+ âˆš6', '4âˆš115 - âˆš6'),
(0, 'find the conjugate is 4âˆš115+ âˆš6', '- 4âˆš115 - âˆš6'),
(0, 'find the conjugate is 4âˆš115+ âˆš6', 'None of these'),
(0, 'find the conjugate is 4âˆš5+ âˆš7', '  - 4âˆš5+ âˆš7'),
(0, 'find the conjugate is 4âˆš5+ âˆš7', '- 4âˆš5 + âˆš7'),
(0, 'find the conjugate is 4âˆš5+ âˆš7', '-  4âˆš5 - âˆš7'),
(0, 'find the conjugate is 4âˆš5+ âˆš7', 'None of these'),
(0, 'find the conjugate is 4âˆš5+ âˆš7', ' 4âˆš5  - âˆš7'),
(0, 'find the conjugate is 4âˆš5+ âˆš7', '-  4âˆš5 -âˆš7'),
(0, 'find the conjugate is 4âˆš5+ âˆš7', ' - 4âˆš5 - âˆš7'),
(0, 'find the conjugate is 4âˆš5+ âˆš7', 'All of these'),
(0, 'find the conjugate is - 2âˆš5+ âˆš7', '- 2âˆš5 +âˆš7'),
(0, 'find the conjugate is - 2âˆš5+ âˆš7', '- 2âˆš5 - âˆš7'),
(0, 'find the conjugate is - 2âˆš5+ âˆš7', '-2âˆš5 + âˆš7'),
(0, 'find the conjugate is - 2âˆš5+ âˆš7', 'None of these');

-- --------------------------------------------------------

--
-- Table structure for table `equestion`
--

CREATE TABLE `equestion` (
  `name` float NOT NULL,
  `qid` text NOT NULL,
  `qans` text NOT NULL,
  `choice` int(11) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `equestion`
--

INSERT INTO `equestion` (`name`, `qid`, `qans`, `choice`, `sn`) VALUES
(0, '629f82e367c75', 'The Union of rational and irrational numbers is called ___________ numbers.', 4, 1),
(0, '629f82e368b97', 'Rational numbers denoted by ___________', 4, 2),
(0, '629f83c9e22aa', 'The Union of rational and irrational numbers is called ___________ numbers.', 4, 1),
(0, '629f83c9e2983', 'Rational numbers denoted by ___________', 4, 2),
(0, '629f83d12b63f', 'The Union of rational and irrational numbers is called ___________ numbers.', 4, 1),
(0, '629f83d12c8a3', 'Rational numbers denoted by ___________', 4, 2),
(0, '629f8415e2edc', 'The Union of rational and irrational numbers is called ___________ numbers.', 4, 1),
(0, '629f8415e3475', 'Rational numbers denoted by ___________', 4, 2),
(0, '629f916fa5d75', 'e', 4, 1),
(0, '629f91bca1915', 'helo', 4, 1),
(0, '629f91bca1e91', 'well', 4, 2),
(0, '629f972626ec4', '43r', 4, 1),
(0, '629f9726273ef', 'fagggg', 4, 2),
(0, '629f9b1f697b4', 'ewew', 4, 1),
(0, '629faac4c747c', 'The additive inverse of -10 is _________', 4, 1),
(0, '629faac4c7d46', 'The multiplicative inverse of 0 is__________', 4, 2),
(0, '629faac4c818e', 'If a,b â‚¬ R then a=b <> b=a is called _________property', 4, 3),
(0, '629faac4c8678', 'If a +(-a)=0 then a and -a are _____________ inverse of each other', 4, 4),
(0, '629faac4c8aa5', 'The product of any two real numbers is again __________number.', 4, 5),
(0, '629fac41728d6', 'If a,b,c â‚¬ R then a>b or a<b or a=b is called _________property\r\n', 4, 1),
(0, '629fac4172d5a', 'If 6 â‚¬R then 6=6 is called __________ property', 4, 2),
(0, '629fac417310e', '5<7 => 5x12 < ________Ã—_______', 4, 3),
(0, '629fac41735bd', 'If a, b ,c â‚¬R Such that a=b then ac = bc is called _______property', 4, 4),
(0, '629fac4173992', '3 (2+3)= 3x2 + 3x3 is called _________Distributive property', 4, 5),
(0, '629fae3fd700b', 'âˆšxÃ—âˆšx is called ________', 4, 1),
(0, '629fae3fd75c3', 'The exponential form of âˆš(na) = ___________', 4, 2),
(0, '629fae3fd7ac4', 'The symbol of âˆš is called __________', 4, 3),
(0, '629fae3fd7f8d', 'Transform  (1/12)^(1/6)  into radical form = ___________\r\n', 4, 4),
(0, '629fae3fd84bf', 'The base of (-20)^10   is _________', 4, 5),
(0, '629fafde2416c', 'The symbol âˆ› is called ________', 4, 1),
(0, '629fafde24726', 'The expression mâˆš(a ) Â±nâˆš(a )  = _________', 4, 2),
(0, '629fafde24ac0', 'What is the properties of âˆš(mn&a)', 4, 3),
(0, '629fafde24e10', '	The expression âˆša/âˆš(a ) is __________\r\n	âˆš(a/a)\r\n	a\r\n	1\r\n', 4, 4),
(0, '629fafde252d8', 'Solve a/âˆša is __________', 4, 5),
(0, '629fb15d72558', 'Name the property which is used ã€–{(xy)ã€—^3}^5 ________', 4, 1),
(0, '629fb15d72b1a', 'Simplify (2^4.5^3)/ã€–10ã€—^2  =__________', 4, 2),
(0, '629fb15d72e9d', 'By simplifying  (3)^5/3^2 we get __________', 4, 3),
(0, '629fb15d731d0', 'If any non zero real number has zero power is _______', 4, 4),
(0, '629fb15d734f7', 'The symbol âˆ› is called ________', 4, 5),
(0, '629fb2a650add', 'log_xâ¡y.   log_yâ¡ã€–z= log_xâ¡z ã€—', 4, 1),
(0, '629fb2a651037', 'By simplifying  (3)^5/3^2 we get __________', 4, 2),
(0, '629fb2a65133e', 'If any non zero real number has zero power is _______', 4, 3),
(0, '629fb2a651634', '(a)^2Ã—(a)^3is equal _____________', 4, 4),
(0, '629fb2a6518f5', 'Name the property which is used ã€–{(xy)ã€—^3}^5 ________\r\n', 4, 5),
(0, '629fb44ab2d30', 'The value of e is __________', 4, 1),
(0, '629fb44ab334a', 'Who develop the table of base 10', 4, 2),
(0, '629fb44ab37e1', 'The value of e is __________', 4, 3),
(0, '629fb44ab3ac3', 'Who develop the table of base 10', 4, 4),
(0, '629fb44ab3dc1', 'Can base is available in logarithm', 4, 5),
(0, '629fb60f53f70', 'log_xâ¡y.   log_yâ¡z= log_xâ¡z ', 4, 1),
(0, '629fb60f54437', 'log_ab.   log_bc= log_ac', 4, 2),
(0, '629fb60f547dd', 'Who developed the table of base 10 ', 4, 3),
(0, '629fb60f54e23', 'Who developed the concept of logarithm', 4, 4),
(0, '629fb60f551ce', 'The number and base of logarithm are same then', 4, 5),
(0, '629fb7bf16f2a', 'The reciprocal of x is  ____________', 4, 1),
(0, '629fb7bf1760f', 'The reciprocal of 1/3 is  ____________', 4, 2),
(0, '629fb7bf17c0b', 'Congugate of  âˆš2 - 9', 4, 3),
(0, '629fb7bf180a5', 'Congugate of  âˆšx - c ', 4, 4),
(0, '629fb7bf1847c', 'Congugate of  9+ âˆšx', 4, 5),
(0, '629fbaedcde11', 'find the conjugate is 2âˆš5+ âˆš7', 4, 1),
(0, '629fbaedce4bf', 'find the conjugate is 4âˆš115+ âˆš6', 4, 2),
(0, '629fbaedcea2f', 'find the conjugate is 4âˆš5+ âˆš7', 4, 3),
(0, '629fbaedcecdb', 'find the conjugate is 4âˆš5+ âˆš7', 4, 4),
(0, '629fbaedcef88', 'find the conjugate is - 2âˆš5+ âˆš7', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `exercise`
--

CREATE TABLE `exercise` (
  `eid` varchar(200) NOT NULL,
  `ch` varchar(300) NOT NULL,
  `name` float NOT NULL,
  `total` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exercise`
--

INSERT INTO `exercise` (`eid`, `ch`, `name`, `total`, `date`) VALUES
('629f96ff3726d', 'Real ', 1.1, 2, '2022-06-07 18:20:47'),
('629f9b14027bf', 'Real ', 1.2, 1, '2022-06-07 18:38:12'),
('629f9e839140b', 'Real and complex numbers', 1.1, 10, '2022-06-07 18:52:51'),
('629fa964051ff', 'Real and complex numbers', 1.2, 5, '2022-06-07 19:39:16'),
('629faaeabbafb', 'Real and complex numbers', 1.3, 5, '2022-06-07 19:45:46'),
('629fac56cb5c8', 'Real and complex numbers', 1.4, 5, '2022-06-07 19:51:50'),
('629faeca5ccab', 'Real and complex numbers', 1.5, 5, '2022-06-07 20:02:18'),
('629fb0096035a', 'Real and complex numbers', 1.6, 5, '2022-06-07 20:07:37'),
('629fb19a2de2d', 'Logarithm', 2.1, 5, '2022-06-07 20:14:18'),
('629fb2c7c862d', 'Logarithm', 2.2, 5, '2022-06-07 20:19:19'),
('629fb480082ea', 'Logarithm', 2.3, 5, '2022-06-07 20:26:40'),
('629fb661897b5', 'Algebraic Expressions and formulas', 3.1, 5, '2022-06-07 20:34:41'),
('629fb7d67220a', 'Algebraic Expressions and formulas', 3.2, 5, '2022-06-07 20:40:54');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('', '', 0, 2, 2, 1, '2022-06-25 17:16:35'),
('admin@admin.com', '', 0, 1, 1, 0, '2022-06-08 04:20:13'),
('', '', 0, 2, 2, 1, '2022-06-25 17:16:35'),
('', '', 0, 2, 2, 1, '2022-06-25 17:16:35'),
('ahmedhammad262@gmail.com', '629ba369bf6bb', 160, 10, 8, 5, '2022-06-08 07:09:33'),
('', '', 0, 2, 2, 1, '2022-06-25 17:16:35'),
('', '', 0, 2, 2, 1, '2022-06-25 17:16:35'),
('', '', 0, 2, 2, 1, '2022-06-25 17:16:35'),
('', '', 0, 2, 2, 1, '2022-06-25 17:16:35'),
('', '', 0, 2, 2, 1, '2022-06-25 17:16:35'),
('zubiamateen1903@gmail.com', '629ba369bf6bb', 120, 10, 6, 4, '2022-06-08 18:47:39'),
('', '', 0, 2, 2, 0, '2022-06-25 17:16:35'),
('', '', 0, 2, 2, 0, '2022-06-25 17:16:35'),
('', '', 0, 2, 2, 0, '2022-06-25 17:16:35'),
('', '', 0, 2, 2, 0, '2022-06-25 17:16:35'),
('tehreemaijaz10@gmail.com', '629ba369bf6bb', 20, 10, 1, 11, '2022-06-11 15:07:58'),
('', '', 0, 2, 2, 0, '2022-06-25 17:16:35'),
('', '', 0, 2, 2, 0, '2022-06-25 17:16:35'),
('abc@gmail.com', '629bbc437ee46', -8, 8, 0, 8, '2022-06-14 16:38:45'),
('', '', 0, 2, 2, 0, '2022-06-25 17:16:35');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('5b13ed3a6e006', 'sdb', '5b13ed3a9436a'),
('5b13ed3a6e006', 'jsdb', '5b13ed3a94374'),
('5b13ed3a6e006', 'dsbv', '5b13ed3a94377'),
('5b13ed3a6e006', 'jbdv', '5b13ed3a94379'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d70'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d7a'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d7d'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d80'),
('629bae20688e7', '(a)\"', '629bae208eab2'),
('629bae20688e7', '(-a)\"', '629bae208eaba'),
('629bae20688e7', '-(a)\"', '629bae208eabc'),
('629bae20688e7', 'None of these', '629bae208eabd'),
('629bae20df740', '√x', '629bae20eaf69'),
('629bae20df740', '2√x', '629bae20eaf72'),
('629bae20df740', 'x', '629bae20eaf73'),
('629bae20df740', 'None of these', '629bae20eaf74'),
('629bae214cc90', '	√(a/a)', '629bae2153c91'),
('629bae214cc90', '1', '629bae2153c97'),
('629bae214cc90', 'a', '629bae2153c98'),
('629bae214cc90', 'None of these', '629bae2153c99'),
('629bae2187eac', '5', '629bae2196fa9'),
('629bae2187eac', '-25', '629bae2196fae'),
('629bae2187eac', '25', '629bae2196faf'),
('629bae2187eac', 'None of these', '629bae2196fb0'),
('629bae21bce62', '1/0', '629bae21c31e3'),
('629bae21bce62', '0/1', '629bae21c31ea'),
('629bae21bce62', 'Does not exist', '629bae21c31eb'),
('629bae21bce62', 'Both a & b', '629bae21c31ec'),
('629bae21e7e4d', 'Radicand', '629bae21f0d66'),
('629bae21e7e4d', 'Index', '629bae21f0d6d'),
('629bae21e7e4d', 'Radical', '629bae21f0d6e'),
('629bae21e7e4d', 'None of these', '629bae21f0d6f'),
('629bae2221351', '-2- 4i', '629bae2227c4e'),
('629bae2221351', '-2 + 4i', '629bae2227c56'),
('629bae2221351', '2- 4i', '629bae2227c57'),
('629bae2221351', '2 + 4i', '629bae2227c58'),
('629bae224c348', '0', '629bae2252a22'),
('629bae224c348', '1', '629bae2252a29'),
('629bae224c348', 'Any Number', '629bae2252a2b'),
('629bae224c348', 'None of these', '629bae2252a2c'),
('629bae226c623', 'Re(z) = 1', '629bae2272cf7'),
('629bae226c623', 'Re(z) = -1', '629bae2272cfe'),
('629bae226c623', 'Re(z) = 13', '629bae2272d00'),
('629bae226c623', 'Re(z) = -13', '629bae2272d01'),
('629bae228ca58', 'Additive', '629bae22930b0'),
('629bae228ca58', 'Multiplicative', '629bae22930b7'),
('629bae228ca58', 'Symmetric', '629bae22930b9'),
('629bae228ca58', 'None of these', '629bae22930ba'),
('629bb6086a42c', 'The given statement is true', '629bb6087bf75'),
('629bb6086a42c', 'The given statement is false', '629bb6087bf7a'),
('629bb6086a42c', 'The both sides are not equal', '629bb6087bf7b'),
('629bb6086a42c', 'None of these', '629bb6087bf7c'),
('629bb608e6063', '0.08464', '629bb608ea695'),
('629bb608e6063', '1.2202', '629bb608ea69c'),
('629bb608e6063', '0.4323', '629bb608ea69d'),
('629bb608e6063', '12.202', '629bb608ea69e'),
('629bb609121d7', '3', '629bb60916842'),
('629bb609121d7', '4', '629bb6091684a'),
('629bb609121d7', '5', '629bb6091684c'),
('629bb609121d7', '6', '629bb6091684d'),
('629bb609325e8', '1', '629bb6093ed38'),
('629bb609325e8', '0', '629bb6093ed41'),
('629bb609325e8', '10', '629bb6093ed42'),
('629bb609325e8', '100', '629bb6093ed43'),
('629bb60957392', 'e', '629bb6096011c'),
('629bb60957392', '10', '629bb60960125'),
('629bb60957392', 'both', '629bb60960126'),
('629bb60957392', 'None of these', '629bb60960127'),
('629bb60979bec', 'y = x^10', '629bb6098052b'),
('629bb60979bec', 'y^10 = x', '629bb60980531'),
('629bb60979bec', 'y = 10 ^ x', '629bb60980532'),
('629bb60979bec', 'None of these', '629bb60980533'),
('629bb6099cb32', 'Mantissa', '629bb609a33e9'),
('629bb6099cb32', 'Characteristics', '629bb609a33f2'),
('629bb6099cb32', 'both a & b', '629bb609a33f4'),
('629bb6099cb32', 'None of these', '629bb609a33f5'),
('629bb609c37cc', 'Mantissa', '629bb609c7e19'),
('629bb609c37cc', 'Characteristics', '629bb609c7e22'),
('629bb609c37cc', 'Decimal', '629bb609c7e24'),
('629bb609c37cc', 'All', '629bb609c7e25'),
('629bb662a03cb', 'The given statement is true', '629bb662af462'),
('629bb662a03cb', 'The given statement is false', '629bb662af465'),
('629bb662a03cb', 'The both sides are not equal', '629bb662af466'),
('629bb662a03cb', 'None of these', '629bb662af467'),
('629bb662e504f', '0.08464', '629bb662e91da'),
('629bb662e504f', '1.2202', '629bb662e91e1'),
('629bb662e504f', '0.4323', '629bb662e91e2'),
('629bb662e504f', '12.202', '629bb662e91e3'),
('629bb66312bcb', '3', '629bb663167b5'),
('629bb66312bcb', '4', '629bb663167bc'),
('629bb66312bcb', '5', '629bb663167bd'),
('629bb66312bcb', '6', '629bb663167be'),
('629bb66332f60', '1', '629bb66336b73'),
('629bb66332f60', '0', '629bb66336b78'),
('629bb66332f60', '10', '629bb66336b79'),
('629bb66332f60', '100', '629bb66336b7a'),
('629bb66353332', 'e', '629bb6635f08b'),
('629bb66353332', '10', '629bb6635f08f'),
('629bb66353332', 'both', '629bb6635f090'),
('629bb66353332', 'None of these', '629bb6635f091'),
('629bb66373770', 'y = x^10', '629bb663773c4'),
('629bb66373770', 'y^10 = x', '629bb663773cc'),
('629bb66373770', 'y = 10 ^ x', '629bb663773ce'),
('629bb66373770', 'None of these', '629bb663773cf'),
('629bb6638bae7', 'Mantissa', '629bb6638f6d2'),
('629bb6638bae7', 'Characteristics', '629bb6638f6da'),
('629bb6638bae7', 'both a & b', '629bb6638f6db'),
('629bb6638bae7', 'None of these', '629bb6638f6dc'),
('629bb663c2a0d', 'Mantissa', '629bb663d175b'),
('629bb663c2a0d', 'Characteristics', '629bb663d1763'),
('629bb663c2a0d', 'Decimal', '629bb663d1764'),
('629bb663c2a0d', 'All', '629bb663d1765'),
('629bb66414339', '3.78192', '629bb66418870'),
('629bb66414339', '2.71828', '629bb66418877'),
('629bb66414339', '3.142', '629bb66418878'),
('629bb66414339', '1.71828', '629bb66418879'),
('629bb66445ebb', 'Jobst Burge', '629bb66449edd'),
('629bb66445ebb', 'Henry Briggs', '629bb66449ee4'),
('629bb66445ebb', 'John Napier', '629bb66449ee5'),
('629bb66445ebb', 'None of these', '629bb66449ee6'),
('629bc066032d4', '√5 - 3', '629bc0661af9f'),
('629bc066032d4', '-√5 + 3', '629bc0661afa6'),
('629bc066032d4', '-√5 - 3', '629bc0661afa7'),
('629bc066032d4', 'None of these', '629bc0661afa8'),
('629bc0666e65a', ' -√2 + 9', '629bc06689025'),
('629bc0666e65a', ' √2 - 9', '629bc0668902f'),
('629bc0666e65a', ' -√2 - 9', '629bc06689031'),
('629bc0666e65a', 'None of these', '629bc06689033'),
('629bc066a2689', ' -√2 + 3', '629bc066aa96e'),
('629bc066a2689', ' -√2 - 3', '629bc066aa978'),
('629bc066a2689', ' √2 - 3', '629bc066aa979'),
('629bc066a2689', 'None of these', '629bc066aa97b'),
('629bc066c17a4', '1', '629bc066c5551'),
('629bc066c17a4', 'x/1', '629bc066c555a'),
('629bc066c17a4', '1/x', '629bc066c555b'),
('629bc066c17a4', 'All of these', '629bc066c555d'),
('629bc066e1b68', 'x', '629bc066e58df'),
('629bc066e1b68', 'x/1', '629bc066e58e6'),
('629bc066e1b68', 'both a & b', '629bc066e58e8'),
('629bc066e1b68', 'None of these', '629bc066e58e9'),
('629bc0a04a587', '√5 - 3', '629bc0a07e85a'),
('629bc0a04a587', '-√5 + 3', '629bc0a07e864'),
('629bc0a04a587', '-√5 - 3', '629bc0a07e865'),
('629bc0a04a587', 'None of these', '629bc0a07e867'),
('629bc0a133853', ' -√2 + 9', '629bc0a137f7a'),
('629bc0a133853', ' √2 - 9', '629bc0a137f84'),
('629bc0a133853', ' -√2 - 9', '629bc0a137f86'),
('629bc0a133853', 'None of these', '629bc0a137f87'),
('629bc0a14d74d', ' -√2 + 3', '629bc0a15146d'),
('629bc0a14d74d', ' -√2 - 3', '629bc0a151476'),
('629bc0a14d74d', ' √2 - 3', '629bc0a151478'),
('629bc0a14d74d', 'None of these', '629bc0a151479'),
('629bc0a179617', '1', '629bc0a17dd45'),
('629bc0a179617', 'x/1', '629bc0a17dd4a'),
('629bc0a179617', '1/x', '629bc0a17dd4b'),
('629bc0a179617', 'All of these', '629bc0a17dd4c'),
('629bc0a199a7e', 'x', '629bc0a1a4a8f'),
('629bc0a199a7e', 'x/1', '629bc0a1a4a99'),
('629bc0a199a7e', 'both a & b', '629bc0a1a4a9b'),
('629bc0a199a7e', 'None of these', '629bc0a1a4a9c'),
('629bc0e6719ee', '√5 - 3', '629bc0e698f49'),
('629bc0e6719ee', '-√5 + 3', '629bc0e698f50'),
('629bc0e6719ee', '-√5 - 3', '629bc0e698f51'),
('629bc0e6719ee', 'None of these', '629bc0e698f52'),
('629bc0e72502a', ' -√2 + 9', '629bc0e736080'),
('629bc0e72502a', ' √2 - 9', '629bc0e73608b'),
('629bc0e72502a', ' -√2 - 9', '629bc0e73608d'),
('629bc0e72502a', 'None of these', '629bc0e73608e'),
('629bc0e74ffe8', ' -√2 + 3', '629bc0e756474'),
('629bc0e74ffe8', ' -√2 - 3', '629bc0e75647e'),
('629bc0e74ffe8', ' √2 - 3', '629bc0e756480'),
('629bc0e74ffe8', 'None of these', '629bc0e756481'),
('629bc0e77afad', '1', '629bc0e781460'),
('629bc0e77afad', 'x/1', '629bc0e78146a'),
('629bc0e77afad', '1/x', '629bc0e78146b'),
('629bc0e77afad', 'All of these', '629bc0e78146c'),
('629bc0e7a8aef', 'x', '629bc0e7aef62'),
('629bc0e7a8aef', 'x/1', '629bc0e7aef6c'),
('629bc0e7a8aef', 'both a & b', '629bc0e7aef6e'),
('629bc0e7a8aef', 'None of these', '629bc0e7aef6f'),
('629bc0e7cb988', 'R', '629bc0e7d1e50'),
('629bc0e7cb988', 'Z', '629bc0e7d1e5b'),
('629bc0e7cb988', 'Radical', '629bc0e7d1e5e'),
('629bc0e7cb988', 'None of these', '629bc0e7d1e60'),
('629bc0e81e2d6', 'Rational', '629bc0e822ad7'),
('629bc0e81e2d6', 'Irrational', '629bc0e822ae0'),
('629bc0e81e2d6', 'Real', '629bc0e822ae2'),
('629bc0e81e2d6', 'None of these', '629bc0e822ae4'),
('629bc0e84302f', 'Additive', '629bc0e846ade'),
('629bc0e84302f', 'Multiplicative', '629bc0e846ae8'),
('629bc0e84302f', 'Symmetric', '629bc0e846aea'),
('629bc0e84302f', 'None of these', '629bc0e846aeb'),
('629bc0e85dd3e', '4', '629bc0e8618d1'),
('629bc0e85dd3e', '-16', '629bc0e8618d9'),
('629bc0e85dd3e', '16', '629bc0e8618db'),
('629bc0e85dd3e', '0', '629bc0e8618dd'),
('629bc0e876007', 'Mathematics', '629bc0e879b9e'),
('629bc0e876007', 'Arithmetic', '629bc0e879ba7'),
('629bc0e876007', 'Calculus', '629bc0e879ba8'),
('629bc0e876007', 'Geometry', '629bc0e879ba9'),
('629f930a4ab15', 'e', '629f930a4af36'),
('629f930a4ab15', 'e', '629f930a4af37'),
('629f930a4ab15', 'fg', '629f930a4af38'),
('629f930a4ab15', 'g', '629f930a4af39'),
('629f930a4b1df', 'g', '629f930a4b254'),
('629f930a4b1df', 'g', '629f930a4b255'),
('629f930a4b1df', 'g', '629f930a4b256'),
('629f930a4b1df', 'x', '629f930a4b257'),
('629f930a4b4cb', 'x', '629f930a4b53c'),
('629f930a4b4cb', '23', '629f930a4b53d'),
('629f930a4b4cb', '3r', '629f930a4b53e'),
('629f930a4b4cb', 'r', '629f930a4b53f');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5b13ed30cd71f', '5b13ed3a6e006', 'dbjb', 4, 1),
('5b13ed6bb8bcd', '5b13ed72489d8', 'dvsd', 4, 1),
('629ba369bf6bb', '629bae20688e7', 'The power is 11 then (-a)\" is _________', 4, 1),
('629ba369bf6bb', '629bae20df740', '√x × √x is called _______', 4, 2),
('629ba369bf6bb', '629bae214cc90', 'The expression √a/√a  is __________', 4, 3),
('629ba369bf6bb', '629bae2187eac', '(-5) +(____/5) =0', 4, 4),
('629ba369bf6bb', '629bae21bce62', 'The multiplicative inverse of 0 is__________', 4, 5),
('629ba369bf6bb', '629bae21e7e4d', 'The symbol of √ is called __________', 4, 6),
('629ba369bf6bb', '629bae2221351', '(-2,-4) can be written in the form of a + ib is _______', 4, 7),
('629ba369bf6bb', '629bae224c348', 'If any non zero real number has zero power is _______', 4, 8),
('629ba369bf6bb', '629bae226c623', 'The real part of the z = -21i', 4, 9),
('629ba369bf6bb', '629bae228ca58', 'If a, b ,c €R Such that a=b then ac = bc is called _______property', 4, 10),
('629baf6866d41', '629bb6086a42c', '	log_x⁡y.   log_y⁡z= log_x⁡z ', 4, 1),
('629baf6866d41', '629bb608e6063', 'Find the Antilog of 2.9688', 4, 2),
('629baf6866d41', '629bb609121d7', 'Find the numbers of digits in 4^5', 4, 3),
('629baf6866d41', '629bb609325e8', 'if logx = 1 then x = __________', 4, 4),
('629baf6866d41', '629bb60957392', 'Common Logarithms have base __________', 4, 5),
('629baf6866d41', '629bb60979bec', 'log y = x is equal to', 4, 6),
('629baf6866d41', '629bb6099cb32', 'The logarithms numbers of the same sequence of significant digits have the same  __________', 4, 7),
('629baf6866d41', '629bb609c37cc', 'In scientific notation the power of 10 is called  __________', 4, 8),
('629baf6866d41', '629bb662a03cb', 'log_x⁡y.   log_y⁡z= log_x⁡z ', 4, 1),
('629baf6866d41', '629bb662e504f', 'Find the Antilog of 2.9688', 4, 2),
('629baf6866d41', '629bb66312bcb', 'Find the numbers of digits in 4^5', 4, 3),
('629baf6866d41', '629bb66332f60', 'if logx = 1 then x = __________', 4, 4),
('629baf6866d41', '629bb66353332', 'Common Logarithms have base __________', 4, 5),
('629baf6866d41', '629bb66373770', 'log y = x is equal to', 4, 6),
('629baf6866d41', '629bb6638bae7', 'The logarithms numbers of the same sequence of significant digits have the same  __________', 4, 7),
('629baf6866d41', '629bb663c2a0d', 'In scientific notation the power of 10 is called  __________', 4, 8),
('629baf6866d41', '629bb66414339', 'The value of e is __________', 4, 9),
('629baf6866d41', '629bb66445ebb', 'Who develop the table with base 10', 4, 10),
('629bbc437ee46', '629bc066032d4', 'Conjugate of  √5 + 3', 4, 1),
('629bbc437ee46', '629bc0666e65a', 'Conjugate of  √2 + 9', 4, 2),
('629bbc437ee46', '629bc066a2689', 'Conjugate of  √2 + 3', 4, 3),
('629bbc437ee46', '629bc066c17a4', 'Reciprocal of x is  _________ ', 4, 4),
('629bbc437ee46', '629bc066e1b68', '1/x is not a reciprocal of', 4, 5),
('629bbc437ee46', '629bc0a04a587', 'Conjugate of  √5 + 3', 4, 1),
('629bbc437ee46', '629bc0a133853', 'Conjugate of  √2 + 9', 4, 2),
('629bbc437ee46', '629bc0a14d74d', 'Conjugate of  √2 + 3', 4, 3),
('629bbc437ee46', '629bc0a179617', 'Reciprocal of x is  _________ ', 4, 4),
('629bbc437ee46', '629bc0a199a7e', '1/x is not a reciprocal of', 4, 5),
('629bbc437ee46', '629bc0e6719ee', 'Conjugate of  √5 + 3', 4, 1),
('629bbc437ee46', '629bc0e72502a', 'Conjugate of  √2 + 9', 4, 2),
('629bbc437ee46', '629bc0e74ffe8', 'Conjugate of  √2 + 3', 4, 3),
('629bbc437ee46', '629bc0e77afad', 'Reciprocal of x is  _________ ', 4, 4),
('629bbc437ee46', '629bc0e7a8aef', '1/x is not a reciprocal of', 4, 5),
('629bbc437ee46', '629bc0e7cb988', 'QUQ= _____________', 4, 6),
('629bbc437ee46', '629bc0e81e2d6', 'π is _____________ number', 4, 7),
('629bbc437ee46', '629bc0e84302f', 'If a, b ,c €R Such that a=b then ac = bc is called _______property', 4, 8),
('629bbc437ee46', '629bc0e85dd3e', '(4) +(____/4) =0', 4, 9),
('629bbc437ee46', '629bc0e876007', 'Algebra belongs to', 4, 10),
('629f92dea114d', '629f930a4ab15', 'e', 4, 1),
('629f92dea114d', '629f930a4b1df', 'gergg', 4, 2),
('629f92dea114d', '629f930a4b4cb', 'gergrg', 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(300) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `date`) VALUES
('629ba369bf6bb', 'Real And Complex Number', 20, 0, 10, '2022-06-04 18:24:41'),
('629baf6866d41', 'Logarithm', 20, 1, 10, '2022-06-04 19:15:52'),
('629bbc437ee46', 'Algebraic Exprassion', 20, 1, 10, '2022-06-04 20:10:43'),
('629f92dea114d', 'Chap4', 1, 1, 3, '2022-06-07 18:03:10');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('ahmedhammad262@gmail.com', 160, '2022-06-08 07:09:33'),
('tehreemaijaz10@gmail.com', 20, '2022-06-11 15:07:58'),
('', 0, '2022-06-08 18:08:17'),
('zubiamateen1903@gmail.com', 120, '2022-06-08 18:47:39');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `college`, `email`, `password`) VALUES
('abc', 'abc', 'abc@gmail.com', 'abcdefg'),
('adin', 'qwerty', 'admin@gamail.com', '123'),
('admin@admin.com', 'Hammad', 'ahmedhammad262@gmail.com', 'hammad'),
('tehreem aijaz', 'gh', 'tehreemaijaz10@gmail.com', 'hello'),
('Zobia Mateen', 'Dawood University of Engineering and Technology ', 'zubiamateen1903@gmail.com', 'World234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
