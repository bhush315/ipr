-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 28, 2024 at 10:21 AM
-- Server version: 8.0.35
-- PHP Version: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `walmashi_diversed`
--

-- --------------------------------------------------------

--
-- Table structure for table `copytrader`
--

CREATE TABLE `copytrader` (
  `id` int NOT NULL,
  `userid` int DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `risk_score` varchar(100) NOT NULL,
  `commision` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `equity` varchar(100) NOT NULL,
  `rank` varchar(50) NOT NULL,
  `strategy_desc` text NOT NULL,
  `gain` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `currency` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `copytrader`
--

INSERT INTO `copytrader` (`id`, `userid`, `name`, `photo`, `risk_score`, `commision`, `status`, `equity`, `rank`, `strategy_desc`, `gain`, `profit`, `currency`) VALUES
(1, 0, '0', '0', '100', '42', 'Active', 'Asperiores earum ali', 'Top', '', 'Id est ut totam of', 'Repudiandae ad neces', 'USD'),
(9, 2376, 'Zachary Green', '6.jpg', '5', '20', 'Active', '500', 'High achiever', '\r\n													\r\n							TOP NOTCH TRADES\r\n													\r\n													', '100', '100000', 'USD'),
(11, 4879, 'Julia katic', 'JULIA TRADER.jpg', '2', '20', 'Active', '2000000', 'High achiever', '\r\n													\r\nTOP NOTCH TRADER\r\n													\r\nBEST IN WHAT I DO \r\nWIN RATE OF 98%\r\nCOMMISION 20%\r\nPROFIT $100K\r\n													\r\n													\r\n													\r\n													\r\n													\r\n													\r\n													', '500', '100000', 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `id` int NOT NULL,
  `provider_name` varchar(100) NOT NULL,
  `currency` varchar(50) NOT NULL,
  `rate` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `min_amount` varchar(100) NOT NULL,
  `max_amount` varchar(100) NOT NULL,
  `fixed_fee` varchar(50) NOT NULL,
  `percentage` varchar(255) NOT NULL,
  `instruction` text NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `deposit`
--

INSERT INTO `deposit` (`id`, `provider_name`, `currency`, `rate`, `photo`, `min_amount`, `max_amount`, `fixed_fee`, `percentage`, `instruction`, `status`) VALUES
(9, 'XRP', '$', '34', 'super.png', '50', '500', '5', 'Contact support for address', 'Copy wallet or contact \r\nsupport@admin.com', 'Active'),
(10, 'BTC', 'USD', '0', 'btc.png', '100', '1000000', '0', 'Contact support for address', 'Send only BTC to this deposit address. Sending any other currency or token to this address may result in the loss of your deposit', 'Active'),
(13, 'ETH', 'USD', '0', 'eth.png', '100', '1000000', '0', 'Contact support for address', 'Send only Ethereum (ERC20) to this address. Sending any other currency or token to this address may result in the loss of your deposit', 'Active'),
(14, 'XRP', 'USD', '0', 'xrp.png', '100', '1000000', '0', 'Contact support for address', 'Send only XRP (XRP) to this address.Sending any other currency or token to this address may result in the loss of your deposit', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `date`, `image`) VALUES
(1, 'Is It Too Late to Buy Mina Protocol? MINA Price Jumps 8% as New Mining Protocol Receives $7 Million in Funding', 'While the MINA price has been rallying since December 19, Bitcoin Minetrix presale has surpassed expectations, reaching $7.1 million in crypto presale round. Image by Kerem Goktug Kaya, DALL-E 3.\r\nMina Foundation‘s MINA has been performing well since December 19, which can be attributed to a series of fundamental developments that have bolstered investor confidence and highlighted the cryptocurrency’s potential for growth.\r\n\r\nOne of the key developments has been the appointment of Kurt Hemecker as the new CEO of the Mina Foundation, announced on the same date. Hemecker brings a wealth of experience as a business development specialist in the FinTech sector. His leadership is expected to drive major strategic growth for MINA, leveraging his expertise and insights in the field.', '2024-01-05', '../dashboard/newscover/1704143248-cloud-mining-bitcoin-minetrix-min-1536x878.png'),
(2, 'Bitcoin Price Prediction as ETF Decision Approaches – Buy the Rumors, Sell the News?', 'In the ever-shifting landscape of cryptocurrency, Bitcoin (BTC/USD) stands at a crucial juncture, currently trading at $42,279 with a modest increase of 0.28% on Monday.\r\n\r\nAs the market eagerly anticipates the decision on the debut of a Bitcoin ETF, a development that might initially seem underwhelming yet holds the potential to attract trillions of dollars in the long run.\r\n\r\nThis anticipation comes at a time when Bitcoin is experiencing soaring onchain fees, leading to a record mining revenue of $1.51 billion in December 2023.\r\n\r\nThe sentiment of ‘buy the rumors, sell the news’ looms over Bitcoin’s future, suggesting that the outcome of the ETF decision could significantly sway its market trajectory.', '2024-01-05', '../dashboard/newscover/1704091582-1-1.jpg'),
(4, 'Frenzy for 1,000x Gains Drives Surge in New Tokens on Solana', 'The Solana blockchain network has experienced an unprecedented influx of new tokens this month, surpassing any previous records by a significant margin. \r\n\r\nAccording to data from Solscan, over the last two weeks alone, a staggering 72,202 new tokens have been minted on Solana using the SPL token standard. \r\n\r\nThis number is more than 71 times the amount of tokens created during a comparable period in October.\r\n\r\nThe daily statistics for new token creation on Solana are now consistently four times higher than ever before since the network’s launch in 2020. \r\n\r\nWhile the Solana ecosystem has witnessed a remarkable revival in the past two months, driving up the value of SOL, Solana NFTs, Solana meme coins, and even demand for the Solana smartphone, the sudden surge in token creation cannot be solely attributed to organic growth in network activity.\r\n\r\nBlockchain investigator and Sol Incinerator project lead, known as Slorg, raised concerns about the exponential rise in token creation. \r\n\r\n', '2024-01-05', '../dashboard/newscover/1704035175-1702102987-1701614583-f584725c05.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `nft`
--

CREATE TABLE `nft` (
  `id` int NOT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `contracts` varchar(150) NOT NULL,
  `token_standard` varchar(50) NOT NULL,
  `token_id` varchar(50) NOT NULL,
  `blockchain` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `nft`
--

INSERT INTO `nft` (`id`, `amount`, `title`, `content`, `image`, `contracts`, `token_standard`, `token_id`, `blockchain`, `type`) VALUES
(2, 430.00, 'APE BOARD', 'This is an NFT', '../dashboard/nftcover/3.png', '0x010aB49A79E05319EE763633C4E6aD4A5272B546', 'ERC20', '900989', 'ETH', 'Active'),
(3, 1278.00, 'RAMBO FPY', 'This is an NFT', '../dashboard/nftcover/2.png', '0x010aB49A79E05319EE763633C4E6aD4A5272B546', 'ERC20', '581590', 'ETH', 'Active'),
(4, 7500.00, 'QASA', 'This is an NFT', '../dashboard/nftcover/1.png', '0x010aB49A79E05319EE763633C4E6aD4A5272B546', 'ERC20', '830496', 'ETH', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `nfthistory`
--

CREATE TABLE `nfthistory` (
  `id` int NOT NULL,
  `userid` int NOT NULL,
  `method` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `nfthistory`
--

INSERT INTO `nfthistory` (`id`, `userid`, `method`, `date`, `type`, `amount`, `status`, `action`, `title`, `image`) VALUES
(1, 106, '', 'May/Tue/2024', 'NFT', '430.00', 'Pending', 'ORDER', '', ''),
(2, 106, 'ETH', '2024-05-21 17:12:19', 'NFT', '1278.00', 'Pending', 'ORDER', 'RAMBO FPY', '../dashboard/nftcover/2.png'),
(3, 106, 'ETH', '2024-05-21 10:44:41', 'NFT', '430.00', 'Pending', 'ORDER', 'APE BOARD', '../dashboard/nftcover/3.png');

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `id` int NOT NULL,
  `plan_name` varchar(100) NOT NULL,
  `plan_des` text NOT NULL,
  `min_ins` varchar(100) NOT NULL,
  `max_ins` varchar(100) NOT NULL,
  `days_duration` varchar(100) NOT NULL,
  `daily_interest_rate` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Inactive',
  `userid` int DEFAULT '0',
  `image` varchar(50) NOT NULL DEFAULT 'pols.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`id`, `plan_name`, `plan_des`, `min_ins`, `max_ins`, `days_duration`, `daily_interest_rate`, `status`, `userid`, `image`) VALUES
(2, '89uiUIuiUI', 'ui', 'ui', 'iu', 'uj', '', 'Active', NULL, 'pols.png'),
(915, 'BOT', 'Basic Plan', '100', '5000', '5', '21', 'Active', 0, 'pols.png'),
(916, 'BASIC', 'Basic Plan For Beginners', '200', '10000', '7', '10', 'Active', 0, 'pols.png'),
(917, 'PRO', 'Thunderstorm', '1000', '25000', '10', '250', 'Active', 0, 'pols.png'),
(918, 'VVIP', 'Space Ship', '5000', '500000', '21', '10000', 'Active', 0, 'pols.png');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int NOT NULL,
  `live` text NOT NULL,
  `email_notification` varchar(100) NOT NULL,
  `sitename` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `site_desc` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `live`, `email_notification`, `sitename`, `title`, `site_desc`, `logo`) VALUES
(700, '', 'support@diversifiedinvestmente.com', 'Diversifiedinvestmente', 'Diversifiedinvestmente- Crypto Options and Futures Exchange for Bitcoin, Ethereum, Solana and more.', 'Diversifiedinvestmente- Crypto Options and Futures Exchange for Bitcoin, Ethereum, Solana and more.', 'mlogo.png');

-- --------------------------------------------------------

--
-- Table structure for table `spot`
--

CREATE TABLE `spot` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `last_price` varchar(100) NOT NULL,
  `volume` varchar(100) NOT NULL,
  `changehours` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `spot`
--

INSERT INTO `spot` (`id`, `name`, `photo`, `last_price`, `volume`, `changehours`, `type`) VALUES
(1, 'USDT', 'ada.png', '216', '41', '12', ''),
(22, 'ADA', 'avax.png', '614', '6', '21', ''),
(23, 'BTC', 'btc.png', '704', '54', '49', ''),
(24, 'XLM', 'xlm.png', '262', '59', '38', ''),
(25, 'SHB', 'shib.png', '721', '60', '79', ''),
(26, 'CHZ', 'chz.png', '585', '83', '70', ''),
(27, 'ENS', 'ens.png', '287', '38', '26', '');

-- --------------------------------------------------------

--
-- Table structure for table `staking`
--

CREATE TABLE `staking` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `symbol` varchar(100) NOT NULL,
  `last_price` varchar(100) NOT NULL,
  `volume` varchar(100) NOT NULL,
  `userid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trade`
--

CREATE TABLE `trade` (
  `id` int NOT NULL,
  `trade_result` varchar(100) DEFAULT NULL,
  `sl` varchar(50) NOT NULL,
  `tp` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `volume` varchar(50) NOT NULL,
  `symbol` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `expired_time` varchar(50) NOT NULL DEFAULT '0',
  `trade_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `trade`
--

INSERT INTO `trade` (`id`, `trade_result`, `sl`, `tp`, `status`, `volume`, `symbol`, `type`, `expired_time`, `trade_time`, `userid`) VALUES
(29, 'DRAW', '0.1', '0.3', 'Pending', '200', 'XLM', 'Market Execution', 'SELL', '2024-05-20 17:12:21', '106'),
(30, 'WON', '16000', '100099', 'Approved', '20000', 'BTC', 'Market Execution', 'BUY', '2024-05-22 15:36:40', '111');

-- --------------------------------------------------------

--
-- Table structure for table `transactionhistory`
--

CREATE TABLE `transactionhistory` (
  `id` int NOT NULL,
  `status` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `trans_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `trans_id` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `rate` varchar(50) NOT NULL,
  `type` varchar(100) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `address_switch` varchar(100) DEFAULT NULL,
  `bankname_switch` varchar(100) DEFAULT NULL,
  `other` varchar(100) DEFAULT NULL,
  `description_switch` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transactionhistory`
--

INSERT INTO `transactionhistory` (`id`, `status`, `method`, `trans_time`, `trans_id`, `amount`, `rate`, `type`, `userid`, `image`, `address_switch`, `bankname_switch`, `other`, `description_switch`) VALUES
(206, 'Approved', 'APE BOARD', '2024-05-21 13:44:41', '522', '430.00', '0', 'NFT ORDER', '106', '../dashboard/nftcover/3.png', NULL, NULL, NULL, NULL),
(207, 'Pending', 'BTC', '2024-05-22 15:36:40', '749', '20000', '0', 'Market Execution', '111', 'BTC', NULL, NULL, NULL, NULL),
(208, 'Approved', 'BOT', '2024-05-22 15:46:50', '201', '5000', '', 'PLAN', '111', 'pols.png', NULL, NULL, NULL, NULL),
(209, 'Approved', 'BTC', '2024-05-22 15:53:28', '308', '20000', '0', 'TRADE', '111', '', NULL, NULL, NULL, NULL),
(210, 'Approved', 'BTC', '2024-05-22 16:01:24', '436', '358', '0', 'BONUS', '111', '', NULL, NULL, NULL, NULL),
(211, 'Approved', 'BTC', '2024-05-24 18:28:45', '635', '4578', '0', 'PLAN', '111', '', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `referral` varchar(100) DEFAULT NULL,
  `user_type` varchar(255) NOT NULL DEFAULT 'user',
  `password` char(255) NOT NULL,
  `ausd` decimal(10,2) NOT NULL DEFAULT '0.00',
  `deposit` decimal(10,2) NOT NULL DEFAULT '0.00',
  `profit` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bonus` decimal(10,2) NOT NULL DEFAULT '0.00',
  `referbonus` decimal(10,2) NOT NULL DEFAULT '0.00',
  `withdrawal` decimal(10,2) NOT NULL DEFAULT '0.00',
  `currency` varchar(50) NOT NULL DEFAULT '$',
  `verified` varchar(50) NOT NULL DEFAULT 'Unverified',
  `token_code` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL DEFAULT 'user.png',
  `userdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bank_name` varchar(100) DEFAULT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `account_no` varchar(100) DEFAULT NULL,
  `swiftcode` varchar(100) DEFAULT NULL,
  `btc_address` varchar(200) DEFAULT NULL,
  `eth_address` varchar(200) DEFAULT NULL,
  `ltc_address` varchar(200) DEFAULT NULL,
  `emailcode` varchar(11) DEFAULT NULL,
  `kyc` varchar(50) NOT NULL DEFAULT 'Unverified',
  `frontimage` varchar(100) DEFAULT NULL,
  `backimage` varchar(100) DEFAULT NULL,
  `copytrader` varchar(100) DEFAULT NULL,
  `plan` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `fullname`, `email`, `phone`, `country`, `address`, `dob`, `referral`, `user_type`, `password`, `ausd`, `deposit`, `profit`, `bonus`, `referbonus`, `withdrawal`, `currency`, `verified`, `token_code`, `photo`, `userdate`, `bank_name`, `account_name`, `account_no`, `swiftcode`, `btc_address`, `eth_address`, `ltc_address`, `emailcode`, `kyc`, `frontimage`, `backimage`, `copytrader`, `plan`) VALUES
(1, 'divaadmin', 'Aquila Cook', 'qyzopoxuci@mailinator.com', '', 'United States', NULL, NULL, '', 'admin', 'QPORT@876', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '$', 'verified', '6855281008', 'user.png', '2024-04-13 10:54:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'verified', NULL, NULL, NULL, NULL),
(111, 'Clifford', 'Clifford', 'cliffordegba@gmail.com', '5035920190', '', NULL, NULL, '', 'user', 'Egb@2005', 49286.00, 23000.00, 20000.00, 0.00, 0.00, 0.00, '$', 'verified', '8337079375', 'user.png', '2024-05-22 03:05:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'verified', NULL, NULL, NULL, 'BOT');

-- --------------------------------------------------------

--
-- Table structure for table `withdarawal`
--

CREATE TABLE `withdarawal` (
  `id` int NOT NULL,
  `withdarwal_name` varchar(100) NOT NULL,
  `currency` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `min_with` varchar(50) NOT NULL,
  `max_with` varchar(50) NOT NULL,
  `bankname_switch` varchar(50) NOT NULL,
  `address_switch` varchar(50) NOT NULL,
  `acctname_switch` varchar(50) NOT NULL,
  `description_switch` text NOT NULL,
  `acctno_switch` varchar(50) NOT NULL,
  `other` varchar(200) NOT NULL,
  `instruction` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `withdarawal`
--

INSERT INTO `withdarawal` (`id`, `withdarwal_name`, `currency`, `photo`, `status`, `min_with`, `max_with`, `bankname_switch`, `address_switch`, `acctname_switch`, `description_switch`, `acctno_switch`, `other`, `instruction`) VALUES
(1, 'Ae name', 'Et itaque recusandae', 'White-Circle-Logos-500x500.png', 'Active', '', '', 'hidden', 'hidden', 'hidden', 'hidden', 'visible', 'visible', 'Quas dolore odio ess'),
(6, 'BITCOIN', 'USD', 'btc.png', 'Active', '10', '5500000', 'hidden', 'visible', 'hidden', 'hidden', 'hidden', 'visible', '																  																  Enter valid BTC address OR Update your user withdrawal data									  																  																  '),
(8, 'XRP', 'USD', 'xrp.png', 'Active', '10', '5500000', 'hidden', 'hidden', 'hidden', 'hidden', 'hidden', 'visible', '																  																  																  																  																  Others => Withdrawal wallet!!  XRP Larger crypto withdrawals are subjected to stricter security checks, which may take up to 24-48 hours to complete. Thank you for your kind understanding.		 														  																  																  																  																  '),
(9, 'USDT (BNB)', 'USD', 'png-transparent-usdt-cryptocurrencies-icon-thumbnail.png', 'Active', '10', '5500000', 'hidden', 'visible', 'hidden', 'hidden', 'hidden', 'visible', '																  																  																  Enter valid USDT address OR Update your user withdrawal data																  																  																  '),
(10, 'USDT (ETH)', 'USD', 'png-transparent-usdt-cryptocurrencies-icon-thumbnail.png', 'Active', '10', '5500000', 'hidden', 'hidden', 'hidden', 'hidden', 'hidden', 'hidden', '																  Enter valid USDT address OR Update your user withdrawal data																  '),
(11, 'SOL', 'USD', 'solana-sol-logo-12828AD23D-seeklogo.com.png', 'Active', '10', '5500000', 'hidden', 'visible', 'hidden', 'hidden', 'hidden', 'hidden', '																  																  																  Enter valid SOL address OR Update your user withdrawal data																  																  																  '),
(12, 'ETH', 'USD', 'ethereum-eth.svg', 'Active', '10', '5500000', 'hidden', 'hidden', 'hidden', 'hidden', 'hidden', 'hidden', '																  Enter valid ETH address OR Update your user withdrawal data																  ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `copytrader`
--
ALTER TABLE `copytrader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nft`
--
ALTER TABLE `nft`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nfthistory`
--
ALTER TABLE `nfthistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spot`
--
ALTER TABLE `spot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staking`
--
ALTER TABLE `staking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trade`
--
ALTER TABLE `trade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactionhistory`
--
ALTER TABLE `transactionhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdarawal`
--
ALTER TABLE `withdarawal`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `copytrader`
--
ALTER TABLE `copytrader`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `deposit`
--
ALTER TABLE `deposit`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nft`
--
ALTER TABLE `nft`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nfthistory`
--
ALTER TABLE `nfthistory`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=919;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=702;

--
-- AUTO_INCREMENT for table `spot`
--
ALTER TABLE `spot`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `staking`
--
ALTER TABLE `staking`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trade`
--
ALTER TABLE `trade`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `transactionhistory`
--
ALTER TABLE `transactionhistory`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `withdarawal`
--
ALTER TABLE `withdarawal`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
