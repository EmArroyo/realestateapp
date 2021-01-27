-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 27, 2021 at 08:24 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `searchresults`
--

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `house_number` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `county` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(255) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `beds_count` int(99) NOT NULL,
  `bathroom_count` int(99) NOT NULL,
  `property_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `garden_boolean` tinyint(1) NOT NULL DEFAULT '0',
  `garage_boolean` tinyint(1) NOT NULL DEFAULT '0',
  `images_json` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_maps_embed_code` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `house_number`, `street`, `location`, `county`, `type`, `price`, `description`, `beds_count`, `bathroom_count`, `property_type`, `garden_boolean`, `garage_boolean`, `images_json`, `google_maps_embed_code`) VALUES
(1, '1', 'Manor House Lane', 'Leeds', 'West Yorkshire', 'Buy', 3950000, 'The Manor is ‘One of Leeds Finest’ homes standing in private landscaped gardens adjoining Alwoodley Golf Course in this exclusive North Leeds residential area. This outstanding family home provides over 10,200 sq ft of accommodation and has exquisitely fitted bespoke interiors. ', 7, 7, 'Detached', 1, 1, '[ \"/images/1/image1.jpg\", \"/images/1/image2.jpg\", \"/images/1/image3.jpg\" ]', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2352.8986379753906!2d-1.5172176840231577!3d53.86245034362809!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48795a4df8bdd495%3A0xfa16123367b4eca2!2sManor%20House%20Ln%2C%20Leeds!5e0!3m2!1sen!2suk!4v1610566443915!5m2!1sen!2suk'),
(2, '2', 'Mclaren Fields', 'Leeds', 'West Yorkshire', 'Buy', 160000, 'This corner Semi-Detached property comprises lounge, dining area, fitted kitchen with door leading to the conservatory. Two double spacious bedrooms and family bathroom. Front and rear gardens with driveway providing off road parking along with an electric car charging point on the drive. Gas fired central heating and double glazed windows. Located within easy reach of local amenities including PureGym, Aldi and a Wetherspoons also schools and public transport links to both Leeds and Bradford city centres.', 2, 1, 'Semi-Detached', 1, 2, '[ \"/images/2/image1.jpg\", \"/images/2/image2.jpg\", \"/images/2/image3.jpg\", \"/images/2/image4.jpg\", \"/images/2/image5.jpg\"  ]\r\n', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1618.514349412794!2d-1.6253501689805616!3d53.807362926219824!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48795f341cc169d9%3A0x18eb735313e586fd!2sMcLaren%20Fields%2C%20Bramley%2C%20Leeds!5e0!3m2!1sen!2suk!4v1611694285280!5m2!1sen!2suk'),
(3, '3', 'Strawberry Fields', 'Addlestone', 'Surrey', 'Buy', 315000, 'The accommodation consists of a exceptional lounge with a fantastic high gloss kitchen, Also allowing access to a considerably large terrace area . You have two large double bedrooms with the master having good size fitted wardrobes, three piece modern bathroom suite and a sizeable entrance hall with storage cupboards.', 2, 1, 'Apartment', 0, 0, '[ \"/images/3/image1.jpg\", \"/images/3/image2.jpg\", \"/images/3/image3.jpg\", \"/images/3/image4.jpg\"]', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2491.3899730258163!2d-0.5085917839084547!3d51.35912717961097!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4876763116d95399%3A0x87135a4b802f50bd!2sStrawberry%20Fields%2C%20Addlestone!5e0!3m2!1sen!2suk!4v1611773293371!5m2!1sen!2suk'),
(4, '4', 'Hulme Hall Road', 'Manchester', 'Greater Manchester', 'Rent', 850, 'A collection of 10 beautifully-designed 1 and 2 bedroom apartments to rent, they are situated at different floors and with different views, the price starts £850 up to £1600 , Excelsior Works is not just somewhere to live. It’s your city centre haven, ideal for those who want to experience Manchester life at its bestSelected apartments benefit from balconies and access to a communal roof garden, while a basement car park also provides on-site parking.', 1, 1, 'apartment', 0, 0, '[ \"/images/4/image1.jpg\", \"/images/4/image2.jpg\", \"/images/4/image3.jpg\", \"/images/4/image4.jpg\" ]\r\n', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2374.840103217501!2d-2.2657640838451267!3d53.47131768000538!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x487bae1df85cd5ab%3A0xc6bbd116176256ec!2sHulme%20Hall%20Rd%2C%20Manchester!5e0!3m2!1sen!2suk!4v1611773802293!5m2!1sen!2suk'),
(5, '5', 'Fawcett Street', 'York', 'North Yorkshire', 'Rent', 670, 'The Apartments - All the apartments include fully equipped kitchens (studio apartments feature fully equipped kitchenettes), living, dining and work spaces, flat screen TVs & complimentary high speed WiFi!\r\n', 1, 1, 'apartment', 0, 0, '[ \"/images/5/image1.jpg\", \"/images/5/image2.jpg\", \"/images/5/image3.jpg\"]\r\n', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2347.79647079801!2d-1.0775824838303956!3d53.95312278011076!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x487931ad9a095a83%3A0xfaed13b83219ce51!2sFawcett%20St%2C%20York!5e0!3m2!1sen!2suk!4v1611774090524!5m2!1sen!2suk'),
(6, '6', 'Lower Ebor Street', 'York', 'North Yorkshire', 'Rent', 975, 'Ready to rent immediately is this fantastic 2 bedroom property. Close to York centre and Bishopthorpe Road so with plenty on the doorstep. Modern interior, fantastic low maintenance garden and ready right now to be enjoyed for the long term.\r\n', 2, 1, 'terraced', 1, 0, '[ \"/images/6/image1.jpg\", \"/images/6/image2.jpg\", \"/images/6/image3.jpg\", \r\n\"/images/6/image4.jpg\"]\r\n', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2347.886824560496!2d-1.08406918383048!3d53.95151798011028!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x487931ab71244143%3A0xe23063d7e0e4d02e!2sLower%20Ebor%20St%2C%20York!5e0!3m2!1sen!2suk!4v1611775219859!5m2!1sen!2suk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
