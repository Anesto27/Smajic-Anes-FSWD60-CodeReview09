-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 09. Mrz 2019 um 14:36
-- Server-Version: 10.1.38-MariaDB
-- PHP-Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `RentACar`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Booking`
--

CREATE TABLE `Booking` (
  `Booking_ID` int(11) NOT NULL,
  `Customer_ID` int(11) DEFAULT NULL,
  `Pick_up_date` date DEFAULT NULL,
  `Bring_back_date` date DEFAULT NULL,
  `Insurance_ID` int(11) DEFAULT NULL,
  `Booking_Status_Code` int(11) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Credit_ID` int(11) DEFAULT NULL,
  `Company_ID` int(11) DEFAULT NULL,
  `Vehicle_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `Booking`
--

INSERT INTO `Booking` (`Booking_ID`, `Customer_ID`, `Pick_up_date`, `Bring_back_date`, `Insurance_ID`, `Booking_Status_Code`, `Price`, `Credit_ID`, `Company_ID`, `Vehicle_ID`) VALUES
(1, 1, '2019-03-12', '2019-03-20', 1, 1, 250, 1001, 1, 1),
(2, 2, '2019-03-20', '2019-04-10', 2, 2, 350, 1002, 2, 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `BookingStatusCode`
--

CREATE TABLE `BookingStatusCode` (
  `Booking_Status_Code` int(11) NOT NULL,
  `Status_description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `BookingStatusCode`
--

INSERT INTO `BookingStatusCode` (`Booking_Status_Code`, `Status_description`) VALUES
(1, 'You have booked the car '),
(2, 'You must pay the booking first!');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `BreakdownService`
--

CREATE TABLE `BreakdownService` (
  `Service_ID` int(11) NOT NULL,
  `Service_Name` varchar(55) DEFAULT NULL,
  `Employee_Name` varchar(55) DEFAULT NULL,
  `Damage_Report` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `BreakdownService`
--

INSERT INTO `BreakdownService` (`Service_ID`, `Service_Name`, `Employee_Name`, `Damage_Report`) VALUES
(1, 'Ömtc', 'Mustafa Sandal', 'direct Crash'),
(2, 'Ömtc', 'Fritz Huber', 'small Crash');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Company`
--

CREATE TABLE `Company` (
  `Company_ID` int(11) NOT NULL,
  `Company_Name` varchar(55) DEFAULT NULL,
  `Parking_Space` int(11) DEFAULT NULL,
  `Manufacturer_ID` int(11) DEFAULT NULL,
  `Vehicle_ID` int(11) DEFAULT NULL,
  `Service_ID` int(11) DEFAULT NULL,
  `Booking_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `Company`
--

INSERT INTO `Company` (`Company_ID`, `Company_Name`, `Parking_Space`, `Manufacturer_ID`, `Vehicle_ID`, `Service_ID`, `Booking_ID`) VALUES
(1, 'Rent a car', 100, 1, 1, 1, 1),
(2, 'Rent a car', 100, 1, 2, 2, 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `CreditCard`
--

CREATE TABLE `CreditCard` (
  `Credit_ID` int(11) NOT NULL,
  `Credit_Card_type` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `CreditCard`
--

INSERT INTO `CreditCard` (`Credit_ID`, `Credit_Card_type`) VALUES
(1001, 'Visa'),
(1002, 'Mastercard');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Customer`
--

CREATE TABLE `Customer` (
  `Customer_ID` int(11) NOT NULL,
  `First_Name` varchar(55) DEFAULT NULL,
  `Last_Name` varchar(55) DEFAULT NULL,
  `E_Mail` varchar(55) DEFAULT NULL,
  `ID_Card` varchar(55) DEFAULT NULL,
  `Town_Postcode` int(11) DEFAULT NULL,
  `Credit_ID` int(11) DEFAULT NULL,
  `Destination_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `Customer`
--

INSERT INTO `Customer` (`Customer_ID`, `First_Name`, `Last_Name`, `E_Mail`, `ID_Card`, `Town_Postcode`, `Credit_ID`, `Destination_ID`) VALUES
(1, 'Anes', 'Smajic', 'smajic@gmx.at', 'Driving license', 1150, 1001, 1),
(2, 'Goran', 'Stevic', 'stevic@gmx.at', 'Driving license', 1150, 1002, 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Destinantion`
--

CREATE TABLE `Destinantion` (
  `Destination_ID` int(11) NOT NULL,
  `Location` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `Destinantion`
--

INSERT INTO `Destinantion` (`Destination_ID`, `Location`) VALUES
(1, 'Vienna'),
(2, 'linz');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Insurance`
--

CREATE TABLE `Insurance` (
  `Insurance_ID` int(11) NOT NULL,
  `Insurance_type` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `Insurance`
--

INSERT INTO `Insurance` (`Insurance_ID`, `Insurance_type`) VALUES
(1, 'WGKK'),
(2, 'GKK');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Manufacturer`
--

CREATE TABLE `Manufacturer` (
  `Manufacturer_ID` int(11) NOT NULL,
  `Manufacturer_Name` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `Manufacturer`
--

INSERT INTO `Manufacturer` (`Manufacturer_ID`, `Manufacturer_Name`) VALUES
(1, 'BMW');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Vehicle`
--

CREATE TABLE `Vehicle` (
  `Vehicle_ID` int(11) NOT NULL,
  `Manufacturer_ID` int(11) DEFAULT NULL,
  `Model` varchar(55) DEFAULT NULL,
  `Service_ID` int(11) DEFAULT NULL,
  `Available_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `Vehicle`
--

INSERT INTO `Vehicle` (`Vehicle_ID`, `Manufacturer_ID`, `Model`, `Service_ID`, `Available_ID`) VALUES
(1, 1, 'X6', 1, 1),
(2, 1, 'M5', 2, 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `VehicleAvailable`
--

CREATE TABLE `VehicleAvailable` (
  `Available_ID` int(11) NOT NULL,
  `Model` varchar(55) DEFAULT NULL,
  `Available_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `VehicleAvailable`
--

INSERT INTO `VehicleAvailable` (`Available_ID`, `Model`, `Available_date`) VALUES
(1, 'X6', '2019-03-10'),
(2, 'M5', '2019-03-11');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `Booking`
--
ALTER TABLE `Booking`
  ADD PRIMARY KEY (`Booking_ID`),
  ADD KEY `Customer_ID` (`Customer_ID`),
  ADD KEY `Booking_Status_Code` (`Booking_Status_Code`),
  ADD KEY `Insurance_ID` (`Insurance_ID`),
  ADD KEY `Vehicle_ID` (`Vehicle_ID`),
  ADD KEY `Company_ID` (`Company_ID`);

--
-- Indizes für die Tabelle `BookingStatusCode`
--
ALTER TABLE `BookingStatusCode`
  ADD PRIMARY KEY (`Booking_Status_Code`);

--
-- Indizes für die Tabelle `BreakdownService`
--
ALTER TABLE `BreakdownService`
  ADD PRIMARY KEY (`Service_ID`);

--
-- Indizes für die Tabelle `Company`
--
ALTER TABLE `Company`
  ADD PRIMARY KEY (`Company_ID`),
  ADD KEY `Manufacturer_ID` (`Manufacturer_ID`);

--
-- Indizes für die Tabelle `CreditCard`
--
ALTER TABLE `CreditCard`
  ADD PRIMARY KEY (`Credit_ID`);

--
-- Indizes für die Tabelle `Customer`
--
ALTER TABLE `Customer`
  ADD PRIMARY KEY (`Customer_ID`),
  ADD KEY `Destination_ID` (`Destination_ID`),
  ADD KEY `Credit_ID` (`Credit_ID`);

--
-- Indizes für die Tabelle `Destinantion`
--
ALTER TABLE `Destinantion`
  ADD PRIMARY KEY (`Destination_ID`);

--
-- Indizes für die Tabelle `Insurance`
--
ALTER TABLE `Insurance`
  ADD PRIMARY KEY (`Insurance_ID`);

--
-- Indizes für die Tabelle `Manufacturer`
--
ALTER TABLE `Manufacturer`
  ADD PRIMARY KEY (`Manufacturer_ID`);

--
-- Indizes für die Tabelle `Vehicle`
--
ALTER TABLE `Vehicle`
  ADD PRIMARY KEY (`Vehicle_ID`),
  ADD KEY `Manufacturer_ID` (`Manufacturer_ID`),
  ADD KEY `Service_ID` (`Service_ID`),
  ADD KEY `Available_ID` (`Available_ID`);

--
-- Indizes für die Tabelle `VehicleAvailable`
--
ALTER TABLE `VehicleAvailable`
  ADD PRIMARY KEY (`Available_ID`);

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `Booking`
--
ALTER TABLE `Booking`
  ADD CONSTRAINT `Booking_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `Customer` (`Customer_ID`),
  ADD CONSTRAINT `Booking_ibfk_2` FOREIGN KEY (`Booking_Status_Code`) REFERENCES `BookingStatusCode` (`Booking_Status_Code`),
  ADD CONSTRAINT `Booking_ibfk_3` FOREIGN KEY (`Insurance_ID`) REFERENCES `Insurance` (`Insurance_ID`),
  ADD CONSTRAINT `Booking_ibfk_4` FOREIGN KEY (`Vehicle_ID`) REFERENCES `Vehicle` (`Vehicle_ID`),
  ADD CONSTRAINT `Booking_ibfk_5` FOREIGN KEY (`Company_ID`) REFERENCES `Company` (`Company_ID`);

--
-- Constraints der Tabelle `Company`
--
ALTER TABLE `Company`
  ADD CONSTRAINT `Company_ibfk_1` FOREIGN KEY (`Manufacturer_ID`) REFERENCES `Manufacturer` (`Manufacturer_ID`);

--
-- Constraints der Tabelle `Customer`
--
ALTER TABLE `Customer`
  ADD CONSTRAINT `Customer_ibfk_1` FOREIGN KEY (`Destination_ID`) REFERENCES `Destinantion` (`Destination_ID`),
  ADD CONSTRAINT `Customer_ibfk_2` FOREIGN KEY (`Credit_ID`) REFERENCES `CreditCard` (`Credit_ID`);

--
-- Constraints der Tabelle `Vehicle`
--
ALTER TABLE `Vehicle`
  ADD CONSTRAINT `Vehicle_ibfk_1` FOREIGN KEY (`Manufacturer_ID`) REFERENCES `Manufacturer` (`Manufacturer_ID`),
  ADD CONSTRAINT `Vehicle_ibfk_2` FOREIGN KEY (`Service_ID`) REFERENCES `BreakdownService` (`Service_ID`),
  ADD CONSTRAINT `Vehicle_ibfk_3` FOREIGN KEY (`Available_ID`) REFERENCES `VehicleAvailable` (`Available_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
