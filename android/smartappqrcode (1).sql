-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2017 at 08:11 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smartappqrcode`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartID` int(10) NOT NULL,
  `ItemID` int(100) DEFAULT NULL,
  `Quantity` int(10) DEFAULT NULL,
  `Unitamount` float DEFAULT NULL,
  `Total` float DEFAULT NULL,
  `userID` int(100) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cutomerID` int(100) NOT NULL,
  `customerame` varchar(50) DEFAULT NULL,
  `customeraddress` varchar(100) DEFAULT NULL,
  `customeremail` varchar(50) DEFAULT NULL,
  `customermobile` varchar(50) DEFAULT NULL,
  `customerplace` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cutomerID`, `customerame`, `customeraddress`, `customeremail`, `customermobile`, `customerplace`) VALUES
(33, 'a', 'b', 'g', '9', 'f');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `lodID` int(20) NOT NULL,
  `loginUsername` varchar(20) DEFAULT NULL,
  `loginPassword` varchar(20) DEFAULT NULL,
  `utype` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`lodID`, `loginUsername`, `loginPassword`, `utype`) VALUES
(8, 'sur', 'sur', 'staff'),
(9, 'jiji', 'jiji', 'sales'),
(10, 'hnyt', 'aa', 'staff'),
(16, 'sumesh', 'sum', 'staff'),
(28, 'banee', '9895204814', 'Salesman'),
(33, 'c', 'd', 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `party`
--

CREATE TABLE `party` (
  `partyID` int(100) NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Place` varchar(30) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `PIN` int(6) DEFAULT NULL,
  `Phone` bigint(20) DEFAULT NULL,
  `OpeningBalance` int(10) DEFAULT NULL,
  `payment` int(10) DEFAULT NULL,
  `currentbalance` int(10) DEFAULT NULL,
  `openingdate` varchar(10) DEFAULT NULL,
  `emailaddress` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `party`
--

INSERT INTO `party` (`partyID`, `Name`, `Place`, `Address`, `PIN`, `Phone`, `OpeningBalance`, `payment`, `currentbalance`, `openingdate`, `emailaddress`) VALUES
(1, 'abc', 'calicut', 'calicut', 111111, 12366, 1000, 10, NULL, '1992-12-12', 'abc@gmail'),
(2, 'hamdi', 'calicut', 'space mall', 188, 1888, 10000, NULL, NULL, NULL, NULL),
(3, 'hajee', 'palakkad', 'palakkad', 255, 188, 10000, NULL, NULL, NULL, NULL),
(4, 'ssm', 'ss', 'ss', 33, 33, 1000, NULL, NULL, NULL, NULL),
(5, 'asna', 'sa', 'as', 323, 23, 1000000, 100, 444, '1993-12-12', 'dfd'),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 900, NULL, NULL),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 990, NULL, NULL),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 990, NULL, NULL),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 990, NULL, NULL),
(10, 'aaa', 'as', 's', 3, 3, 23, NULL, NULL, '1993-12-12', 'es'),
(11, 'NDK', 'Tanur', 'Tanur	', 676307, 9446827218, 0, NULL, NULL, '', 'ndk@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductID` int(25) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `purchaseamount` int(50) DEFAULT NULL,
  `mrp` int(50) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `manufacturedate` varchar(10) DEFAULT NULL,
  `expdate` varchar(10) DEFAULT NULL,
  `taxpercentage` int(10) DEFAULT NULL,
  `taxamount` int(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `otherexpence` int(50) DEFAULT NULL,
  `billnumber` int(50) DEFAULT NULL,
  `billdate` varchar(10) DEFAULT NULL,
  `party` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductID`, `name`, `purchaseamount`, `mrp`, `brand`, `manufacturedate`, `expdate`, `taxpercentage`, `taxamount`, `description`, `otherexpence`, `billnumber`, `billdate`, `party`) VALUES
(1, 'LUXASOAP', 100, 110, 'LUX', '12', '12', 1, 10, 'S', 1, 11, '12', 'ABC'),
(2, 'mango', 10, 100, 'moochi', '1993', '1995', 2, 10, 'no', 10, 12, '1993', 'hamdi'),
(3, 'thenga', 10, 100, 'theng', '1993', '1995', 2, 10, 'no', 1, 12, '1993', 'hamdi'),
(4, 'jam', 100, 1000, 'kadalil', '1990', '1999', 4, 10, 'nil', 10, 12, '1993', 'hajee'),
(5, 'jamoon', 10, 100, 'kissan', '1992', '1999', 2, 1, 'mango', 1, 11, '1993', 'asna'),
(7, 'jam', 10, 100, 'kissan', '100', '1999', 2, 10, 'grapes', 10, 11, '1994', 'ssm'),
(8, 'powder', 100, 150, 'cuticura', '1999', '2010', 4, 100, 'female', 100, 11, '2000', 'hajee'),
(11, 'jjja', 3, 3, '3', '3', '3', NULL, 3, '3', 3, 11, '11', 'hajee'),
(12, 'mutayi', 11, 1000, 'lollipop', '1900', '100', NULL, 1, 'ss', 1, 11, '1999', 'hamdi'),
(13, 'fairness', 10, 100, 'fairlovely', '12', '13', NULL, 10, 'as', 10, 111, '11', 'hamdi'),
(14, 'soap', 1, 10, 'hamam', '11', '11', NULL, 1, 's', 1, 1, '1', 'hamdi'),
(16, 'Windows', 500, 525, 'XP', '25-12-2017', '26-12-2018', NULL, 2, 'Microsoft Corporation', 0, 5, '23-12-2017', 'NDK');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `SalesID` int(20) NOT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Total` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`SalesID`, `date`, `Total`) VALUES
(1, '2017-03-29 06:02:34', 1000),
(2, '2017-03-29 06:08:35', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staffID` int(10) NOT NULL,
  `Name` varchar(60) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `PIN` int(6) DEFAULT NULL,
  `Mobile` bigint(12) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `image` blob,
  `specialID` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staffID`, `Name`, `Address`, `PIN`, `Mobile`, `Email`, `image`, `specialID`) VALUES
(8, 'sresh', 'hh', 33, 3232332, '22', 0x70656e64696e67, 'sur'),
(9, 'jijith', 'as', 33, 232, 'zsd', 0x70656e64696e67, 'jiji'),
(10, 'hinayath', 'sa', 33, 22, '22qw', 0x70656e64696e67, 'hnyt'),
(17, 'sumesh', 'sss', 77, 77, 'jjsd', 0x70656e64696e67, 'sumesh'),
(18, 'Rakesh', 'xs', 33, 434, 'dss', 0x70656e64696e67, 'rakesh'),
(19, 'rakesh', 'ad', 33, 44, 'e', 0x70656e64696e67, 'rakesh'),
(21, 'rakesh', 'c', 3, 4, 'df', 0x70656e64696e67, 'rakesh'),
(22, 'rakesh', 'cv', 334, 55, 'hhs', 0x70656e64696e67, 'rakesh'),
(24, 'moyanth', 'as', 33, 3243, 'ds', 0x70656e64696e67, 'moyanth'),
(26, 'maya', 'maya', 66, 44, 'e', 0x70656e64696e67, 'maya'),
(30, 'Banee', 'tanalur	', 676307, 9446827219, 'banee@gmail.com', 0x70656e64696e67, 'banee');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cutomerID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`lodID`);

--
-- Indexes for table `party`
--
ALTER TABLE `party`
  ADD PRIMARY KEY (`partyID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`SalesID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staffID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `lodID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `party`
--
ALTER TABLE `party`
  MODIFY `partyID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ProductID` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `SalesID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
