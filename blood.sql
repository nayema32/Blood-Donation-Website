-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2018 at 09:39 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blood`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `Donor` ()  BEGIN
	INSERT INTO donor
    (name,email,phone,division,district,thana,blood_group,age,lastdate,userid,password,UGroup)
    
    SELECT name,email,phone,division,district,thana,blood_group,age,lastdate,userid,password,UGroup FROM donor_temp;
    
    INSERT INTO users
    (userid,password,UGroup)
    
    SELECT userid,password,UGroup FROM donor_temp;
    
    DELETE FROM donor_temp;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `center` varchar(200) NOT NULL,
  `date` varchar(30) NOT NULL,
  `time` varchar(20) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `name`, `email`, `phone`, `center`, `date`, `time`, `message`) VALUES
(1, 'tamanna', 'lubanaafroz888@gmail.com', '01992520967', 'khulna', '13.2.218', '6pm', 'need A+');

-- --------------------------------------------------------

--
-- Table structure for table `campaign`
--

CREATE TABLE `campaign` (
  `id` int(11) NOT NULL,
  `location` varchar(100) NOT NULL,
  `date` varchar(30) NOT NULL,
  `start_time` varchar(30) NOT NULL,
  `end_time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(110) NOT NULL,
  `phone` varchar(110) NOT NULL,
  `email` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `phone`, `email`) VALUES
(1, 'Syed easin Arafath', '01961449349', 'easinarafath400@gmail.com'),
(3, 'Tamanna afroz liya', '01776-146991', 'lubanaafroz888@gmail.com'),
(4, 'Rema Khatun', '01963242150', 'sumayaislamrima@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `district_id` varchar(50) NOT NULL,
  `division_id` varchar(50) NOT NULL,
  `district_name` varchar(35) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `district_id`, `division_id`, `district_name`) VALUES
(1, 'Khulna', 'Khulna', 'Khulna'),
(2, 'Bagerhat', 'Khulna', 'Bagerhat'),
(3, 'Chuadanga', 'Khulna', 'Chuadanga'),
(4, 'Jessore', 'Khulna', 'Jessore'),
(5, 'Jhenaidah', 'Khulna', 'Jhenaidah'),
(6, 'Kushtia', 'Khulna', 'Kushtia'),
(7, 'Magura', 'Khulna', 'Magura'),
(8, 'Meherpur', 'Khulna', 'Meherpur'),
(9, 'Narail', 'Khulna', 'Narail'),
(10, 'Satkhira', 'Khulna', 'Satkhira'),
(11, 'Dhaka', 'Dhaka', 'Dhaka'),
(12, 'Gazipur', 'Dhaka', 'Gazipur'),
(13, 'Kishoreganj', 'Dhaka', 'Kishoreganj'),
(14, 'Manikganj', 'Dhaka', 'Manikganj'),
(15, 'Munshiganj', 'Dhaka', 'Munshiganj'),
(16, 'Narayanganj', 'Dhaka', 'Narayanganj'),
(17, 'Narsingdi', 'Dhaka', 'Narsingdi'),
(18, 'Tangail', 'Dhaka', 'Tangail'),
(19, 'Faridpur', 'Dhaka', 'Faridpur'),
(20, 'Gopalganj', 'Dhaka', 'Gopalganj'),
(21, 'Madaripur', 'Dhaka', 'Madaripur'),
(22, 'Rajbari', 'Dhaka', 'Rajbari'),
(23, 'Shariatpur', 'Dhaka', 'Shariatpur'),
(24, 'Brahmanbaria', 'Chittagong', 'Brahmanbaria'),
(25, 'Comilla', 'Chittagong', 'Comilla'),
(26, 'Chandpur', 'Chittagong', 'Chandpur'),
(27, 'Lakshmipur', 'Chittagong', 'Lakshmipur'),
(28, 'Noakhali', 'Chittagong', 'Noakhali'),
(29, 'Feni', 'Chittagong', 'Feni'),
(30, 'Khagrachhari', 'Chittagong', 'Khagrachhari'),
(31, 'Rangamati', 'Chittagong', 'Rangamati'),
(32, 'Bandarban', 'Chittagong', 'Bandarban'),
(33, 'Chittagong', 'Chittagong', 'Chittagong'),
(34, 'Cox\'s Bazar', 'Chittagong', 'Cox\'s Bazar'),
(35, 'Habiganj', 'Sylhet', 'Habiganj'),
(36, 'Moulivubazar', 'Sylhet', 'Moulivubazar'),
(37, 'Shunamganj', 'Sylhet', 'Shunamganj'),
(38, 'Sylhet', 'Sylhet', 'Sylhet'),
(39, 'Bogra', 'Rajshahi', 'Bogra'),
(40, 'Chapainawabganj', 'Rajshahi', 'Chapainawabganj'),
(41, 'Joypurhat', 'Rajshahi', 'Joypurhat'),
(42, 'Naogaon', 'Rajshahi', 'Naogaon'),
(43, 'Natore', 'Rajshahi', 'Natore'),
(44, 'Pabna', 'Rajshahi', 'Pabna'),
(45, 'Rajshahi', 'Rajshahi', 'Rajshahi'),
(46, 'Sirajganj', 'Rajshahi', 'Sirajganj'),
(47, 'Rangpur', 'Rangpur', 'Rangpur'),
(48, 'Dinajpur', 'Rangpur', 'Dinajpur'),
(49, 'Gaibandha', 'Rangpur', 'Gaibandha'),
(50, 'Kurigram', 'Rangpur', 'Kurigram'),
(51, 'Lalmonirhat', 'Rangpur', 'Lalmonirhat'),
(52, 'Nilphamari', 'Rangpur', 'Nilphamari'),
(53, 'Panchagarh', 'Rangpur', 'Panchagarh'),
(54, 'Thakhurgaon', 'Rangpur', 'Thakhurgaon'),
(55, 'Barisal', 'Barisal', 'Barisal'),
(56, 'Borguna', 'Barisal', 'Borguna'),
(57, 'Bhola', 'Barisal', 'Bhola'),
(58, 'Jhalokati', 'Barisal', 'Jhalokati'),
(59, 'Patuakhali', 'Barisal', 'Patuakhali'),
(60, 'Pirojpur', 'Barisal', 'Pirojpur'),
(61, 'Mymenshing', 'Dhaka', 'Mymenshing'),
(62, 'Sherpur', 'Dhaka', 'Sherpur'),
(63, 'Nawabganj', 'Rajshahi', 'Nawabganj');

-- --------------------------------------------------------

--
-- Table structure for table `division`
--

CREATE TABLE `division` (
  `division_id` varchar(50) NOT NULL,
  `division_name` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `division`
--

INSERT INTO `division` (`division_id`, `division_name`) VALUES
('Dhaka', 'Dhaka'),
('Khulna', 'Khulna'),
('Chittagong', 'Chittagong'),
('Sylhet', 'Sylhet'),
('Rajshahi', 'Rajshahi'),
('Rangpur', 'Rangpur'),
('Barisal', 'Barisal');

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(150) NOT NULL,
  `division` varchar(200) NOT NULL,
  `district` varchar(30) NOT NULL,
  `thana` varchar(50) NOT NULL,
  `blood_group` varchar(8) NOT NULL,
  `age` varchar(10) NOT NULL,
  `lastdate` varchar(30) NOT NULL,
  `userid` int(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `UGroup` int(11) NOT NULL DEFAULT '10'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`id`, `name`, `phone`, `email`, `division`, `district`, `thana`, `blood_group`, `age`, `lastdate`, `userid`, `password`, `UGroup`) VALUES
(3, 'Bappy', '01941255947', 'rashedmail@zoho.com', 'Dhaka', 'Dhaka', 'Adabor', 'A+', '23', '23 January 2017', 2147483647, '6KikUEgYWIJ8', 10),
(5, 'Tamanna Afroz liya', '01776146991', 'lubanaafroz888@gmail.com', 'Khulna', 'Bagerhat', 'Fakirhat', 'A+', '20', '10 January 2017', 2147483647, '26Fh4Wws*LTV', 10),
(6, 'Gazi Fayzonnesa Afrin', '01791668827', 'gazifayzonnesaafrin18@gmail.com', 'Khulna', 'Khulna', 'Dighalia', '---Selec', '21', '03 January 2017', 1349085267, 'kWTg$*@AsdY2', 10),
(7, 'Maria Sultana', '01952319261', 'mariasultana9261@gmail.com', 'Khulna', 'Khulna', 'Daulatpur', 'B+', '20', '', 2147483647, '9ETJ6KcZwA0x', 10),
(8, 'Falguni Mondal', '01920749933', 'falgunighoshal933@gmail.com', 'Khulna', 'Bagerhat', 'Rampal', 'AB+', '20', '04 January 2017', 2147483647, 'fDWcgRMl&yKZ', 10),
(9, 'Neshat Tasnem', '01952990219', 'ntasnim754@gmail.com', 'Khulna', 'Khulna', 'Khalishpur', 'AB+', '20', '', 2147483647, '2sDd$w3n*bkh', 10),
(10, 'Rekha Khatun', '01910333814', 'polytechnic378@gmail.com', 'Khulna', '', '', 'AB+', '20', '', 2147483647, '2B@5HIX!nLgZ', 10),
(11, 'Nasrin Sultana', '01917513046', 'puspo.meghla3046@gmail.com', 'Khulna', 'Khulna', 'Khan Jahan Ali', 'A+', '20', '', 2147483647, '&dFb#xGmIqO0', 10),
(12, 'Soma Khatun', '01929039136', 'khatunsoma367@gamil.com', 'Khulna', 'Khulna', 'Sonadanga', 'A+', '20', '', 2147483647, 'Qn^e*vt8@jDW', 10),
(13, 'Sumi Khatun', '01709044818', 'sumikmpi@gmail', 'Khulna', 'Khulna', 'Khalishpur', 'B-', '20', '', 953621847, 'upvlRDwyO6&x', 10),
(14, 'Fatematuzzohara Happy', '01776264378', 'happy44bd@gmail.com', 'Khulna', 'Khulna', 'Khalishpur', 'A+', '20', '', 2147483647, '0srIbj3cEq$X', 10),
(15, 'Jaba Baidya', '01954640265', 'jaba4378@gmail.com', 'Khulna', 'Khulna', 'Koyra', '---Selec', '20', '', 1905476328, '!LQ3AUv#VTNi', 10),
(16, 'Rabeya Khatun', '01904851224', 'rabuyakhatunmita1996@gmail.com', 'Khulna', 'Jessore', 'Keshabpur', 'A+', '20', '', 2147483647, 'bcvgAh9u$Z1F', 10),
(17, 'Swarnali Mahali', '01740446887', 'swarnalimahali1997@gmail.com', 'Khulna', 'Khulna', 'Khalishpur', 'O+', '20', '', 983261475, 'BPVh1vbFp)NH', 10),
(18, 'Tamanna Yasmin Mitu', '01941229527', 'mitu457127@gmail.com', 'Khulna', 'Jessore', 'Jessore Sadar', 'B-', '20', '', 2147483647, 'eATlxzPitv27', 10),
(19, 'Parvin Akter', '01967565374', 'ro565374@gmail.com', 'Khulna', 'Jessore', 'Jessore Sadar', 'B+', '20', '', 2147483647, 'sw!5TM9&yj2R', 10),
(20, 'MST. Jannatul Ara', '01977728674', 'jannatulara7r4@gmail.com', 'Khulna', 'Chuadanga', 'Damurrhuda', 'B+', '19', '', 2147483647, '#VeOvoFhq80$', 10),
(21, 'Jannatul Ferdowsi', '01755097673', 'jannatulp3@gmai.com', 'Khulna', 'Bagerhat', 'Bagerhat Sadar', 'O+', '20', '', 412963857, 't!WkMEoUTznF', 10),
(22, 'Rafiza Khatun', '01912115792', 'rafiza29292@gmail.com', 'Khulna', 'Satkhira', 'Kalaroa', 'A+', '20', '', 2147483647, 'SReyI^w-#6Zk', 10),
(23, 'Israt Jahan', '01927026453', 'isratj01927@gmail.com', 'Khulna', 'Jessore', 'Jessore Sadar', 'B+', '20', '', 2147483647, '0Ub%HVQJ&q6S', 10),
(24, 'Nigar Sultana', '01782027733', 'dristy728630@gmail.com', 'Khulna', 'Khulna', 'Khalishpur', 'O+', '20', '', 469352187, 'mWnsTOycvIBD', 10),
(25, 'Shamima Sultana Shila', '01624700181', 'shamimashila181@gmail.com', 'Khulna', 'Khulna', 'Khalishpur', 'O+', '20', '', 2147483647, '0ouZ!yiMwTAR', 10),
(26, 'Tania sultana', '01767-336142', 'taniasultan@gmail.com', 'Khulna', 'Khulna', 'Khalishpur', 'B+', '20', '', 2147483647, '3W&Z%Ite9kNn', 10),
(27, 'Rakib Hasan', '01854520820', 'rakibpk1997@gmail.com', 'Khulna', 'Bagerhat', 'Fakirhat', 'A+', '21', '16 January 2017', 593264178, 'FOpKSXq1Y#Lu', 10),
(28, 'MD najmul Islam', '01789172180', 'mdnajmul346@gmail.com', 'Barisal', 'Pirojpur', 'Pirojpur Sadar', 'O+', '19', '28 September 2017', 2147483647, '*2%!$BpAb8Wz', 10),
(29, 'Rakib Hasan', '01937740949', 'dtcrakib@gmail.com', 'Khulna', 'Khulna', 'Khalishpur', 'O-', '19', '', 2147483647, 'U8AOfmny1P$4', 10),
(30, 'MD abu baker siddiki', '01521411698', 'abcabir64@gmail.com', 'Khulna', 'Khulna', 'Khalishpur', 'B+', '22', '20 June 2017', 2147483647, '!GDTROheBC6l', 10),
(31, 'Aysha khatun', '01776-146991', 'aysha@gmail.com', 'Khulna', 'Khulna', 'Khalishpur', 'A+', '18', '', 2147483647, 'n6#GhbivEFY8', 10),
(32, 'Irany khanun', '01915-125550', 'mahabubahasanat2017@gmail.com', 'Khulna', 'Khulna', 'Khalishpur', 'B+', '19', '', 2147483647, 'ry05LRaZJ^3W', 10);

-- --------------------------------------------------------

--
-- Table structure for table `donor_temp`
--

CREATE TABLE `donor_temp` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(150) NOT NULL,
  `division` varchar(200) NOT NULL,
  `district` varchar(30) NOT NULL,
  `thana` varchar(50) NOT NULL,
  `blood_group` varchar(8) NOT NULL,
  `age` varchar(10) NOT NULL,
  `lastdate` varchar(30) NOT NULL,
  `userid` int(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `UGroup` int(11) NOT NULL DEFAULT '10'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `thana`
--

CREATE TABLE `thana` (
  `id` int(11) NOT NULL,
  `thana_id` varchar(30) NOT NULL,
  `district_id` varchar(30) NOT NULL,
  `thana_name` varchar(35) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thana`
--

INSERT INTO `thana` (`id`, `thana_id`, `district_id`, `thana_name`) VALUES
(1, 'Khalishpur', 'Khulna', 'Khalishpur'),
(2, 'Abhaynagar', 'Jessore', 'Abhaynagar'),
(3, 'Batiaghata', 'Khulna', 'Batiaghata'),
(4, 'Dacope', 'Khulna', 'Dacope'),
(5, 'Dumuria', 'Khulna', 'Dumuria'),
(6, 'Dighalia', 'Khulna', 'Dighalia'),
(7, 'Terokhada', 'Khulna', 'Terokhada'),
(8, 'Daulatpur', 'Khulna', 'Daulatpur'),
(9, 'Khan Jahan Ali', 'Khulna', 'Khan Jahan Ali'),
(10, 'Kotwali', 'Khulna', 'Kotwali'),
(11, 'Sonadanga', 'Khulna', 'Sonadanga'),
(12, 'Harintana', 'Khulna', 'Harintana'),
(13, 'Koyra', 'Khulna', 'Koyra'),
(14, 'Paikgachha', 'Khulna', 'Paikgachha'),
(15, 'Phultala', 'Khulna', 'Phultala'),
(16, 'Rupsha', 'Khulna', 'Rupsha'),
(17, 'Bagherpara', 'Jessore', 'Bagherpara'),
(18, 'Chaugachha', 'Jessore', 'Chaugachha'),
(19, 'Jhikargachha', 'Jessore', 'Jhikargachha'),
(20, 'Keshabpur', 'Jessore', 'Keshabpur'),
(21, 'Jessore Sadar', 'Jessore', 'Jessore Sadar'),
(22, 'Manirampur', 'Jessore', 'Manirampur'),
(23, 'Sharsha', 'Jessore', 'Sharsha'),
(24, 'Bagerhat Sadar', 'Bagerhat', 'Bagerhat Sadar'),
(25, 'Chitalmari', 'Bagerhat', 'Chitalmari'),
(26, 'Fakirhat', 'Bagerhat', 'Fakirhat'),
(27, 'Kachua', 'Bagerhat', 'Kachua'),
(28, 'Mollahat', 'Bagerhat', 'Mollahat'),
(29, 'Mongla', 'Bagerhat', 'Mongla'),
(30, 'Morrelganj', 'Bagerhat', 'Morrelganj'),
(31, 'Rampal', 'Bagerhat', 'Rampal'),
(32, 'Sarankhala', 'Bagerhat', 'Sarankhala'),
(33, 'Alamdanga', 'Chuadanga', 'Alamdanga'),
(34, 'Chuadanga Sadar', 'Chuadanga', 'Chuadanga Sadar'),
(35, 'Damurrhuda', 'Chuadanga', 'Damurrhuda'),
(36, 'Jibannagar', 'Chuadanga', 'Jibannagar'),
(37, 'Harinakunda', 'Jhenaida', 'Harinakunda'),
(38, 'Jhenaida Sadar', 'Jhenaida', 'Jhenaida Sadar'),
(39, 'Kaliganj', 'Jhenaida', 'Kaliganj'),
(40, 'Kotchandpur', 'Jhenaida', 'Kotchandpur'),
(41, 'Maheshpur', 'Jhenaida', 'Maheshpur'),
(42, 'Shailkupa', 'Jhenaida', 'Shailkupa'),
(43, 'Bheramara', 'Kushtia', 'Bheramara'),
(44, 'Daaulatpur', 'Kushtia', 'Daulatpur'),
(45, 'Khoksa', 'Kushtia', 'Khoksa'),
(46, 'Kumarkhali', 'Kushtia', 'Kumarkhali'),
(47, 'Kushtia Sadar', 'Kushtia', 'Kushtia Sadar'),
(48, 'Mirpur', 'Kushtia', 'Mirpur'),
(49, 'Shekhpara', 'Kushtia', 'Shekhpara'),
(50, 'Magura Sadar', 'Magura', 'Magura Sadar'),
(51, 'Mohannadpur', 'Magura', 'Mohannadpur'),
(52, 'Shalikha', 'Magura', 'Shalikha'),
(53, 'Sreepur', 'Magura', 'Sreepur'),
(54, 'Meherpur Sadar', 'Meherpur', 'Meherpur Sadar'),
(55, 'Gangni', 'Meherpur', 'Gangni'),
(56, 'Mujibnagar', 'Meherpur', 'Mujibnagar'),
(57, 'Kalia', 'Narail', 'Kalia'),
(58, 'Lohagara', 'Narail', 'Lohagara'),
(59, 'Narail Sadar', 'Narail', 'Narail Sadar'),
(60, 'Naragati', 'Narail', 'Naragati'),
(61, 'Assasuni', 'Satkhira', 'Assasuni'),
(62, 'Debhata', 'Satkhira', 'Debhata'),
(63, 'Kalaroa', 'Satkhira', 'Kalaroa'),
(64, 'Kaliganjj', 'Satkhira', 'Kaliganj'),
(65, 'Satkhira Sadar', 'Satkhira', 'Satkhira Sadar'),
(66, 'Shyamnagar', 'Satkhira', 'Shyamnagar'),
(67, 'Adabor ', 'Dhaka', 'Adabor '),
(68, 'Badda ', 'Dhaka', 'Badda '),
(69, 'Bangsal ', 'Dhaka', 'Bangsal '),
(70, 'Bimanbandar ', 'Dhaka', 'Bimanbandar '),
(71, 'Cantonment ', 'Dhaka', 'Cantonment '),
(72, 'Chak Bazar', 'Dhaka', 'Chak Bazar'),
(73, 'Dakshinkhan ', 'Dhaka', 'Dakshinkhan '),
(74, 'Darus Salam', 'Dhaka', 'Darus Salam'),
(75, 'Demra ', 'Dhaka', 'Demra '),
(76, 'Dhamrai ', 'Dhaka', 'Dhamrai '),
(77, 'Dhanmondi ', 'Dhaka', 'Dhanmondi '),
(78, 'Dohar ', 'Dhaka', 'Dohar '),
(79, 'Gendaria ', 'Dhaka', 'Gendaria '),
(80, 'Gulshan ', 'Dhaka', 'Gulshan '),
(81, 'Hazaribagh ', 'Dhaka', 'Hazaribagh '),
(82, 'Jatrabari ', 'Dhaka', 'Jatrabari '),
(83, 'Kadamtali ', 'Dhaka', 'Kadamtali '),
(84, 'Kafrul ', 'Dhaka', 'Kafrul '),
(85, 'Kalabagan ', 'Dhaka', 'Kalabagan '),
(86, 'Kamrangirchar ', 'Dhaka', 'Kamrangirchar '),
(87, 'Keraniganj ', 'Dhaka', 'Keraniganj '),
(88, 'Khilgaon ', 'Dhaka', 'Khilgaon '),
(89, 'khilkhet ', 'Dhaka', 'khilkhet '),
(90, 'Kotwali ,', 'Dhaka', 'Kotwali '),
(91, 'Lalbagh ', 'Dhaka', 'Lalbagh '),
(92, 'Mirpur ,', 'Dhaka', 'Mirpur '),
(93, 'Mohammadpur ', 'Dhaka', 'Mohammadpur '),
(94, 'Motijheel ', 'Dhaka', 'Motijheel '),
(95, 'Nawabganj ', 'Dhaka', 'Nawabganj '),
(96, 'Newmarket ', 'Dhaka', 'Newmarket '),
(97, 'Pallabi ', 'Dhaka', 'Pallabi '),
(98, 'Paltan ', 'Dhaka', 'Paltan '),
(99, 'Ramna ', 'Dhaka', 'Ramna '),
(100, 'Rampura ', 'Dhaka', 'Rampura '),
(101, 'Sabujbagh ', 'Dhaka', 'Sabujbagh '),
(102, 'Savar ', 'Dhaka', 'Savar '),
(103, ' Shah Ali ', 'Dhaka', ' Shah Ali '),
(104, 'Shahbag ', 'Dhaka', 'Shahbag '),
(105, 'Sher-e-Bangla Nagar', 'Dhaka', 'Sher-e-Bangla Nagar'),
(106, 'Shyampur ', 'Dhaka', 'Shyampur '),
(107, 'Sutrapur ', 'Dhaka', 'Sutrapur '),
(108, 'Tejgaon ', 'Dhaka', 'Tejgaon '),
(109, 'Mohakhali ', 'Dhaka', 'Mohakhali '),
(110, 'Tejgaon Industrial Area ', 'Dhaka', 'Tejgaon Industrial Area '),
(111, 'Turag ', 'Dhaka', 'Turag '),
(112, 'Uttara ', 'Dhaka', 'Uttara '),
(113, 'Uttar Khan', 'Dhaka', 'Uttar Khan'),
(114, 'Alfadanga ', 'Faridpur', 'Alfadanga '),
(115, 'Bhanga ', 'Faridpur', 'Bhanga '),
(116, 'Boalmari ', 'Faridpur', 'Boalmari '),
(117, 'Charbhadrasan ', 'Faridpur', 'Charbhadrasan '),
(118, 'Faridpur Sadar', 'Faridpur', 'Faridpur Sadar'),
(119, 'Madhukhali ', 'Faridpur', 'Madhukhali '),
(120, 'Nagarkanda ', 'Faridpur', 'Nagarkanda '),
(121, 'Sadarpur', 'Faridpur', 'Sadarpur'),
(122, 'Saltha ', 'Faridpur', 'Saltha '),
(123, 'Gazipur', 'Gazipur', 'Gazipur'),
(124, 'Kaliakair ', 'Gazipur', 'Kaliakair '),
(125, 'Kaliganj ,', 'Gazipur', 'Kaliganj '),
(126, 'Kapasia ', 'Gazipur', 'Kapasia '),
(127, 'Tongi', 'Gazipur', 'Tongi'),
(128, 'Sreepurr', 'Gazipur', 'Sreepur'),
(129, 'Gopalganj Sadar', 'Gopalganj', 'Gopalganj Sadar'),
(130, 'Kashiani ', 'Gopalganj', 'Kashiani '),
(131, 'Kotalipara ', 'Gopalganj', 'Kotalipara '),
(132, 'Muksudpur', 'Gopalganj', 'Muksudpur'),
(133, 'Tungipara ', 'Gopalganj', 'Tungipara '),
(134, 'Baksiganj ', 'Jamalpur', 'Baksiganj '),
(135, 'Dewanganj ', 'Jamalpur', 'Dewanganj '),
(136, 'Islampur ', 'Jamalpur', 'Islampur '),
(137, 'Jamalpur Sadar', 'Jamalpur', 'Jamalpur Sadar'),
(138, 'Madarganj ', 'Jamalpur', 'Madarganj '),
(139, 'Melandaha ', 'Jamalpur', 'Melandaha '),
(140, 'Sarishabari ', 'Jamalpur', 'Sarishabari '),
(141, 'Astagram ', 'Kishoreganj', 'Astagram '),
(142, 'Bajitpur ', 'Kishoreganj', 'Bajitpur '),
(143, 'Bhairab ', 'Kishoreganj', 'Bhairab '),
(144, 'Hossainpur ', 'Kishoreganj', 'Hossainpur '),
(145, 'Itna', 'Kishoreganj', 'Itna'),
(146, 'Karimganj ', 'Kishoreganj', 'Karimganj '),
(147, 'Katiadi ', 'Kishoreganj', 'Katiadi '),
(148, 'Kishorganj Sadar', 'Kishoreganj', 'Kishorganj Sadar'),
(149, 'Kuliarchar', 'Kishoreganj', 'Kuliarchar'),
(150, 'Mithamain ', 'Kishoreganj', 'Mithamain '),
(151, 'Nikli ', 'Kishoreganj', 'Nikli '),
(152, 'Pakundia ', 'Kishoreganj', 'Pakundia '),
(153, 'Tarail ', 'Kishoreganj', 'Tarail '),
(154, 'Rajoir ', 'Madaripur', 'Rajoir '),
(155, 'Madaripur Sadar', 'Madaripur', 'Madaripur Sadar'),
(156, 'Kalkini ', 'Madaripur', 'Kalkini '),
(157, 'Shibchar ', 'Madaripur', 'Shibchar '),
(158, 'Daulatpur,', 'Manikganj', 'Daulatpur '),
(159, 'Ghior ', 'Manikganj', 'Ghior '),
(160, 'Harirampur ', 'Manikganj', 'Harirampur '),
(161, 'Manikgonj Sadar', 'Manikganj', 'Manikgonj Sadar'),
(162, 'Saturia ', 'Manikganj', 'Saturia '),
(163, 'Shivalaya ', 'Manikganj', 'Shivalaya '),
(164, 'Singair ', 'Manikganj', 'Singair '),
(165, 'Gazaria ', 'Munshiganj', 'Gazaria '),
(166, 'Lohajang ', 'Munshiganj', 'Lohajang '),
(167, 'Munshiganj Sadar ', 'Munshiganj', 'Munshiganj Sadar '),
(168, 'Sirajdikhan ', 'Munshiganj', 'Sirajdikhan '),
(169, 'Sreenagar ', 'Munshiganj', 'Sreenagar '),
(170, 'Tongibari ', 'Munshiganj', 'Tongibari '),
(171, 'Bhaluka ', 'Mymenshing', 'Bhaluka '),
(172, 'Dhobaura ', 'Mymenshing', 'Dhobaura '),
(173, 'Fulbaria ', 'Mymenshing', 'Fulbaria '),
(174, 'Gaffargaon ', 'Mymenshing', 'Gaffargaon '),
(175, 'Gauripur ', 'Mymenshing', 'Gauripur '),
(176, 'Haluaghat ', 'Mymenshing', 'Haluaghat '),
(177, 'Ishwarganj ', 'Mymenshing', 'Ishwarganj '),
(178, 'Mymensingh Sadar ', 'Mymenshing', 'Mymensingh Sadar '),
(179, 'Muktagachha ', 'Mymenshing', 'Muktagachha '),
(180, 'Nandail ', 'Mymenshing', 'Nandail '),
(181, 'Phulpur ', 'Mymenshing', 'Phulpur '),
(182, 'Trishal ', 'Mymenshing', 'Trishal '),
(183, 'Araihazar ', 'Narayanganj', 'Araihazar '),
(184, 'Bandar ', 'Narayanganj', 'Bandar '),
(185, 'Naranyanganj ', 'Narayanganj', 'Naranyanganj '),
(186, 'Rupganj ', 'Narayanganj', 'Rupganj '),
(187, 'Sonargaon ', 'Narayanganj', 'Sonargaon '),
(188, 'Fatullah ', 'Narayanganj', 'Fatullah '),
(189, 'Siddirganj ', 'Narayanganj', 'Siddirganj '),
(190, 'Atpara ', 'Netrokona', 'Atpara '),
(191, 'Barhatta ', 'Netrokona', 'Barhatta '),
(192, 'Durgapur ', 'Netrokona', 'Durgapur '),
(193, 'Khaliajuri ', 'Netrokona', 'Khaliajuri '),
(194, 'Kalmakanda ', 'Netrokona', 'Kalmakanda '),
(195, 'Kendua ', 'Netrokona', 'Kendua '),
(196, 'Madan ', 'Netrokona', 'Madan '),
(197, 'Mohanganj ', 'Netrokona', 'Mohanganj '),
(198, 'Netrokona ', 'Netrokona', 'Netrokona '),
(199, 'Purbadhala ', 'Netrokona', 'Purbadhala '),
(200, 'Baliakandi ', 'Rajbari', 'Baliakandi '),
(201, 'Goalandaghat ', 'Rajbari', 'Goalandaghat '),
(202, 'Pangsha ', 'Rajbari', 'Pangsha '),
(203, 'Rajbari ', 'Rajbari', 'Rajbari '),
(204, 'Kalukhali ', 'Rajbari', 'Kalukhali '),
(205, 'Bhedarganj ', 'Shariatpur', 'Bhedarganj '),
(206, 'Damudya ', 'Shariatpur', 'Damudya '),
(207, 'Gosairhat ', 'Shariatpur', 'Gosairhat '),
(208, 'Naria ', 'Shariatpur', 'Naria '),
(209, 'Shariatpur Sadar ', 'Shariatpur', 'Shariatpur Sadar '),
(210, 'Zanjira ', 'Shariatpur', 'Zanjira '),
(211, 'Sakhipur ', 'Shariatpur', 'Sakhipur '),
(212, 'Jhenaigati ', 'Sherpur', 'Jhenaigati '),
(213, 'Nakla ', 'Sherpur', 'Nakla '),
(214, 'Nalitabari ', 'Sherpur', 'Nalitabari '),
(215, 'Sherpur Sadar ', 'Sherpur', 'Sherpur Sadar '),
(216, 'Sreebardi ', 'Sherpur', 'Sreebardi '),
(217, 'Dhanbari ', 'Tangail', 'Dhanbari '),
(218, 'Sakhipur,', 'Tangail', 'Sakhipur '),
(219, 'Nagarpur ', 'Tangail', 'Nagarpur '),
(220, 'Mirzapur ', 'Tangail', 'Mirzapur '),
(221, 'Madhupur ', 'Tangail', 'Madhupur '),
(222, 'Kalihati ', 'Tangail', 'Kalihati '),
(223, 'Ghatail ', 'Tangail', 'Ghatail '),
(224, 'Delduar ', 'Tangail', 'Delduar '),
(225, 'Bhuapur ', 'Tangail', 'Bhuapur '),
(226, 'Basail ', 'Tangail', 'Basail '),
(227, 'Gopalpur ', 'Tangail', 'Gopalpur '),
(228, 'Tangail Sadar ', 'Tangail', 'Tangail Sadar '),
(229, 'Narsingdi Sadar', 'Narsingdi', 'Narsingdi Sadar'),
(230, 'Belabo ', 'Narsingdi', 'Belabo '),
(231, 'Monohardi ', 'Narsingdi', 'Monohardi '),
(232, 'Palash ', 'Narsingdi', 'Palash '),
(233, 'Raipura ', 'Narsingdi', 'Raipura '),
(234, 'Shibpur ', 'Narsingdi', 'Shibpur '),
(235, 'AliKadam', 'Bandarban', 'AliKadam'),
(236, 'Bandarban Sadar', 'Bandarban', 'Bandarban Sadar'),
(237, 'Lama', 'Bandarban', 'Lama'),
(238, 'Naikhongchhari', 'Bandarban', 'Naikhongchhari'),
(239, 'Rowangchhari', 'Bandarban', 'Rowangchhari'),
(240, 'Ruma', 'Bandarban', 'Ruma'),
(241, 'Thanchi', 'Bandarban', 'Thanchi'),
(242, 'Akhaura', 'Brahmanbaria', 'Akhaura'),
(243, 'Bancharampur', 'Brahmanbaria', 'Bancharampur'),
(244, 'Brahmanbaria Sadar', 'Brahmanbaria', 'Brahmanbaria Sadar'),
(245, 'Kasba', 'Brahmanbaria', 'Kasba'),
(246, 'Nabinagar', 'Brahmanbaria', 'Nabinagar'),
(247, 'Nasirnagar', 'Brahmanbaria', 'Nasirnagar'),
(248, 'Sarail', 'Brahmanbaria', 'Sarail'),
(249, 'Ashuganj', 'Brahmanbaria', 'Ashuganj'),
(250, 'Bijoynagar', 'Brahmanbaria', 'Bijoynagar'),
(251, 'Faridganj', 'Chandpur', 'Faridganj'),
(252, 'Chandpur Sadar', 'Chandpur', 'Chandpur Sadar'),
(253, 'Haziganj', 'Chandpur', 'Haziganj'),
(254, 'Haimchar', 'Chandpur', 'Haimchar'),
(255, 'Kachua,', 'Chandpur', 'Kachua'),
(256, 'MatlabDakshin', 'Chandpur', 'MatlabDakshin'),
(257, 'MatlabUttar', 'Chandpur', 'MatlabUttar'),
(258, 'Shahrasti', 'Chandpur', 'Shahrasti'),
(259, 'Fatikchhari', 'Chittagong', 'Fatikchhari'),
(260, 'Chandanaish', 'Chittagong', 'Chandanaish'),
(261, 'Boalkhali', 'Chittagong', 'Boalkhali'),
(262, 'Banshkhali', 'Chittagong', 'Banshkhali'),
(263, 'Anwara', 'Chittagong', 'Anwara'),
(264, 'Hathazari', 'Chittagong', 'Hathazari'),
(265, 'Lohagara.', 'Chittagong', 'Lohagara'),
(266, 'Mirsharai', 'Chittagong', 'Mirsharai'),
(267, 'Patiya', 'Chittagong', 'Patiya'),
(268, 'Rangunia', 'Chittagong', 'Rangunia'),
(269, 'Raozan', 'Chittagong', 'Raozan'),
(270, 'Sandwip', 'Chittagong', 'Sandwip'),
(271, 'Satkania', 'Chittagong', 'Satkania'),
(272, 'Sitakunda', 'Chittagong', 'Sitakunda'),
(273, 'Bandor ', 'Chittagong', 'Bandor '),
(274, 'Chandgaon', 'Chittagong', 'Chandgaon'),
(275, 'DoubleMooring', 'Chittagong', 'DoubleMooring'),
(276, 'Kotwali..', 'Chittagong', 'Kotwali'),
(277, 'Pahartali', 'Chittagong', 'Pahartali'),
(278, 'Panchlaish', 'Chittagong', 'Panchlaish'),
(279, 'Barura', 'Comilla', 'Barura'),
(280, 'Brahmanpara', 'Comilla', 'Brahmanpara'),
(281, 'Burichang', 'Comilla', 'Burichang'),
(282, 'Chandina', 'Comilla', 'Chandina'),
(283, 'Chauddagram', 'Comilla', 'Chauddagram'),
(284, 'Daudkandi', 'Comilla', 'Daudkandi'),
(285, 'Debidwar', 'Comilla', 'Debidwar'),
(286, 'Homna', 'Comilla', 'Homna'),
(287, 'Laksam', 'Comilla', 'Laksam'),
(288, 'Muradnagar', 'Comilla', 'Muradnagar'),
(289, 'Nangalkot', 'Comilla', 'Nangalkot'),
(290, 'Comilla Adarsha Sadar', 'Comilla', 'Comilla Adarsha Sadar'),
(291, 'Meghna', 'Comilla', 'Meghna'),
(292, 'Titas', 'Comilla', 'Titas'),
(293, 'Monohargonj', 'Comilla', 'Monohargonj'),
(294, 'Comilla Sadar Dakshin', 'Comilla', 'Comilla Sadar Dakshin'),
(295, 'Chakaria', 'Cox’s Bazar', 'Chakaria'),
(296, 'Cox’sBazar Sadar', 'Cox’s Bazar', 'Cox’sBazar Sadar'),
(297, 'Kutubdia', 'Cox’s Bazar', 'Kutubdia'),
(298, 'Maheshkhali', 'Cox’s Bazar', 'Maheshkhali'),
(299, 'Ramu', 'Cox’s Bazar', 'Ramu'),
(300, 'Teknaf', 'Cox’s Bazar', 'Teknaf'),
(301, 'Ukhia', 'Cox’s Bazar', 'Ukhia'),
(302, 'Pekua', 'Cox’s Bazar', 'Pekua'),
(303, 'Chhagalnaiya', 'Feni', 'Chhagalnaiya'),
(304, 'Daganbhuiyan', 'Feni', 'Daganbhuiyan'),
(305, 'Feni Sadar', 'Feni', 'Feni Sadar'),
(306, 'Parshuram', 'Feni', 'Parshuram'),
(307, 'Sonagazi', 'Feni', 'Sonagazi'),
(308, 'Fulgazi', 'Feni', 'Fulgazi'),
(309, 'Dighinala', 'Khagrachhari', 'Dighinala'),
(310, 'Khagrachhari', 'Khagrachhari', 'Khagrachhari'),
(311, 'Lakshmichhari', 'Khagrachhari', 'Lakshmichhari'),
(312, 'Mahalchhari', 'Khagrachhari', 'Mahalchhari'),
(313, 'Manikchhari', 'Khagrachhari', 'Manikchhari'),
(314, 'Matiranga', 'Khagrachhari', 'Matiranga'),
(315, 'Panchhari', 'Khagrachhari', 'Panchhari'),
(316, 'Ramgarh', 'Khagrachhari', 'Ramgarh'),
(317, 'Lakshmipur Sadar', 'Lakshmipur', 'Lakshmipur Sadar'),
(318, 'Raipur', 'Lakshmipur', 'Raipur'),
(319, 'Ramgati', 'Lakshmipur', 'Ramgati'),
(320, 'Ramganj', 'Lakshmipur', 'Ramganj'),
(321, 'Kamalnagar', 'Lakshmipur', 'Kamalnagar'),
(322, 'Begumganj', 'Noakhali', 'Begumganj'),
(323, 'Noakhali Sadar', 'Noakhali', 'Noakhali Sadar'),
(324, 'Chatkhil', 'Noakhali', 'Chatkhil'),
(325, 'Companiganj', 'Noakhali', 'Companiganj'),
(326, 'Hatiya', 'Noakhali', 'Hatiya'),
(327, 'Senbagh', 'Noakhali', 'Senbagh'),
(328, 'Sonaimuri', 'Noakhali', 'Sonaimuri'),
(329, 'Subarnachar', 'Noakhali', 'Subarnachar'),
(330, 'Kabirhat', 'Noakhali', 'Kabirhat'),
(331, 'Bagaichhari', 'Rangamati', 'Bagaichhari'),
(332, 'Barkal', 'Rangamati', 'Barkal'),
(333, 'Kawkhali (Betbunia)', 'Rangamati', 'Kawkhali (Betbunia)'),
(334, 'Belaichhari', 'Rangamati', 'Belaichhari'),
(335, 'Kaptai', 'Rangamati', 'Kaptai'),
(336, 'Juraichhari', 'Rangamati', 'Juraichhari'),
(337, 'Langadu', 'Rangamati', 'Langadu'),
(338, 'Naniyachar', 'Rangamati', 'Naniyachar'),
(339, 'Rajasthali', 'Rangamati', 'Rajasthali'),
(340, 'Rangamati Sadar', 'Rangamati', 'Rangamati Sadar'),
(341, 'Adamdighi ', 'Bogra', 'Adamdighi '),
(342, 'Bogra Sadar', 'Bogra', 'Bogra Sadar'),
(343, 'Dhunat ', 'Bogra', 'Dhunat '),
(344, 'Dupchanchia ', 'Bogra', 'Dupchanchia '),
(345, 'Gabtali ', 'Bogra', 'Gabtali '),
(346, 'Kahaloo ', 'Bogra', 'Kahaloo '),
(347, 'Nandigram ', 'Bogra', 'Nandigram '),
(348, 'Sariakandi ', 'Bogra', 'Sariakandi '),
(349, 'Sahajanpur ', 'Bogra', 'Sahajanpur '),
(350, 'Sherpur ', 'Bogra', 'Sherpur '),
(351, 'Shibganj ', 'Bogra', 'Shibganj '),
(352, 'Sonatala ', 'Bogra', 'Sonatala '),
(353, 'Akkelpur ', 'Joypurhat', 'Akkelpur '),
(354, 'Joypurhat Sadar', 'Joypurhat', 'Joypurhat Sadar'),
(355, 'Kalai ', 'Joypurhat', 'Kalai '),
(356, 'Khetlal ', 'Joypurhat', 'Khetlal '),
(357, 'Panchbibi ', 'Joypurhat', 'Panchbibi '),
(358, 'Atrai ', 'Naogaon', 'Atrai '),
(359, 'Badalgachhi ', 'Naogaon', 'Badalgachhi '),
(360, 'Manda ', 'Naogaon', 'Manda '),
(361, 'Dhamoirhat ', 'Naogaon', 'Dhamoirhat '),
(362, 'Mohadevpur ', 'Naogaon', 'Mohadevpur '),
(363, 'Naogaon Sadar ', 'Naogaon', 'Naogaon Sadar '),
(364, 'Niamatpur ', 'Naogaon', 'Niamatpur '),
(365, 'Patnitala ', 'Naogaon', 'Patnitala '),
(366, 'Porsha ', 'Naogaon', 'Porsha '),
(367, 'Raninagar ', 'Naogaon', 'Raninagar '),
(368, 'Sapahar ', 'Naogaon', 'Sapahar '),
(369, 'Bagatipara ', 'Natore', 'Bagatipara '),
(370, 'Baraigram ', 'Natore', 'Baraigram '),
(371, 'Gurudaspur ', 'Natore', 'Gurudaspur '),
(372, 'Lalpur ', 'Natore', 'Lalpur '),
(373, 'Natore Sadar ', 'Natore', 'Natore Sadar '),
(374, 'Singra ', 'Natore', 'Singra '),
(375, 'Nachole ', 'Nawabganj', 'Nachole '),
(376, 'Gomastapur ', 'Nawabganj', 'Gomastapur '),
(377, 'Bholahat ', 'Nawabganj', 'Bholahat '),
(378, 'Nawabganj Sadar', 'Nawabganj', 'Nawabganj Sadar'),
(379, 'Shibganj,', 'Nawabganj', 'Shibganj '),
(380, 'Atgharia ', 'Pabna', 'Atgharia '),
(381, 'Bera ', 'Pabna', 'Bera '),
(382, 'Bhangura ', 'Pabna', 'Bhangura '),
(383, 'Chatmohar ', 'Pabna', 'Chatmohar '),
(384, 'Faridpur Upazila', 'Pabna', 'Faridpur Upazila'),
(385, 'Ishwardi ', 'Pabna', 'Ishwardi '),
(386, 'Pabna Sadar', 'Pabna', 'Pabna Sadar'),
(387, 'Santhia ', 'Pabna', 'Santhia '),
(388, 'Sujanagar ', 'Pabna', 'Sujanagar '),
(389, 'Bagha ', 'Rajshahi', 'Bagha '),
(390, 'Bagmara ', 'Rajshahi', 'Bagmara '),
(391, 'Charghat ', 'Rajshahi', 'Charghat '),
(392, 'Durgapur,', 'Rajshahi', 'Durgapur '),
(393, 'Godagari ', 'Rajshahi', 'Godagari '),
(394, 'Mohanpur ', 'Rajshahi', 'Mohanpur '),
(395, 'Pabna Upazila', 'Rajshahi', 'Pabna Upazila'),
(396, 'Puthia ', 'Rajshahi', 'Puthia '),
(397, '', 'Rajshahi', ''),
(398, 'Chandipur ', 'Sirajganj', 'Chandipur '),
(399, 'Chauhali ', 'Sirajganj', 'Chauhali '),
(400, 'Kamarkhanda ', 'Sirajganj', 'Kamarkhanda '),
(401, 'Kazipur ', 'Sirajganj', 'Kazipur '),
(402, 'Rajganj Upazila', 'Sirajganj', 'Rajganj Upazila'),
(403, 'Shahjadpur ', 'Sirajganj', 'Shahjadpur '),
(404, 'Sirajganj Sadar', 'Sirajganj', 'Sirajganj Sadar'),
(405, 'Tarash ', 'Sirajganj', 'Tarash '),
(406, 'Ullahpara ', 'Sirajganj', 'Ullahpara '),
(407, 'Amtali ', 'Barguna', 'Amtali '),
(408, 'Bamna ', 'Barguna', 'Bamna '),
(409, 'Barguna Sadar ', 'Barguna', 'Barguna Sadar '),
(410, 'Betagi ', 'Barguna', 'Betagi '),
(411, 'Patharghata ', 'Barguna', 'Patharghata '),
(412, 'Taltoli ', 'Barguna', 'Taltoli '),
(413, 'Agailjhara ', 'Barisal', 'Agailjhara '),
(414, 'Babuganj ', 'Barisal', 'Babuganj '),
(415, 'Bakerganj ', 'Barisal', 'Bakerganj '),
(416, 'Banaripara ', 'Barisal', 'Banaripara '),
(417, 'Gaurnadi ', 'Barisal', 'Gaurnadi '),
(418, 'Hizla ', 'Barisal', 'Hizla '),
(419, 'Barisha Sadar', 'Barisal', 'Barisha Sadar'),
(420, 'Mehendiganj ', 'Barisal', 'Mehendiganj '),
(421, 'Muladi ', 'Barisal', 'Muladi '),
(422, 'Wazirpur ', 'Barisal', 'Wazirpur '),
(423, 'Bhola Sadar', 'Bhola', 'Bhola Sadar'),
(424, 'Burhanuddin ', 'Bhola', 'Burhanuddin '),
(425, 'Char Fasson ', 'Bhola', 'Char Fasson '),
(426, 'Daulatkhan ', 'Bhola', 'Daulatkhan '),
(427, 'Lalmohan ', 'Bhola', 'Lalmohan '),
(428, 'Manpura ', 'Bhola', 'Manpura '),
(429, 'Tazumuddin ', 'Bhola', 'Tazumuddin '),
(430, 'Jhalokati Sadar', 'Jhalokati', 'Jhalokati Sadar'),
(431, 'Kathalia ', 'Jhalokati', 'Kathalia '),
(432, 'Nalchity ', 'Jhalokati', 'Nalchity '),
(433, 'Rajapur ', 'Jhalokati', 'Rajapur '),
(434, 'Bauphal ', 'Patuakhali', 'Bauphal '),
(435, 'Dasmina ', 'Patuakhali', 'Dasmina '),
(436, 'Galachipa ', 'Patuakhali', 'Galachipa '),
(437, 'Kalapara ', 'Patuakhali', 'Kalapara '),
(438, 'Mirzaganj ', 'Patuakhali', 'Mirzaganj '),
(439, 'Patuakhali Sadar', 'Patuakhali', 'Patuakhali Sadar'),
(440, 'Rangabali ', 'Patuakhali', 'Rangabali '),
(441, 'Dumki ', 'Patuakhali', 'Dumki '),
(442, 'Bhandaria ', 'Pirojpur', 'Bhandaria '),
(443, 'Kawkhali ', 'Pirojpur', 'Kawkhali '),
(444, 'Mathbaria ', 'Pirojpur', 'Mathbaria '),
(445, 'Nazirpur ', 'Pirojpur', 'Nazirpur '),
(446, 'Pirojpur Sadar', 'Pirojpur', 'Pirojpur Sadar'),
(447, 'Nesarabad (Swarupkati) ', 'Pirojpur', 'Nesarabad (Swarupkati) '),
(448, 'Zianagor ', 'Pirojpur', 'Zianagor '),
(449, 'Ajmiriganj ', 'Habiganj', 'Ajmiriganj '),
(450, 'Bahubal ', 'Habiganj', 'Bahubal '),
(451, 'Baniyachong ', 'Habiganj', 'Baniyachong '),
(452, 'Chunarughat ', 'Habiganj', 'Chunarughat '),
(453, 'Habiganj Sadar ', 'Habiganj', 'Habiganj Sadar '),
(454, 'Lakhai ', 'Habiganj', 'Lakhai '),
(455, 'Madhabpur ', 'Habiganj', 'Madhabpur '),
(456, 'Nabiganj ', 'Habiganj', 'Nabiganj '),
(457, 'Barlekha ', 'Moulvibazar', 'Barlekha '),
(458, 'Kamalganj ', 'Moulvibazar', 'Kamalganj '),
(459, 'Kulaura ', 'Moulvibazar', 'Kulaura '),
(460, 'Moulvibazar ', 'Moulvibazar', 'Moulvibazar '),
(461, 'Rajnagar ', 'Moulvibazar', 'Rajnagar '),
(462, 'Sreemangal ', 'Moulvibazar', 'Sreemangal '),
(463, 'Juri ', 'Moulvibazar', 'Juri '),
(464, 'Bishwamvarpur ', 'Sunamganj', 'Bishwamvarpur '),
(465, 'Chhatak ', 'Sunamganj', 'Chhatak '),
(466, 'Derai ', 'Sunamganj', 'Derai '),
(467, 'Dharampasha ', 'Sunamganj', 'Dharampasha '),
(468, 'Dowarabazar ', 'Sunamganj', 'Dowarabazar '),
(469, 'Jagannathpur ', 'Sunamganj', 'Jagannathpur '),
(470, 'Jamalganj ', 'Sunamganj', 'Jamalganj '),
(471, 'Sullah ', 'Sunamganj', 'Sullah '),
(472, 'Sunamganj Sadar', 'Sunamganj', 'Sunamganj Sadar'),
(473, 'Tahirpur ', 'Sunamganj', 'Tahirpur '),
(474, 'South Sunamganj', 'Sunamganj', 'South Sunamganj'),
(475, 'Balaganj ', 'Sylhet', 'Balaganj '),
(476, 'Beanibazar ', 'Sylhet', 'Beanibazar '),
(477, 'Bishwanath ', 'Sylhet', 'Bishwanath '),
(478, 'Companigonj ', 'Sylhet', 'Companigonj '),
(479, 'Fenchuganj ', 'Sylhet', 'Fenchuganj '),
(480, 'Golapganj ', 'Sylhet', 'Golapganj '),
(481, 'Gowainghat ', 'Sylhet', 'Gowainghat '),
(482, 'Jaintiapur ', 'Sylhet', 'Jaintiapur '),
(483, 'Kanaighat ', 'Sylhet', 'Kanaighat '),
(484, 'Sylhet Sadar', 'Sylhet', 'Sylhet Sadar'),
(485, 'Zakiganj ', 'Sylhet', 'Zakiganj '),
(486, 'South Shurma ', 'Sylhet', 'South Shurma '),
(487, 'Birampur Upazila', 'Dinajpur', 'Birampur Upazila'),
(488, 'Birganj ', 'Dinajpur', 'Birganj '),
(489, 'Biral ', 'Dinajpur', 'Biral '),
(490, 'Bochaganj ', 'Dinajpur', 'Bochaganj '),
(491, 'Chirirbandar ', 'Dinajpur', 'Chirirbandar '),
(492, 'Phulbari ', 'Dinajpur', 'Phulbari '),
(493, 'Ghoraghat ', 'Dinajpur', 'Ghoraghat '),
(494, 'Hakimpur ', 'Dinajpur', 'Hakimpur '),
(495, 'Kaharole ', 'Dinajpur', 'Kaharole '),
(496, 'Khansama ', 'Dinajpur', 'Khansama '),
(497, 'Dinajpur Sadar', 'Dinajpur', 'Dinajpur Sadar'),
(498, 'Nawabganj Upazila', 'Dinajpur', 'Nawabganj Upazila'),
(499, 'Parbatipur ', 'Dinajpur', 'Parbatipur '),
(500, 'Phulchhari ', 'Gaibandha', 'Phulchhari '),
(501, 'Gaibandha ', 'Gaibandha', 'Gaibandha '),
(502, 'Gobindaganj ', 'Gaibandha', 'Gobindaganj '),
(503, 'Palashbari Upazila', 'Gaibandha', 'Palashbari Upazila'),
(504, 'Sadullapur ', 'Gaibandha', 'Sadullapur '),
(505, 'Sughatta ', 'Gaibandha', 'Sughatta '),
(506, 'Sundarganj ', 'Gaibandha', 'Sundarganj '),
(507, 'Bhurungamari ', 'Kurigram', 'Bhurungamari '),
(508, 'Char Rajibpur', 'Kurigram', 'Char Rajibpur'),
(509, 'Chilmari ', 'Kurigram', 'Chilmari '),
(510, 'Phulbari..', 'Kurigram', 'Phulbari '),
(511, 'Kurigram Sadar ', 'Kurigram', 'Kurigram Sadar '),
(512, 'Nageshwari ', 'Kurigram', 'Nageshwari '),
(513, 'Rajarhat ', 'Kurigram', 'Rajarhat '),
(514, 'Raomari ', 'Kurigram', 'Raomari '),
(515, 'Ulipur ', 'Kurigram', 'Ulipur '),
(516, 'Aditmari ', 'Lalmonirhat', 'Aditmari '),
(517, 'Hatibandha ', 'Lalmonirhat', 'Hatibandha '),
(518, 'Kaliganj Upazila', 'Lalmonirhat', 'Kaliganj Upazila'),
(519, 'Lalmonirhat Sadar', 'Lalmonirhat', 'Lalmonirhat Sadar'),
(520, 'Patgram ', 'Lalmonirhat', 'Patgram '),
(521, 'Dimla ', 'Nilphamari', 'Dimla '),
(522, 'Domar ', 'Nilphamari', 'Domar '),
(523, 'Jaldhaka ', 'Nilphamari', 'Jaldhaka '),
(524, 'Kishoreganj ', 'Nilphamari', 'Kishoreganj '),
(525, 'Nilphamari Sadar ', 'Nilphamari', 'Nilphamari Sadar '),
(526, 'Saidpur ', 'Nilphamari', 'Saidpur '),
(527, 'Badarganj ', 'Rangpur', 'Badarganj '),
(528, 'Gangachhara ', 'Rangpur', 'Gangachhara '),
(529, 'Kaunia ', 'Rangpur', 'Kaunia '),
(530, 'Rangpur Sadar', 'Rangpur', 'Rangpur Sadar'),
(531, 'Mithapukur ', 'Rangpur', 'Mithapukur '),
(532, 'Pirgachha ', 'Rangpur', 'Pirgachha '),
(533, 'Pirganj ', 'Rangpur', 'Pirganj '),
(534, 'Taraganj ', 'Rangpur', 'Taraganj '),
(535, 'Atwari ', 'Panchagarh', 'Atwari '),
(536, 'Boda ', 'Panchagarh', 'Boda '),
(537, 'Debiganj ', 'Panchagarh', 'Debiganj '),
(538, 'Panchagarh Sadar', 'Panchagarh', 'Panchagarh Sadar'),
(539, 'Tetulia ', 'Panchagarh', 'Tetulia '),
(540, 'Balidadangi ', 'Thakurgaon', 'Balidadangi '),
(541, 'Haripur ', 'Thakurgaon', 'Haripur '),
(542, 'Pirganj Upazila', 'Thakurgaon', 'Pirganj Upazila'),
(543, 'Ranisankail ', 'Thakurgaon', 'Ranisankail '),
(544, 'Thakurgaon Sadar', 'Thakurgaon', 'Thakurgaon Sadar');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `userid` int(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `UGroup` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `userid`, `password`, `username`, `UGroup`) VALUES
(1, 540888, '146991', 'Liya', 15),
(3, 2147483647, '6KikUEgYWIJ8', 'Bappy', 10),
(5, 2147483647, '^F#!$mPC1XZ*', '', 10),
(6, 2147483647, '26Fh4Wws*LTV', '', 10),
(7, 1349085267, 'kWTg$*@AsdY2', '', 10),
(8, 2147483647, '9ETJ6KcZwA0x', '', 10),
(9, 2147483647, 'fDWcgRMl&yKZ', '', 10),
(10, 2147483647, '2sDd$w3n*bkh', '', 10),
(11, 2147483647, '2B@5HIX!nLgZ', '', 10),
(12, 2147483647, '&dFb#xGmIqO0', '', 10),
(13, 2147483647, 'Qn^e*vt8@jDW', '', 10),
(14, 953621847, 'upvlRDwyO6&x', '', 10),
(15, 2147483647, '0srIbj3cEq$X', '', 10),
(16, 1905476328, '!LQ3AUv#VTNi', '', 10),
(17, 2147483647, 'bcvgAh9u$Z1F', '', 10),
(18, 983261475, 'BPVh1vbFp)NH', '', 10),
(19, 2147483647, 'eATlxzPitv27', '', 10),
(20, 2147483647, 'sw!5TM9&yj2R', '', 10),
(21, 2147483647, '#VeOvoFhq80$', '', 10),
(22, 412963857, 't!WkMEoUTznF', '', 10),
(23, 2147483647, 'SReyI^w-#6Zk', '', 10),
(24, 2147483647, '0Ub%HVQJ&q6S', '', 10),
(25, 469352187, 'mWnsTOycvIBD', '', 10),
(26, 2147483647, '0ouZ!yiMwTAR', '', 10),
(27, 2147483647, '3W&Z%Ite9kNn', '', 10),
(28, 593264178, 'FOpKSXq1Y#Lu', '', 10),
(29, 2147483647, 'sQd!DLeN1tox', 'liya', 15),
(30, 2147483647, '*2%!$BpAb8Wz', '', 10),
(31, 2147483647, 'U8AOfmny1P$4', '', 10),
(32, 2147483647, '!GDTROheBC6l', '', 10),
(33, 2147483647, 'n6#GhbivEFY8', '', 10),
(34, 2147483647, 'ry05LRaZJ^3W', '', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign`
--
ALTER TABLE `campaign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`district_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `division`
--
ALTER TABLE `division`
  ADD PRIMARY KEY (`division_id`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donor_temp`
--
ALTER TABLE `donor_temp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thana`
--
ALTER TABLE `thana`
  ADD PRIMARY KEY (`thana_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `campaign`
--
ALTER TABLE `campaign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `donor_temp`
--
ALTER TABLE `donor_temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `thana`
--
ALTER TABLE `thana`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=545;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
