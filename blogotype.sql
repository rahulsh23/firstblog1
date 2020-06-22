-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2020 at 09:31 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogotype`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_num` int(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`sno`, `name`, `email`, `phone_num`, `msg`, `date`) VALUES
(1, 'first post', 'firstpost@gmail.com', 123456789, 'first post', '2020-05-25 22:16:19'),
(2, 'second', 'second@gmail.com', 1234512345, 'doosra', '2020-05-25 22:50:36'),
(3, 'mail', 'mail@mail.com', 1234123455, 'send msg', '2020-05-31 11:46:17'),
(4, 'mail', 'mail@mail.com', 1234123455, 'send msg', '2020-05-31 11:48:04'),
(5, 'mail', 'mail@mail.com', 1234123455, 'send msg', '2020-05-31 11:49:31'),
(6, 'mail', 'mail@mail.com', 1234123455, 'send msg', '2020-05-31 11:52:23'),
(7, 'mail', 'mail@mail.com', 1234123455, 'send msg', '2020-05-31 11:56:05'),
(8, 'MAIL', 'MAIL@mail.com', 1234123466, 'send mail', '2020-05-31 11:57:46'),
(9, 'wwe', 'ww', 0, 'ww', '2020-05-31 12:00:12'),
(10, 'MAIL', 'MAIL@mail.com', 1234123466, 'send mail', '2020-05-31 15:59:29'),
(11, 'MAIL', 'MAIL@mail.com', 1234123466, 'send mail', '2020-05-31 16:00:41'),
(12, 'MAIL', 'MAIL@mail.com', 1234123466, 'send mail', '2020-05-31 16:27:24');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'Coding 101', 'Phela', 'first-post', 'In the social sciences, CODING is an analytical process in which data, in both quantitative form (such as questionnaires results) or qualitative form (such as interview transcripts) are categorized to facilitate analysis.\r\n\r\nOne purpose of coding is to transform the data into a form suitable for computer-aided analysis. This categorization of information is an important step, for example, in preparing data for computer processing with statistical software. Prior to coding, an annotation scheme is defined. It consists of codes or tags. During coding, coders manually add codes into data where required features are identified. The coding scheme ensures that the codes are added consistently across the data set and allows for verification of previously tagged data [1]\r\n\r\nSome studies will employ multiple coders working independently on the same data. This also minimizes the chance of errors from coding and is believed to increase the reliability of data.', '', '2020-06-10 12:48:26'),
(2, 'Flask Documentation', 'Doosra', 'second-post', 'Welcome to Flask’s documentation. Get started with Installation and then get an overview with the Quickstart. There is also a more detailed Tutorial that shows how to create a small but complete application with Flask. Common patterns are described in the Patterns for Flask section. The rest of the docs describe each component of Flask in detail, with a full reference in the API section', 'home-bg.jpg', '2020-06-02 15:47:58'),
(3, 'jinja documentation', 'Teesra', 'third-post', 'Jinja is a modern and designer-friendly templating language for Python, modelled after Django’s templates. It is fast, widely used and secure with the optional sandboxed template execution environment:\r\n\r\n<title>{% block title %}{% endblock %}</title>\r\n<ul>\r\n{% for user in users %}\r\n  <li><a href=\"{{ user.url }}\">{{ user.username }}</a></li>\r\n{% endfor %}\r\n</ul>\r\nFeatures:\r\n\r\nsandboxed execution\r\n\r\npowerful automatic HTML escaping system for XSS prevention\r\n\r\ntemplate inheritance\r\n\r\ncompiles down to the optimal python code just in time\r\n\r\noptional ahead-of-time template compilation\r\n\r\neasy to debug. Line numbers of exceptions directly point to the correct line in the template.\r\n\r\nconfigurable syntax', '', '2020-06-02 16:00:50'),
(4, 'Flask-SQLAlchemy', '4th', 'fourth-post', 'Flask-SQLAlchemy is an extension for Flask that adds support for SQLAlchemy to your application. It aims to simplify using SQLAlchemy with Flask by providing useful defaults and extra helpers that make it easier to accomplish common tasks.\r\n\r\nSee the SQLAlchemy documentation to learn how to work with the ORM in depth. The following documentation is a brief overview of the most common tasks, as well as the features specific to Flask-SQLAlchemy.', '', '2020-06-02 16:00:50'),
(5, 'python', '5th', 'slug-fifth', 'Python is an interpreted, object-oriented, high-level programming language with dynamic semantics. Its high-level built in data structures, combined with dynamic typing and dynamic binding, make it very attractive for Rapid Application Development, as well as for use as a scripting or glue language to connect existing components together. Python\'s simple, easy to learn syntax emphasizes readability and therefore reduces the cost of program maintenance. Python supports modules and packages, which encourages program modularity and code reuse. The Python interpreter and the extensive standard library are available in source or binary form without charge for all major platforms, and can be freely distributed.', '', '2020-06-02 16:05:38'),
(6, 'python2.0', '6th', 'slug-sixth', 'Python is an interpreted, object-oriented, high-level programming language with dynamic semantics. Its high-level built in data structures, combined with dynamic typing and dynamic binding, make it very attractive for Rapid Application Development, as well as for use as a scripting or glue language to connect existing components together. Python\'s simple, easy to learn syntax emphasizes readability and therefore reduces the cost of program maintenance. Python supports modules and packages, which encourages program modularity and code reuse. The Python interpreter and the extensive standard library are available in source or binary form without charge for all major platforms, and can be freely distributed.', '', '2020-06-02 16:05:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
