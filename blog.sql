-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-06-2016 a las 16:17:20
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 7.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog`
--


INSERT INTO `blog` (`id`, `title`, `author`, `blog`, `image`, `tags`, `created`, `updated`) VALUES
(1, 'Titulo del primer post', 'David', 'As you can see this is simple PHP class. It extends no parent and has no accessors. Each of the members is declared as protected so we are unable to access them when operating on an object of this class. We could declare the getters and setters for these attributes ourself, but Doctrine 2 provides a task to do this. After all, writing accessors is not the most exhilarating of coding tasks.\r\n\r\nBefore we can run this task, we need to inform Doctrine 2 how the Blog entity should be mapped to the database. The information is specified as metadata using Doctrine 2 mappings. The metadata can be specified in and number of formats including YAML, PHP, XML and Annotations. We will use Annotations in this tutorial. It is important to note that not all members in the entity need to be persisted, so we won’t provide metadata for these. This gives us the flexibility to choose only the members we require Doctrine 2 to map to the database. Replace the content of the Blog entity class located at src/Blogger/BlogBundle/Entity/Blog.php with the following.\r\nTip\r\nIf you are not familiar with ORMs, we will explain the basic principle of them. The definition from Wikipedia reads:\r\n\r\n“Object-relational mapping (ORM, O/RM, and O/R mapping) in computer software is a programming technique for converting data between incompatible type systems in object-oriented programming languages. This creates, in effect, a “virtual object database” that can be used from within the programming language.”\r\n\r\nWhat the ORM facilitates is translating the data from a relational database such as MySQL into PHP objects that we can manipulate. This allows us to encapsuate the functionality we require on a table within a class. Think of a user table, it probably has fields like username, password, first_name, last_name, email and dob. With an ORM this becomes a class with members username, password, first_name, etc which allows us to call methods such as getUsername() and setPassword(). ORMs go much further than this though, they are also able to retrieve related tables for us, either at the same time as we retrieve the user object, or lazily later on. Now consider our user has some friends related to it. This would be a friends table, storing the primary key of the user table within it. Using the ORM we could now make a call such as $user->getFriends() to retrieve objects of the friends table. If that’s not enough, the ORM also deals with persitence so we can create objects in PHP, call a method such as save() and let the ORM deal with the details of actually persisting the data to the database. As we are using the Doctrine 2 ORM library, you will become much more familiar with what an ORM is as we progress through this tutorial.', 'beach.jpg', 'symfony2, php, paradise, symblog', '2016-06-08 00:00:00', '2016-06-08 00:00:00'),
(2, 'The pool on the roof must have a leak', 'One Cool', 'Vestibulum vulputate mauris eget erat congue dapibus imperdiet justo scelerisque. Na. Cras elementum molestie vestibulum. Morbi id quam nisl. Praesent hendrerit, orci sed elementum lobortis.', 'pool_leak.jpg', 'pool, leaky, hacked, movie, hacking, symblog', '2011-07-23 06:12:33', '2016-06-09 16:04:41'),
(3, 'Misdirection. What the eyes see and the ears hear, the mind believes', 'Gabriel', 'Lorem ipsumvehicula nunc non leo hendrerit commodo. Vestibulum vulputate mauris eget erat congue dapibus imperdiet justo scelerisque.', 'misdirection.jpg', 'misdirection, magic, movie, hacking, symblog', '2011-07-16 16:14:06', '2011-07-16 16:14:06'),
(4, 'The grid - A digital frontier', 'Kevin Flynn', 'Lorem commodo. Vestibulum vulputate mauris eget erat congue dapibus imperdiet justo scelerisque. Nulla consectetur tempus nisl vitae viverra.', 'the_grid.jpg', 'grid, daftpunk, movie, symblog', '2011-06-02 18:54:12', '2011-06-02 18:54:12'),
(5, 'You''re either a one or a zero. Alive or dead', 'Gary Winston', 'Lorem ipsum dolor sit amet, consectetur adipiscing elittibulum vulputate mauris eget erat congue dapibus imperdiet justo scelerisque.', 'one_or_zero.jpg', 'binary, one, zero, alive, dead, !trusting, movie, symblog', '2011-04-25 15:34:18', '2011-04-25 15:34:18');

