-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Creato il: Mag 08, 2018 alle 18:39
-- Versione del server: 5.7.22-0ubuntu0.16.04.1
-- Versione PHP: 7.0.28-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prova_pokemon`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `pokemon_card`
--

CREATE TABLE `pokemon_card` (
  `Cards_ID` int(11) NOT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Type` varchar(120) DEFAULT NULL,
  `Hp` int(11) DEFAULT NULL,
  `Description` varchar(1000) DEFAULT NULL,
  `Length` varchar(120) DEFAULT NULL,
  `Weigth` int(11) DEFAULT NULL,
  `Level` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `pokemon_card`
--

INSERT INTO `pokemon_card` (`Cards_ID`, `Name`, `Type`, `Hp`, `Description`, `Length`, `Weigth`, `Level`) VALUES
(1, 'Alakazam', 'Psychic', 80, 'Psi Pokémon.', '4’11’’', 106, 42),
(2, 'Blastoise', 'Water', 100, 'Shellfish Pokémon.', '5’3’’', 189, 52),
(3, 'Chansey', 'Fairy', 120, 'Egg Pokémon.', '3’7’’', 76, 55),
(4, 'Charizard', 'Fire', 120, 'Flame Pokémon.', '5’7’’', 200, 76),
(5, 'Clefairy', 'Fairy', 40, 'Fairy Pokémon.', '2’0’’', 17, 14),
(6, 'Gyrados', 'Water', 100, 'Atrocious Pokémon.', '21’4’’', 518, 41),
(7, 'Hitmonchan', 'Fighting', 70, 'Punching Pokémon.', '4’7’’', 111, 33),
(8, 'Machamp', 'Fighting', 100, 'Superpower Pokémon.', '5’3’’', 287, 67),
(9, 'Magneton', 'Electric', 60, 'Magnet Pokémon.', '3’3’’', 132, 28),
(10, 'Mewtwo', 'Psychic', 60, 'Genetic Pokémon.', '6’7’’', 269, 53),
(11, 'Nidoking', 'Grass', 90, 'Drill Pokémon.', '4’7’’', 137, 48),
(12, 'Ninetales', 'Fire', 80, 'Fox Pokémon.', '3’7’’', 44, 32),
(13, 'Poliwrath', 'Water', 90, 'Tadpole Pokémon.', '4’3’’', 119, 48),
(14, 'Raichu', 'Electric', 80, 'Mouse Pokémon.', '2’7’’', 66, 40),
(15, 'Venusaur', 'Grass', 100, 'Seed Pokémon.', '6’7’’', 221, 67),
(16, 'Zapdos', 'Electric', 90, 'Electric Pokémon.', '5’3’’', 116, 64),
(17, 'Beedrill', 'Grass', 80, 'Poison bee Pokémon.', '3’3’’', 65, 32),
(18, 'Dragonair', 'Fairy', 80, 'Dragon Pokémon.', '13’1’’', 36, 33),
(19, 'Dugtrio', 'Fighting', 70, 'Mole Pokémon.', '2’4’’', 73, 36),
(20, 'Electabuzz', 'Electric', 70, 'Electric Pokémon.', '3’7’’', 66, 35),
(21, 'Electrode', 'Electric', 80, 'Ball Pokémon', '3’11’’', 147, 40),
(22, 'Pidgeotto', 'Fairy', 60, 'Bird Pokémon.', '3’7’’', 66, 36),
(23, 'Arcanine', 'Fire', 100, 'Legendary Pokémon.', '6’3’’', 342, 45),
(24, 'Charmeleon', 'Fire', 80, 'Flame Pokémon.', '3’7’’', 42, 32),
(25, 'Dewgong', 'Water', 80, 'Sea lion Pokémon', '5’7’’', 265, 42),
(26, 'Dratini', 'Fairy', 40, 'Dragon Pokémon.', '5’11’’', 7, 10),
(27, 'Farfecth’d', 'Fairy', 50, 'Wild duck Pokémon.', '2’7’’', 33, 20),
(28, 'Growlithe', 'Fire', 60, 'Puppy Pokémon.', '2’4’’', 42, 58),
(29, 'Haunter', 'Psychic', 60, 'Gas Pokémon.', '5’3’’', 0, 22),
(30, 'Ivysaur', 'Grass', 60, 'Seed Pokémon.', '3’3’’', 29, 20),
(31, 'Jynx', 'Psychic', 70, 'Human Shape Pokémon.', '4’7’’', 90, 23),
(32, 'Kadabra', 'Psychic', 60, 'Psi Pokémon.', '4’3’’', 125, 38),
(33, 'Kakuna', 'Grass', 80, 'Cocoon Pokémon.', '2’0’’', 22, 23),
(34, 'Machoke', 'Fighting', 80, 'Superpower Pokémon.', '4’11’’', 155, 40),
(35, 'Magikarp', 'Water', 30, 'Fish Pokémon.', '2’11’’', 22, 8),
(36, 'Magmar', 'Fire', 50, 'Spitfire Pokémon.', '4’3’’', 98, 24),
(37, 'Nidorino', 'Grass', 60, 'Poison pin Pokémon.', '2’11’’', 43, 25),
(38, 'Poliwhirl', 'Water', 60, 'Tadpole Pokémon.', '3’4’’', 44, 28),
(39, 'Porygon', 'Fairy', 30, 'Virtual Pokémon.', '2’7’’', 80, 12),
(40, 'Raticate', 'Fairy', 60, 'Rat Pokémon.', '2’4’’', 41, 41),
(41, 'Seel', 'Water', 60, 'Sea lion Pokémon', '3’7’’', 198, 12),
(42, 'Wartortle', 'Water', 70, 'Turtle Pokémon.', '3’3’’', 50, 22),
(43, 'Abra', 'Psychic', 30, 'Psi Pokémon.', '2’11’’', 43, 10),
(44, 'Bulbasaur', 'Grass', 40, 'Seed Pokémon.', '2’4’’', 15, 13),
(45, 'Caterpie', 'Grass', 40, 'Worm Pokémon.', '1’0’’', 6, 13),
(46, 'Charmander', 'Fire', 50, 'Lizard Pokémon.', '2’0’’', 19, 10),
(47, 'Diglett', 'Fighting', 30, 'Male Pokémon.', '0’8’’', 2, 8),
(48, 'Doduo', 'Fairy', 50, 'Twin bird Pokémon.', '4’7’’', 86, 10),
(49, 'Drowzee', 'Psychic', 50, 'Hypnosis Pokémon.', '3’3’’', 71, 12),
(50, 'Gastly', 'Psychic', 30, 'Gas Pokémon.', '4’3’’', 0, 8),
(51, 'Koffing', 'Grass', 50, 'Poison gas Pokémon.', '2’0’’', 2, 13),
(52, 'Machop', 'Fighting', 50, 'Superpower Pokémon.', '2’7’’', 43, 20),
(53, 'Magnemite', 'Electric', 40, 'Magnet Pokémon.', '1’0’’', 13, 13),
(54, 'Metapod', 'Grass', 70, 'Cocoon Pokémon.', '2’4’’', 22, 21),
(55, 'Nidoran', 'Grass', 40, 'Poison pin Pokémon.', '1’4’’', 15, 20),
(56, 'Onix', 'Fighting', 90, 'Rock snake Pokémon.', '28’10’’', 463, 12),
(57, 'Pidgey', 'Fairy', 40, 'Tiny bird Pokémon.', '1’0’’', 4, 8),
(58, 'Pikachu', 'Electric', 40, 'Mole Pokémon.', '1’4’’', 13, 12),
(59, 'Poliwag', 'Water', 40, 'Tadpole Pokémon.', '2’0’’', 27, 13),
(60, 'Ponyta', 'Fire', 40, 'Fire horse Pokémon.', '3’3’’', 66, 10),
(61, 'Rattata', 'Fairy', 30, 'Rat Pokémon.', '1’0’’', 8, 9),
(62, 'Sandshrew', 'Fighting', 40, 'Mouse Pokémon.', '2’0’’', 26, 12),
(63, 'Squirtle', 'Water', 40, 'Tiny turtle Pokémon.', '1’8’’', 20, 8),
(64, 'Starmie', 'Water', 60, 'Mysterious Pokémon.', '3’7’’', 176, 28),
(65, 'Staryu', 'Water', 40, 'Starshape Pokémon.', '2’7’’', 76, 15),
(66, 'Tangela', 'Grass', 50, 'Vine Pokémon.', '3’3’’', 77, 8),
(67, 'Voltorb', 'Electric', 40, 'Ball Pokémon', '1’8’’', 23, 10),
(68, 'Vulpix', 'Fire', 50, 'Fox Pokémon.', '2’0’’', 22, 11),
(69, 'Weedle', 'Grass', 40, 'Hairy bug Pokémon.', '1’0’’', 7, 12),
(70, 'Clefairy Doll', 'TRAINER', 10, 'Play Clefairy Doll as if it were a Basic Pokémon. While in play Clefairy Doll counts as a Pokémon (instead of a Trainer card). Clefairy Doll has no attacks can\'t retreat and can\'t be Asleep Confused Paralyzed or Poisoned. If Clefairy Doll is Knocked Out it doesn\'t count as a Knocked Out Pokémon. At any time during your turn before your attack you may discard Clefairy Doll.', NULL, NULL, NULL),
(71, 'Computer Search', 'TRAINER', NULL, 'Discard 2 of the other cards from your hand in order to search your deck for any card and put it into your hand. Shuffle your deck afterward. ', NULL, NULL, NULL),
(72, 'Devolution Spray', 'TRAINER', NULL, 'Choose 1 of your own Pokémon in play and a Stage of Evolution. Discard all Evolution cards of that Stage or higher attached to that Pokémon. That Pokémon is no longer Asleep, Confused, Paralyzed, Poisoned or anything else that might be the result of an attack (just as if you had evolved it).', NULL, NULL, NULL),
(73, 'Impostor Professor Oak', 'TRAINER', NULL, 'Your opponent shuffles his or her hand into his or her deck then draws 7 cards.', NULL, NULL, NULL),
(74, 'Item Finder', 'TRAINER', NULL, 'Discard 2 of the other cards from your hand in order to put a Trainer card from your discard pile into your hand.', NULL, NULL, NULL),
(75, 'Lass', 'TRAINER', NULL, 'You and your opponent show each other your hands, then shuffle all the Trainer cards from your hands into your decks.', NULL, NULL, NULL),
(76, 'Pokémon Bredder', 'TRAINER', NULL, 'Put a Stage 2 Eolution card from your hand on the matching Basic Pokémon. You can only play this card when you would be allowed to evolve that Pokémon anyway.', NULL, NULL, NULL),
(77, 'Pokémon Trader', 'TRAINER', NULL, 'Trade 1 of the Basic Pokémon or Evolution cards in your hand for 1 of the Basic Pokémon or Evolution cards from your deck. Show both cards to your opponent. Shuffle your deck afterward.', NULL, NULL, NULL),
(78, 'Scoop up', 'TRAINER', NULL, 'Choose 1 of your own Pokémon in play and return its Basic Pokémon card to your hand. (Discard all cards attached to that card.)', NULL, NULL, NULL),
(79, 'Super energy removal', 'TRAINER', NULL, 'Discard 1 Energy card attached to 1 of your own Pokémon in order to choose 1 of your opponent’s Pokémon and up to 2 Energy cards attached to it. Discard those Energy cards.', NULL, NULL, NULL),
(80, 'Defender', 'TRAINER', NULL, 'Attach Defender to 1 of your Pokémon. At the end of your opponent’s next turn, discard Defender. Damage done to that Pokémon by attacks is reduced by 20 (after applying Weakness and Resistance).', NULL, NULL, NULL),
(81, 'Energy retrival', 'TRAINER', NULL, 'Trade 1 of the other cards in your hand for up to 2 basic Energy cards from your discard pile.', NULL, NULL, NULL),
(82, 'Full heal', 'TRAINER', NULL, 'You active Pokémon is no longer Asleep, Confused, Paralyzed, or Poisoned.', NULL, NULL, NULL),
(83, 'Maintenance', 'TRAINER', NULL, 'Shuffle 2 of the other from your hand into your deck in order to draw a card.', NULL, NULL, NULL),
(84, 'PlusPower', 'TRAINER', NULL, 'Attach PlusPower to your active Pokémon. At the end of your turn, discard PlusPower. If this Pokémon’s attack does damage to the Defending Pokémon (after applying Weakness and Resistance), the attack does 10 more damage to the Defending Pokémon.', NULL, NULL, NULL),
(85, 'Pokémon center', 'TRAINER', NULL, 'Remove all damage counters from all of your own Pokémon with damage counters on them, then discard all Energy cards attached to those Pokémon.', NULL, NULL, NULL),
(86, 'Pokémon flute', 'TRAINER', NULL, 'Choose 1 Basic Pokémon card from your opponent’s discard pile and put it onto his or her Bench. (You can’t play Pokémon Fluite if your opponent’s Bench is full.)', NULL, NULL, NULL),
(87, 'Pokédex', 'TRAINER', NULL, 'Look at up to 5 cards from the top of your deck and rearrange them as you like.', NULL, NULL, NULL),
(88, 'Professor Oak', 'TRAINER', NULL, 'Discard your hand, then draw 7 cards.', NULL, NULL, NULL),
(89, 'Revive', 'TRAINER', NULL, 'Put 1 Basic Pokémon card from your discard pile onto your Bench. Put damage counters on thtat Pokémon equal to half its HP (rounded down to the nearest 10). (You can’t play Revive if your Bench is full.)', NULL, NULL, NULL),
(90, 'Super potion', 'TRAINER', NULL, 'Discard 1 Energy card attached to 1 of your own Pokémon in order to remove up to 4 damage counters from that Pokémon.', NULL, NULL, NULL),
(91, 'Bill', 'TRAINER', NULL, 'Draw 2 cards.', NULL, NULL, NULL),
(92, 'Energy removal', 'TRAINER', NULL, 'Choose 1 Energy card attached to 1 of your opponent’s Pokémon and discard it.', NULL, NULL, NULL),
(93, 'Gust of wind', 'TRAINER', NULL, 'Choose 1 of your opponent’s Benched Pokémon and switch it with his or her Active Pokémon.', NULL, NULL, NULL),
(94, 'Potion', 'TRAINER', NULL, 'Remove up to 2 damage counters from 1 of your Pokémon.', NULL, NULL, NULL),
(95, 'Switch', 'TRAINER', NULL, 'Switch 1 of your own Benched Pokémon with your active Pokémon.', NULL, NULL, NULL),
(96, 'Fairy', 'ENERGY', NULL, 'Double colorless energy', NULL, NULL, NULL),
(97, 'Fighting', 'ENERGY', NULL, NULL, NULL, NULL, NULL),
(98, 'Fire', 'ENERGY', NULL, NULL, NULL, NULL, NULL),
(99, 'Grass', 'ENERGY', NULL, NULL, NULL, NULL, NULL),
(100, 'Elecric', 'ENERGY', NULL, NULL, NULL, NULL, NULL),
(101, 'Psychic', 'ENERGY', NULL, NULL, NULL, NULL, NULL),
(102, 'Water', 'ENERGY', NULL, NULL, NULL, NULL, NULL);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `pokemon_card`
--
ALTER TABLE `pokemon_card`
  ADD PRIMARY KEY (`Cards_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
