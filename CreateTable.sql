-- phpMyAdmin SQL Dump
-- version 4.0.10
-- http://www.phpmyadmin.net
--
-- Počítač: localhost
-- Vygenerováno: Pon 23. čen 2014, 11:35
-- Verze serveru: 5.0.51a-24+lenny5
-- Verze PHP: 5.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databáze: `db-ichtys`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `new_implicit_events`
--

CREATE TABLE IF NOT EXISTS `traceUser` (
  `visitID` int(11) NOT NULL auto_increment,
  `userID` int(11) NOT NULL,
  `objectID` int(11) NOT NULL,
  `sessionID` int(11) NOT NULL,
  `pageID` text NOT NULL,
  `pageType` text NOT NULL,
  `imagesCount` int(11) NOT NULL,
  `textSizeCount` int(11) NOT NULL,
  `linksCount` int(11) NOT NULL,
  `windowSizeX` int(11) NOT NULL,
  `windowSizeY` int(11) NOT NULL,
  `pageSizeX` int(11) NOT NULL,
  `pageSizeY` int(11) NOT NULL,
  `objectsListed` text NOT NULL,
  `startDatetime` datetime NOT NULL,
  `endDatetime` datetime NOT NULL,
  `timeOnPage` int(11) default NULL,
  `mouseClicksCount` int(11) default NULL,
  `pageViewsCount` int(11) default NULL,
  `mouseMovingTime` int(11) default NULL,
  `mouseMovingDistance` int(11) default NULL,
  `scrollingCount` int(11) NOT NULL,
  `scrollingTime` int(11) NOT NULL,
  `scrollingDistance` int(11) default NULL,
  `printPageCount` int(11) default NULL,
  `selectCount` int(11) default NULL,
  `selectedText` text NOT NULL,
  `searchedText` text NOT NULL,
  `copyCount` int(11) default NULL,
  `copyText` text NOT NULL,
  `clickOnPurchaseCount` int(11) default NULL,
  `purchaseCount` int(11) default NULL,
  `forwardingToLinkCount` int(11) default NULL,
  `forwardedToLink` text,
  `logFile` text,
  PRIMARY KEY  (`visitID`),
  UNIQUE KEY `userID` (`userID`,`sessionID`,`pageID`(500))
) ENGINE=MyISAM  DEFAULT CHARSET=cp1250 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
