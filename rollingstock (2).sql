-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2024 at 09:17 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rollingstock`
--

-- --------------------------------------------------------

--
-- Table structure for table `assembly_from_division`
--

CREATE TABLE `assembly_from_division` (
  `assembly_id` varchar(12) NOT NULL,
  `notification_no` varchar(12) NOT NULL,
  `rs_owner` varchar(50) NOT NULL,
  `assembly_type` varchar(100) NOT NULL,
  `assembly_sub_type` varchar(100) NOT NULL,
  `receiving_work_center` varchar(100) NOT NULL,
  `quantity_rec` int(10) NOT NULL,
  `work_order_no` varchar(10) NOT NULL,
  `work_order_date` date NOT NULL,
  `allocation_no` varchar(12) NOT NULL,
  `repair_type` varchar(100) NOT NULL,
  `receiving_date` date NOT NULL,
  `received_by` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assembly_from_division`
--

INSERT INTO `assembly_from_division` (`assembly_id`, `notification_no`, `rs_owner`, `assembly_type`, `assembly_sub_type`, `receiving_work_center`, `quantity_rec`, `work_order_no`, `work_order_date`, `allocation_no`, `repair_type`, `receiving_date`, `received_by`, `remarks`) VALUES
('00008625', '555622987352', 'WR', 'Door Systems', 'External Doors', 'Kapurthala Railway Workshops', 6, '00345678', '2022-05-05', '00345678', 'Minor Maintenance', '2022-05-20', 'Mechanical Inspector George', 'New Doors Attached'),
('00900552', '112312319091', 'NR', 'Propulsion', 'GEAR Box', 'Modern Coach Factory (MCF)', 8, '00789012', '2023-07-20', '00789012', 'POH', '2023-08-05', 'Mechanical Engineer Linda', 'New Gear control system'),
('00981124', '220910298172', 'SR', 'Lighting', 'Emergency Lightining system', 'Electrical Locomotive Works (ELW)', 1, '00123456', '2023-09-20', '00123456', 'Periodic Overhaul', '2023-09-30', 'Electrical Engineer Lisa', 'Upgrading lightining performance'),
('10100426', '985395168334', 'CR', 'ICF Wheel', 'Wheel Bearing', 'ICF MAIN', 4, '31063982', '2024-02-06', '31063982', 'POH', '2024-02-07', 'Sr. section engineer-icf', 'to be checked thoroughly\r\n'),
('10100427', '985395168335', 'ER', 'Braking System', 'Brake control system\r\n', 'Perambur Workshop', 4, '31063983', '2024-01-04', '31063983', 'NPOH', '2024-01-05', ' Sr. Mechanical Engineer ', 'New Brake liners Installed'),
('10100428', '985395168336', 'SR', 'Coupler', 'Front Coupler', 'Golden Rock Workshop', 5, '31063984', '2024-02-09', '31063984', 'Intermediate Overhaul', '2024-02-10', 'Jr. Electric Engineer', 'Replacement of Front Coupler'),
('10100429', '985395168338', 'CR', 'Tilt System', 'Tilt Control Unit', 'Perambur Workshop', 1, '31063988', '2024-03-29', '31063988', 'Periodic Overhaul', '2024-03-30', 'Mechanical Engineer John', 'Monitoring the system'),
('11872635', '889018273763', 'WR', 'Guidance', 'Motor Bogie', 'Diesel Locomotive Works (DLW)', 1, '00567890', '2021-06-15', '00567890', 'General Overhaul', '2021-06-20', 'Mechanical Engineer Sarah', 'Replacement of Motor'),
('12340864', '073189539618', 'WR', 'Propulsion', 'Gear Box', 'Diesel Locomotive Works (DLW)', 8, '07484285', '2024-01-20', '47103258', 'POH', '2024-02-14', 'Electrical Engineer Lisa', 'None'),
('77720624', '987762666682', 'SR', 'HVAC', 'Heating system', 'Golden Rock Workshop', 3, '97263623', '2023-04-14', '97263623', 'Periodic Overhaul', '2023-04-20', 'Electrical Engineer Jane', 'Repaired Heating System'),
('99872651', '009811880927', 'CR', 'Communication Systems', 'Train to wayside communication system', 'Sonipat Workshop', 4, '00901234', '2022-06-02', '00901234', 'POH', '2022-06-15', 'Engineer Max', 'New communication wires installed');

-- --------------------------------------------------------

--
-- Table structure for table `assembly_from_store`
--

CREATE TABLE `assembly_from_store` (
  `assembly_id` varchar(12) NOT NULL,
  `notification_no` varchar(12) NOT NULL,
  `rs_owner` varchar(50) NOT NULL,
  `assembly_type` varchar(100) NOT NULL,
  `assembly_sub_type` varchar(100) NOT NULL,
  `store_type` varchar(50) NOT NULL,
  `quantity_rec` int(10) NOT NULL,
  `receiving_date` date NOT NULL,
  `received_by` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assembly_from_store`
--

INSERT INTO `assembly_from_store` (`assembly_id`, `notification_no`, `rs_owner`, `assembly_type`, `assembly_sub_type`, `store_type`, `quantity_rec`, `receiving_date`, `received_by`, `remarks`) VALUES
('11192012', '289222122112', 'WR', 'BOXNHL', 'Wheel', 'workshop Shop store', 3, '2022-06-09', 'Sr Mechanical Engineer', 'Attach new wheel bearings'),
('11920192', '111290398473', 'NR', 'BOXNR', 'Brake System', 'workshop main store', 2, '2019-06-23', 'Sr. Workshop Engineer', 'Attach new brake liners'),
('15104434', '985409368338', 'WR', 'BVZI Bogie', 'brake cock , brake fuel cylinder', 'workshop main store', 2, '2024-02-06', 'SR. section Engineer - ICF', '2 sub assembly , 2 qty each'),
('73273200', '109202809922', 'SR', 'BLC ', 'Lower Body', 'workshop Shop store', 5, '2020-07-16', 'Sr. engineer', 'Check working of Lower body'),
('73826000', '981102982273', 'SR', 'BOBRN', 'Upper Body', 'workshop main store', 5, '2022-03-11', 'Jr. Manager', 'Replace upper body'),
('77728192', '888928272663', 'NR', 'BCN', 'Brake System', 'workshop main store', 2, '2023-07-19', 'Sr Manager', 'Check brake systems'),
('88810222', '289712370721', 'WR', 'BOXNHS', 'Side body', 'workshop Main store', 3, '2024-02-06', 'Inspection Manager', 'Color side body'),
('88829203', '729732173711', 'NR', 'BOXNHS', 'upper and lower body', 'workshop Main store', 1, '2022-04-10', 'Sr. Mechanical Engineer', 'Inspection of whole wagon'),
('9999201', '999910298712', 'ER', 'BOXN', 'Wheel', 'workshop Shop store', 2, '2024-03-14', 'Sr. Mechanical Engineer', 'Check wheel bearing');

-- --------------------------------------------------------

--
-- Table structure for table `assembly_under_maintenance`
--

CREATE TABLE `assembly_under_maintenance` (
  `assembly_id` varchar(12) NOT NULL,
  `notification_no` varchar(12) NOT NULL,
  `assembly_type` varchar(100) NOT NULL,
  `assembly_sub_type` varchar(100) NOT NULL,
  `rs_owner` varchar(50) NOT NULL,
  `dismantled_from_rs_id` varchar(50) NOT NULL,
  `dismantled_from_rs_no` varchar(50) NOT NULL,
  `rs_type` varchar(50) NOT NULL,
  `arrival_date` date NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assembly_under_maintenance`
--

INSERT INTO `assembly_under_maintenance` (`assembly_id`, `notification_no`, `assembly_type`, `assembly_sub_type`, `rs_owner`, `dismantled_from_rs_id`, `dismantled_from_rs_no`, `rs_type`, `arrival_date`, `order_date`) VALUES
('00001111', 'N5275', 'BOXNR', 'Lower Body', 'null', '128312312382', '5732A', 'BOBYN', '2023-11-12', '2023-11-15'),
('00992288', 'N3868', 'BOXNHA', 'Wheel Pads', 'ER', '787347317123', '0080A', 'BOY', '2020-11-10', '2020-11-15'),
('11002233', 'N8872', 'BOXNHS', 'Air Brake system', 'CR', '787347317555', '9992D', 'BOXN', '2022-11-30', '2022-12-02'),
('11239901', 'N2222', 'BTPGLN', 'LPG', 'ER', '783728712380', '0516D', 'BTPN', '2022-04-12', '2022-04-13'),
('11239902', 'N3333', 'BTPN', 'LPG', 'ER', '128312312381', '4123A', 'BTCS', '2023-11-17', '2023-11-19'),
('11920192', 'N8273', 'BCN', 'Lower Body', 'SR', '783728719905', '0618A', 'BCL', '2023-01-15', '2023-01-18'),
('19201922', 'N5453', 'BOBRN', 'Upper Body', 'ER', '128312317780', '6229A', 'BOBYN', '2022-01-20', '2022-01-21'),
('19281100', 'N8878', 'BOXNLW', 'Brake Pads', 'ER', '783728712900', '0415C', 'BOXNHA', '2022-11-11', '2022-11-14'),
('28392711', 'N3125', 'BOYEL', 'Lower Body', 'NR', '783728710001', '0314D', 'BOY', '2024-03-10', '2024-03-12');

-- --------------------------------------------------------

--
-- Table structure for table `holiday_master_data`
--

CREATE TABLE `holiday_master_data` (
  `holiday id` varchar(5) NOT NULL,
  `holiday date` date NOT NULL,
  `holiday desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `holiday_master_data`
--

INSERT INTO `holiday_master_data` (`holiday id`, `holiday date`, `holiday desc`) VALUES
('10001', '2024-01-26', 'Republic day'),
('10002', '2024-03-25', 'Holi'),
('10003', '2024-03-29', 'Good Friday'),
('10004', '2024-04-11', 'Id-ul-Fitr	'),
('10005', '2024-04-17', 'Ram Navmi'),
('10006', '2024-04-11', 'Mahavir Jayanti'),
('10007', '2024-05-23', 'Buddh Purnimna'),
('10008', '2024-06-17', 'Id-ul-Zuha (Bakrid)'),
('10009', '2024-07-17', 'Mohram'),
('10010', '2024-08-15', 'Independence Day / Parsi New Year’s Day / Nauraj'),
('10011', '2024-08-26', 'Janmashtami'),
('10012', '2024-09-16', 'Milad-un-Nabi or Id-e-Milad '),
('10013', '2024-10-02', 'Mahatma Gandhi’s Birthday'),
('10014', '2024-10-12', 'Dusshera'),
('10015', '2024-10-31', 'Diwali'),
('10016', '2024-11-15', 'Gurunanak Birthday'),
('10017', '2024-12-25', 'Christmas');

-- --------------------------------------------------------

--
-- Table structure for table `line_data`
--

CREATE TABLE `line_data` (
  `date` date NOT NULL,
  `incomming` int(2) NOT NULL,
  `outgoing` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `line_data`
--

INSERT INTO `line_data` (`date`, `incomming`, `outgoing`) VALUES
('2024-01-01', 1, 2),
('2024-01-02', 2, 3),
('2024-01-03', 3, 1),
('2024-01-04', 0, 2),
('2024-01-05', 4, 2),
('2024-01-06', 2, 3),
('2024-01-08', 2, 4),
('2024-01-09', 1, 3),
('2024-01-10', 0, 2),
('2024-01-11', 0, 2),
('2024-01-12', 1, 3),
('2024-01-13', 2, 1),
('2024-01-15', 1, 3),
('2024-01-16', 0, 0),
('2024-01-17', 1, 3),
('2024-01-18', 2, 2),
('2024-01-19', 1, 4),
('2024-01-20', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `material_rs`
--

CREATE TABLE `material_rs` (
  `notification_no` varchar(12) NOT NULL,
  `rs_id` varchar(12) NOT NULL,
  `rs_no` varchar(12) NOT NULL,
  `rs_type` varchar(50) NOT NULL,
  `rs_owner` varchar(50) NOT NULL,
  `material_id` varchar(12) NOT NULL,
  `material_type` varchar(50) NOT NULL,
  `store` varchar(50) NOT NULL,
  `material_desc` varchar(100) NOT NULL,
  `cost` int(5) NOT NULL,
  `qty` int(5) NOT NULL,
  `apply_date` date NOT NULL,
  `issue_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `material_rs`
--

INSERT INTO `material_rs` (`notification_no`, `rs_id`, `rs_no`, `rs_type`, `rs_owner`, `material_id`, `material_type`, `store`, `material_desc`, `cost`, `qty`, `apply_date`, `issue_date`) VALUES
('N2234', '098765432109', '2911A', 'BOBYN', 'WR', 'A-5028', 'Stock Item', 'Workshop Shop Store', 'Angle Cock ', 1100, 4, '2024-02-13', '2024-03-16'),
('N1234', '100056789333', '1096A', 'BVZI', 'CR', 'A2004', 'NON Stock Item', 'division Store', 'Angle Cock valve - Bogie', 1300, 4, '2024-01-30', '2024-02-08'),
('N1234', '123456789012', '1095D', 'BOXN', 'CR', 'A2034', 'Stock Item', 'Workshop Shop Store', 'Angle Cock valve - Bogie', 1100, 4, '2024-01-30', '2024-02-08'),
('N8273', '783728719905', '0618A', 'BCL', 'SR', 'B2901', 'Stock Item', 'workshop main store', 'New Wheel Bearing & cover -\r\nWheel', 28000, 7, '2024-01-29', '2024-02-05'),
('B1135', '345678901234', '1068C', 'BOBYN', 'WCR', 'D-5028', 'Stock Item', 'workshop Shop store', 'test', 100, 2, '2024-03-01', '2024-03-14'),
('B1135', '345678901234', '1068C', 'BOBYN', 'WCR', 'D-5095', 'Non Stock Item', 'division store', 'wheel bearing A2202 Modern', 6499, 4, '2024-03-16', '2024-03-21'),
('N5534', '783728712378', '0213B', 'BOXNB', 'NR', 'R0123', 'Coupling System', 'Coupling Store', 'LHB Automatic Coupler Unit', 22000, 8, '2022-11-11', '2022-11-15'),
('N9456', '128312311237', '4156A', 'BCCNR', 'SR', 'R1234', 'Wheel Set', 'Wheel Store Shed', 'LHB Coach Wheel Set', 45000, 4, '2024-02-05', '2024-02-10'),
('N3125', '783728710001', '0314D', 'BOY', 'NR', 'R2345', 'Brake System', 'Brake System Store', 'LHB Brake Cylinder', 15000, 8, '2024-03-10', '2024-03-20'),
('N7698', '128312317991', '5102C', 'BOST', 'WR', 'R3456', 'Suspension System', 'Suspension Store', 'LHB Secondary Suspension Unit', 20000, 6, '2023-12-15', '2023-12-20'),
('N8878', '783728712900', '0415C', 'BOXNHA', 'ER', 'R4567', 'Door System', 'Door Store', 'LHB Sliding Door System', 12000, 10, '2022-11-11', '2022-11-15'),
('N5275', '128312312382', '5732A', 'BOST', 'SR', 'R5678', 'Interior Fitting', 'Interior Fitting Store', 'LHB Seat - Executive Class', 8000, 12, '2023-11-12', '2023-11-15'),
('N2222', '783728712380', '0516D', 'BTPN', 'ER', 'R6789', 'Roof Equipment', 'Roof Equipment Store', 'LHB Roof Top Ventilation System', 10000, 8, '2022-04-12', '2022-04-18'),
('N3333', '128312312381', '4123A', 'BTCS', 'ER', 'R7890', 'Electrical Equipment', 'Electrical Store', 'LHB Main Generator Unit', 25000, 6, '2023-11-17', '2023-11-20'),
('N5563', '783728712379', '0415C', 'BOXNHA', 'NR', 'R8901', 'Pneumatic Equipment', 'Pneumatic Store', 'LHB Main Reservoir Tank', 18000, 10, '2023-12-01', '2023-12-05'),
('N9982', '128312312380', '3056D', 'BOXN', 'SR', 'R9012', 'Bogie System', 'Bogie Store', 'LHB Dual Bogie Unit', 30000, 4, '2021-01-01', '2021-01-10'),
('N1234', '123456789012', '1095D', 'BOXN', 'CR', 'W-B24556', 'Stock Item', 'workshop main store', 'New Wheel Bearing & cover - Wheel ', 28000, 8, '2024-01-29', '2024-02-05'),
('N1234', '100056789333', '1096A', 'BVZI', 'CR', 'W-X24116', 'NON Stock Item', 'division store', 'New Wheel Bearing & cover - Wheel ', 23000, 8, '2024-01-29', '2024-02-05');

-- --------------------------------------------------------

--
-- Table structure for table `process_inholding`
--

CREATE TABLE `process_inholding` (
  `notification_no` varchar(50) NOT NULL,
  `rs_id` varchar(12) NOT NULL,
  `rs_no` varchar(12) NOT NULL,
  `rs_type` varchar(50) NOT NULL,
  `rs_owner` varchar(50) NOT NULL,
  `repair_type` varchar(50) NOT NULL,
  `arrival_date` date NOT NULL,
  `enter_stage_details` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `process_inholding`
--

INSERT INTO `process_inholding` (`notification_no`, `rs_id`, `rs_no`, `rs_type`, `rs_owner`, `repair_type`, `arrival_date`, `enter_stage_details`) VALUES
('N2222', '783728712380', '0516D', 'BTPN', 'ER', 'Periodic Overhaul', '2022-04-12', 'Bogie Overhaul'),
('N2234', '098765432109', '2911A', 'BOBYN', 'WR', 'Nominated Periodic Overhaul', '2023-06-01', 'Painting'),
('N3125', '783728710001', '0314D', 'BOY', 'NR', 'Nominated Periodic Overhaul', '2024-03-10', 'Bogie Overhaul'),
('N3333', '128312312381', '4123A', 'BTCS', 'ER', 'Nominated Periodic Overhaul', '2023-11-17', 'Painting'),
('N3345', '828873626324', '7723D', 'BOXNG', 'CR', 'Nominated Periodic Overhaul', '2019-01-30', 'Bogie Overhaul'),
('N3868', '787347317123', '0080A', 'BOY', 'ER', 'Periodic Overhaul', '2020-11-10', 'Weld Repairs'),
('N5275', '128312312382', '5732A', 'BOST', 'SR', 'Nominated Periodic Overhaul', '2023-11-12', 'Lifting and Lowering'),
('N5453', '128312317780', '6229A', 'BOBYN', 'ER', 'Periodic Overhauling', '2022-01-20', 'Painting'),
('N5534', '783728712378', '0213B', 'BOXNB', 'NR', 'Nominated Periodic Overhaul', '2022-11-11', 'Door and Seal Overhaul'),
('N5555', '128312312377', '2882C', 'BTAP', 'CR', 'Periodic Overhaul', '2022-01-30', 'Painting '),
('N5558', '987654567856', '6665A', 'BOST', 'CR', 'Nominated Periodic Overhaul', '2021-06-15', 'Bogie Overhaul'),
('N5563', '783728712379', '0415C', 'BOXNHA', 'NR', 'Nominated Periodic Overhaul', '2023-12-01', 'Painting'),
('N7286', '728372786763', '2219D', 'BOXNHA', 'WR', 'Periodic Overhauling', '2020-02-20', 'Painting'),
('N7363', '988738981725', '9882D', 'BOXND', 'ER', 'Nominated periodic overhaul', '2020-01-10', 'Lifting and Lowering'),
('N7698', '128312317991', '5102C', 'BOST', 'WR', 'Periodic Overhaul', '2023-12-15', 'Door and Seal Overhaul'),
('N8273', '783728719905', '0618A', 'BCL', 'SR', 'Nominated Periodic Overhaul', '2023-01-15', 'Lifting and Lowering'),
('N8872', '787347317555', '9992D', 'BOXN', 'CR', 'Nominated Periodic Overhaul', '2022-11-30', 'Lifting and Lowering'),
('N8878', '783728712900', '0425C', 'BOXNHA', 'ER', 'Periodic Overhaul', '2022-11-11', 'Painting'),
('N8895', '456787656787', '8621C', 'BOXNAL', 'WR', 'Periodic Overhaul', '2023-05-06', 'Painting'),
('N9456', '128312311237', '4156A', 'BCCNR', 'SR', 'Periodic Overhauling', '2024-02-05', 'Weld Repairs'),
('N9982', '128312312380', '3056D', 'BOXN', 'SR', 'Periodic Overhaul', '2021-01-01', 'Lifting and Lowering');

-- --------------------------------------------------------

--
-- Table structure for table `process_intransit`
--

CREATE TABLE `process_intransit` (
  `notification_no` varchar(50) NOT NULL,
  `rs_id` varchar(50) NOT NULL,
  `rs_no` varchar(50) NOT NULL,
  `rs_type` varchar(50) NOT NULL,
  `owning_rly` varchar(50) NOT NULL,
  `maintenance_depot` varchar(50) NOT NULL,
  `reason_for_withdraw` varchar(100) NOT NULL,
  `last_poh_date` date NOT NULL,
  `marking_date` date NOT NULL,
  `due_date` date NOT NULL,
  `arrival_date` date DEFAULT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `process_intransit`
--

INSERT INTO `process_intransit` (`notification_no`, `rs_id`, `rs_no`, `rs_type`, `owning_rly`, `maintenance_depot`, `reason_for_withdraw`, `last_poh_date`, `marking_date`, `due_date`, `arrival_date`, `status`) VALUES
('N0001', '900012765375', '2976D', 'BOXN', 'NR', 'KMD', 'Nominated periodic Overhauling', '2024-03-28', '2024-04-20', '2024-04-10', NULL, 'Yard in Line'),
('N0990', '890354678465', '6735A', 'BTPN', 'CR', 'HMD', 'Periodic Overhauling', '2024-03-25', '2024-04-15', '2024-04-01', NULL, 'Dispatched'),
('N1007', '903647586283', '2345D', 'BTPN', 'WR', 'MMD', 'Nominated periodic Overhauling', '2024-03-28', '2024-04-20', '2024-04-10', NULL, 'Dispatched'),
('N1234', '123456789012', '1095D', 'BOXN', 'CR', 'ERMG', 'Periodic overhauling', '2019-09-10', '2021-08-14', '2021-09-10', '2021-08-28', 'Dispatched'),
('N2234', '098765432109', '2911A', 'BOBYN', 'WR', 'ERMG', 'Nominated Periodic Overhaul', '2022-12-18', '2023-12-04', '2024-12-18', '2023-12-10', 'Yard - In line'),
('N6566', '700098253748', '7890C', 'BOXNF', 'NR', 'CMD', 'Periodic Overhauling', '2024-03-30', '2024-04-30', '2024-04-15', NULL, 'Yard In-Line'),
('N6668', '700000000648', '1085C', 'YSVD', 'CR', '', '', '2021-03-18', '2024-03-10', '2023-03-18', '2024-03-14', 'Dispatched'),
('N7772', '700009800648', '1086C', 'YSVD', 'CR', 'BMD', 'Periodic Overhauling', '2024-03-25', '2024-04-15', '2024-04-01', NULL, 'Yard in Line');

-- --------------------------------------------------------

--
-- Table structure for table `process_modification`
--

CREATE TABLE `process_modification` (
  `notification_no` varchar(50) NOT NULL,
  `rs_owner` varchar(50) NOT NULL,
  `rs_no` varchar(50) NOT NULL,
  `rs_type` varchar(50) NOT NULL,
  `repair_type` varchar(100) NOT NULL,
  `arrival_date` date NOT NULL,
  `enter_stage_details` varchar(50) NOT NULL,
  `modification_type` varchar(100) NOT NULL,
  `modification_desc` varchar(100) NOT NULL,
  `modify_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `process_modification`
--

INSERT INTO `process_modification` (`notification_no`, `rs_owner`, `rs_no`, `rs_type`, `repair_type`, `arrival_date`, `enter_stage_details`, `modification_type`, `modification_desc`, `modify_date`) VALUES
('N1234', 'CR', '1095D', 'BOXN', 'Periodic Overhaul', '2023-02-15', 'Lifting and Lowering', 'RS Modification', 'Convert from CR TO WR , ADD 2 automatic door', '2024-04-01'),
('N2222', 'ER', '0516D', 'BTPN', 'Periodic Overhaul', '2022-04-12', 'Bogie Overhaul', 'RS Codal Life Extention', 'extended by 10 years', '2024-04-05');

-- --------------------------------------------------------

--
-- Table structure for table `report_outturn_rs`
--

CREATE TABLE `report_outturn_rs` (
  `notification_no` varchar(12) NOT NULL,
  `rs_id` varchar(12) NOT NULL,
  `rs_no` varchar(10) NOT NULL,
  `rs_type` varchar(50) NOT NULL,
  `rs_owner` varchar(50) NOT NULL,
  `date_in` date NOT NULL,
  `date_out` date NOT NULL,
  `calender_days` int(3) NOT NULL,
  `working_days` int(3) NOT NULL,
  `repair_type` varchar(100) NOT NULL,
  `next_poh_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `report_outturn_rs`
--

INSERT INTO `report_outturn_rs` (`notification_no`, `rs_id`, `rs_no`, `rs_type`, `rs_owner`, `date_in`, `date_out`, `calender_days`, `working_days`, `repair_type`, `next_poh_date`) VALUES
('N0010', '098752672835', '9923A', 'YSVD', 'ER', '2018-01-10', '2024-04-04', 14, 11, 'Periodic Overhaul', '2028-04-04'),
('N0011', '088657876587', '8222A', 'BTPN', 'NR', '2019-12-31', '2024-04-05', 15, 12, 'Periodic Overhaul', '2028-04-05'),
('N1115', '675398230716', '2198A', 'BVCM', 'WR', '2024-02-01', '2024-02-10', 10, 8, 'Periodic Overhauling', '2026-02-10'),
('N1234', '123456789012', '1095D', 'BOXN', 'CR', '2023-02-15', '2024-04-10', 420, 361, 'Periodic Overhaul', '2028-04-10'),
('N3345', '828873626324', '7723D', 'BOXNG', 'CR', '2019-01-30', '2019-02-12', 12, 10, 'Nominated Periodic Overhaul', '2021-02-12'),
('N3868', '787347317123', '0080A', 'BOY', 'ER', '2020-11-10', '2020-11-20', 10, 8, 'Periodic Overhaul', '2022-11-20'),
('N5558', '987654567856', '6665A', 'BOST', 'CR', '2021-06-15', '2021-06-30', 15, 12, 'Nominated Periodic Overhaul ', '2023-06-30'),
('N7286', '728372786763', '2219D', 'BOXNHA', 'WR', '2020-02-20', '2020-03-10', 18, 12, 'Periodic Overhauling', '2022-03-10'),
('N7363', '988738981725', '9882D', 'BOXND', 'ER', '2020-01-10', '2020-01-15', 15, 12, 'Nominated periodic overhaul', '2022-01-15'),
('N7789', '783728712371', '0112A', 'BCNA', 'WR', '2019-01-25', '2024-04-04', 15, 11, 'Periodic Overhauling', '2028-04-04'),
('N8872', '787347317555', '9992D', 'BOXN', 'CR', '2022-11-30', '2022-12-10', 10, 8, 'Nominated Periodic Overhaul ', '2024-12-10'),
('N8895', '456787656787', '8621C', 'BOXNAL', 'WR', '2023-05-06', '2023-05-15', 9, 7, 'Periodic Overhaul', '2025-05-15');

-- --------------------------------------------------------

--
-- Table structure for table `report_poh_history`
--

CREATE TABLE `report_poh_history` (
  `notification_no` varchar(12) NOT NULL,
  `rs_id` varchar(12) NOT NULL,
  `rs_no` varchar(12) NOT NULL,
  `rs_type` varchar(50) NOT NULL,
  `rs_owner` varchar(50) NOT NULL,
  `built_at` varchar(100) NOT NULL,
  `built_date` date NOT NULL,
  `start_date` date NOT NULL,
  `status` varchar(100) NOT NULL,
  `base_depot` varchar(100) NOT NULL,
  `division` varchar(100) NOT NULL,
  `poh_due_date` date NOT NULL,
  `in_date` date NOT NULL,
  `poh_done_date` date NOT NULL,
  `next_poh_date` date NOT NULL,
  `workshop` varchar(50) NOT NULL,
  `repair_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `report_poh_history`
--

INSERT INTO `report_poh_history` (`notification_no`, `rs_id`, `rs_no`, `rs_type`, `rs_owner`, `built_at`, `built_date`, `start_date`, `status`, `base_depot`, `division`, `poh_due_date`, `in_date`, `poh_done_date`, `next_poh_date`, `workshop`, `repair_type`) VALUES
('111199872562', '787347317123', '0080A', 'BOY', 'ER', 'MCF', '2009-11-15', '2009-11-15', 'COMMISSIONED', 'LTT', 'BRC', '2023-11-15', '2023-11-12', '2023-11-24', '2026-11-24', 'RYPW', 'Periodic Overhaul'),
('112098765219', '987654567856', '6665A', 'BOST', 'CR', 'RCF', '2010-06-15', '2010-06-15', 'COMMISSIONED', 'LTT', 'BRC', '2020-03-18', '2020-03-15', '2021-03-22', '2024-03-22', 'LPLW', 'Nominated Periodic Overhaul '),
('112098765220', '987654567856', '6665A', 'BOST', 'CR', 'RCF', '2010-06-15', '2010-06-15', 'COMMISSIONED', 'LTT', 'BRC', '2024-03-22', '2024-03-20', '2024-04-01', '2027-04-01', 'LPLW', 'Periodic Overhaul '),
('112098765432', '098752672835', '9923A', 'YSVD', 'ER', 'ICF', '2011-11-11', '2011-11-11', 'COMMISSIONED', 'LTT', 'BRC', '2018-01-12', '2018-01-10', '2018-01-15', '2020-01-15', 'LPLW', 'Periodic Overhaul'),
('112098765433', '098752672835', '9923A', 'YSVD', 'ER', 'ICF', '2011-11-11', '2011-11-11', 'COMMISSIONED', 'LTT', 'BRC', '2020-01-15', '2020-01-14', '2020-01-25', '2022-01-25', 'LPLW', 'Periodic Overhaul'),
('112908762512', '128312317780', '6229A', 'BOBYN', 'ER', 'ICF', '2010-11-12', '2010-11-12', 'COMMISSIONED', 'LTT', 'BRC', '2020-03-22', '2020-03-20', '2020-03-27', '2024-03-27', 'LGDW', 'Periodic Overhauling'),
('112908762513', '128312317780', '6229A', 'BOBYN', 'ER', 'ICF', '2010-11-12', '2010-11-12', 'COMMISSIONED', 'LTT', 'BRC', '2024-03-27', '2024-03-25', '2024-04-01', '2028-04-01', 'LGDW', 'Periodic Overhauling'),
('119088909821', '783728712379', '0415C', 'BOXNHA', 'NR', 'RCF', '2011-12-01', '2011-12-01', 'COMMISSIONED', 'LTT', 'BRC', '2022-12-28', '2022-12-26', '2022-01-08', '2024-01-08', 'WRSW', 'Nominated Periodic Overhaul'),
('119088909822', '783728712379', '0415C', 'BOXNHA', 'NR', 'RCF', '2011-12-01', '2011-12-01', 'COMMISSIONED', 'LTT', 'BRC', '2024-01-08', '2024-01-05', '2024-01-18', '2026-01-18', 'WRSW', 'Periodic Overhaul'),
('119099809090', '783728712378', '0213B', 'BOXNB', 'NR', 'MCF', '2011-11-17', '2011-11-17', 'COMMISSIONED', 'LTT', 'BRC', '2019-11-13', '2019-11-11', '2019-11-19', '2013-11-19', 'PWCW', 'Nominated Periodic Overhaul'),
('119099809091', '783728712378', '0213B', 'BOXNB', 'NR', 'MCF', '2011-11-17', '2011-11-17', 'COMMISSIONED', 'LTT', 'BRC', '2023-11-19', '2023-11-14', '2023-11-28', '2027-11-28', 'PWCW', 'Periodic Overhaul'),
('229839019220', '783728719905', '0618A', 'BCL', 'SR', 'ICF', '2008-10-10', '2008-10-10', 'COMMISSIONED', 'LTT', 'BRC', '2020-01-07', '2020-01-05', '2020-01-17', '2022-01-17', 'TPTW', 'Periodic Overhaul'),
('229839019221', '783728719905', '0618A', 'BCL', 'SR', 'ICF', '2008-10-10', '2008-10-10', 'COMMISSIONED', 'LTT', 'BRC', '2022-01-17', '2022-01-15', '2022-01-20', '2024-01-20', 'TPTW', 'Periodic Overhaul'),
('229839019222', '783728719905', '0618A', 'BCL', 'SR', 'ICF', '2008-10-10', '2008-10-10', 'COMMISSIONED', 'LTT', 'BRC', '2024-01-20', '2024-01-18', '2024-01-28', '2026-01-28', 'TPTW', 'Nominated Periodic Overhaul'),
('700000001484', '700000000648', '1085C', 'YSVD', 'CR', 'ICF', '2009-09-10', '2009-09-10', 'COMMISSIONED', 'LTT', 'BRC', '2021-03-12', '2021-03-10', '2021-03-18', '2023-03-18', 'SNPDW', 'periodic overhauling'),
('900056348724', '700000000648', '1085C', 'YSVD', 'CR', 'ICF', '2009-09-10', '2009-09-10', 'COMMISSIONED', 'LTT', 'BRC\r\n', '2019-03-07', '2019-03-04', '2019-03-12', '2021-03-12', 'MTNW', 'periodic overhauling'),
('B1119', '787347317123', '0080A', 'BOY', 'ER', 'MCF', '2009-11-15', '2009-11-15', 'COMMISSIONED', 'LTT', 'BRC', '2017-11-01', '2017-10-30', '2017-11-12', '2020-11-12', 'RYPW', 'Nominated Periodic Overhaul'),
('N1234', '123456789012', '1095D', 'BOXN', 'CR', 'ICF', '2009-09-10', '2009-09-12', 'COMMISSIONED', 'LTT', 'BRC', '2023-02-10', '2023-02-15', '2024-04-10', '2028-04-10', 'SNPDW', 'Periodic Overhaul'),
('N7789', '783728712371', '0112A', 'BCNA', 'WR', 'GRRW', '2021-12-01', '2021-12-10', 'COMMISSIONED', 'Delhi', 'BRC', '2019-01-20', '2019-01-25', '2024-04-04', '2028-04-04', 'DLS', 'Periodic Overhauling'),
('X1129', '787347317123', '0080A', 'BOY', 'ER', 'MCF', '2009-11-15', '2009-11-15', 'COMMISSIONED', 'LTT', 'BRC', '2020-11-12', '2020-11-10', '2020-11-15', '2022-11-15', 'RYPW', 'Periodic Overhaul');

-- --------------------------------------------------------

--
-- Table structure for table `rolling stock master data`
--

CREATE TABLE `rolling stock master data` (
  `rs id` varchar(20) NOT NULL,
  `rs number` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `owning railway` varchar(20) NOT NULL,
  `built at` varchar(50) NOT NULL,
  `built date` date NOT NULL,
  `start date` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `base depot` varchar(20) NOT NULL,
  `workshop` varchar(50) NOT NULL,
  `division` varchar(50) NOT NULL,
  `make` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rolling stock master data`
--

INSERT INTO `rolling stock master data` (`rs id`, `rs number`, `type`, `owning railway`, `built at`, `built date`, `start date`, `status`, `base depot`, `workshop`, `division`, `make`) VALUES
('098765432109', '2911A', 'BOBYN', 'WR', 'AAC', '2014-03-05', '2014-03-14', 'commissioned', 'BRC', 'PRTN', 'BRC', 'MORDERN'),
('100076448976', '1234C', 'BOXNG', 'ER', 'JC', '2023-06-10', '2023-06-16', 'CONDEMNED', 'Howrah', 'EMU', 'BRC', 'BEML'),
('123456789012', '1095D', 'BOXN', 'CR', 'ICF', '2009-09-10', '2009-09-12', 'COMMISSIONED', 'LTT', 'SNPDW', 'BRC', 'MODERN'),
('128312311237', '4156A', 'BCCNR', 'SR', 'JC', '2023-09-15', '2023-10-01', 'COMMISSIONED', 'Mysore', 'Railway Workshop', 'BRC', 'Modern'),
('128312312377', '2882C', 'BTAP', 'CR', 'ICF', '2022-11-11', '2022-11-19', 'CONDEMNED', 'Chennai', 'Royapuram', 'BRC', 'Siemens'),
('128312312380', '3056D', 'BOXN', 'SR', 'CLW', '2023-01-10', '2023-02-05', 'COMMISSIONED', 'Chennai', 'Carriage Works', 'BRC', 'Alstom'),
('128312312381', '4123A', 'BTCS', 'ER', 'CLW', '2023-05-05', '2023-05-10', 'COMMISSIONED', 'Hyderabad', 'Carriage Repair Workshop', 'BRC', 'Siemens'),
('128312312382', '5732A', 'BOST', 'SR', 'ICF', '2023-07-15', '2023-08-01', 'CONDEMNED', 'Bangalore', 'Carriage & Wagon Depot', 'BRC', 'Alstom'),
('128312317780', '6229A', 'BOBYN', 'ER', 'RWF', '2023-11-10', '2023-12-01', 'CONDEMNED', 'Bhubaneswar', 'Carriage and Wagon Repair Depot', 'BRC', 'Color Panels'),
('128312317991', '5102C', 'BOST', 'WR', 'GRRW', '2023-05-05', '2023-06-01', 'COMMISSIONED', 'Kolkata', 'Carriage and Wagon Depot', 'BRC', 'General Electric'),
('345678901234', '1068C', 'BOBYN', 'WCR', 'Kapurthala Punjab', '2012-05-15', '2012-05-25', 'COMMISSIONED', 'ASR', 'ASRT', 'Amritsar', 'HINDENG'),
('364636923754', '8737A', 'BOXNCR', 'WR', 'MCF', '2018-12-11', '2018-12-18', 'COMMISSIONED', 'Chennai Egmore', 'Loco Shed', 'BRC', 'NEW'),
('456787656787', '8621C', 'BOXNAL', 'WR', 'MCF', '2016-01-25', '2016-01-28', 'CONDEMNED', 'Chennai', 'Carriage Works', 'BRC', 'new'),
('500012889645', '9908D', 'BOY', 'SR', 'RCF', '2022-01-12', '2022-01-20', 'COMMISSIONED', 'Hubbali', 'Carriage Repair Workshop', 'BRC', 'NEW'),
('700000000648', '1085C', 'YSVD', 'CR', 'ICF', '2009-09-10', '2009-09-10', 'COMMISSIONED', 'LTT', 'SNPDW', 'BRC', 'MODERN'),
('700098253748', '7890C', 'BOXNF', 'NR', 'GRRW', '2018-09-14', '2018-09-20', 'COMMISSIONED', 'AMVW', 'Alambagh Workshop', 'BRC', 'EMD'),
('727339646412', '7832C', 'BOXNAL', 'WR', 'JC', '2019-09-20', '2019-09-22', 'COMMISSIONED', 'New Delhi', 'Electric Loco Shed', 'BRC', 'MODERN'),
('728372786763', '2219D', 'BOXNHA', 'WR', 'RWF', '2018-08-23', '2018-08-30', 'CONDEMNED', 'New Delhi', 'Maintenance Depot', 'BRC', 'NEW'),
('734774824643', '2774C', 'BOXNB', 'ER', 'DLW', '2017-05-10', '2017-05-15', 'CONDEMNED', 'Sabarmati', 'Maintenance Yard', 'BRC', 'MODERN'),
('738738748934', '8720C', 'BOXNCR', 'WR', 'GRRW', '2019-06-09', '2019-06-25', 'CONDEMNED', 'RYPW', 'Rayanpadu Workshop', 'BRC', 'EMD'),
('748464244676', '7830D', 'BOXNS', 'WR', 'RCF', '2020-05-15', '2020-05-20', 'COMMISSIONED', 'TPTW', 'Carriage Repair Shop Tirupati', 'BRC', 'BEML'),
('783728710001', '0314D', 'BOY', 'NR', 'RCF', '2022-11-30', '2022-12-20', 'CONDEMNED', 'Lucknow', 'Wagon Maintenance Shed', 'BRC', 'New'),
('783728712371', '0112A', 'BCNA', 'WR', 'GRRW', '2021-12-01', '2021-12-10', 'COMMISSIONED', 'Delhi', 'DLS', 'BRC', 'General Electric'),
('783728712378', '0213B', 'BOXNB', 'NR', 'RCF', '2022-03-15', '2022-04-01', 'CONDEMNED', 'Mumbai', 'EMU Carshed', 'BRC', 'NEW'),
('783728712379', '0215C', 'BOXNHA', 'NR', 'KHI', '2022-08-20', '2022-09-10', 'CONDEMNED', 'Sealdah', 'Carriage & Wagon Workshop', 'BRC', 'General Electric'),
('783728712380', '0516D', 'BTPN', 'ER', 'MCF', '2022-10-10', '2022-10-20', 'COMMISSIONED', 'Delhi', 'Loco Shed', 'BRC', 'NEW'),
('783728712900', '0415C', 'BOXNHA', 'ER', 'ICF', '2022-07-20', '2022-08-10', 'CONDEMNED', 'Delhi', 'Wagon Repair Shop', 'BRC', 'CRRC'),
('783728719905', '0618A', 'BCL', 'SR', 'CLW', '2022-02-25', '2022-03-10', 'COMMISSIONED', 'Hyderabad', 'Wagon Repair Shop', 'BRC', 'Modify'),
('7873473171232', '0080A', 'BOYN', 'ER', 'RCF', '2019-04-10', '2019-04-12', 'COMMISSIONED', 'LTT', 'CWW', 'BRC', 'NEW'),
('787347317555', '9992D', 'BOXN', 'CR', 'ICF', '2016-05-14', '2016-05-18', 'COMMISSIONED', 'LTT', 'DLS', 'BRC', 'MODERN'),
('800098463728', '5674D', 'BOXNHL', 'CR', 'CLW', '2024-01-02', '2024-01-02', 'COMMISSIONED', 'Secunderabad', 'CWW', 'BRC', 'BHEL'),
('823813098156', '9999C', 'BOXN', 'CR', 'CLW', '2021-01-25', '2021-01-30', 'CONDEMNED', 'LTT', 'SNPDW', 'BRC', 'Siemens'),
('828873626324', '7723D', 'BOXNG', 'CR', 'DLW', '2022-01-15', '2022-01-20', 'CONDEMNED', 'Howrah', 'Carriage and Wagon Workshop', 'BRC', 'BHEL'),
('878374878445', '4693A', 'BOXN', 'CR', 'DLW', '2020-03-12', '2020-03-25', 'CONDEMNED', 'Guwahati', 'Carriage Repair Workshop', 'BRC', 'BEML'),
('890354678465', '6735A', 'BTPN', 'CR', 'ICF', '2018-11-15', '2018-11-15', 'CONDEMNED', 'TPTW', 'Carriage Repair Shop Tirupati', 'BRC', 'Siemens'),
('900012765375', '2976D', 'BOXN', 'NR', 'DLW', '2015-03-20', '2015-03-20', 'CONDEMNED', 'LGDW', 'Carriage Workshop Lallaguda', 'BRC', 'General Electric'),
('900073647856', '7854C', 'BOXNAL', 'ER', 'ICF', '2021-02-19', '2021-02-22', 'CONDEMNED', 'New Delhi', 'Electric Loco Shed', 'BRC', 'Alstom'),
('903647586283', '2345D', 'BTPN', 'WR', 'RCF', '2020-04-18', '2020-04-18', 'COMMISSIONED', 'RYPW', 'Rayanpadu Workshop', 'BRC', 'CLW'),
('987654567856', '6665A', 'BOST', 'CR', 'MCF', '2018-03-11', '2018-03-13', 'CONDEMNED', 'New DELHI', 'DLS', 'BRC', 'MODERN'),
('988738981725', '9882D', 'BOXNS', 'ER', 'CLW', '2024-01-05', '2024-01-10', 'COMMISSIONED', 'MumbaI CST', 'Carriage Repair Workshop', 'BRC', 'EMD');

-- --------------------------------------------------------

--
-- Table structure for table `rs_condemnation`
--

CREATE TABLE `rs_condemnation` (
  `notification_no` varchar(50) NOT NULL,
  `rs_id` varchar(50) NOT NULL,
  `rs_type` varchar(50) NOT NULL,
  `rs_no` varchar(50) NOT NULL,
  `rs_owner` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `authority` varchar(50) NOT NULL,
  `condemnation_type` varchar(50) NOT NULL,
  `remarks` varchar(50) NOT NULL,
  `condemnation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rs_condemnation`
--

INSERT INTO `rs_condemnation` (`notification_no`, `rs_id`, `rs_type`, `rs_no`, `rs_owner`, `status`, `authority`, `condemnation_type`, `remarks`, `condemnation_date`) VALUES
('B1135', '345678901234', 'BOXN', '1068C', 'WR', 'Verification Pending', 'EDPPRTN', 'Over Age', 'Coach Overage', '2024-03-15'),
('N1234', '9879898789', 'BOXNM', '1234567899', 'WR', 'APPROVE', 'edpprtn', 'OVER_AGE', 'Structurally Unfit', '2023-03-09');

-- --------------------------------------------------------

--
-- Table structure for table `rs_failure`
--

CREATE TABLE `rs_failure` (
  `defect_ID` varchar(50) NOT NULL,
  `notification_no` varchar(12) NOT NULL,
  `rs_id` varchar(12) NOT NULL,
  `rs_no` varchar(10) NOT NULL,
  `rs_type` varchar(50) NOT NULL,
  `owning_railway` varchar(50) NOT NULL,
  `poh_date` date NOT NULL,
  `problem_date` date NOT NULL,
  `days_after_poh` varchar(50) NOT NULL,
  `problem_description` varchar(100) NOT NULL,
  `assembly_description` varchar(100) NOT NULL,
  `sub_ass_desc` varchar(100) NOT NULL,
  `reporting_shop` varchar(50) NOT NULL,
  `reported_defect` varchar(50) NOT NULL,
  `work_done` varchar(50) NOT NULL,
  `workshop_remarks` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `train_no` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rs_failure`
--

INSERT INTO `rs_failure` (`defect_ID`, `notification_no`, `rs_id`, `rs_no`, `rs_type`, `owning_railway`, `poh_date`, `problem_date`, `days_after_poh`, `problem_description`, `assembly_description`, `sub_ass_desc`, `reporting_shop`, `reported_defect`, `work_done`, `workshop_remarks`, `status`, `train_no`) VALUES
('DEF123', '', '', '', '', 'CR', '2023-01-02', '2023-03-10', '40', 'Brake Failure', 'Brake System', 'Brake pads', 'Wheel shop', 'Brake fluid leak', 'Brake system overhauling', 'Brake pads replaced', 'Under repair', '12168'),
('DEF1235', 'N1115', '675398230716', '2198A', 'BVCM', 'WR', '2024-02-10', '2024-04-02', '52', 'All Coach Doors Not Opening', 'Main Upper Part / Assembly', 'Door Knob, Door Latch', 'Smithy Shop', 'Dynamic Door Latch Failure', 'Door Latch Replaced', 'None', 'Under Repair', '54533');

-- --------------------------------------------------------

--
-- Table structure for table `storage_location_master_data`
--

CREATE TABLE `storage_location_master_data` (
  `storage_location` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `valid_from_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `storage_location_master_data`
--

INSERT INTO `storage_location_master_data` (`storage_location`, `description`, `valid_from_date`) VALUES
('ICF SHOP PRTN', 'ICF BOGIE, RB WHEEL & VVN WHEEL COMPONENTS', '2021-07-01');

-- --------------------------------------------------------

--
-- Table structure for table `task_list_master_data`
--

CREATE TABLE `task_list_master_data` (
  `task_list_id` varchar(5) NOT NULL,
  `task_list_type` varchar(100) NOT NULL,
  `task_list_name` varchar(100) NOT NULL,
  `rs_owner` varchar(5) NOT NULL,
  `effective_from` date NOT NULL,
  `task_list_desc` varchar(100) NOT NULL,
  `approved_by` varchar(100) NOT NULL,
  `shop` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `task_list_master_data`
--

INSERT INTO `task_list_master_data` (`task_list_id`, `task_list_type`, `task_list_name`, `rs_owner`, `effective_from`, `task_list_desc`, `approved_by`, `shop`) VALUES
('15134', 'Rolling Stock', 'New Wagon Bogie (Filter) Task List', 'WR', '2022-02-21', 'Lifting Lowering , Bogie Repair CBC', 'Workshop Manager', 'LIFTING LOWERING');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `system id` varchar(50) NOT NULL,
  `user id` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL DEFAULT '1',
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `role desc` varchar(50) NOT NULL,
  `phone no` varchar(50) NOT NULL,
  `email id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`system id`, `user id`, `password`, `name`, `type`, `location`, `role desc`, `phone no`, `email id`) VALUES
('11209', 'yash', '1', 'Yash Trivedi', 'new', 'PRTW', 'ISC Bogie Inspection', '9982812881', 'yash@gov.in'),
('11903', 'sunil2', '1', 'sunil sharma 2', 'new', 'test', 'test', '5428745865', 'test3@gmail.com'),
('12954', 'sagar', '1', 'Sagar Patil', 'new', 'PRTW', ' ISC Wheelset Shop', '6543210987', 'sagar@gov.in '),
('33541', 'harsh', '1', 'Harsh Patel', 'new', 'PRTW', 'ISC Axle Inspection', '8765432109', 'harsh@gov.in'),
('40216', 'tina', '1', 'Tina Singh', 'Existing', 'PRTW', 'ISC Axle Shop', '7432109876', 'tina@gov.in'),
('44077', 'admin', 'admin', 'Dhramendra Chauhan', 'admin', 'PRTW', 'ISC Bogie inspection', '9854789642', 'dharmendra440@gov.in'),
('55308', 'yash', '1', 'yash trivedi', 'new', 'PRTN Painting', 'Painting and cleaning of rolling STock', '9725015374', 'yashtrivedi@2303gmail.com'),
('56810', 'deepa', '1', 'Deepa Verma', 'new', 'PRTW', 'ISC Bogie Shop', '7654321098', 'deepa@gov.in '),
('74834', 'nirmal', 'nirmal', 'nirmal bajaj', 'employee', 'PRTW', 'ISC Bogie assembly', '7464837333', 'nirmal_bajaj67@gov.in'),
('78236', 'priya', '1', 'Priya Gupta', 'Existing', 'PRTW', 'ISC Wheelset Inspection', '9876543210', 'priya@gov.in '),
('87293', 'nirav', '1', ' Nirav Mehta', 'new', 'PRTW', ' ISC Overall Inspection', '9321098765', 'nirav@gov.in '),
('99012', 'sunil', '1', 'Sunil Makwana', 'new', 'PRTW', 'ISC Bogie Inspection', '8891029180', 'sunil@gov.in');

-- --------------------------------------------------------

--
-- Table structure for table `workshop_master_data`
--

CREATE TABLE `workshop_master_data` (
  `workshop_code` varchar(10) NOT NULL,
  `workshop_desc` varchar(100) NOT NULL,
  `GIS_coordinates` varchar(100) NOT NULL,
  `NIC_state_codes` varchar(10) NOT NULL,
  `NIC_state_name` varchar(100) NOT NULL,
  `NIC_district_code` varchar(10) NOT NULL,
  `NIC_district_name` varchar(100) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `workshop_master_data`
--

INSERT INTO `workshop_master_data` (`workshop_code`, `workshop_desc`, `GIS_coordinates`, `NIC_state_codes`, `NIC_state_name`, `NIC_district_code`, `NIC_district_name`, `pincode`, `address`) VALUES
('ADLW', 'Ajmer Diesel Locomotive workshop, NWR', '(26.443025,74.641496)', '8', 'RAJASTHAN', '86', 'AJMER', '305001', 'Chief Workshop Manager, Diesel, Loco & Wagon Workshop, North Western Railway, Near Lal Phatak, Ajmer,Rajasthan'),
('AICW', 'Ajmer Coaching workshop, NWR', '(26.438382,74.643978)', '8', 'RAJASTHAN', '86', 'AJMER', '305001', 'Chief Workshop Manager, Diesel, Loco & Wagon Workshop, North Western Railway, Near Lal Phatak, Ajmer, Rajasthan'),
('ADLW', 'Ajmer Diesel Locomotive workshop, NWR', '(26.443025,74.641496)', '8', 'RAJASTHAN', '86', 'AJMER', '305001', 'Chief Workshop Manager, Diesel, Loco & Wagon Workshop, North Western Railway, Near Lal Phatak, Ajmer,Rajasthan'),
('AICW', 'Ajmer Coaching workshop, NWR', '(26.438382,74.643978)', '8', 'RAJASTHAN', '86', 'AJMER', '305001', 'Chief Workshop Manager, Diesel, Loco & Wagon Workshop, North Western Railway, Near Lal Phatak, Ajmer, Rajasthan'),
('PCW', 'Perambur Carriage Workshop, Chennai', '13.0888, 80.2069', '10', 'Tamil Nadu', '59', 'Chennai ', '600026', '26, Rajiv Gandhi Salai Perambur, Chennai 600026'),
('JW', 'Jamshedpur Workshop', '22.8094, 86.158', '8', 'Jharkhand', '08', 'East Singhbhum', '831001', 'PO Jamshedpur Jharkhand - 831001'),
('BW', 'Bilaspur Workshop', '22.4118, 82.0528', '12', 'Chhattisgarh', '16', 'Bilaspur', '495001', 'PO Bilaspur, Chhattisgarh - 495001'),
('KW', 'Kanchrapara Workshop', '22.9234, 88.4437', '10', 'West Bengal', '19', 'North 24 Parganas', '743145', 'PO Kanchrapara, West Bengal - 743145'),
('VW', 'Vatva Workshop', '23.0257, 72.5472', '12', 'Gujarat', '36', 'Ahmedabad', '382445', 'Plot No 1097, GIDC Estate, Vatva, Ahmedabad - 382445'),
('KW', 'Kapurthala Workshop', '31.3247, 75.4590', '8', 'Punjab', '20', 'Kapurthala', '144601', 'PO Kapurthala, Punjab - 144601'),
('HW', 'Hajipur Workshop', '25.6849, 85.1385', '8', 'Bihar', '10', 'Vaishali', '844101', 'PO Hajipur, Bihar - 844101'),
('CRW', 'Coach Rehabilitation Workshop, Mumbai', '19.1014, 72.8324', '12', 'Maharashtra', '33', 'Mumbai', '400084', 'Germa Mall, LBS Marg, Vikhroli West, Mumbai - 400084'),
('CRCW', 'Central Railway Carriage & Wagon Workshop', '19.0390, 72.8803', '12', 'Maharashtra', '33', 'Mumbai', '400008', 'P K Wagh Road, Parel, Mumbai - 400008'),
('CWW', 'Carriage & Wagon Workshop, Golden Rock', '10.7682, 78.7359', '15', 'Tamil Nadu', '47', 'Thiruchirappalli', '620005', 'PO Golden Rock, Tamil Nadu - 620005'),
('DLM', 'Diesel Loco Modernisation Workshop', '20.2985, 72.8815', '12', 'Maharashtra', '33', 'Mumbai', '400047', 'Diesel Loco Shed, DLW Marg, Sewri West, Mumbai - 400047'),
('CWWL', 'Carriage & Wagon Workshop, Lallaguda', '17.4486, 78.5866', '8', 'Telangana', '37', 'Hyderabad', '500030', 'Lallaguda, Secunderabad, Telangana - 500030');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assembly_from_division`
--
ALTER TABLE `assembly_from_division`
  ADD PRIMARY KEY (`assembly_id`,`notification_no`),
  ADD UNIQUE KEY `work_order_no` (`work_order_no`);

--
-- Indexes for table `assembly_from_store`
--
ALTER TABLE `assembly_from_store`
  ADD PRIMARY KEY (`assembly_id`,`notification_no`);

--
-- Indexes for table `assembly_under_maintenance`
--
ALTER TABLE `assembly_under_maintenance`
  ADD PRIMARY KEY (`assembly_id`,`notification_no`),
  ADD UNIQUE KEY `dismantled_from_rs_id` (`dismantled_from_rs_id`),
  ADD UNIQUE KEY `dismantled_from_rs_no` (`dismantled_from_rs_no`);

--
-- Indexes for table `holiday_master_data`
--
ALTER TABLE `holiday_master_data`
  ADD PRIMARY KEY (`holiday id`);

--
-- Indexes for table `material_rs`
--
ALTER TABLE `material_rs`
  ADD PRIMARY KEY (`material_id`);

--
-- Indexes for table `process_inholding`
--
ALTER TABLE `process_inholding`
  ADD PRIMARY KEY (`notification_no`,`rs_id`,`rs_no`);

--
-- Indexes for table `process_intransit`
--
ALTER TABLE `process_intransit`
  ADD PRIMARY KEY (`notification_no`,`rs_id`,`rs_no`);

--
-- Indexes for table `process_modification`
--
ALTER TABLE `process_modification`
  ADD PRIMARY KEY (`notification_no`,`rs_no`);

--
-- Indexes for table `report_outturn_rs`
--
ALTER TABLE `report_outturn_rs`
  ADD PRIMARY KEY (`notification_no`,`rs_id`,`rs_no`);

--
-- Indexes for table `report_poh_history`
--
ALTER TABLE `report_poh_history`
  ADD PRIMARY KEY (`notification_no`,`rs_id`,`rs_no`);

--
-- Indexes for table `rolling stock master data`
--
ALTER TABLE `rolling stock master data`
  ADD PRIMARY KEY (`rs id`,`rs number`);

--
-- Indexes for table `rs_condemnation`
--
ALTER TABLE `rs_condemnation`
  ADD PRIMARY KEY (`notification_no`,`rs_id`,`rs_no`);

--
-- Indexes for table `rs_failure`
--
ALTER TABLE `rs_failure`
  ADD PRIMARY KEY (`defect_ID`,`notification_no`,`rs_id`,`rs_no`,`train_no`);

--
-- Indexes for table `task_list_master_data`
--
ALTER TABLE `task_list_master_data`
  ADD PRIMARY KEY (`task_list_id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`system id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
