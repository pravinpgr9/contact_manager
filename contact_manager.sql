-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2025 at 11:00 AM
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
-- Database: `contact_manager`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, 'aa2ed6ea-33d6-448c-821f-a11c17ef0021', 'database', 'default', '{\"uuid\":\"aa2ed6ea-33d6-448c-821f-a11c17ef0021\",\"displayName\":\"App\\\\Jobs\\\\ImportContactsFromXML\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ImportContactsFromXML\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\ImportContactsFromXML\\\":1:{s:11:\\\"\\u0000*\\u0000filePath\\\";s:52:\\\"imports\\/sBzw5LQljSJBeb2THTqhwfxRd4HWklAanKKnNT61.xml\\\";}\"}}', 'Error: Class \"App\\Jobs\\Storage\" not found in C:\\xampp\\htdocs\\contact-manager\\app\\Jobs\\ImportContactsFromXML.php:29\nStack trace:\n#0 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\ImportContactsFromXML->handle()\n#1 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#2 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#3 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#4 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(696): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#5 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(126): Illuminate\\Container\\Container->call(Array)\n#6 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\ImportContactsFromXML))\n#7 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ImportContactsFromXML))\n#8 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(130): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#9 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\ImportContactsFromXML), false)\n#10 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\ImportContactsFromXML))\n#11 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ImportContactsFromXML))\n#12 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(121): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#13 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(69): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\ImportContactsFromXML))\n#14 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#15 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(442): Illuminate\\Queue\\Jobs\\Job->fire()\n#16 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(392): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#17 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(178): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(149): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(132): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#20 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#21 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#22 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#23 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#24 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(696): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#25 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#26 C:\\xampp\\htdocs\\contact-manager\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#27 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\contact-manager\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#29 C:\\xampp\\htdocs\\contact-manager\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\contact-manager\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(198): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\contact-manager\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#34 {main}', '2025-02-16 02:59:29'),
(2, 'fa4345eb-e063-4a78-a262-be3a205a3e36', 'database', 'default', '{\"uuid\":\"fa4345eb-e063-4a78-a262-be3a205a3e36\",\"displayName\":\"App\\\\Jobs\\\\ImportContactsFromXML\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ImportContactsFromXML\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\ImportContactsFromXML\\\":1:{s:11:\\\"\\u0000*\\u0000filePath\\\";s:52:\\\"imports\\/oGQtZJc0ciqvZ1jq8zym9dSu5vTd4oCGwUzRO3Qe.xml\\\";}\"}}', 'Error: Class \"App\\Jobs\\Storage\" not found in C:\\xampp\\htdocs\\contact-manager\\app\\Jobs\\ImportContactsFromXML.php:29\nStack trace:\n#0 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\ImportContactsFromXML->handle()\n#1 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#2 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#3 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#4 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(696): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#5 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(126): Illuminate\\Container\\Container->call(Array)\n#6 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\ImportContactsFromXML))\n#7 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ImportContactsFromXML))\n#8 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(130): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#9 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\ImportContactsFromXML), false)\n#10 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\ImportContactsFromXML))\n#11 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ImportContactsFromXML))\n#12 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(121): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#13 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(69): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\ImportContactsFromXML))\n#14 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#15 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(442): Illuminate\\Queue\\Jobs\\Job->fire()\n#16 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(392): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#17 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(178): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(149): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(132): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#20 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#21 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#22 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#23 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#24 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(696): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#25 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#26 C:\\xampp\\htdocs\\contact-manager\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#27 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\contact-manager\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#29 C:\\xampp\\htdocs\\contact-manager\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\contact-manager\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(198): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\contact-manager\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#34 {main}', '2025-02-16 03:15:21'),
(3, 'a0ee1d41-39d4-4290-a3f0-a49005df39d6', 'database', 'default', '{\"uuid\":\"a0ee1d41-39d4-4290-a3f0-a49005df39d6\",\"displayName\":\"App\\\\Jobs\\\\ImportContactsFromXML\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ImportContactsFromXML\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\ImportContactsFromXML\\\":1:{s:11:\\\"\\u0000*\\u0000filePath\\\";s:52:\\\"imports\\/hdXiAvX1aUKcEW3bSCKmn4ZcDDkCs3hijzbQjIQM.xml\\\";}\"}}', 'Error: Class \"App\\Jobs\\Storage\" not found in C:\\xampp\\htdocs\\contact-manager\\app\\Jobs\\ImportContactsFromXML.php:29\nStack trace:\n#0 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\ImportContactsFromXML->handle()\n#1 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#2 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#3 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#4 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(696): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#5 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(126): Illuminate\\Container\\Container->call(Array)\n#6 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\ImportContactsFromXML))\n#7 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ImportContactsFromXML))\n#8 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(130): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#9 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\ImportContactsFromXML), false)\n#10 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\ImportContactsFromXML))\n#11 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ImportContactsFromXML))\n#12 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(121): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#13 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(69): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\ImportContactsFromXML))\n#14 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#15 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(442): Illuminate\\Queue\\Jobs\\Job->fire()\n#16 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(392): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#17 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(178): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(149): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(132): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#20 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#21 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#22 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#23 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#24 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(696): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#25 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#26 C:\\xampp\\htdocs\\contact-manager\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#27 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\contact-manager\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#29 C:\\xampp\\htdocs\\contact-manager\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\contact-manager\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(198): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\contact-manager\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#34 {main}', '2025-02-16 03:15:45'),
(4, 'eae5b6b4-46e8-4826-954c-9bdcc681b1d3', 'database', 'default', '{\"uuid\":\"eae5b6b4-46e8-4826-954c-9bdcc681b1d3\",\"displayName\":\"App\\\\Jobs\\\\ImportContactsFromXML\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ImportContactsFromXML\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\ImportContactsFromXML\\\":1:{s:11:\\\"\\u0000*\\u0000filePath\\\";s:52:\\\"imports\\/JUNhcr9fLuAD1f3ZAG7c1HkfijNsdZXvK4HUJErO.xml\\\";}\"}}', 'Error: Class \"App\\Jobs\\Storage\" not found in C:\\xampp\\htdocs\\contact-manager\\app\\Jobs\\ImportContactsFromXML.php:29\nStack trace:\n#0 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\ImportContactsFromXML->handle()\n#1 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#2 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#3 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#4 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(696): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#5 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(126): Illuminate\\Container\\Container->call(Array)\n#6 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\ImportContactsFromXML))\n#7 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ImportContactsFromXML))\n#8 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(130): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#9 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\ImportContactsFromXML), false)\n#10 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\ImportContactsFromXML))\n#11 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ImportContactsFromXML))\n#12 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(121): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#13 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(69): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\ImportContactsFromXML))\n#14 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#15 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(442): Illuminate\\Queue\\Jobs\\Job->fire()\n#16 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(392): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#17 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(178): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(149): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(132): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#20 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#21 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#22 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#23 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#24 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(696): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#25 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#26 C:\\xampp\\htdocs\\contact-manager\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#27 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\contact-manager\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#29 C:\\xampp\\htdocs\\contact-manager\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\contact-manager\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(198): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\contact-manager\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#34 {main}', '2025-02-16 03:17:08'),
(5, 'c8307ba3-d7b1-4b13-acdc-e8d9c18477d4', 'database', 'default', '{\"uuid\":\"c8307ba3-d7b1-4b13-acdc-e8d9c18477d4\",\"displayName\":\"App\\\\Jobs\\\\ImportContactsFromXML\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ImportContactsFromXML\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\ImportContactsFromXML\\\":1:{s:11:\\\"\\u0000*\\u0000filePath\\\";s:52:\\\"imports\\/ohL8bjtkcyAHHWV05DxivWX0BpnKRRvROdsP5ryD.xml\\\";}\"}}', 'Error: Class \"App\\Jobs\\Storage\" not found in C:\\xampp\\htdocs\\contact-manager\\app\\Jobs\\ImportContactsFromXML.php:29\nStack trace:\n#0 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\ImportContactsFromXML->handle()\n#1 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#2 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#3 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#4 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(696): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#5 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(126): Illuminate\\Container\\Container->call(Array)\n#6 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\ImportContactsFromXML))\n#7 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ImportContactsFromXML))\n#8 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(130): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#9 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\ImportContactsFromXML), false)\n#10 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\ImportContactsFromXML))\n#11 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ImportContactsFromXML))\n#12 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(121): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#13 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(69): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\ImportContactsFromXML))\n#14 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#15 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(442): Illuminate\\Queue\\Jobs\\Job->fire()\n#16 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(392): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#17 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(178): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(149): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(132): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#20 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#21 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#22 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#23 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#24 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(696): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#25 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#26 C:\\xampp\\htdocs\\contact-manager\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#27 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\contact-manager\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#29 C:\\xampp\\htdocs\\contact-manager\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\contact-manager\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(198): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\contact-manager\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#34 {main}', '2025-02-16 03:18:39'),
(6, '618db759-14d1-4fa0-b711-2cde372f3687', 'database', 'default', '{\"uuid\":\"618db759-14d1-4fa0-b711-2cde372f3687\",\"displayName\":\"App\\\\Jobs\\\\ImportContactsFromXML\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ImportContactsFromXML\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\ImportContactsFromXML\\\":1:{s:11:\\\"\\u0000*\\u0000filePath\\\";s:52:\\\"imports\\/WiySZRyDxO7FL3Q9VBESqoRv9O3P6eGos86Jl8Jd.xml\\\";}\"}}', 'Error: Class \"App\\Jobs\\Storage\" not found in C:\\xampp\\htdocs\\contact-manager\\app\\Jobs\\ImportContactsFromXML.php:29\nStack trace:\n#0 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\ImportContactsFromXML->handle()\n#1 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#2 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#3 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#4 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(696): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#5 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(126): Illuminate\\Container\\Container->call(Array)\n#6 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\ImportContactsFromXML))\n#7 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ImportContactsFromXML))\n#8 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(130): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#9 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\ImportContactsFromXML), false)\n#10 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\ImportContactsFromXML))\n#11 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ImportContactsFromXML))\n#12 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(121): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#13 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(69): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\ImportContactsFromXML))\n#14 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#15 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(442): Illuminate\\Queue\\Jobs\\Job->fire()\n#16 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(392): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#17 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(178): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(149): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(132): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#20 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#21 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#22 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#23 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#24 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(696): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#25 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#26 C:\\xampp\\htdocs\\contact-manager\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#27 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\contact-manager\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#29 C:\\xampp\\htdocs\\contact-manager\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\contact-manager\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(198): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\contact-manager\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\contact-manager\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#34 {main}', '2025-02-16 03:21:24');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(6, '2025_02_16_042647_create_contacts_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('NmwhiFemdhsu29pqT0HILSVyBQwRTsfzyFd0iyQP', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUHZGYVdCQXZDcnhYamdrWGxibDd1cmZTd3llSkJHVTU3YjFEQUx2VyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jb250YWN0cz9wYWdlPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1739698717);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=328;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
