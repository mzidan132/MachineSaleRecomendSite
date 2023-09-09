-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/

-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2022 at 01:46 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chemicaldb`
--

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
(5, 'adminmk', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(38, 1, 31, '1ton Small Mini Excavator ', 5000, 1, 'excavator.png');


-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(2, 0, 'সাফায়েত', 'safaet@gmail.com', '1684684684', 'hello'),
(3, 1, 'পুলক', 'pulok@gmail.com', '1684684685', 'good');


-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
 
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` int(100) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
( 8, 1, 'জিদান', '01611496142','mz@gmail.com','ব্যাংক', '১২, ৫, বাড্ডা , ঢাকা, বাংলাদেশ- 1212', 1, 37 , '2023-04-18', 'pending');
-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  `weight` int(8) DEFAULT NULL,
  `horsepower` int(10) DEFAULT NULL,
  `depth` int(8) DEFAULT NULL,
  `desc` varchar(4500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `image`, `weight`, `horsepower`,`depth`, `desc`) VALUES
(27, 'Texas Drilling Rig', 'oil', 2000000, 'trig.png', 200, 300,50,'50Oilwell E-2000 Drilling Rig Package For Sale This rig is in great condition and was refurbished in 2012!This rig is ready to work! It is currently rigged down and ready for shipping. Call Us Today to setup your inspection 1-800-957-2391
Technical Specifications / Included Equipment:DRAWWORKS: Oilwell E 2000 (2000hp) with Elmago 7838 Auxiliary Electric Brake.Powered by Two ( G.E. 752 1000 HP Electric Motors, Drillers Console, Grooved for 1 ½ Wire line, Single Drum. With 2 Hyd catheads.
MAST: Lee C. Moore, 152 Beam Leg, 1,300,000# SHL. Seven (7) 60 Sheaves with (1) 60 Fast line Sheave. Boom Pole, Derrick Shoes, Stand Pipe Manifold. Derrick Ladder.
TRAVELING EQUIP: Oilwell 650 Ton Blocks. VARCO TDS 11S 500 ton top drive with 120 500 ton bales
SUBSTRUCTURE: Substructure Lee C. Moore Swing Up With Elevator, 32 Floor Height, Rated 800,000# Setback, Sub Skids (2) 5 H x 60 long. Lee C Moore Rig Rover Walking system Mdl 544670 500,000 Capacity. Grasshopper will walk 160 feet.
ROTARY: Rotary Table Oilwell 8275 27 x 53 w Master Bushing
BOP EQUIPMENT: One (1) 13 5/8 Cameron Type U Single Ram Preventor 5000 # One (1) 13 5/8 Schaffer Double Ram Preventor 5000 # One ( GL Hydril Annular 5000# One (1) 5000# Mud Cross Accumulator Koomey type 80 7 Station. Choke Manifold 4 1/16 X 10k
ENGINES: Four ( Caterpillar 3512 diesel engines with Cat 1050 KW generators. 2 3512C used 1 year 2 3512A models
SCR: Legacy Siemens 4X4 control house. 600v DC and 480v AC power. 2 500t AC units and stepdown transformers
MUD PUMPS: Two (2) Gardner Denver PZ 11 s (1600 hp each) With 7500 PSI Southwest fluid ends, powered by (4) AMD 800 hp DC Traction Motors 5x6 Charge Pumps, Belts, Belt Guard.
MUD SYSTEM: Three Tank Mud System. 10 W x 40 L x 8 H. 1500 Bbl Capacity Two Derrick Shale Shakers Mud Mixers Harrisburg Mud Gas Separator Brandt Mud Mixers 8 10 hp Brandt Agitators    WATER TANK: 2 Water Tanks 500 BBLS Skidded Double Life Pump with Electric Motor
Brandon Martinez [bmartinez@vidabem.us](mailto:jlozano@vidabem.us)+1 415 686 8796'),
(31, '1ton Small Mini Excavator ', 'metal', 200000, 'excavator.png', 20, 50,5, NULL),
(37, 'Gravel Cutter Suction Dredger', 'sand',1000000, 'hpdrg.png', 100, 200,30, NULL),
(38, 'Mini Drilling Rig', 'oil', 100000, 'minirig.png', 1, 2,3, NULL),
(39, 'Ocean Suction Dredger', 'sand',6000000, 'ocndrg.png', 500, 600,100, NULL),
(40, 'Waterwell Drilling Rig', 'oil', 500000, 'waterig.png', 50, 100,20, NULL),
(41, 'Mini Gravel Cutter Suction Dredger', 'sand',700000, 'minidrg.png', 50, 100,10, NULL),
(42, 'Aramco Drilling Rig', 'oil', 9000000, 'aramco.png', 500, 800,200, NULL),
(43, 'River Suction Dredger', 'sand',2000000, 'dredger.png', 200, 200,40, NULL),
(44, 'Ocean Drilling Rig', 'oil', 8000000, 'ocnrig.png', 500, 600,300, NULL),
(45, 'Chin Gravel Cutter Suction Dredger', 'sand',900000, 'odredger.png', 100, 200,30, NULL),
(46, 'Saudi Drilling Rig', 'oil', 3000000, 'saudirig.png', 200, 300,100, NULL),
(47, 'Double Gravel Cutter Suction Dredger', 'sand',3000000, 'cutdrg.png', 200, 300,40, NULL),
(48, 'Rock Refine Machine', 'metal', 400000, 'refine.png', 30, 20,0, NULL),
(49, 'Continious Coal Miner', 'metal', 8000000, 'rock.png', 200, 120,30, NULL),
(50, 'Tunnel drilling Rig ', 'metal', 4000000, 'tunel.png', 100, 50,40, NULL),
(51, 'Rock drilling Rig ', 'metal', 2000000, 'minear.png', 50, 40,10, NULL),
(52, 'Huge Coal mining Machine', 'metal', 7000000, 'metal.png', 200, 100,30, NULL),
(53, 'Gold Wash Plant Crusher', 'metal', 9000000, 'golds.png', 100, 80,4, NULL),
(56, 'Rocky Gold mining Excavator', 'metal', 8000000, 'goldcrn.png', 80, 50,5, NULL);
--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `number`, `password`, `address`) VALUES
(1, 'জিদান', 'mz@gmail.com', '1611496142', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2', '12, 5, Badda, xyz, dhaka, xyz, bangladesh - 1212');

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);


--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;


--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
