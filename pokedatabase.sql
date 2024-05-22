-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2024 at 12:07 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pokedatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `user_id` int(11) NOT NULL,
  `pokemon_id` smallint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`user_id`, `pokemon_id`) VALUES
(17, 2),
(17, 8),
(17, 37),
(17, 47),
(17, 49);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `ID` int(11) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`ID`, `image`) VALUES
(1, 'IMG-66422c8791abc3.36157032.png'),
(2, 'IMG-66422c983fa5f4.21987873.png'),
(3, 'IMG-66422ca0512df2.82713277.png'),
(4, 'IMG-66422ca7511759.48862698.png'),
(5, 'IMG-66422cafb03fa5.97089703.png'),
(6, 'IMG-66422cb7ba4fd5.68390627.png'),
(7, 'IMG-66422cbe19dfb6.58041486.png'),
(8, 'IMG-66422cc4e646b0.61228101.png'),
(9, 'IMG-66422ccc4b8cc2.30999589.png'),
(10, 'IMG-66422cd2db9631.33428045.png'),
(11, 'IMG-66422cdb3a7645.57040725.png'),
(12, 'IMG-66422ce2b6bab5.43405655.png'),
(13, 'IMG-66422ceb41bd53.21336309.png'),
(14, 'IMG-66422cf5223c30.32595814.png'),
(15, 'IMG-66422d03397464.94570427.png'),
(16, 'IMG-66422d107a6771.39466395.png'),
(17, 'IMG-66422d182c1489.46726686.png'),
(18, 'IMG-66422d203720a8.63849777.png'),
(19, 'IMG-66422d2aa8e4e0.58097882.png'),
(20, 'IMG-66422d322e4327.96330377.png'),
(21, 'IMG-66422d3b113995.88162819.png'),
(22, 'IMG-66422d458d9212.39321362.png'),
(23, 'IMG-66422d4e493371.11404413.png'),
(24, 'IMG-66422d5991f7d8.77849143.png'),
(25, 'IMG-66422d633da747.36990633.png'),
(26, 'IMG-66422d6b29c800.75806165.png'),
(27, 'IMG-66422d737a9830.05893029.png'),
(28, 'IMG-66422d7bda5a77.95533614.png'),
(29, 'IMG-66422d8450cf74.32516567.png'),
(30, 'IMG-66422d8c029351.70980857.png'),
(31, 'IMG-66422dd24d9ed2.35953230.png'),
(32, 'IMG-66422dda3dfa70.87534699.png'),
(33, 'IMG-66422de2102cd1.20740472.png'),
(34, 'IMG-66422deb584dd5.60610152.png'),
(35, 'IMG-66422df467e567.97984627.png'),
(36, 'IMG-66422dff2b1145.94569154.png'),
(37, 'IMG-66422e0b78dc32.36302282.png'),
(38, 'IMG-66422e2ae336d0.58268781.png'),
(39, 'IMG-66422e46976b30.95080005.png'),
(40, 'IMG-66422e4f7b4a84.34902641.png'),
(41, 'IMG-66422e596afed3.22534244.png'),
(42, 'IMG-66422e653f19c0.29699310.png'),
(43, 'IMG-66422e8b7397f8.18098801.png'),
(44, 'IMG-66422e978ab464.66549960.png'),
(45, 'IMG-66422ea4e370d3.00761913.png'),
(46, 'IMG-66422ec2bd73e2.54389270.png'),
(47, 'IMG-66422ecc56b2e6.63420326.png'),
(48, 'IMG-66422edd2e6372.18147354.png'),
(49, 'IMG-66422ee6731c32.71805520.png'),
(50, 'IMG-66422ef5f18430.24307802.png'),
(51, 'IMG-66422f03d96f74.07723994.png'),
(52, 'IMG-66422f0ecfac72.04596043.png'),
(53, 'IMG-66422f1d259261.27018489.png'),
(54, 'IMG-66422f39a35433.58724463.png'),
(55, 'IMG-66422f67ee2f46.87644700.png'),
(56, 'IMG-66422f72ada6c2.71032049.png'),
(57, 'IMG-66422f7d7c3966.36784837.png'),
(58, 'IMG-66422fd1be23e7.27862922.png'),
(59, 'IMG-66422fdcd0e847.46892721.png'),
(60, 'IMG-6642303e39fcc0.38929943.png'),
(61, 'IMG-6642304fb31cc3.32488233.png'),
(62, 'IMG-6642305c2af980.54122424.png'),
(63, 'IMG-6642306fb9b6f7.49077700.png'),
(64, 'IMG-664230795af1e5.93903942.png'),
(65, 'IMG-664230a7c880d5.97982488.png'),
(66, 'IMG-664230b59cff85.04749732.png'),
(67, 'IMG-664230bff253b9.79055476.png'),
(68, 'IMG-664230c9788b96.02502000.png'),
(69, 'IMG-664230eec8f580.34736022.png'),
(70, 'IMG-664230f7a84755.71393693.png'),
(71, 'IMG-664230ff2c3fc9.98289008.png'),
(72, 'IMG-66423108136815.53203207.png'),
(73, 'IMG-66423115593430.37329052.png'),
(74, 'IMG-6642311e58ff60.73081262.png'),
(75, 'IMG-6642312debc8a9.60410033.png'),
(76, 'IMG-66423137001e25.40198869.png'),
(77, 'IMG-664231422676b8.83888477.png'),
(78, 'IMG-6642314ecefe92.42503535.png'),
(79, 'IMG-6642315e877dc6.61847096.png'),
(80, 'IMG-664231675224b6.82393199.png'),
(81, 'IMG-664231720fc3a6.91751179.png'),
(82, 'IMG-66423186babdf5.28432572.png'),
(83, 'IMG-664231949cf5f2.72869785.png'),
(84, 'IMG-6642319e8b4058.08492838.png'),
(85, 'IMG-664231b1becbe7.55987931.png'),
(86, 'IMG-664231bd602837.82596109.png'),
(87, 'IMG-664231cf833744.50915325.png'),
(88, 'IMG-664231e156f247.81217687.png'),
(89, 'IMG-664231ebb9e541.75216460.png'),
(90, 'IMG-664231fa656ea9.85823848.png'),
(91, 'IMG-66423203236b71.09342035.png'),
(92, 'IMG-6642320ae165b9.07424226.png'),
(93, 'IMG-6642321359aa14.90535100.png'),
(94, 'IMG-6642321ddd2221.39176665.png'),
(95, 'IMG-664232284e2bd4.17777661.png'),
(96, 'IMG-66423235166ef3.03433718.png'),
(97, 'IMG-6642323db94215.94691061.png'),
(98, 'IMG-66423246d3b4e6.67221997.png'),
(99, 'IMG-6642324f4fe755.75408783.png'),
(100, 'IMG-664232578a5676.88344208.png'),
(101, 'IMG-6642325ee764d3.40603128.png'),
(102, 'IMG-6642327044ac68.98797798.png'),
(103, 'IMG-66423278c23019.55064312.png'),
(104, 'IMG-66423282019f76.02786525.png'),
(105, 'IMG-6642328bf326b9.45719462.png'),
(106, 'IMG-664232958569e7.05888461.png'),
(107, 'IMG-664232a85bc591.25131237.png'),
(108, 'IMG-664232b5aae849.74630437.png'),
(109, 'IMG-664232c4d3e996.02755176.png'),
(110, 'IMG-664232ce5d2ca3.02128785.png'),
(111, 'IMG-664232d8a98229.95347095.png'),
(112, 'IMG-664232e1678276.28864714.png'),
(113, 'IMG-664232e9a01e58.07023448.png'),
(114, 'IMG-664232f27dd037.19112710.png'),
(115, 'IMG-664232fa71d548.17005137.png'),
(116, 'IMG-66423306926086.01064870.png'),
(117, 'IMG-664233164959e8.14393706.png'),
(118, 'IMG-66423320c35486.43490686.png'),
(119, 'IMG-66423328e405e2.66138512.png'),
(120, 'IMG-6642333a371cb8.33592430.png'),
(121, 'IMG-6642334f0246d7.92020188.png'),
(122, 'IMG-66423359af31d7.97268066.png'),
(123, 'IMG-664233627f05d3.33158663.png'),
(124, 'IMG-6642336be69b22.36752243.png'),
(125, 'IMG-6642337399cb64.14533229.png'),
(126, 'IMG-6642337c5b5918.12860986.png'),
(127, 'IMG-66423387d324b7.14243802.png'),
(128, 'IMG-664233a6546166.42924225.png'),
(129, 'IMG-664233b41409e4.00990840.png'),
(130, 'IMG-664233be7aaaf6.64549487.png'),
(131, 'IMG-664233df9ce4c2.23767062.png'),
(132, 'IMG-664233e7b68503.16261227.png'),
(133, 'IMG-664233ef416c55.01221237.png'),
(134, 'IMG-6642340fd9b2a5.26529097.png'),
(135, 'IMG-66423429537a22.83131810.png'),
(136, 'IMG-664234340ac161.51382362.png'),
(137, 'IMG-6642343e12f358.62480718.png'),
(138, 'IMG-664234c1dc3378.85450172.png'),
(139, 'IMG-664234c9be0f19.96109192.png'),
(140, 'IMG-664234d136c0d8.77039490.png'),
(141, 'IMG-664234d9e73112.97869719.png'),
(142, 'IMG-664234e18e7281.69105698.png'),
(143, 'IMG-664234e96dd8b3.71988418.png'),
(144, 'IMG-664234efd35ef9.94910796.png'),
(145, 'IMG-664234f8ea4096.66994746.png'),
(146, 'IMG-66423501a54de2.70356228.png'),
(147, 'IMG-664235093b2069.96718149.png'),
(148, 'IMG-66423511832e18.62709970.png'),
(149, 'IMG-66423519979a93.55789451.png'),
(150, 'IMG-66423521149bb5.68909941.png'),
(151, 'IMG-664235290fa970.77934487.png');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `ID` int(11) NOT NULL,
  `NAME` text NOT NULL,
  `PASSWORD` varchar(100) NOT NULL,
  `EMAIL` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`ID`, `NAME`, `PASSWORD`, `EMAIL`) VALUES
(14, 'Phillip', '$2y$10$jz.9VvmsyyqxX4kNeC6A1es6AbORTR7WXe6/JFhSujjM5MTdGCCc.', 'phillip.christensen@uczen.zsk.poznan.pl'),
(17, 'swords', '$2y$10$sK27oo6sE6YK3kxuvEpIMuAVYdHiIZa8KXUM67ploP0pHauOzALy2', 'phillip@christensen2.pl'),
(18, 'llanovar', '$2y$10$9KQhckcdIVS3Qkqs6yMwTOmfAGKM8ndD9zcO9LyhtycaX1K8F0rQO', 'phillip@christensen.pl');

-- --------------------------------------------------------

--
-- Table structure for table `pokemon`
--

CREATE TABLE `pokemon` (
  `ID` smallint(6) NOT NULL,
  `Pokemon_name` varchar(11) DEFAULT NULL,
  `Primary_type` tinyint(4) DEFAULT NULL,
  `Secondary_type` tinyint(4) DEFAULT NULL,
  `Avg_height` varchar(3) DEFAULT NULL,
  `Avg_weight` varchar(6) DEFAULT NULL,
  `Possible_gender` varchar(1) DEFAULT NULL,
  `Generation` varchar(1) DEFAULT NULL,
  `Description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pokemon`
--

INSERT INTO `pokemon` (`ID`, `Pokemon_name`, `Primary_type`, `Secondary_type`, `Avg_height`, `Avg_weight`, `Possible_gender`, `Generation`, `Description`) VALUES
(1, 'Bulbasaur', 5, 8, '0.7', '15.2', '0', '1', 'It is found in grasslands and forests throughout the Kanto region. However, due to Bulbasaur\'s status as first partner Pokémon, it is hard to come by in the wild and generally found under the ownership of a Trainer. '),
(2, 'Ivysaur', 5, 8, '1', '28.7', '0', '1', 'The weight of the plant prevents Ivysaur from running fast and standing on its hind legs, forcing its legs to grow sturdy. When its flower is ready to bloom, it gives off a distinct, sweet-smelling aroma and starts swelling. '),
(3, 'Venusaur', 5, 8, '2', '220.5', '0', '1', 'Venusaur uses its flower to catch the sun\'s rays to convert them into energy, which causes the flower to become more vibrant. The flower releases a soothing scent that attracts Pokémon and calms emotions. '),
(4, 'Charmander', 2, 0, '0.6', '18.7', '0', '1', 'Charmander can be found in hot, mountainous areas. It has been recently seen living in the Terarium of Blueberry Academy. However, it is found far more often in the ownership of Trainers.'),
(5, 'Charmeleon', 2, 0, '1.1', '41.9', '0', '1', 'Charmeleon has a vicious, hotheaded nature, and will constantly seek out opponents. Strong opponents excite this Pokémon, causing it to spout bluish-white flames that torch its surroundings.'),
(6, 'Charizard', 2, 10, '1.7', '199.5', '0', '1', 'Charizard flies in search of powerful opponents to battle, and its fire will burn hotter as it gains experience. Its fiery breath is capable of melting boulders and massive glaciers, and has been known to accidentally cause forest fires.'),
(7, 'Squirtle', 3, 0, '0.5', '19.8', '0', '1', 'Squirtle\'s shell is a useful tool. It can withdraw into the shell for protection or to sleep. The grooved, rounded shape helps to reduce water resistance, allowing the Pokémon to swim at high speeds.'),
(8, 'Wartortle', 3, 0, '1', '49.6', '0', '1', 'Because they are larger than Squirtle and have a larger shell, Wartortle have a more difficult time walking on land and keeping their balance in the water.'),
(9, 'Blastoise', 3, 0, '1.6', '188.5', '0', '1', 'The powerful cannons on this Pokémon\'s back are capable of producing water blasts that can pierce steel and concrete and can be used for high-speed charges. The speed of Blastoise\'s charges is similar to the force of a rocket.'),
(10, 'Caterpie', 12, 0, '0.3', '6.4', '0', '1', 'Caterpie is easy to capture and grows quickly, making it ideal for new Trainers. As Caterpie grows and develops over time, it will shed its skin many times before finally cocooning itself in thick silk.'),
(11, 'Metapod', 12, 0, '0.7', '21.8', '0', '1', 'Metapod\'s soft body is protected by a hard outer shell as it undergoes metamorphosis. While this shell is said to be as hard as steel, a sudden, powerful impact could cause its liquid innards to pop out, leaving it completely exposed.'),
(12, 'Butterfree', 12, 10, '1.1', '70.5', '0', '1', 'The wings of Butterfree are coated with poisonous scales that easily fall off continuously as it flies. If inhaled, it results in several status conditions. It will defend Caterpie from bird Pokémon using this powder.'),
(13, 'Weedle', 12, 8, '0.3', '7.1', '0', '1', 'Weedle has a conical, two-inch (five centimeter) venomous stinger on its head and a barbed one on its tail. Weedle can retaliate against attackers and those who step on it with its strong toxin.'),
(14, 'Kakuna', 12, 8, '0.6', '22', '0', '1', 'Kakuna remains virtually immobile and waits for evolution, often hanging from tree branches by long strands of silk. When attacked, however, it can extend its poison barbs.'),
(15, 'Beedrill', 12, 8, '1', '65', '0', '1', 'Disturbing one Beedrill will cause the whole colony to attack. It flies at high speed and attacks using the large venomous stingers on its forelegs and abdomen. It will then take the victims of its attacks back to its nest for food.'),
(16, 'Pidgey', 1, 10, '0.3', '4', '0', '1', 'Pidgey has an extremely sharp sense of direction and homing instincts. It can travel straight back to its nest regardless of how far away they might have flown. It is a docile Pokémon and generally prefers to flee from its enemies rather than fight them.'),
(17, 'Pidgeotto', 1, 10, '1.1', '66.1', '0', '1', 'Pidgeotto is a powerful flier capable of carrying prey several miles to its nest. It has amazing vision, which helps it locate preferred prey Pokémon such as Exeggcute and Magikarp.'),
(18, 'Pidgeot', 1, 10, '1.5', '87.1', '0', '1', 'Pidgeot\'s powerful wings are capable of stirring up windstorms in just a few flaps, and it may spread its wings to intimidate enemies. This Pokémon is capable of flying faster than the speed of sound.'),
(19, 'Rattata', 1, 0, '0.3', '7.7', '0', '1', 'Rattata can live wherever it can find food, which it searches for most of the day. Thanks to its sharp fangs, it is able to chew on nearly anything. When it is threatened, Rattata can deliver a powerful bite.'),
(20, 'Raticate', 1, 0, '0.7', '40.8', '0', '1', 'If attacked, Raticate stands up on its hind legs, bares its fangs and shrieks in an intimidating manner at its enemy. It is willing to take on larger foes if provoked enough.'),
(21, 'Spearow', 1, 10, '0.3', '4.4', '0', '1', 'Although inept at other aspects of its flying, such as height and distance, Spearow is still capable of flying quickly to protect its territory. However, it must flap its wings at high speeds to stay aloft.'),
(22, 'Fearow', 1, 10, '1.2', '83.8', '0', '1', 'Fearow has been around mostly unchanged for many years, as a Pokémon resembling it has been seen on ancient murals. Its large wings and stamina allow it to fly for an entire day without landing.'),
(23, 'Ekans', 8, 0, '2', '15.2', '0', '1', 'Ekans lives in grassy savannas and plains, where it moves stealthily through grass. It can also be found in forests and desolate wastelands, where it preys on Eggs from Pidgey and Spearow nests, but will strike other prey from behind.'),
(24, 'Arbok', 8, 0, '3.5', '143.3', '0', '1', 'Arbok is territorial. It lashes out at intruders with long fangs tipped with deadly venom. Vengeful in nature, it will not give up a chase once it targets its prey or an opponent, no matter how far.'),
(25, 'Pikachu', 4, 0, '0.4', '13.2', '0', '1', 'Pikachu charges itself while sleeping overnight, though stress and a lack of sleep can affect this. It can release electric discharges of varying intensity.'),
(26, 'Raichu', 4, 0, '0.8', '66.1', '0', '1', 'Raichu\'s tail is used to gather electricity from the atmosphere, or it can be planted in the ground to search for electricity. It also protects Raichu from its high-voltage power. Raichu can store over 100,000 volts of electricity.'),
(27, 'Sandshrew', 9, 0, '0.6', '26.5', '0', '1', 'Sandshrew spends much of its time hidden underground in deep burrows. It only emerges to lunge and drag in passing Bug-type Pokémon. Sandshrew can quickly curl into a tight ball to protect itself from great falls and opponents.'),
(28, 'Sandslash', 9, 0, '1', '65', '0', '1', 'Sandslash can curl into a large ball, which allows it to roll to attack or escape, protect itself from heatstroke, and guard its belly. Sandslash is also adept at climbing trees and is prone to ambush its enemies from above.'),
(29, 'Nidoran♀', 8, 0, '0.4', '15.4', '1', '1', 'The poisons secreted by the spines and horn are extremely potent, and even a scratch from its horn or a drop of poison from its barbs can be deadly. However, this docile Pokémon only uses its poison when it feels threatened.'),
(30, 'Nidorina', 8, 0, '0.8', '44.1', '1', '1', 'Nidorina is a gentle Pokémon, and it is known to be a caring mother that chews food for its young. It seems to display close family bonds with others of its kind, and becomes nervous when separated.'),
(31, 'Nidoqueen', 8, 9, '1.3', '132.3', '1', '1', 'Nidoqueen can be quite fierce and is very protective of its young. This Pokémon is at its strongest when it is defending its young, and it will try to seal the entrance to its burrow to protect them.'),
(32, 'Nidoran♂', 8, 0, '0.5', '19.8', '2', '1', 'Nidoran♂ constantly listens for the sounds of approaching enemies with its large ears. Said ears have unique muscles that allow them to be moved in any direction, and even the slightest sound does not escape Nidoran♂\'s notice.'),
(33, 'Nidorino', 8, 0, '0.9', '43', '2', '1', 'Nidorino is independent, nervous, and fierce, and it is often described as violent and easily angered. It uses its ears to check its surroundings. If it senses a hostile presence, all the barbs on its back bristle up at once.'),
(34, 'Nidoking', 8, 9, '1.4', '136.7', '2', '1', 'It is said that Nidoking\'s tail is capable of toppling a metal transmission tower. Nidoking uses this tail to smash, constrict, or break the bones of its prey and enemies. The tail can also be swung to create distance between it and its foes before Nidoking charges.'),
(35, 'Clefairy', 18, 0, '0.6', '16.5', '0', '1', 'Clefairy is very shy and rarely shows itself to humans. On the rare occasions that Clefairy comes down from its mountain home, it can be seen dancing underneath the full moon\'s light. The area surrounding their dance is enveloped in a magnetic field.'),
(36, 'Clefable', 18, 0, '1.3', '88.2', '0', '1', 'Clefable is a timid, nocturnal creature that flees when it senses people approaching and is one of the world\'s rarest Pokémon. Its sensitive ears can distinctly hear a pin drop from half a mile to 1,100 yards away.'),
(37, 'Vulpix', 2, 0, '0.6', '21.8', '0', '1', 'Vulpix is capable of manipulating fire to such precision as to create floating wisps of flame. These wisps are sometimes mistaken for ghosts by humans, but Vulpix uses them to assist in catching prey.'),
(38, 'Ninetales', 2, 0, '1.1', '43.9', '0', '1', 'There is a legend that claims Ninetails is the reincarnation of 9 united noble saints. While intelligent enough to easily understand human speech, Ninetales is a very vengeful Pokémon that has been known to curse those who mistreat it.'),
(39, 'Jigglypuff', 1, 18, '0.5', '12.1', '0', '1', 'Jigglypuff can use its eyes to mesmerize opponents. It has a large lung capacity, exceeding most other Pokémon. Once it has an opponent\'s attention, Jigglypuff will inflate its lungs and begin to sing a soothing and mysterious lullaby.'),
(40, 'Wigglytuff', 1, 18, '1', '26.5', '0', '1', 'Its body is soft and rubbery, allowing it to inflate by inhaling. Wigglytuff can inflate itself up to 20 times larger, though it has no limits to how far it can inflate in total. While it is inflated, it can move by bouncing or floating.'),
(41, 'Zubat', 8, 10, '0.8', '16.5', '0', '1', 'Zubat lives in abundance in dark caves, although it has also been known to dwell in forests and under the eaves of old buildings. Due to its habitat, Zubat has evolved to have neither eyes nor nostrils.'),
(42, 'Golbat', 8, 10, '1.6', '121.3', '0', '1', 'Golbat\'s fangs have hollow tubes (similar to straws) specialized for sucking blood. While they are strong enough to pierce thick hide, they are also unexpectedly fragile.'),
(43, 'Oddish', 5, 8, '0.5', '11.9', '0', '1', 'A nocturnal Pokémon, Oddish buries its sensitive body in the ground during the day to avoid the sun and fool predators. If its leaves are pulled in this state, it will respond by shrieking horribly.'),
(44, 'Gloom', 5, 8, '0.8', '19', '0', '1', 'Gloom trickles sticky nectar from its mouth with the appearance and consistency of drool. This can be used as a fertilizer for plants. Both this nectar and the flower on Gloom\'s head release a foul odor strong enough to induce fainting in humans over a kilometer away.'),
(45, 'Vileplume', 5, 8, '1.2', '41', '0', '1', 'Vileplume can shake, flap, or burst its petals into bloom with a bang in order to release clouds of pollen. This pollen is yellow and highly allergenic to humans, and toxic to other Pokémon.'),
(46, 'Paras', 12, 5, '0.3', '11.9', '0', '1', 'Red-and-yellow mushrooms known as tochukaso grow on this Pokémon\'s back. The mushrooms can be removed at any time and grow from spores that are doused on this Pokémon\'s back at birth by the mushroom on its mother\'s back.'),
(47, 'Parasect', 12, 5, '1', '65', '0', '1', 'The insect has been drained of nutrients and is now under the control of the fully-grown tochukaso. Removing the mushroom will cause Parasect to stop moving. It can thrive in dark forests with a suitable amount of humidity for growing fungi.'),
(48, 'Venonat', 12, 8, '1', '66.1', '0', '1', 'Venonat\'s highly developed eyes act as radar units and can shoot powerful beams.  Venonat can be found in dense temperate forests, where it will sleep in the hole of a tree until nightfall.'),
(49, 'Venomoth', 12, 8, '1.5', '27.6', '0', '1', 'Venomoth\'s wings are covered in dust-like scales that vary in color depending on their toxic capability. Dark scales are poisonous, while lighter scales can cause paralysis. These scales are released when Venomoth flutters its wings and leak out poison.'),
(50, 'Diglett', 9, 0, '0.2', '1.8', '0', '1', 'Diglett lives in tunnels and caves under the earth, where it feeds on tree roots and vegetables. It is known to live in burrows left behind by Onix. Some farmers welcome Diglett because it tills their fields and its droppings enrich the soil.'),
(51, 'Dugtrio', 9, 0, '0.7', '73.4', '0', '1', 'Dugtrio can tunnel under the earth at 60 mph (100 km/h) to a depth of 60 miles (100 kilometers), triggering tremors and earthquakes. It is capable of burrowing endlessly. Dugtrio lives in tunnels and caves under the earth.'),
(52, 'Meowth', 1, 0, '0.4', '9.3', '0', '1', 'Meowth is attracted to round and shiny objects and has the unique ability to produce coins using its signature move, Pay Day. Meowth and its evolved forms are the only known Pokémon capable of learning the move Pay Day by leveling up.'),
(53, 'Persian', 1, 0, '1', '70.5', '0', '1', 'Persian normally lives in towns and cities. Although popular for its elegance, it is extremely difficult to raise as a pet due to its fickle and temperamental personality. It will scratch anyone.'),
(54, 'Psyduck', 3, 0, '0.8', '43.2', '0', '1', 'Psyduck is constantly stunned by its headache and is unable to think very clearly. It usually stands immobile, trying to calm its headache. However, when its headache becomes too severe, Psyduck releases tension in the form of strong psychic powers.'),
(55, 'Golduck', 3, 0, '1.7', '168.9', '0', '1', 'Golduck is a fast swimmer, capable of out-swimming even the most athletic of humans because of its webbed appendages. Even rough seas do not hamper this Pokémon\'s swimming abilities.'),
(56, 'Mankey', 7, 0, '0.5', '61.7', '0', '1', 'Mankey specializes in physical fighting and is very aggressive and short-tempered. When angry, it begins shaking and its breathing turns rough. Its rage peaks quickly, preventing its victim from being able to flee.'),
(57, 'Primeape', 7, 0, '1', '70.5', '0', '1', 'Primeape is easily angered; even the slightest glance of eye contact will make it furious. When it becomes enraged, its blood circulation is boosted. This makes its muscles stronger, but at the cost of some of its intelligence.'),
(58, 'Growlithe', 2, 0, '0.7', '41.9', '0', '1', 'Growlithe is a friendly and loyal Pokémon that will fearlessly defend its Trainer and territory from harm, even against larger, stronger enemies. In particular, it has been known to fight with Rockruff over territory.'),
(59, 'Arcanine', 2, 0, '1.9', '341.7', '0', '1', 'Arcanine is a fiercely brave and loyal Pokémon. It is capable of running 9977 km in 24 hours with a speed and grace reminiscent of flight. Arcanine has long been admired for its beauty and speed, and anyone who hears its bark will grovel before it.'),
(60, 'Poliwag', 3, 0, '0.6', '27.3', '0', '1', 'Poliwag has newly developed legs that are poor at walking and no arms. It has a long, thin tail surrounded by a light-blue, semitransparent fin. Its tail makes it a powerful swimmer. It loves to waddle on land despite the dangers.'),
(61, 'Poliwhirl', 3, 0, '1', '44.1', '0', '1', 'Even though Poliwhirl is capable of moving on land, it prefers to stay in freshwater ponds and lakes where it has fewer natural enemies. It feeds on both bug and fish Pokémon.'),
(62, 'Poliwrath', 3, 0, '1.3', '119', '0', '1', 'Poliwrath\'s body is almost entirely muscle, and the muscles in its arms and legs never tire. It also has zero percent body-fat. When it swims, it uses all of the muscles in its body and is able to swim vast distances with minimal breathing.'),
(63, 'Abra', 11, 0, '0.8', '43', '0', '1', 'Abra can sense danger through a telepathic radar. When it does, it teleports to a safe location. However, it sometimes becomes panicked if it wakes in an unknown location.'),
(64, 'Kadabra', 11, 0, '1.3', '124.6', '0', '1', 'Kadabra emits alpha waves strong enough to induce headaches, and can even cause clocks to run backward, machines to malfunction, and delicate devices to cease functioning altogether. The waves increase further in strength the more danger Kadabra faces.'),
(65, 'Alakazam', 11, 0, '1.5', '105.8', '0', '1', 'Alakazam is able to use all forms of psychic abilities. The overflow of its psychic powers can cause headaches to those nearby. These powers are used to move its body, as opposed to its weak muscles.'),
(66, 'Machop', 7, 0, '0.7', '43', '0', '1', 'Machop\'s entire body is covered with muscles that will never tire or cramp. With these muscles, it can lift many times its own body weight; it is even capable of hurling up to 100 adults.'),
(67, 'Machoke', 7, 0, '1.5', '155.4', '0', '1', 'Machoke is a Pokémon of immense strength. Its muscles are as hard as steel, and it is capable of lifting extremely heavy objects with only one finger. Machoke\'s body is powerful enough to never get tired.'),
(68, 'Machamp', 7, 0, '1.6', '286.6', '0', '1', 'Machamp are said to know every martial arts style in the world. It punches extremely quickly, throwing 500 punches a second. With only one hand, it can move a mountain. In Generation VII, Strength was its signature move. '),
(69, 'Bellsprout', 5, 8, '0.7', '8.8', '0', '1', 'Nice. \nIt will plant its roots in the ground to replenish water, but it is unable to flee while it is rooted. Bellsprout prefers hot and humid places, thus it lives in temperate forests and jungles.'),
(70, 'Weepinbell', 5, 8, '1', '14.1', '0', '1', 'Weepinbell camouflages itself as a plant in the forest whilst awaiting an unwary victim. When its prey draws near it sprays poison powder to immobilize the target before melting it with its internal acids.'),
(71, 'Victreebell', 5, 8, '1.7', '34.2', '0', '1', 'It can be found in small groups and is territorial. In the manga, Victreebel hoards food, usually small birds and rodents, and collects Leaf Stones to perform evolution rituals at night to help Weepinbell become more Victreebel.'),
(72, 'Tentacool', 3, 8, '0.8', '100.3', '0', '1', 'Tentacool\'s entire body is made of 99% water, and the remaining 1% contains the organ that produces its poison. It absorbs sunlight and refracts it using the water inside its body to convert it into beam energy.'),
(73, 'Tentacruel', 3, 8, '1.6', '121.3', '0', '1', 'Tentacruel\'s primarily light blue body helps it camouflage in the water. It has a total of 80 tentacles, which it can readily extend during hunts to ensnare its prey in a net-like shape before immobilizing it with poison.'),
(74, 'Geodude', 13, 9, '0.4', '44.1', '0', '1', 'Geodude is proud of its sturdy body and will bash against others of its kind in a contest of sorts to prove whose body is harder. It will even go as far as to compare itself with other species such as Roggenrola and Carbink.'),
(75, 'Graveler', 13, 9, '1', '231.5', '0', '1', 'Graveler\'s preferred locomotion is rolling, specifically, because it is a slow walker. It often rolls down mountain paths at high speeds exceeding 60 mph, crushing objects in the way and stopping by running into huge rocks should it build up too much speed.'),
(76, 'Golem', 13, 9, '1.4', '661.4', '0', '1', 'Golem can withdraw its head and limbs into its shell and roll at high speeds. It is dangerous when doing this, as it is unable to see and may crash into or run over anything in its path. '),
(77, 'Ponyta', 2, 0, '1', '66.1', '0', '1', 'Ponyta are relatively lightweight for their size, as they have extraordinary jumping abilities and are capable of leaping tall buildings in a single bound. However, a newborn Ponyta is a weak runner and is actually barely able to stand.'),
(78, 'Rapidash', 2, 0, '1.7', '209.4', '0', '1', 'Rapidash is a very agile Pokémon. It runs at about 150 mph (240 km/h), chasing everything that moves in hopes of racing it. With incredible acceleration, it reaches its top speed in only ten steps.'),
(79, 'Slowpoke', 3, 11, '1.2', '79.4', '0', '1', 'Slowpoke has a notoriously dim intellect and often forgets what it was doing. It takes a long time to respond to outside stimuli. For example, it can take up to five seconds to process pain and can take an entire day to notice when its tail has been bitten.'),
(80, 'Slowbro', 3, 11, '1.6', '173.1', '0', '1', 'Slowbro has lost the capability to feel pain due to the Shellder\'s poison. While typically lazy and unintelligent, Slowbro apparently becomes inspired when the Shellder bites down on its tail. Slowbro is typically rather peaceful and usually prefers not to fight.'),
(81, 'Magnemite', 4, 17, '0.3', '13.2', '0', '1', 'Magnemite can be attracted to anything emitting electricity or a magnetic field, including gadgets such as a Pokétch. It has even been shown to be attracted to electric Pokémon producing such fields.'),
(82, 'Magneton', 4, 17, '1', '132.3', '0', '1', 'Magneton\'s anti-gravitational powers enable it to fly through the air. Being composed of three Magnemite, it is about three times as powerful electrically, though not three times as intelligent.'),
(83, 'Farfetch\'d', 1, 10, '0.8', '33.1', '0', '1', 'Farfetch\'d is always seen carrying a leek stalk or spring onion. It carries this sprig in its wings, but sometimes chooses to hold it in its beak or feet instead. Unable to live without its stick, Farfetch\'d will defend it with its life.'),
(84, 'Doduo', 1, 10, '1.4', '86.4', '0', '1', 'Due to its almost non-existent wings, it cannot fly very well. However, it has developed legs that make it a powerful runner. Reaching speeds of 100 km/h, it energetically strides across the plains leaving large 10 cm deep footprints behind it.'),
(85, 'Dodrio', 1, 10, '1.8', '187.8', '0', '1', 'Along with its three heads, it has three sets of hearts and lungs as well. This allows it to efficiently oxygenate and pump blood throughout its body, thus giving it increased endurance to run vast distances without rest.'),
(86, 'Seel', 3, 0, '1.1', '198.4', '0', '1', 'Seel lives on icebergs in frigid ocean waters. Its warm fur and thick hide allow it to swim in waters as cold as -40° Celsius. It thrives in these cold environments, becoming more active as the temperature drops and tires easily in warm waters.'),
(87, 'Dewgong', 3, 6, '1.7', '264.6', '0', '1', 'It lives on icebergs adrift in frigid ocean waters. It thrives in lower temperatures, becoming increasingly more active the colder the weather. By storing thermal energy within its body, it is completely unharmed by even the most intense freezing weather. '),
(88, 'Grimer', 8, 0, '0.9', '66.1', '0', '1', 'Due to its lack of a solid form, Grimer is capable of squeezing into any space or crevices with relative ease. It uses this to penetrate sewage pipes and feed off of the filthy wastewater inside.'),
(89, 'Muk', 8, 0, '1.2', '66.1', '0', '1', 'Muk is a living biohazard, leaking toxins that instantly kill all plant life it touches. Even it being in close proximity to plants will cause them to wilt and die.'),
(90, 'Shellder', 3, 0, '0.3', '8.8', '0', '1', 'Shellder has an unusually strong appetite for the tail of a Slowpoke and can develop a symbiotic relationship with the Dopey Pokémon. After attaching itself to the Slowpoke\'s tail, the two undergo a metamorphosis and evolve into Slowbro together.'),
(91, 'Cloyster', 3, 6, '1.5', '292.1', '0', '1', 'Cloyster typically only opens its shell to attack an opponent. However, it is fully capable of retaliating against any enemy with its shell tightly closed. With rapid succession, it launches its spikes at the foe, keeping them repelled.'),
(92, 'Gastly', 14, 8, '1.3', '0.2', '0', '1', 'It produces a faint, sweet smell. The toxic gas surrounding the main body can induce fainting and suffocation, and it is capable of enshrouding an enemy of any size. Gastly\'s gaseous form makes it one of the lightest Pokémon in existence. '),
(93, 'Haunter', 14, 8, '1.6', '0.2', '0', '1', 'Haunter hides in very dark places, such as caves, and is afraid of light. If a human or a Pokémon comes near Haunter, it will stalk the victim while floating. Once approached it will then lick the victim with its gaseous tongue, inflicting convulsions in the victim that last until death.'),
(94, 'Gengar', 14, 8, '1.5', '89.3', '0', '1', 'Gengar is very mischievous, and at times, malicious. It enjoys playing practical jokes and casting curses, such as pretending to be one\'s shadow, then behaving erratically. When the quarry notices, the Gengar takes delight in its victim\'s terror.'),
(95, 'Onix', 13, 9, '8.8', '463', '0', '1', 'Onix tunnels under the ground at over 80 km/h, which causes tremors and a terrifying roar that echoes a long way. Hard objects encountered while tunneling are absorbed into its body, which makes it very sturdy. It also consumes the boulders for food.'),
(96, 'Drowzee', 11, 0, '1', '71.4', '0', '1', 'Drowzee is able to put people to sleep and can then sense the person\'s dreams. This is so it knows what kind of dream it would be eating. It has certain preferences for the dreams it eats, and it is known to love fun dreams and become ill from bad dreams.'),
(97, 'Hypno', 11, 0, '1.6', '166.7', '0', '1', 'Hypno is able to put people to sleep by swinging its pendulum. It is known to reside away from humans and on less-traveled roads. While it awaits its prey, it polishes its pendulum. If anyone comes Hypno will hypnotize them and eat their dreams.'),
(98, 'Krabby', 3, 0, '0.4', '14.3', '0', '1', 'In the wild, Krabby lives near the edge of water in both fresh and salt water. Krabby is most commonly found on beaches where it burrows in the sand. It may eat sand to regain nutrients.'),
(99, 'Kingler', 3, 0, '1.3', '132.3', '0', '1', 'Kingler is often found on the edges of water, usually the ocean. Its powerful claws have 10,000 horsepower and are capable of prying open the shells of Shellder and Cloyster.'),
(100, 'Voltorb', 4, 0, '0.5', '22.9', '0', '1', 'Voltorb is found in power plants and other areas with electric fields where it feeds. It was first discovered in the plant where modern Poké Balls were invented. It has a volatile temperament and will explode if agitated or bumped by the slightest contact.'),
(101, 'Electrode', 4, 0, '1.2', '146.8', '0', '1', 'Electrode tends to live in power plants where fresh electricity is being generated, which it consumes. As a result, it often causes blackouts. The more electric energy Electrode consumes, the faster it moves.'),
(102, 'Exeggcute', 5, 11, '0.4', '5.5', '0', '1', 'Exeggcute gather in swarms of six. The heads communicate with each other by using a form of telepathy that only they can understand. Should the number of Exeggcute be reduced to less than six, the remaining Exeggcute will attempt to replace it with a similarly sized Pokémon.'),
(103, 'Exeggutor', 5, 11, '2', '264.6', '0', '1', 'Exeggutor\'s heads think independently and don\'t appear interested in one another, so it makes a lot of noise as each head speaks its mind. They still appear to get along. If all the heads want to go in a different direction, its body is unable to move.'),
(104, 'Cubone', 9, 0, '0.4', '14.3', '0', '1', 'It is called the Lonely Pokémon because of its tendency to keep to itself and avoid social situations, due to the trauma caused by the death of its mother. Cubone will often weep at night in mourning of its mother.'),
(105, 'Marowak', 9, 0, '1', '99.2', '0', '1', 'Upon evolution, Marowak has overcome the grief of its mother\'s passing. Now ferocious and violent, Marowak is an adept combatant that uses the bone it carries as a weapon and a boomerang.'),
(106, 'Hitmonlee', 7, 0, '1.5', '109.8', '2', '1', 'Hitmonlee\'s legs freely contract and stretch similar to a coiled spring (and one particular Hitmonlee can do this with its arms as well). The source of its power comes from the ligaments in its legs that Hitmonlee can fully control.'),
(107, 'Hitmonchan', 7, 0, '1.4', '110.7', '2', '1', 'As its appearance suggests, Hitmonchan specializes in punching. It can throw punches that are too quick to be seen with the naked eye. Its punches are said to be as fast as a bullet train.'),
(108, 'Lickitung', 1, 0, '1.2', '144.4', '0', '1', 'At over 6 feet 6 inches (2 meters), Lickitung\'s tongue is twice as long as its body. Sticky, smelly saliva coats its tongue, which causes a tingling sensation when touched and can cause rashes if not cleaned off.'),
(109, 'Koffing', 8, 0, '0.6', '2.2', '0', '1', 'Koffing creates gases within its body by mixing toxins with garbage, and produces more gas in higher temperatures. These gases are malodorous and cause sniffles, coughs, and teary eyes to those around them.'),
(110, 'Weezing', 8, 0, '1.2', '20.9', '0', '1', 'Each of Weezing\'s heads contains a different toxin. It mixes its gases by inflating one head and deflating the other. When its gases mix, Weezing becomes more toxic and putrid.'),
(111, 'Rhyhorn', 9, 13, '1', '253.5', '0', '1', 'Rhyhorn\'s brain is very small, giving it a one-track mind. When it runs, it forgets why it started and continues until it falls asleep. However, it may recall the reason for demolishing something.'),
(112, 'Rhydon', 9, 13, '1.9', '264.6', '0', '1', 'Rhydon is a physically powerful Pokémon. It is recorded as being able to topple buildings with a sweeping blow of its tail, and its horn can bore through solid rock and shatter diamonds. Rhydon sharpens their horns by clashing them together.'),
(113, 'Chansey', 1, 0, '1.1', '76.3', '1', '1', 'A kindhearted Pokémon, Chansey will share its eggs with injured people and Pokémon. However, Chansey will never share its egg to those with evil hearts. The eggs become more delicious if Chansey is raised with love and care.'),
(114, 'Tangela', 5, 0, '1', '77.2', '0', '1', 'Tangela can ensnare and entangle anything that moves too close to it with its vines. The vines constantly jiggle and sway, unnerving enemies and causing a tickling sensation if ensnared. Tangela\'s vines will snap off easily and painlessly if the target pulls on them, so it can quickly escape.'),
(115, 'Kangaskhan', 1, 0, '2.2', '176.4', '1', '1', 'Kangaskhan is a nurturing Pokémon that protects its young at all costs. It can move really fast, even with the baby in its pouch. The baby leaves the pouch only rarely until it is three years old.'),
(116, 'Horsea', 3, 0, '0.4', '17.6', '0', '1', 'Horsea feeds on insects and moss gathered from rocks. If Horsea senses danger, it sprays water or dense black ink from its mouth at its attacker. It can shoot more precisely at insects flying above the surface of the water.'),
(117, 'Seadra', 3, 0, '1.2', '55.1', '0', '1', 'Seadra can swim in any direction while facing forward by rapidly flapping its fins and tail. It catches its prey by spinning its body to create large whirlpools. When its prey is exhausted, Seadra swallows it whole using its long snout.'),
(118, 'Goldeen', 3, 0, '0.6', '33.1', '0', '1', 'Goldeen has a wild temperament and will use its horn to smash its way to freedom if kept in an aquarium. It competes with others of its kind to determine which has the strongest, thickest horn.'),
(119, 'Seaking', 3, 0, '1.3', '86', '0', '1', 'Seaking uses its powerful horn to bore holes in riverbed boulders in order to shelter its Eggs from water currents. A mated pair take turns patrolling around their new nest for roughly a month and defend it with their lives.'),
(120, 'Staryu', 3, 0, '0.8', '76.1', '3', '1', 'When the sun goes down, Staryu\'s core glows its brightest. Many Staryu will float from the seafloor to the surface and align themselves with stars of the night sky as their core flickers, displaying a connection with the celestial bodies of space.'),
(121, 'Starmie', 3, 11, '1.1', '176.4', '3', '1', 'From its core, Starmie can emit electrical waves that are powerful enough to reach the furthest parts of the universe. The multi-color glowing of its core is also believed to be a method of communication with other members of its species.'),
(122, 'Mr.Mime', 11, 18, '1.3', '120.2', '0', '1', 'From birth, this Pokémon is an excellent pantomime. As it matures, it gains the ability to solidify air molecules by vibrating its fingertips. This ability allows it to create invisible objects with its gestures. It punishes those who interrupt its act or are not impressed by slapping them.'),
(123, 'Scyther', 12, 10, '1.5', '123.5', '0', '1', 'Scyther is an adept hunter that tears at its prey with its scythes. Thanks to its green coloration, it can camouflage itself well in the grasslands and forests where it lives. Humans rarely encounter wild Scyther in these areas, however.'),
(124, 'Jynx', 6, 11, '1.4', '89.5', '1', '1', 'Jynx has a language that sounds similar to human speech and includes several cry patterns. However, this language has yet to be deciphered. It prefers to communicate by using dance-like movements.'),
(125, 'Electabuzz', 4, 0, '1.1', '66.1', '0', '1', 'In the dark, Electabuzz will glow light blue from the electrical charges running across its body. It is constantly leaking more electricity than it consumes. Bearing near an Electabuzz will cause a human\'s hair to stand on end.'),
(126, 'Magmar', 2, 0, '1.3', '98.1', '0', '1', 'Magmar\'s body temperature is nearly 1,200° Celsius, giving its body an orange glow. Because it hates cold places, this Pokémon typically resides in and around active volcanoes where it is born from.'),
(127, 'Pinsir', 12, 0, '1.5', '121.3', '0', '1', 'Pinsir can use its pincers to crush, toss, bludgeon, or tear opponents; lift things twice its weight; and shatter logs. Captured prey is kept in place by the piercing thorns and sheer strength of Pinsir\'s horns and will not be released until they are torn in half.'),
(128, 'Tauros', 1, 0, '1.4', '194.9', '2', '1', 'Tauros is a violent, rowdy Pokémon that whips itself into a frenzy using its three tails. It serves as a warning to others that Tauros is about to charge with astonishing speed.'),
(129, 'Magikarp', 3, 0, '0.9', '22', '0', '1', 'Magikarp is found in many bodies of water, such as lakes, rivers, and ponds. However, due to its weak swimming ability, it usually lives downstream of the water\'s flow. In Generation I, Splash was its signature move.'),
(130, 'Gyarados', 3, 10, '6.5', '518.1', '0', '1', 'The process of evolution causes a change in its brain structure that is believed to cause its violent nature. Gyarados\'s fangs can crush stones and its scales are harder than steel. Gyarados is feared for its fierce temper and wanton destructive tendencies since ancient times.'),
(131, 'Lapras', 3, 6, '2.5', '485', '0', '1', 'Lapras is a gentle, helpful Pokémon that enjoys ferrying people across bodies of water. In the past, its docility made it an easy target for hunters, and it was driven to near extinction.'),
(132, 'Ditto', 1, 0, '0.3', '8.8', '3', '1', 'Ditto bears a variety of unusual and often entirely unique traits that set it apart from every other Pokémon. It is capable of transforming into an exact replica of any physical object or living creature, including its form and abilities.'),
(133, 'Eevee', 1, 0, '0.3', '14.3', '0', '1', 'Eevee is rarely found in the wild and is mostly only found in cities and towns. It is said to have an irregularly shaped genetic structure that is easily influenced by its environment. This allows it to adapt to a variety of habitats by evolving.'),
(134, 'Vaporeon', 3, 0, '1', '63.9', '0', '1', 'Hey guys, did you know that in terms of male human and female Pokémon breeding, Vaporeon is the most compatible Pokémon for humans? Not only are they in the field egg group, which is mostly comprised of mammals, Vaporeon are an average of 3\"03\' tall and 63.9 pounds. (...)'),
(135, 'Jolteon', 4, 0, '0.8', '54', '0', '1', 'Jolteon creates electricity using an organ in its lungs, which causes crackling noises as it exhales. It can also generate low-level electricity in its cells.'),
(136, 'Flareon', 2, 0, '0.9', '55.1', '0', '1', 'Flareon\'s body temperature is caused by its internal flame sac, and rises when it is excited. If its body gets too hot, it will fluff out the fur on its collar to cool down. '),
(137, 'Porygon', 1, 0, '0.8', '80.5', '3', '1', 'Due to its man-made origins, Porygon does not need to breathe or eat, though it can still accept food if given. It has the ability to convert its body into digital data, allowing it to travel through cyberspace. Recently, it has become more helpful inside cyberspace by searching for any suspicious data that exists.'),
(138, 'Omanyte', 13, 3, '0.4', '16.5', '0', '1', 'Omanyte is considered extinct, although it can be revived from Fossils. Its fossils have been excavated in areas that were once oceans long ago. Omanyte regulated its buoyancy by storing and releasing air within its shell and controlled direction by twisting its tentacles.'),
(139, 'Omastar', 13, 3, '1', '77.2', '0', '1', 'It is believed that Omastar\'s extinction was a consequence of the increasingly heavy weight of its shell that affected its mobility, including its hunting. Omastar swam the seas in search of prey, including prehistoric Shellder.'),
(140, 'Kabuto', 13, 3, '0.5', '25.4', '0', '1', 'Kabuto is a small arthropod Pokémon resembling a horseshoe crab. It is mostly flat with a protective, brown shell covering its body. There are two small, black eyes on top of its shell, which it uses for sight when it hides on the ocean floor.'),
(141, 'Kabutops', 13, 3, '1.3', '89.3', '0', '1', 'Before it went extinct, Kabutops was in the process of evolving into a land dweller as evident by changes in its gills and legs. This change is thought to be due to its prey moving onto land as well.'),
(142, 'Aerodactyl', 13, 10, '1.8', '130.1', '0', '1', 'Aerodactyl\'s serrated saw-like fangs and ferocious attitude were very imposing in its time. Its fangs can rip out throats and tear through the skin of any Pokémon to pieces, even Steel-type Pokémon.'),
(143, 'Snorlax', 1, 0, '2.1', '1014.1', '0', '1', 'Snorlax is often found in mountains and forests. It wakes up only to eat, requiring 400 kg of food per day before returning to its slumber, although it can also eat while it is resting. Snorlax can even handle thorny plants or Muk\'s poison.'),
(144, 'Articuno', 6, 10, '1.7', '122.1', '3', '1', 'Articuno has the power to control ice at will. When Articuno flaps its wings, it can chill the moisture in the air around it, making snow fall. According to legend, it appears before doomed travelers lost in icy regions. '),
(145, 'Zapdos', 4, 10, '1.6', '116', '3', '1', 'When Zapdos flaps its glittering wings, it releases electricity that can potentially cause thunderstorms. Zapdos reportedly appears only during thunderstorms and gains power when struck by lightning. '),
(146, 'Moltres', 2, 10, '2', '132.3', '3', '1', 'Moltres sheds embers with every flap of its wings, creating a brilliant flash of flames. By dipping itself into the magma of an active volcano, this Pokémon can heal itself.'),
(147, 'Dratini', 15, 0, '1.8', '7.3', '0', '1', 'Dratini\'s life energy is constantly building so it is always growing, and can reach lengths of over 2 meters. The shed skin can be tanned and used to create luxury boots.'),
(148, 'Dragonair', 15, 0, '4', '36.4', '0', '1', 'Dragonair hosts a large amount of energy within its body, which it can discharge through the crystals on its neck and tail. This causes its body to brighten and give off a different aura that changes the weather in its vicinity.'),
(149, 'Dragonite', 15, 10, '2.2', '463', '0', '1', 'Despite its bulky build, Dragonite is capable of flying faster than the speed of sound, being able to circle the globe in sixteen hours. A kindhearted Pokémon with human-like intelligence, Dragonite shows signs of altruism.'),
(150, 'Mewtwo', 11, 0, '2', '269', '3', '1', 'After discovering the Mythical Pokémon Mew and gathering some of its DNA, Dr. Fuji used it in his mansion to create Mewtwo, a modified clone of Mew with the goal to making it the most powerful Pokémon of all.'),
(151, 'Mew', 11, 0, '0.4', '8.8', '3', '1', 'According to journals found in Kanto\'s Pokémon Mansion, Dr. Fuji is the one who discovered Mew deep in the jungle and coined its name. With other scientists, he managed to gather some of Mew\'s DNA and used it in his mansion to create a modified clone of it.');

-- --------------------------------------------------------

--
-- Table structure for table `stats`
--

CREATE TABLE `stats` (
  `ID` smallint(6) NOT NULL,
  `HP` tinyint(4) DEFAULT NULL,
  `ATK` tinyint(4) DEFAULT NULL,
  `DEF` tinyint(4) DEFAULT NULL,
  `SATK` tinyint(4) DEFAULT NULL,
  `SDEF` tinyint(4) DEFAULT NULL,
  `SPD` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stats`
--

INSERT INTO `stats` (`ID`, `HP`, `ATK`, `DEF`, `SATK`, `SDEF`, `SPD`) VALUES
(1, 3, 3, 3, 4, 4, 3),
(2, 4, 4, 4, 5, 5, 4),
(3, 5, 5, 5, 6, 6, 5),
(4, 3, 4, 3, 4, 3, 4),
(5, 4, 4, 4, 5, 4, 5),
(6, 5, 5, 5, 7, 5, 6),
(7, 3, 3, 4, 3, 4, 3),
(8, 4, 4, 5, 4, 5, 4),
(9, 5, 5, 6, 5, 7, 5),
(10, 3, 2, 3, 2, 2, 3),
(11, 3, 2, 4, 2, 2, 2),
(12, 4, 3, 3, 6, 5, 5),
(13, 3, 3, 2, 2, 2, 3),
(14, 3, 2, 3, 2, 2, 3),
(15, 4, 6, 3, 3, 5, 5),
(16, 3, 3, 3, 3, 3, 4),
(17, 4, 4, 4, 3, 3, 5),
(18, 5, 5, 5, 5, 5, 6),
(19, 2, 4, 3, 2, 3, 4),
(20, 4, 5, 4, 3, 4, 5),
(21, 3, 4, 2, 2, 2, 5),
(22, 4, 6, 4, 4, 4, 6),
(23, 3, 4, 3, 3, 4, 4),
(24, 4, 6, 5, 4, 5, 5),
(25, 3, 4, 3, 3, 3, 6),
(26, 4, 6, 4, 6, 5, 6),
(27, 3, 5, 5, 2, 2, 3),
(28, 5, 6, 7, 3, 4, 4),
(29, 4, 3, 4, 3, 3, 3),
(30, 5, 4, 4, 4, 4, 4),
(31, 6, 6, 6, 5, 5, 5),
(32, 3, 4, 3, 3, 3, 3),
(33, 4, 5, 4, 4, 4, 4),
(34, 5, 6, 5, 5, 5, 5),
(35, 5, 3, 3, 4, 4, 3),
(36, 6, 5, 5, 6, 6, 4),
(37, 3, 3, 3, 3, 4, 4),
(38, 5, 5, 5, 5, 6, 6),
(39, 7, 3, 2, 3, 2, 2),
(40, 9, 5, 3, 5, 3, 3),
(41, 3, 3, 3, 2, 3, 4),
(42, 5, 5, 5, 4, 5, 6),
(43, 3, 3, 4, 5, 4, 3),
(44, 4, 4, 5, 5, 5, 3),
(45, 5, 5, 5, 7, 6, 3),
(46, 3, 5, 4, 3, 4, 2),
(47, 4, 6, 5, 4, 5, 2),
(48, 4, 4, 3, 3, 4, 3),
(49, 5, 4, 4, 6, 5, 6),
(50, 1, 4, 2, 3, 3, 6),
(51, 3, 6, 3, 3, 5, 8),
(52, 3, 3, 3, 3, 3, 6),
(53, 4, 5, 4, 4, 4, 7),
(54, 3, 4, 3, 4, 3, 4),
(55, 5, 5, 5, 6, 5, 5),
(56, 3, 5, 3, 3, 3, 5),
(57, 4, 7, 4, 4, 5, 6),
(58, 4, 5, 3, 5, 3, 4),
(59, 6, 7, 5, 6, 5, 6),
(60, 3, 3, 3, 3, 3, 6),
(61, 4, 4, 4, 3, 3, 6),
(62, 6, 6, 6, 5, 6, 5),
(63, 2, 2, 1, 7, 4, 6),
(64, 3, 3, 2, 8, 5, 7),
(65, 4, 3, 3, 8, 6, 7),
(66, 5, 5, 3, 3, 3, 3),
(67, 5, 6, 5, 3, 4, 3),
(68, 6, 8, 5, 4, 5, 4),
(69, 3, 5, 3, 5, 2, 3),
(70, 4, 6, 3, 5, 3, 4),
(71, 5, 7, 4, 6, 5, 5),
(72, 3, 3, 3, 3, 6, 5),
(73, 5, 5, 4, 5, 7, 6),
(74, 3, 5, 6, 2, 2, 2),
(75, 4, 6, 7, 3, 3, 3),
(76, 5, 8, 8, 4, 4, 3),
(77, 3, 5, 4, 4, 4, 6),
(78, 4, 6, 5, 5, 5, 7),
(79, 6, 4, 4, 3, 3, 1),
(80, 6, 5, 7, 6, 5, 2),
(81, 2, 3, 5, 6, 4, 3),
(82, 3, 4, 6, 8, 5, 5),
(83, 4, 6, 4, 4, 4, 4),
(84, 3, 5, 3, 3, 3, 5),
(85, 4, 7, 5, 4, 4, 7),
(86, 4, 3, 4, 3, 5, 3),
(87, 6, 5, 5, 5, 6, 5),
(88, 5, 5, 3, 3, 3, 2),
(89, 7, 7, 5, 4, 6, 3),
(90, 2, 4, 6, 3, 2, 3),
(91, 3, 6, 11, 5, 3, 5),
(92, 2, 3, 2, 6, 3, 5),
(93, 3, 3, 3, 7, 4, 6),
(94, 4, 4, 4, 8, 5, 7),
(95, 3, 3, 10, 2, 3, 5),
(96, 4, 3, 3, 3, 6, 3),
(97, 5, 5, 5, 5, 7, 4),
(98, 2, 7, 6, 2, 2, 3),
(99, 4, 8, 7, 3, 3, 5),
(100, 3, 2, 3, 4, 4, 6),
(101, 4, 3, 5, 5, 5, 9),
(102, 4, 3, 5, 4, 3, 3),
(103, 6, 6, 5, 8, 5, 4),
(104, 3, 3, 6, 3, 3, 3),
(105, 4, 5, 7, 3, 5, 3),
(106, 3, 8, 4, 3, 7, 6),
(107, 3, 7, 5, 3, 7, 5),
(108, 6, 4, 5, 4, 5, 2),
(109, 3, 4, 6, 4, 3, 3),
(110, 4, 6, 8, 5, 5, 4),
(111, 5, 5, 6, 2, 2, 2),
(112, 7, 8, 8, 3, 3, 3),
(113, 15, 1, 1, 3, 7, 3),
(114, 4, 4, 7, 6, 3, 4),
(115, 7, 6, 5, 3, 5, 6),
(116, 2, 3, 5, 5, 2, 4),
(117, 4, 4, 6, 6, 3, 5),
(118, 3, 4, 4, 3, 3, 4),
(119, 5, 6, 4, 4, 5, 4),
(120, 2, 3, 4, 5, 4, 5),
(121, 4, 5, 5, 6, 5, 7),
(122, 3, 3, 4, 6, 8, 6),
(123, 5, 7, 5, 4, 5, 7),
(124, 4, 3, 3, 7, 6, 6),
(125, 4, 5, 4, 6, 5, 7),
(126, 4, 6, 4, 6, 5, 6),
(127, 4, 8, 6, 4, 5, 5),
(128, 5, 6, 6, 3, 5, 7),
(129, 2, 1, 4, 1, 2, 5),
(130, 6, 8, 5, 4, 6, 5),
(131, 8, 5, 5, 5, 6, 4),
(132, 3, 3, 3, 3, 3, 3),
(133, 4, 4, 3, 3, 4, 4),
(134, 8, 4, 4, 7, 6, 4),
(135, 4, 4, 4, 7, 6, 8),
(136, 4, 8, 4, 6, 7, 4),
(137, 4, 4, 5, 5, 5, 3),
(138, 3, 3, 6, 6, 4, 3),
(139, 5, 4, 8, 7, 5, 4),
(140, 2, 5, 6, 4, 3, 4),
(141, 4, 7, 7, 4, 5, 5),
(142, 5, 7, 4, 4, 5, 8),
(143, 10, 7, 4, 4, 7, 2),
(144, 6, 5, 6, 6, 8, 5),
(145, 6, 6, 5, 8, 6, 6),
(146, 6, 6, 6, 8, 5, 6),
(147, 3, 4, 3, 3, 3, 3),
(148, 4, 5, 4, 5, 5, 5),
(149, 6, 8, 6, 6, 6, 5),
(150, 7, 7, 6, 10, 6, 8),
(151, 6, 6, 6, 6, 6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `ID` tinyint(4) NOT NULL,
  `Type` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`ID`, `Type`) VALUES
(12, 'Bug'),
(16, 'Dark'),
(15, 'Dragon'),
(4, 'Electric'),
(18, 'Fairy'),
(7, 'Fighting'),
(2, 'Fire'),
(10, 'Flying'),
(14, 'Ghost'),
(5, 'Grass'),
(9, 'Ground'),
(6, 'Ice'),
(0, 'None'),
(1, 'Normal'),
(8, 'Poison'),
(11, 'Psychic'),
(13, 'Rock'),
(17, 'Steel'),
(3, 'Water');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`user_id`,`pokemon_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Primary_type` (`Primary_type`,`Secondary_type`),
  ADD KEY `Secondary_type` (`Secondary_type`);

--
-- Indexes for table `stats`
--
ALTER TABLE `stats`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Type` (`Type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pokemon`
--
ALTER TABLE `pokemon`
  ADD CONSTRAINT `pokemon_ibfk_1` FOREIGN KEY (`Primary_type`) REFERENCES `types` (`ID`),
  ADD CONSTRAINT `pokemon_ibfk_2` FOREIGN KEY (`Secondary_type`) REFERENCES `types` (`ID`),
  ADD CONSTRAINT `pokemon_ibfk_3` FOREIGN KEY (`ID`) REFERENCES `stats` (`ID`);

--
-- Constraints for table `stats`
--
ALTER TABLE `stats`
  ADD CONSTRAINT `stats_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `wwt` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
