-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2023 at 11:19 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `busticketci`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_access_menu`
--

CREATE TABLE `tbl_access_menu` (
  `kd_access_menu` int(11) DEFAULT NULL,
  `kd_level` int(11) DEFAULT NULL,
  `kd_menu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_access_menu`
--

INSERT INTO `tbl_access_menu` (`kd_access_menu`, `kd_level`, `kd_menu`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(1, 1, 1),
(2, 1, 2),
(3, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `kd_admin` varchar(50) NOT NULL,
  `nama_admin` varchar(35) DEFAULT NULL,
  `username_admin` varchar(30) DEFAULT NULL,
  `password_admin` varchar(256) DEFAULT NULL,
  `img_admin` varchar(35) DEFAULT NULL,
  `email_admin` varchar(35) DEFAULT NULL,
  `level_admin` varchar(12) DEFAULT NULL,
  `status_admin` int(1) DEFAULT NULL,
  `date_create_admin` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`kd_admin`, `nama_admin`, `username_admin`, `password_admin`, `img_admin`, `email_admin`, `level_admin`, `status_admin`, `date_create_admin`) VALUES
('ADM0001', 'Administrator', 'admin', '$2y$10$nvmCaXC4Ohua5eW4fFAMauISafgwvPsoRXVNnToZpbF4vWfBw.xvu', 'assets/backend/img/default.png', 'adm@gmail.com', '2', 1, '1552276812'),
('ADM0002', 'Second Admin', 'admin2', '$2y$10$ADbNVZYgiDi8SqGl1bB2NOgCufT2sK5v/T3BSZcIpFPVljDSb2S2K', 'assets/backend/img/default.png', 'cbahyu@gmail.com', '1', 1, '1552819095'),
('ADM0003', 'BS Owner', 'owner', '$2y$10$nvmCaXC4Ohua5eW4fFAMauISafgwvPsoRXVNnToZpbF4vWfBw.xvu', 'assets/backend/img/default.png', 'owner@gmail.com', '1', 1, '1552819095');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank`
--

CREATE TABLE `tbl_bank` (
  `kd_bank` varchar(50) NOT NULL,
  `nasabah_bank` varchar(50) DEFAULT NULL,
  `nama_bank` varchar(50) DEFAULT NULL,
  `nomrek_bank` varchar(50) DEFAULT NULL,
  `photo_bank` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bank`
--

INSERT INTO `tbl_bank` (`kd_bank`, `nasabah_bank`, `nama_bank`, `nomrek_bank`, `photo_bank`) VALUES
('BNK0001', 'DMB', 'Dominion Bank', '600000521', 'assets/frontend/img/bank/dominionbank.png'),
('BNK0002', 'BVB', 'BlueValley Bank', '107556540', 'assets/frontend/img/bank/bvbank.png'),
('BNK0003', 'CBK', 'Clover Bank', '800140000', 'assets/frontend/img/bank/cloverbank.png'),
('BNK0004', 'WVB', 'WestView Bank', '300124589', 'assets/frontend/img/bank/wvbank.png'),
('BNK0005', 'None', 'Celestial Bank', '100025001', '/assets/frontend/img/bank/celestialsbank.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bus`
--

CREATE TABLE `tbl_bus` (
  `kd_bus` varchar(50) NOT NULL,
  `nama_bus` varchar(50) DEFAULT NULL,
  `plat_bus` varchar(50) DEFAULT NULL,
  `kapasitas_bus` int(13) DEFAULT NULL,
  `status_bus` int(1) DEFAULT NULL,
  `desc_bus` varchar(50) DEFAULT NULL,
  `vehtype` varchar(20) DEFAULT NULL,
  `class` varchar(20) DEFAULT NULL,
  `dname` varchar(50) DEFAULT NULL,
  `dmobile` varchar(20) DEFAULT NULL,
  `dage` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bus`
--

INSERT INTO `tbl_bus` (`kd_bus`, `nama_bus`, `plat_bus`, `kapasitas_bus`, `status_bus`, `desc_bus`, `vehtype`, `class`, `dname`, `dmobile`, `dage`,'discount') VALUES
('B001', 'Nomadic Tours', 'CA1100', 23, 1, '--', '1', '1', 'Rakesh', '6521854365', 43),
('B002', 'Sonic Travels', 'CA5656', 23, 1, '--', '1', '2', 'Lokesh', '8421046974', 50),
('B003', 'Express Planet', 'CA6969', 23, 1, '--', '1', '2', 'Gautam', '9614785302', 44),
('B004', 'WheelClap Coach\n', 'CA0007', 23, 1, '--', '1', '2', 'Navneet', '7512036410', 41),
('B005', 'Crystenna Coach\n', 'CA1234', 23, 1, '--', '1', '2', 'Sandeep', '5469821367', 49),
('B006', 'Imperia', 'CA7777', 23, 1, '--', '1', '2', 'Mahesh', '4478523200', 53),
('B007', 'Tricton Express', 'CA8520', 23, 1, NULL, '1', '2', 'Kartik', '4598752136', 45),
('B008', 'Alliance Tours\n', 'CA0258', 23, 1, NULL, '1', '2', 'Pritam', '8452179630', 38),
('B009', 'Zeron Travels', 'CASTR0', 23, 1, NULL, '1', '2', 'Rahul', '6582364782', 47),
('B010', 'Orion Travels', 'c4rrrr', 23, 1, NULL, '1', '2', 'Deepak', '5463985475', 53),
('B011', 'Orion Travels', 'FRT', 23, 1, NULL, '1', '2', 'Deepak', '5463985475', 53,29);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jadwal`
--

CREATE TABLE `tbl_jadwal` (
  `kd_jadwal` varchar(50) NOT NULL,
  `kd_bus` varchar(50) DEFAULT NULL,
  `kd_tujuan` varchar(50) DEFAULT NULL,
  `kd_asal` varchar(50) DEFAULT NULL,
  `wilayah_jadwal` varchar(50) DEFAULT NULL,
  `jam_berangkat_jadwal` time DEFAULT NULL,
  `jam_tiba_jadwal` time DEFAULT NULL,
  `harga_jadwal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jadwal`
--

INSERT INTO `tbl_jadwal` (`kd_jadwal`, `kd_bus`, `kd_tujuan`, `kd_asal`, `wilayah_jadwal`, `jam_berangkat_jadwal`, `jam_tiba_jadwal`, `harga_jadwal`) VALUES
('J0001', 'B005', 'TJ020', 'TJ019', 'Chennai', '14:22:00', '17:22:00', '50');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_konfirmasi`
--

CREATE TABLE `tbl_konfirmasi` (
  `kd_konfirmasi` varchar(50) NOT NULL,
  `kd_order` varchar(50) DEFAULT NULL,
  `nama_konfirmasi` varchar(50) DEFAULT NULL,
  `nama_bank_konfirmasi` varchar(50) DEFAULT NULL,
  `norek_konfirmasi` varchar(50) DEFAULT NULL,
  `total_konfirmasi` varchar(50) DEFAULT NULL,
  `photo_konfirmasi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_konfirmasi`
--

INSERT INTO `tbl_konfirmasi` (`kd_konfirmasi`, `kd_order`, `nama_konfirmasi`, `nama_bank_konfirmasi`, `norek_konfirmasi`, `total_konfirmasi`, `photo_konfirmasi`) VALUES
('KF0013', 'ORD00016', 'Varun', 'WestView Bank', '541258', '50', '/assets/frontend/upload/payment/gis_layers6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_level`
--

CREATE TABLE `tbl_level` (
  `kd_level` int(11) NOT NULL,
  `nama_level` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_level`
--

INSERT INTO `tbl_level` (`kd_level`, `nama_level`) VALUES
(1, 'owner'),
(2, 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `kd_menu` int(11) NOT NULL,
  `nama_menu` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`kd_menu`, `nama_menu`) VALUES
(1, 'owner'),
(2, 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id_order` int(11) NOT NULL,
  `kd_order` varchar(50) DEFAULT NULL,
  `kd_tiket` varchar(50) DEFAULT NULL,
  `kd_jadwal` varchar(50) DEFAULT NULL,
  `kd_pelanggan` varchar(50) DEFAULT NULL,
  `kd_bank` varchar(50) DEFAULT NULL,
  `asal_order` varchar(200) DEFAULT NULL,
  `nama_order` varchar(50) DEFAULT NULL,
  `tgl_beli_order` varchar(50) DEFAULT NULL,
  `tgl_berangkat_order` varchar(50) DEFAULT NULL,
  `nama_kursi_order` varchar(50) DEFAULT NULL,
  `umur_kursi_order` varchar(50) DEFAULT NULL,
  `no_kursi_order` varchar(50) DEFAULT NULL,
  `no_ktp_order` varchar(50) DEFAULT NULL,
  `no_tlpn_order` varchar(50) DEFAULT NULL,
  `alamat_order` varchar(100) DEFAULT NULL,
  `email_order` varchar(100) DEFAULT NULL,
  `expired_order` varchar(50) DEFAULT NULL,
  `qrcode_order` varchar(100) DEFAULT NULL,
  `status_order` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id_order`, `kd_order`, `kd_tiket`, `kd_jadwal`, `kd_pelanggan`, `kd_bank`, `asal_order`, `nama_order`, `tgl_beli_order`, `tgl_berangkat_order`, `nama_kursi_order`, `umur_kursi_order`, `no_kursi_order`, `no_ktp_order`, `no_tlpn_order`, `alamat_order`, `email_order`, `expired_order`, `qrcode_order`, `status_order`) VALUES
(49, 'ORD00016', 'TORD00016J0001202305044', 'J0001', 'CA0024', 'BNK0004', 'TJ019', 'Varun Mhatre', 'Tuesday, 02 May 2023, 16:08', '2023-05-04', 'Varun', '21', '4', '123456', '7208717964', 'A-14 , Sadbhavana CO-OP HSG Society\r\nDeonar Municipal Colony , Govandi', 'varunmhatre2812@gmail.com', '03-05-2023 16:08:44', 'assets/frontend/upload/qrcode/ORD00016.png', '2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `kd_pelanggan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `username_pelanggan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password_pelanggan` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `no_ktp_pelanggan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_pelanggan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `alamat_pelanggan` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `email_pelanggan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `telpon_pelanggan` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `img_pelanggan` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `status_pelanggan` int(1) DEFAULT NULL,
  `date_create_pelanggan` varchar(50) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`kd_pelanggan`, `username_pelanggan`, `password_pelanggan`, `no_ktp_pelanggan`, `nama_pelanggan`, `alamat_pelanggan`, `email_pelanggan`, `telpon_pelanggan`, `img_pelanggan`, `status_pelanggan`, `date_create_pelanggan`) VALUES
('CA0002', 'bettyb', '$2y$10$wzz5.QSqiNfrc2JKuYK5huJHEvry340XZlspPACOJLf0TmU3yu30.', '02564651321564', 'Betty B. McMillan\n', '62 Limer Street', 'bettymcm@mail.com', '7014445450', 'assets/frontend/img/default.png', 1, '1552202266'),
('CA0001', 'oscarharrison', '$2y$10$PO4viVqheGgw7HPeozUih.V6qK4aWKbACLMe9UWOoSaJ8pSdaiISG', '021452125', 'Oscar A. Harrison', '59 Pine Tree Lane', 'oscar.harrison69@mail.com', '0455658500', 'assets/frontend/img/default.png', 1, '1552199781'),
('CA0003', 'ruffner', '$2y$10$N6imN8KmAhuw9rH.iJxGLeVaRCG.27UmhHVF7MaICMhYlm.TGJ9iy', '346454215172455', 'Pearl R. Ruffner', '93 Steele Street', 'ruffp@mail.com', '9458001455', 'assets/frontend/img/default.png', 1, '1552397128'),
('CA0005', 'ellington', '$2y$10$PYDzqnOpzeGSo0ngK40Q1.M77oxnQ7fvhMYpI2q/JoZFS5r.g5FPG', '321963127368762639', 'Robert N. Ellington', '31 Andell Road', 'robelli@mail.com', '0147410147', 'assets/frontend/img/default.png', 1, '1554340197'),
('CA0004', 'danielw', '$2y$10$hHamfvIRbCNYiAvS289f0uj.T6kUfpfxTUcI210SLRqdTrxj4zyxG', '78456', 'Daniel Winkles', '52 Coplin Avenue', 'danielw@mail.com', '021212545', 'assets/frontend/img/default.png', 1, '1554017732'),
('CA0006', 'tiffewis', '$2y$10$pwr/ZSCVcya8JOV1Xt13qeRzhz.nLsJGWYcWWZJgR5DFLUfjJeaGO', '', 'Tiffany G. Lewis', '72 Raintree Boulevard', 'tiffewis101@mail.com', '0978542255', 'assets/frontend/img/default.png', 1, '1554385261'),
('CA0007', 'emestcoy', '$2y$10$Z7yJqwWa0pCPtGb5sVYf9epvdjT97BD9U4guma.EhKU3JS9H675lG', '', 'Ernest E. McCoy', '42 Sunburst Drive', 'ernest@mail.com', '0898765345', 'assets/frontend/img/default.png', 1, '1554534514'),
('CA0008', 'demoaccount', '$2y$10$N1GVdIFWQ967xcLsVEb1ROH1ESfMew4mqjHoGSGIJ/0Qsf9oO/xOO', '', 'Demo Account', 'Demo Address', 'demo@mail.com', '7000000020', 'assets/frontend/img/default.png', 1, '1634359787'),
('CA0009', 'johnwatson', '$2y$10$2HJ6mUfIPHpJ87BKQEv7YuMjT8nX9W8CJFqG5jAnekEJhJMv2MFGy', '', 'John Watson', '1145 Bleck St', 'john@mail.com', '7778885540', 'assets/frontend/img/default.png', 1, '1642506186'),
('CA0010', 'christine', '$2y$10$Al3FDFQOSTQEQBvnQc45fe8NHRQ5OtGkgF6LnYplEzJqMEfy2Au0q', '', 'Christine Moore', '114 Test Address', 'christine@mail.com', '7774445454', 'assets/frontend/img/default.png', 1, '1672227893'),
('CA0011', 'ellen', '$2y$10$I5m6NM5hPzyeAS5cT6CBtuD5Xc5xSJytC6GOu.51LsLkdi/7UPZz.', '', 'Ellen', '554 Southern Cross St', 'ellen@mail.com', '7774545555', 'assets/frontend/img/default.png', 1, '1672229233'),
('CA0012', 'andie', '$2y$10$sFXYN8pGoGA24LwQrHuBW.uQuOWuVzcNu0yRbqaBgEDJq0OZRThCq', '', 'Andie Sand', '114 Allace Avenue', 'andie@mail.com', '7458885454', 'assets/frontend/img/default.png', 1, '1672235116'),
('CA0013', 'robert', '$2y$10$C5Faofquq/6Sckw0ERuLK.6qXSAFQpU1QMDuAU/UWglUN4X6mJYSi', '', 'Robert C. Frazier', '11 Haymond Rocks Road', 'robert@mail.com', '7778545699', 'assets/frontend/img/default.png', 1, '1672247531'),
('CA0014', 'delbert', '$2y$10$H/24vkHCSs2vLXxiwwUEq.7sUYSeT61wU18PSAbfIHz63HisAFD6K', '', 'Delbert Rochelle', '81 Single Street', 'delbert@mail.com', '7850001414', 'assets/frontend/img/default.png', 1, '1672333316'),
('CA0015', 'ruthrusso', '$2y$10$WDBh38OmnT.3v2.7sQ/8C./0mGMUIRLsXTzZlJeWGgWBTEQPq6Gou', '', 'Ruth Russo', '17 Olive Street', 'ruth@mail.com', '7854545454', 'assets/frontend/img/default.png', 1, '1672336612'),
('CA0016', 'montoya', '$2y$10$IRBkQQZ4Kw5iKu7bsOwkA.5D3xj9mbCKA0Lvo3myKwmJvKrhZHsIS', '', 'Carl J. Montoya', '70 Cerullo Road', 'carl@mail.com', '7350001455', 'assets/frontend/img/default.png', 1, '1672388181'),
('CA0017', 'diana', '$2y$10$R5EOyPHwynjwPkzZEwUKjO/YwAdhsaGVIvUEyvgTygTd19G3qHhkC', '', 'Diana Kirk', '105 Fairmont Avenue', 'diana@mail.com', '7450001010', 'assets/frontend/img/default.png', 1, '1672401155'),
('CA0018', 'agnes', '$2y$10$qIBv6Y2PnV4AqV5kG3M6gO4UzfvkFiMAvXcPJT.D1igRkQd8uuMu.', '', 'Agnes Wonka', '65 Cherry Ridge Drive', 'agnes@mail.com', '7312580010', 'assets/frontend/img/default.png', 1, '1672401850'),
('CA0019', 'marysmith', '$2y$10$KokpNWTZSwXXLDpjqZXWgekm7Oi3E2gKF1Iaui0dsG9a.KD4FMBBC', '', 'Mary Smith', '43 Saint Francis Way', 'mary@mail.com', '7412555545', 'assets/frontend/img/default.png', 1, '1672402552'),
('CA0020', 'thomas', '$2y$10$qQbkAXlNKDPmAJQQpmxDOOxVpuEZUs/DS.49ukgekOwzXhBwrFS.O', '', 'Thomas Ford', '87 Hudson Street', 'thomasf@mail.com', '7140002569', 'assets/frontend/img/default.png', 1, '1672402730'),
('CA0021', 'shane', '$2y$10$ovPI98iJNIbf8XKzPzy3.e7pQKf4OooU/QoAEXlwxC3e8N42ZUWNG', '', 'Shane Gustin', '27 Duff Avenue', 'shane@mail.com', '7410140025', 'assets/frontend/img/default.png', 1, '1672414382'),
('CA0022', 'steven', '$2y$10$FNs3qmXmq.fM/lwmCEdnG.dq8FJ2HNnZAFQ6Z9crWGUZYvJ3E3CBG', '', 'Steven Bast', '58 Crestview Terrace', 'basteven@mail.com', '4501450000', 'assets/frontend/img/default.png', 1, '1672414504'),
('CA0023', 'williams', '$2y$10$oU/PX/oEKmoxbUHJQvtKmOHYktfhyROtQYbwHUJiMVi.nCH49wgfG', '', 'Will Williams', '47 Wilson Street', 'williams@mail.com', '7014698500', 'assets/frontend/img/default.png', 1, '1672417879'),
('CA0024', 'varun', '$2y$10$8qlav8ouAVjR5enJg1QOcuUPU9/SsD1GBcfpvmShdoTucG8JIGk0m', '', 'Varun Mhatre', 'A-14 , Sadbhavana CO-OP HSG Society\r\nDeonar Municipal Colony , Govandi', 'varunmhatre2812@gmail.com', '7208717964', 'assets/frontend/img/default.png', 1, '1682875718');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_menu`
--

CREATE TABLE `tbl_sub_menu` (
  `kd_sub_menu` int(11) NOT NULL,
  `kd_menu` int(11) DEFAULT NULL,
  `title_sub_menu` varchar(128) DEFAULT NULL,
  `url_sub_menu` varchar(128) DEFAULT NULL,
  `is_active_sub_menu` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sub_menu`
--

INSERT INTO `tbl_sub_menu` (`kd_sub_menu`, `kd_menu`, `title_sub_menu`, `url_sub_menu`, `is_active_sub_menu`) VALUES
(0, 1, 'Dashboard', 'backend/home', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tiket`
--

CREATE TABLE `tbl_tiket` (
  `kd_tiket` varchar(50) NOT NULL,
  `kd_order` varchar(50) DEFAULT NULL,
  `nama_tiket` varchar(50) DEFAULT NULL,
  `kursi_tiket` varchar(50) DEFAULT NULL,
  `umur_tiket` varchar(50) DEFAULT NULL,
  `asal_beli_tiket` varchar(50) DEFAULT NULL,
  `harga_tiket` varchar(50) NOT NULL,
  `etiket_tiket` varchar(100) DEFAULT NULL,
  `status_tiket` varchar(50) NOT NULL,
  `create_tgl_tiket` date DEFAULT NULL,
  `create_admin_tiket` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tiket`
--

INSERT INTO `tbl_tiket` (`kd_tiket`, `kd_order`, `nama_tiket`, `kursi_tiket`, `umur_tiket`, `asal_beli_tiket`, `harga_tiket`, `etiket_tiket`, `status_tiket`, `create_tgl_tiket`, `create_admin_tiket`) VALUES
('TORD00001J00012022122915', 'ORD00001', 'Ellen', '15', '31 Years', 'TJ019', '68', 'assets/backend/upload/etiket/ORD00001.pdf', '2', '2022-12-28', 'admin'),
('TORD00002J00012022123018', 'ORD00002', 'Andie Sand', '18', '30 Years', 'TJ019', '68', 'assets/backend/upload/etiket/ORD00002.pdf', '2', '2022-12-29', 'owner'),
('TORD00004J00052022123110', 'ORD00004', 'Delbert Rochelle', '10', '32 Years', 'TJ016', '40', 'assets/backend/upload/etiket/ORD00004.pdf', '2', '2022-12-30', 'admin'),
('TORD00005J0003202212318', 'ORD00005', 'Ruth Russo', '8', '32 Years', 'TJ011', '89', 'assets/backend/upload/etiket/ORD00005.pdf', '2', '2022-12-30', 'owner'),
('TORD00005J0003202212319', 'ORD00005', 'Jake Russo', '9', '35 Years', 'TJ011', '89', 'assets/backend/upload/etiket/ORD00005.pdf', '2', '2022-12-30', 'owner'),
('TORD00006J00012022123123', 'ORD00006', 'Carl J. Montoya', '23', '25 Years', 'TJ019', '68', 'assets/backend/upload/etiket/ORD00006.pdf', '2', '2022-12-30', 'owner'),
('TORD00007J0015202301023', 'ORD00007', 'Diana Kirk', '3', '39 Years', 'TJ013', '40', 'assets/backend/upload/etiket/ORD00007.pdf', '2', '2022-12-30', 'owner'),
('TORD00008J00172023010122', 'ORD00008', 'Agnes Wonka', '22', '41 Years', 'TJ009', '59', 'assets/backend/upload/etiket/ORD00008.pdf', '2', '2022-12-30', 'owner'),
('TORD00010J00132023010514', 'ORD00010', 'Thomas Ford', '14', '34 Years', 'TJ014', '82', 'assets/backend/upload/etiket/ORD00010.pdf', '2', '2022-12-30', 'owner'),
('TORD00013J00022022123114', 'ORD00013', 'Will Williams', '14', '31 Years', 'TJ010', '75', 'assets/backend/upload/etiket/ORD00013.pdf', '2', '2022-12-30', 'owner');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_token_pelanggan`
--

CREATE TABLE `tbl_token_pelanggan` (
  `kd_token` int(11) NOT NULL,
  `nama_token` varchar(256) DEFAULT NULL,
  `email_token` varchar(50) DEFAULT NULL,
  `date_create_token` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_token_pelanggan`
--

INSERT INTO `tbl_token_pelanggan` (`kd_token`, `nama_token`, `email_token`, `date_create_token`) VALUES
(1, '65a01b40a0cc44076458f9d00ce94720', 'demo@mail.com', 1634359787),
(2, 'dd79d52fe9968f73fc66a1d481778655', 'john@mail.com', 1642506186),
(3, 'cd7b785a63c58898bfed23bab186ee1d', 'christine@mail.com', 1672227893),
(4, '616b4176a96b190073514fd3c154c2e0', 'ellen@mail.com', 1672229234),
(5, '87702b38ef9a5b80a98c077c43073182', 'andie@mail.com', 1672235116),
(6, '02a2fcb0be5250471a94142ed81d04df', 'robert@mail.com', 1672247531),
(7, '6f531b65df037f2f7ba0fb78231e577d', 'delbert@mail.com', 1672333316),
(8, '9d40b5ed83fc9cb3ce68f7050d69ee6a', 'ruth@mail.com', 1672336612),
(9, '0cb29395d911e02aba3a746691d7f5cf', 'carl@mail.com', 1672388181),
(10, '276466e9d4a5d8003fde3aa3990f46ae', 'demo@mail.com', 1672396084),
(11, '36c79fa8f57a423a794d8421be08e024', 'diana@mail.com', 1672401155),
(12, '51f91e83a25741a3626f99d0dbf0f5a0', 'agnes@mail.com', 1672401850),
(13, '2ec7e10ab13703d8817a2e74f712f45a', 'mary@mail.com', 1672402552),
(14, '3fed0f58dd880c8fa5f606e7a2b878bf', 'thomasf@mail.com', 1672402730),
(15, 'ca46de539fd1c62fa3614d0b18539233', 'shane@mail.com', 1672414382),
(16, 'a98db0cf72281841d03067c42ab953ac', 'basteven@mail.com', 1672414504),
(17, '6a05822bb349381f20ba0b464559879b', 'williams@mail.com', 1672417879),
(18, 'bff330c62747e0137fd92b7207141dd7', 'varunmhatre2812@gmail.com', 1682875718);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tujuan`
--

CREATE TABLE `tbl_tujuan` (
  `kd_tujuan` varchar(50) NOT NULL,
  `kota_tujuan` varchar(50) NOT NULL,
  `nama_terminal_tujuan` varchar(50) NOT NULL,
  `terminal_tujuan` varchar(100) NOT NULL,
  `stopno` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tujuan`
--

INSERT INTO `tbl_tujuan` (`kd_tujuan`, `kota_tujuan`, `nama_terminal_tujuan`, `terminal_tujuan`, `stopno`) VALUES
('TJ007', 'Haridwar', '', 'Uttarakhand', 1),
('TJ008', 'Shimla', '', 'Himachal Pradesh', 2),
('TJ009', 'Chandigarh', '', 'Punjab', 3),
('TJ010', 'New Delhi', '', 'Uttar Pradesh', 4),
('TJ011', 'Agra', '', 'Uttar Pradesh', 5),
('TJ012', 'Jaipur', '', 'Rajasthan', 6),
('TJ013', 'Indore', '', 'Madhya Pradesh', 7),
('TJ014', 'Ahmedabad', '', 'Gujarat', 8),
('TJ015', 'Surat', '', 'Gujarat', 9),
('TJ016', 'Mumbai', '', 'Maharashtra', 10),
('TJ017', 'Pune', '', 'Maharashtra', 11),
('TJ018', 'Panaji ', '', 'Goa', 12),
('TJ019', 'Bangalore', '', 'Karnataka', 13),
('TJ020', 'Chennai', '', 'Tamil Nadu', 14);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`kd_admin`);

--
-- Indexes for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  ADD PRIMARY KEY (`kd_bank`);

--
-- Indexes for table `tbl_bus`
--
ALTER TABLE `tbl_bus`
  ADD PRIMARY KEY (`kd_bus`);

--
-- Indexes for table `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
  ADD PRIMARY KEY (`kd_jadwal`),
  ADD KEY `kd_bus` (`kd_bus`),
  ADD KEY `kd_tujuan` (`kd_tujuan`);

--
-- Indexes for table `tbl_konfirmasi`
--
ALTER TABLE `tbl_konfirmasi`
  ADD PRIMARY KEY (`kd_konfirmasi`),
  ADD KEY `kode_order` (`kd_order`);

--
-- Indexes for table `tbl_level`
--
ALTER TABLE `tbl_level`
  ADD PRIMARY KEY (`kd_level`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`kd_menu`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `kd_jadwal` (`kd_jadwal`),
  ADD KEY `kd_kustomer` (`kd_pelanggan`),
  ADD KEY `kd_tiket` (`kd_tiket`),
  ADD KEY `kd_bank` (`kd_bank`);

--
-- Indexes for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`kd_pelanggan`);

--
-- Indexes for table `tbl_sub_menu`
--
ALTER TABLE `tbl_sub_menu`
  ADD PRIMARY KEY (`kd_sub_menu`),
  ADD KEY `kd_menu` (`kd_menu`);

--
-- Indexes for table `tbl_tiket`
--
ALTER TABLE `tbl_tiket`
  ADD PRIMARY KEY (`kd_tiket`),
  ADD KEY `kode_order` (`kd_order`);

--
-- Indexes for table `tbl_token_pelanggan`
--
ALTER TABLE `tbl_token_pelanggan`
  ADD PRIMARY KEY (`kd_token`);

--
-- Indexes for table `tbl_tujuan`
--
ALTER TABLE `tbl_tujuan`
  ADD PRIMARY KEY (`kd_tujuan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_level`
--
ALTER TABLE `tbl_level`
  MODIFY `kd_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `kd_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tbl_token_pelanggan`
--
ALTER TABLE `tbl_token_pelanggan`
  MODIFY `kd_token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
