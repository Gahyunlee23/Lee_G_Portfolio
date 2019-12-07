-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 07, 2019 at 06:18 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `ID` int(11) NOT NULL,
  `Category` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`ID`, `Category`) VALUES
(1, 'Design'),
(2, 'Web Design');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories_projects`
--

CREATE TABLE `tbl_categories_projects` (
  `ID` int(11) NOT NULL,
  `Categories_ID` int(11) NOT NULL,
  `Projects_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_categories_projects`
--

INSERT INTO `tbl_categories_projects` (`ID`, `Categories_ID`, `Projects_ID`) VALUES
(1, 1, 5),
(2, 1, 6),
(3, 2, 1),
(4, 2, 2),
(5, 2, 3),
(6, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_projects`
--

CREATE TABLE `tbl_projects` (
  `ID` int(11) NOT NULL,
  `Title` varchar(30) COLLATE utf8_bin NOT NULL,
  `Date` varchar(10) COLLATE utf8_bin NOT NULL,
  `Description` text COLLATE utf8_bin NOT NULL,
  `Image` varchar(30) COLLATE utf8_bin NOT NULL,
  `Learned` text COLLATE utf8_bin NOT NULL,
  `Tools` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_projects`
--

INSERT INTO `tbl_projects` (`ID`, `Title`, `Date`, `Description`, `Image`, `Learned`, `Tools`) VALUES
(1, 'Bootcamp', '2019', 'Bootcamp is designing a professional agency site with an original logo and tagline, and animated video for promoting the company. ', 'thumbnail-bootcamp.png', 'When it comes to my skills, I learned how sass works. A group project always teaches me something like communication skills and new CSS skills, which I don’t use them often before.', 'HTML, SASS, Photoshop'),
(2, 'Hackathon', '2019', 'Hackathon is designing one-page, interactive product app featuring the HouseCom ThermoSecurity System.', 'thumbnail-hackathon.png', 'Technically I learned database and I designed tables and brought them into the website through handle bars and node.js. \r\n', 'HTML, SASS, Node.js, Database, Photoshop, illustrator, inDesign, Cinema 4d'),
(3, 'Infographic', '2019', 'Developing a responsive one-page application to showcase an interactive implementation through information from database. ', 'thumbnail-infographic.png', 'Getting used to the node.js, I used javascript to fetch the data instead of handle bars.', 'HTML, SASS, Node.js, Database, illustrator'),
(4, 'Music Mixer', '2019', 'This project is an interactive music mixer with drag & drop functionalities. Javascript is utilized to drag elements into a drop-zone artwork area where a designated audio track tied to the draggable element will then begin to play.', 'thumbnail-musicmixer.png', 'Javascript. I studied not only javascript functions, but also the logics behind code.', 'HTML, CSS, Javascript, illustrator'),
(5, 'Collectible cards', '2019', 'I designed four 80 x 50 collectible cards as rewards for donors of a fundraiser sponsoring the LGBT+ community in South Korea, targeting fans of K-POP. The client provided photos and information.', 'thumbnail-photocard.png', 'The collectible cards were printed out products, so I took the colors into account when I designed them. I also took care of spellings and the order of layers. It was an excellent experience to arrange photos and texts within a limited space.', 'Photoshop, illustrator'),
(6, 'Lyric Sticker', '2019', 'It was a pro bono that rewards for donors of a fundraiser sponsoring the LGBT+ community in South Korea and targeting LGBT+ fans of K-POP. The client chose the lyrics of the K-POP songs that represent their identities.', 'thumbnail-lyricsticker.png', 'I learned how to use typography with colors to emphasize the meanings of the lyrics. ', 'Photoshop, illustrator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_categories_projects`
--
ALTER TABLE `tbl_categories_projects`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_projects`
--
ALTER TABLE `tbl_projects`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_categories_projects`
--
ALTER TABLE `tbl_categories_projects`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_projects`
--
ALTER TABLE `tbl_projects`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
