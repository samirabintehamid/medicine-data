-- phpMyAdmin SQL Dump
-- version 3.1.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 08, 2018 at 08:35 AM
-- Server version: 5.1.30
-- PHP Version: 5.2.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `laz_pharma`
--

-- --------------------------------------------------------

--
-- Table structure for table `disease`
--

CREATE TABLE IF NOT EXISTS `disease` (
  `disease_id` int(2) NOT NULL,
  `disease_name` varchar(20) NOT NULL,
  `disease_symtoms` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `disease`
--

INSERT INTO `disease` (`disease_id`, `disease_name`, `disease_symtoms`) VALUES
(1, 'Hypertension', 'high blood pressure ,At least 140 for systolic or at least 90 mm Hg for diastolic,headaches, damage blood vessels\r\n'),
(2, ' Diabetes', 'Weight loss,A lack of sugar in the blood cells , hungry and thirsty, more than 126 milligrams of glucose per deciliter of plasma'),
(3, 'Diarrhea', 'Rapid heart rate, Dry, flushed skin,Severe abdominal or rectal pain,Dark urine or small amounts of urine.'),
(4, 'Ear Infections', 'pain,ear infections.'),
(5, 'Eczema', 'Dry, sensitive skin\r\n,Red, inflamed skin\r\n ,Intense itching\r\n ,Scaly areas \r\n ,Recurring rash\r\n ,Oozing and crusting\r\n\r\n'),
(6, 'Eye disease', ' tissue problem,Color Blindness,Glaucoma,Ocular Hypertension'),
(7, 'Asthma', ' shortness of breath, cough (often worse at night),wheezing, Low blood oxygen level.');

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE IF NOT EXISTS `medicines` (
  `medicines_id` int(2) NOT NULL,
  `name` varchar(10) NOT NULL,
  `company` varchar(20) NOT NULL,
  `weight` varchar(5) NOT NULL,
  `types` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`medicines_id`, `name`, `company`, `weight`, `types`) VALUES
(1, 'Roburol ', 'Bambuterol', '20', 'tablet'),
(2, 'Ascodex+ ', 'Bromhexine', '5', 'tablet'),
(3, 'Vent FB Ea', 'Budesonide and Formo', '200', 'tablet'),
(4, 'Ceporan ', 'Cephaloridine', '500', 'tablet'),
(5, 'B-Active', 'Choline', '0', 'tablet'),
(6, 'Psyphyllin', 'Doxofylline', '400', 'tablet'),
(11, 'Edarbi', 'Azilsartan', '5', 'tablet'),
(7, ' Eltocin -', 'Erythromycin', '500 ', 'tablet'),
(8, ' Ventiflo ', 'Fluticasone', '250 ', 'tablet'),
(9, 'Ipratop ', 'Ipratropium Bromide ', '20', 'tablet'),
(10, ' Duolin ', 'Levalbuterol HCl ', ' 100', 'tablet'),
(12, 'Atacand', 'Candesartan', '200', 'tablet'),
(13, 'Teveten', 'Eprosartan', '400', 'tablet'),
(14, ' Minipress', 'Prazosin', '20', 'tablet'),
(15, 'Wytensin', 'Guanabenz', '20', 'tablet'),
(16, 'Coreg CR', 'Carvedilol', '00', 'tablet'),
(17, 'Corgard', 'Nadolol', '20', 'tablet'),
(18, 'Lotrel', 'Amlodipine', '500', 'tablet'),
(19, ' Andial ', 'Citadel Fine Pharma ', '00', 'tablet'),
(20, ' Eldoper ', 'Brown & Burk Pharmac', '00', 'tablet'),
(21, '   Imodium', 'Johnson & Johnson ', '200', 'tablet'),
(22, '   Ridol 	', 'Gufic Limited', '200', 'tablet');

-- --------------------------------------------------------

--
-- Table structure for table `medicines_disease`
--

CREATE TABLE IF NOT EXISTS `medicines_disease` (
  `disease_id` int(2) NOT NULL,
  `medicines_id` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicines_disease`
--


-- --------------------------------------------------------

--
-- Table structure for table `storage_medicines`
--

CREATE TABLE IF NOT EXISTS `storage_medicines` (
  `medicines_id` int(2) NOT NULL,
  `price` double NOT NULL,
  `ex_date` date NOT NULL,
  `quantity` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_medicines`
--

