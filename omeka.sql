-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-01-2022 a las 18:46:28
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `omeka`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_admin_images`
--

CREATE TABLE `omeka_admin_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text DEFAULT NULL,
  `alt` text DEFAULT NULL,
  `href` text DEFAULT NULL,
  `file_id` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_collections`
--

CREATE TABLE `omeka_collections` (
  `id` int(10) UNSIGNED NOT NULL,
  `public` tinyint(4) NOT NULL,
  `featured` tinyint(4) NOT NULL,
  `added` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `modified` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `owner_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `omeka_collections`
--

INSERT INTO `omeka_collections` (`id`, `public`, `featured`, `added`, `modified`, `owner_id`) VALUES
(1, 1, 1, '2021-12-03 16:40:41', '2021-12-10 16:14:43', 1),
(2, 1, 1, '2021-12-10 16:14:36', '2021-12-10 16:14:36', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_csv_import_imported_items`
--

CREATE TABLE `omeka_csv_import_imported_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `import_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_csv_import_imports`
--

CREATE TABLE `omeka_csv_import_imports` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_type_id` int(10) UNSIGNED DEFAULT NULL,
  `collection_id` int(10) UNSIGNED DEFAULT NULL,
  `owner_id` int(10) UNSIGNED NOT NULL,
  `delimiter` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `original_filename` text COLLATE utf8_unicode_ci NOT NULL,
  `file_path` text COLLATE utf8_unicode_ci NOT NULL,
  `file_position` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skipped_row_count` int(10) UNSIGNED NOT NULL,
  `skipped_item_count` int(10) UNSIGNED NOT NULL,
  `is_public` tinyint(1) DEFAULT 0,
  `is_featured` tinyint(1) DEFAULT 0,
  `serialized_column_maps` text COLLATE utf8_unicode_ci NOT NULL,
  `added` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_elements`
--

CREATE TABLE `omeka_elements` (
  `id` int(10) UNSIGNED NOT NULL,
  `element_set_id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `omeka_elements`
--

INSERT INTO `omeka_elements` (`id`, `element_set_id`, `order`, `name`, `description`, `comment`) VALUES
(1, 3, NULL, 'Text', 'Any textual data included in the document', NULL),
(2, 3, NULL, 'Interviewer', 'The person(s) performing the interview', NULL),
(3, 3, NULL, 'Interviewee', 'The person(s) being interviewed', NULL),
(4, 3, NULL, 'Location', 'The location of the interview', NULL),
(5, 3, NULL, 'Transcription', 'Any written text transcribed from a sound', NULL),
(6, 3, NULL, 'Local URL', 'The URL of the local directory containing all assets of the website', NULL),
(7, 3, NULL, 'Original Format', 'The type of object, such as painting, sculpture, paper, photo, and additional data', NULL),
(10, 3, NULL, 'Physical Dimensions', 'The actual physical size of the original image', NULL),
(11, 3, NULL, 'Duration', 'Length of time involved (seconds, minutes, hours, days, class periods, etc.)', NULL),
(12, 3, NULL, 'Compression', 'Type/rate of compression for moving image file (i.e. MPEG-4)', NULL),
(13, 3, NULL, 'Producer', 'Name (or names) of the person who produced the video', NULL),
(14, 3, NULL, 'Director', 'Name (or names) of the person who produced the video', NULL),
(15, 3, NULL, 'Bit Rate/Frequency', 'Rate at which bits are transferred (i.e. 96 kbit/s would be FM quality audio)', NULL),
(16, 3, NULL, 'Time Summary', 'A summary of an interview given for different time stamps throughout the interview', NULL),
(17, 3, NULL, 'Email Body', 'The main body of the email, including all replied and forwarded text and headers', NULL),
(18, 3, NULL, 'Subject Line', 'The content of the subject line of the email', NULL),
(19, 3, NULL, 'From', 'The name and email address of the person sending the email', NULL),
(20, 3, NULL, 'To', 'The name(s) and email address(es) of the person to whom the email was sent', NULL),
(21, 3, NULL, 'CC', 'The name(s) and email address(es) of the person to whom the email was carbon copied', NULL),
(22, 3, NULL, 'BCC', 'The name(s) and email address(es) of the person to whom the email was blind carbon copied', NULL),
(23, 3, NULL, 'Number of Attachments', 'The number of attachments to the email', NULL),
(24, 3, NULL, 'Standards', '', NULL),
(25, 3, NULL, 'Objectives', '', NULL),
(26, 3, NULL, 'Materials', '', NULL),
(27, 3, NULL, 'Lesson Plan Text', '', NULL),
(28, 3, NULL, 'URL', '', NULL),
(29, 3, NULL, 'Event Type', '', NULL),
(30, 3, NULL, 'Participants', 'Names of individuals or groups participating in the event', NULL),
(31, 3, NULL, 'Birth Date', '', NULL),
(32, 3, NULL, 'Birthplace', '', NULL),
(33, 3, NULL, 'Death Date', '', NULL),
(34, 3, NULL, 'Occupation', '', NULL),
(35, 3, NULL, 'Biographical Text', '', NULL),
(36, 3, NULL, 'Bibliography', '', NULL),
(37, 1, 8, 'Contributor', 'An entity responsible for making contributions to the resource', NULL),
(38, 1, 15, 'Coverage', 'The spatial or temporal topic of the resource, the spatial applicability of the resource, or the jurisdiction under which the resource is relevant', NULL),
(39, 1, 4, 'Creator', 'An entity primarily responsible for making the resource', NULL),
(40, 1, 7, 'Date', 'A point or period of time associated with an event in the lifecycle of the resource', NULL),
(41, 1, 3, 'Description', 'An account of the resource', NULL),
(42, 1, 11, 'Format', 'The file format, physical medium, or dimensions of the resource', NULL),
(43, 1, 14, 'Identifier', 'An unambiguous reference to the resource within a given context', NULL),
(44, 1, 12, 'Language', 'A language of the resource', NULL),
(45, 1, 6, 'Publisher', 'An entity responsible for making the resource available', NULL),
(46, 1, 10, 'Relation', 'A related resource', NULL),
(47, 1, 9, 'Rights', 'Information about rights held in and over the resource', NULL),
(48, 1, 5, 'Source', 'A related resource from which the described resource is derived', NULL),
(49, 1, 2, 'Subject', 'The topic of the resource', NULL),
(50, 1, 1, 'Title', 'A name given to the resource', NULL),
(51, 1, 13, 'Type', 'The nature or genre of the resource', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_element_sets`
--

CREATE TABLE `omeka_element_sets` (
  `id` int(10) UNSIGNED NOT NULL,
  `record_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `omeka_element_sets`
--

INSERT INTO `omeka_element_sets` (`id`, `record_type`, `name`, `description`) VALUES
(1, NULL, 'Dublin Core', 'The Dublin Core metadata element set is common to all Omeka records, including items, files, and collections. For more information see, http://dublincore.org/documents/dces/.'),
(3, 'Item', 'Item Type Metadata', 'The item type metadata element set, consisting of all item type elements bundled with Omeka and all item type elements created by an administrator.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_element_texts`
--

CREATE TABLE `omeka_element_texts` (
  `id` int(10) UNSIGNED NOT NULL,
  `record_id` int(10) UNSIGNED NOT NULL,
  `record_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `element_id` int(10) UNSIGNED NOT NULL,
  `html` tinyint(4) NOT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `omeka_element_texts`
--

INSERT INTO `omeka_element_texts` (`id`, `record_id`, `record_type`, `element_id`, `html`, `text`) VALUES
(1, 1, 'Item', 50, 0, 'Death Note'),
(3, 1, 'Item', 41, 0, 'Death Note cuenta la historia de Light Yagami, un estudiante excepcional de secundaria que encuentra un misterioso cuaderno de notas el cual pertenece a un dios de la muerte también llamado shinigami que responde al nombre de Ryuk. El poder de este sobrenatural bloc de notas permite terminar con la vida de los demás.'),
(4, 1, 'Item', 39, 0, 'Tsugumi Ōba'),
(7, 1, 'Item', 40, 0, '2003'),
(11, 1, 'Item', 42, 0, 'manga'),
(12, 1, 'Item', 44, 0, 'japonés'),
(16, 1, 'Collection', 50, 0, 'Literatura Occidental'),
(17, 2, 'Item', 50, 0, 'Don Quijote De La Mancha'),
(18, 2, 'Item', 41, 0, 'El ingenioso hidalgo don Quijote de la Mancha narra las aventuras de Alonso Quijano, un hidalgo pobre que de tanto leer novelas de caballería acaba enloqueciendo y creyendo ser un caballero andante, nombrándose a sí mismo como don Quijote de la Mancha.'),
(19, 2, 'Item', 39, 0, 'Miguel de Cervantes'),
(20, 2, 'Item', 40, 0, '1605'),
(21, 2, 'Item', 42, 0, 'Literatura occidental'),
(22, 2, 'Item', 44, 0, 'castellano'),
(23, 2, 'Collection', 50, 0, 'Literatura Oriental'),
(24, 3, 'Item', 50, 0, 'Naruto'),
(25, 3, 'Item', 41, 0, 'Es una serie Manga que cuenta la historia de un joven ninja hiperactivo llamado Naruto Uzumaki que hará todo lo posible por ascender al máximo grado ninja de su aldea con el propósito de ser reconocido como alguien importante dentro de su aldea.'),
(26, 3, 'Item', 39, 0, 'Masashi Kishimoto'),
(27, 3, 'Item', 40, 0, 'marzo 2000'),
(28, 3, 'Item', 44, 0, 'japonés'),
(29, 3, 'Item', 42, 0, 'manga'),
(30, 4, 'Item', 50, 0, 'Mortadelo y Filemón'),
(31, 4, 'Item', 41, 0, 'Filemón es el jefe de una agencia de detectives y tiene a Mortadelo como empleado y único ayudante.'),
(32, 4, 'Item', 39, 0, 'Francisco Ibáñez'),
(33, 4, 'Item', 40, 0, '1958'),
(34, 4, 'Item', 42, 0, 'cómic'),
(35, 4, 'Item', 44, 0, 'español'),
(36, 5, 'Item', 50, 0, 'La llamada de Cthulhu'),
(37, 5, 'Item', 41, 0, 'La llamada de Cthulhu da inicio con la muerte de un profesor, cuyos documentos de estudio llegan a manos del personaje principal quién a través de ellos descubre la existencia de Cthulhu, una horrorosa criatura que habita en las profundidades del mar y que es venerada por una sexta.'),
(38, 5, 'Item', 39, 0, 'H. P. Lovecraft'),
(39, 5, 'Item', 40, 0, '1928'),
(40, 5, 'Item', 42, 0, 'literatura occidental'),
(41, 5, 'Item', 44, 0, 'inglés'),
(42, 6, 'Item', 50, 0, 'El Gato Negro'),
(43, 6, 'Item', 41, 0, 'Un joven matrimonio lleva una vida hogareña apacible en compañía de varios animales domésticos, entre ellos un misterioso gato negro. Todo cambia cuando el marido empieza a dejarse arrastrar por la bebida. El alcohol le vuelve irascible y en uno de sus accesos de furia acaba con la vida del animal.'),
(44, 6, 'Item', 39, 0, 'Edgar Allan Poe'),
(45, 6, 'Item', 40, 0, '1843'),
(46, 6, 'Item', 42, 0, 'literatura occidental'),
(47, 6, 'Item', 44, 0, 'inglés'),
(48, 7, 'Item', 50, 0, 'Romancero Gitano'),
(49, 7, 'Item', 41, 0, 'El Romancero gitano es una obra poética de Federico García Lorca, publicada en 1928. Está compuesta por dieciocho romances con temas como la noche, la muerte, el cielo, la luna. Todos los poemas tienen algo en común, tratan de la cultura gitana.'),
(50, 7, 'Item', 39, 0, 'Federico García Lorca'),
(51, 7, 'Item', 40, 0, '1928'),
(52, 7, 'Item', 44, 0, 'Castellano'),
(53, 8, 'Item', 50, 0, 'Viaje Al Centro De La Tierra'),
(54, 8, 'Item', 41, 0, 'El joven Axel y su tío, el profesor Otto, emprenden un viaje fantástico al interior de la Tierra. Y todo ello a partir del descubrimiento de unos signos misteriosos hallados entre las páginas de un libro antiguo.'),
(55, 8, 'Item', 39, 0, 'Julio Verne'),
(56, 8, 'Item', 40, 0, '1864'),
(57, 8, 'Item', 44, 0, 'Castellano'),
(58, 9, 'Item', 50, 0, 'Historia De Una Escalera'),
(59, 9, 'Item', 41, 0, 'Historia de una escalera es una obra de teatro (1947 y 1948) de Antonio Buero Vallejo, por la que recibió el Premio Lope de Vega. En ella se analiza la sociedad española, con todas sus mentiras, a través de la vecindad de una escalera. El tema principal de la obra es la frustración individual y el amor entre jóvenes.'),
(60, 9, 'Item', 39, 0, 'Antonio Buero Vallejo'),
(61, 9, 'Item', 40, 0, '1947'),
(62, 9, 'Item', 44, 0, 'Castellano'),
(63, 10, 'Item', 50, 0, 'El Mago De Oz'),
(64, 10, 'Item', 41, 0, 'Mago de Oz: Vive en la Ciudad Esmeralda, al centro del País de Oz. Ha ganado reputación de ser un ser superior, pues ha mantenido a raya a las Brujas del Este y del Oeste, que le han hecho la guerra durante años. Al igual que Dorothy llegó accidentalmente a Oz.'),
(65, 10, 'Item', 39, 0, 'L. Frank Baum'),
(66, 10, 'Item', 40, 0, '1945'),
(67, 10, 'Item', 44, 0, 'Castellano'),
(68, 11, 'Item', 50, 0, 'Orgullo y Prejuicio'),
(69, 11, 'Item', 41, 0, 'Orgullo y prejuicio narra las aventuras y desventuras amorosas de las hermanas Bennet, centrándose en el personaje de Elizabeth, a través de las cuales la autora nos presenta con comicidad la sociedad de su tiempo y coloca a la mujer en un lugar más notorio que el que le correspondía en su época con la figura de la ...'),
(70, 11, 'Item', 39, 0, 'Jane Austen'),
(71, 11, 'Item', 40, 0, '1813'),
(72, 11, 'Item', 44, 0, 'inglés'),
(73, 12, 'Item', 50, 0, 'El Retrato Dorian Gray'),
(74, 12, 'Item', 41, 0, 'Basil Hallward es un artista que queda fuertemente impresionado por la belleza estética de un joven llamado Dorian Gray y comienza a admirarlo. Basil pinta un retrato del joven. ... Al darse cuenta de que un día su belleza se desvanecerá, Dorian desea tener siempre la edad de cuando Basil le pintó en el cuadro.'),
(75, 12, 'Item', 39, 0, 'Oscar Wilde'),
(76, 12, 'Item', 40, 0, '1890'),
(77, 12, 'Item', 44, 0, 'inglés'),
(78, 13, 'Item', 50, 0, 'El Lazarillo De Tormes'),
(79, 13, 'Item', 41, 0, 'Lazarillo de Tormes: es el protagonista de la novela, representa la clase baja y vagabunda de la época. Es un antihéroe, astuto, dependiente para poder subsistir, y un pícaro. El iba de amo en amo para satisfacer su hambruna. Cada amo era una situación social diferente.'),
(80, 13, 'Item', 39, 0, 'Anónimo'),
(81, 13, 'Item', 40, 0, '1554'),
(82, 13, 'Item', 44, 0, 'castellano'),
(83, 14, 'Item', 50, 0, 'Romeo y Julieta'),
(84, 14, 'Item', 41, 0, 'Romeo y Julieta es una historia de amor entre dos jóvenes de 16 años. Son de familias enemigas en la ciudad de Verona. Pertenecen a las familias de los Capuletos y los Montescos, que son las más poderosas de la ciudad pero están enfrentadas entre sí.'),
(85, 14, 'Item', 39, 0, 'William Shakespeare'),
(86, 14, 'Item', 40, 0, '1597'),
(87, 14, 'Item', 44, 0, 'inglés'),
(88, 15, 'Item', 50, 0, 'La Mujer Del Kimono Blanco'),
(89, 15, 'Item', 41, 0, 'La mujer del kimono blanco es una emotiva novela de Ana Johns que aborda la dureza del Japón de la posguerra desde un prisma humano. La novela alterna dos líneas temporales distintas, una en Estados Unidos en la actualidad y otra en el Japón de 1957. Las dos líneas temporales confluirán en un final emotivo y agridulce.'),
(90, 15, 'Item', 39, 0, 'Ana Johns'),
(91, 15, 'Item', 40, 0, '1957'),
(92, 15, 'Item', 44, 0, 'japonés'),
(93, 16, 'Item', 50, 0, 'H.P Lovecraft'),
(94, 17, 'Item', 50, 0, 'Edgar Allan Poe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_exhibits`
--

CREATE TABLE `omeka_exhibits` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `credits` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured` tinyint(1) DEFAULT 0,
  `public` tinyint(1) DEFAULT 0,
  `theme` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `theme_options` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `added` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `modified` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `owner_id` int(10) UNSIGNED DEFAULT NULL,
  `use_summary_page` tinyint(1) DEFAULT 1,
  `cover_image_file_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `omeka_exhibits`
--

INSERT INTO `omeka_exhibits` (`id`, `title`, `description`, `credits`, `featured`, `public`, `theme`, `theme_options`, `slug`, `added`, `modified`, `owner_id`, `use_summary_page`, `cover_image_file_id`) VALUES
(1, 'Literatura gótica', '', '', 1, 1, 'rhythm', NULL, 'literatura-g--tica', '2022-01-07 16:57:37', '2022-01-07 17:05:04', 1, 1, 7),
(2, 'Exposición Literatura', '<p>La Literatura es el arte que utiliza las palabras como medio de expresión</p>', '', 0, 1, '', NULL, 'exposici--n-literatura', '2022-01-07 17:00:28', '2022-01-07 17:07:47', 1, 1, 8),
(3, 'Autores', '<p><span>Los buenos escritores son aquellos que conservan la eficiencia del lenguaje.</span></p>', '', 0, 0, '', NULL, 'autores', '2022-01-07 17:12:15', '2022-01-07 17:12:15', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_exhibit_block_attachments`
--

CREATE TABLE `omeka_exhibit_block_attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `block_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `caption` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `omeka_exhibit_block_attachments`
--

INSERT INTO `omeka_exhibit_block_attachments` (`id`, `block_id`, `item_id`, `file_id`, `caption`, `order`) VALUES
(1, 1, 15, 16, NULL, 1),
(2, 1, 12, 13, NULL, 2),
(3, 1, 6, 7, NULL, 3),
(4, 2, 14, 15, NULL, 1),
(5, 2, 13, 14, NULL, 2),
(6, 2, 7, 8, NULL, 3),
(7, 2, 9, 10, NULL, 4),
(8, 3, 15, 16, NULL, 1),
(9, 3, 12, 13, NULL, 2),
(10, 4, 16, 17, NULL, 1),
(11, 5, 17, 18, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_exhibit_pages`
--

CREATE TABLE `omeka_exhibit_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `exhibit_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `order` smallint(5) UNSIGNED DEFAULT NULL,
  `added` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `modified` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `omeka_exhibit_pages`
--

INSERT INTO `omeka_exhibit_pages` (`id`, `exhibit_id`, `parent_id`, `title`, `short_title`, `slug`, `order`, `added`, `modified`) VALUES
(1, 1, NULL, 'Literatura Gótica', 'Literatura Gótica', 'literatura-g--tica', 0, '2022-01-07 16:58:37', '2022-01-07 17:05:04'),
(2, 2, NULL, 'Literatura española', '', 'literatura-espa--ola', 0, '2022-01-07 17:01:07', '2022-01-07 17:07:47'),
(3, 2, NULL, 'Literatura internacional', '', 'literatura-internacional', 1, '2022-01-07 17:02:03', '2022-01-07 17:07:47'),
(4, 3, NULL, 'Autores', '', 'autores', 1, '2022-01-07 17:17:26', '2022-01-07 17:43:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_exhibit_page_blocks`
--

CREATE TABLE `omeka_exhibit_page_blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_id` int(10) UNSIGNED NOT NULL,
  `layout` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `options` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `omeka_exhibit_page_blocks`
--

INSERT INTO `omeka_exhibit_page_blocks` (`id`, `page_id`, `layout`, `options`, `text`, `order`) VALUES
(1, 1, 'gallery', '{\"showcase-position\":\"none\",\"gallery-position\":\"left\",\"gallery-file-size\":\"square_thumbnail\",\"captions-position\":\"center\"}', '<p>Las características de este género pasan en primer lugar por una ambientación romántica: paisajes sombríos, bosques tenebrosos, ruinas medievales y castillos con sus respectivos sótanos, criptas y pasadizos bien poblados de fantasmas, ruidos nocturnos, cadenas, esqueletos, demonios... Personajes fascinantes, extraños e insólitos, grandes peligros y a menudo cándidas muchachas en apuros; los elementos sobrenaturales podían aparecer directamente o solamente ser sugeridos. Estas ubicaciones y personajes, en tiempo y espacio, respondían a la demanda de temas exóticos característica de la tendencia al medievalismo, el exotismo y el orientalismo propia de la sensibilidad romántica.</p>', 1),
(2, 2, 'file', '{\"file-position\":\"left\",\"file-size\":\"fullsize\",\"captions-position\":\"center\"}', NULL, 1),
(3, 3, 'file', '{\"file-position\":\"left\",\"file-size\":\"fullsize\",\"captions-position\":\"center\"}', NULL, 1),
(4, 4, 'file-text', '{\"file-position\":\"left\",\"file-size\":\"fullsize\",\"captions-position\":\"center\"}', '<p><span>Howard Lovecraft </span>nació el 20 de agosto de 1890 en Providence, Rhode Island, Estados Unidos. Hijo único de Winfield Scott Lovecraft representante de ventas y de Sarah Susan Phillips.<br />Cuando tenía tres años, su padre sufrió una crisis nerviosa en la habitación de un hotel de Chicago y fue ingresado en un centro psiquiátrico de Providence siendo incapacitado legalmente,<span>Lovecraft además tuvo una mala relación con su madre que </span><span>lo sobreprotegió hasta límites demenciales y lo trató como si fuera su único bien en la tierra. Esta actitud provocó que a Lovecraft le costara convivir con su entorno debido a la poca habilidad que desarrolló para relacionarse con el resto de las personas</span>.</p>\r\n<p>Lovecraft recitaba poesía a los dos años, leía a los tres y empezó a escribir a los seis años. Debido a su mala salud, no asistió al colegio hasta los ocho años y lo abandonó después de un año.<br /><br />Fue una persona solitaria que dedicaba su tiempo a la lectura, la astronomía y a cartearse con otros aficionados a la literatura macabra,e<span>ntre 1903 y 1908, Lovecraft vivió como un ermitaño sin apenas contacto con el mundo exterior</span>.</p>\r\n<p>Su prosa está influenciada por Lord Dunsany, William H. Hodgson, Arthur Machen y Edgar Allan Poe. Fue un gran innovador del cuento de terror gracias a su singular tratamiento de la narrativa y la atmósfera de sus historias, que acercó el género a la ciencia-ficción.</p>\r\n<p>Con dieciséis años escribía una columna de astronomía para el Providence Tribune. De 1908 a 1923 ganaba algo de dinero escribiendo ocasionalmente relatos para revistas de poca tirada, como Weird Tales. Diez años más adelante, su obra empezó a interesar a mucha gente.</p>\r\n<p>Sus relatos tratan sobre espíritus malignos, posesiones psíquicas y mundos oníricos donde el tiempo y el espacio se alteran irremediablemente, como en sus Mitos de Cthulhu, un trabajo colectivo que fue creciendo con las aportaciones del llamado Círculo de Lovecraft, un grupo de escritores formado por el propio Lovecraft, Clark Ashton Smith, Robert E. Howard, Robert Bloch, August Derleth, Frank Belknap, Long Henry Kuttner, E. Hoffman Price y otros. También fueron incluidas aportaciones provenientes de escritores anteriores como Ambrose Bierce, Algernon Blackwood, o Robert W. Chambers y de algunas mitologías como la árabe, la polinesia o la sumeria.<br /><br />Sus relatos se recopilaron en varios volúmenes póstumos, entre los que figuran El extraño y otros cuentos (1939) y El cazador en la oscuridad y otros cuentos (1951).</p>\r\n<p><span>Tras la muerte de su madre en 1921, Lovecraft acudió a una convención de escritores aficionados en Boston donde conoció a Sonia H. Greene. </span>Sonia era hija de inmigrantes judíos procedentes de Ucrania, viuda y siete años mayor que él. Se casó con Sonia Greene en 1924, y se mudó a Brooklyn, en la ciudad de Nueva York. En 1926, se divorciaron.</p>\r\n<p>Howard Lovecraft murió de cáncer intestinal en el hospital Jane Brown Memorial, de Providence el 15 de marzo de 1937 en la pobreza y el anonimato. Fue enterrado tres días después en el panteón de su abuelo Phillips en el cementerio de Swan Point. </p>\r\n<p></p>\r\n<p></p>\r\n<p>---------------------------------------------------------------------------------------------</p>', 1),
(5, 4, 'file-text', '{\"file-position\":\"left\",\"file-size\":\"fullsize\",\"captions-position\":\"center\"}', '<p><span>Edgar Allan Poe </span>nació en Boston, Estados Unidos, el 19 de enero de 1809, y murió el 7 de octubre de 1849 en Baltimore, Estados Unidos. <span>Fue un escritor, crítico, periodista y poeta estadounidense</span>. Es reconocido como uno de los padres del cuento moderno, así como el creador del género policial. Además, fue un gran escritor tanto de ciencia ficcion como de obras de terror.</p>\r\n<p>Edgar Allan Poe perdió a sus padres, actores de teatro itinerantes, cuando contaba apenas dos años de edad. El pequeño Edgar fue educado por John Allan, un acaudalado hombre de negocios de Richmond. Las relaciones de Poe con su padre adoptivo fueron traumáticas; también la temprana muerte de su madre se convertiría en una de sus obsesiones recurrentes. De 1815 a 1820 vivió con John Allan y su esposa en el Reino Unido, donde comenzó su educación.</p>\r\n<p>La familia había viajado porque John Allan tenía negocios en el viejo continente. Como estos no tuvieron buen término, los Allan regresaron a Richmond en 1820 .Después de regresar a Estados Unidos, Edgar Allan Poe siguió estudiando en centros privados y asistió a la Universidad de Virginia, pero en 1827 su afición al juego y a la bebida le acarreó la expulsión. Abandonó poco después el puesto de empleado que le había asignado su padre adoptivo, y viajó a Boston, donde publicó anónimamente su primer libro, <em>Tamerlán y otros poemas </em>(Tamerlane and Other Poems, 1827).</p>\r\n<p>Se alistó luego en el ejército, en el que permaneció dos años. En 1829 apareció su segundo libro de poemas, <em>Al Aaraaf</em>, y obtuvo, por influencia de su padre adoptivo, un cargo en la Academia Militar de West Point, de la que a los pocos meses fue expulsado por negligencia en el cumplimiento del deber.</p>\r\n<p>Ese mismo año partió a Nueva York y publicó <em>Poems</em> con ayuda de sus antiguos compañeros de la Academia. Y más tarde se trasladó a la casa de su tía, donde su hermano Henry murió ese mismo año, en parte, por el alcoholismo.</p>\r\n<p>En 1832, y después de la publicación de su tercer libro, <em>Poemas </em>(Poems by Edgar Allan Poe, 1831), se desplazó a Baltimore, donde contrajo matrimonio con su jovencísima prima Virginia Clemm, que tenía entoces catorce años. Por esta época entró como redactor en el periódico Southern Baltimore Messenger, en el que aparecieron diversas narraciones y poemas suyos, y que bajo su dirección se convertiría en el más importante periódico del sur del país.</p>\r\n<p><span>En 1845, publicó su poema más famoso, </span><em>El cuervo</em><span>, por el que sería reconocido en todo el país</span>, pero del que sólo habría recibido 9 dólares por su publicación.</p>\r\n<p>En 1847 murió Virginia de tuberculosis, y el comportamiento y el estado de ánimo de Poe se vieron claramente afectados, al punto de realizar varias acciones erráticas e inducirlo al alcoholismo y al consumo de drogas. Finalmente, Poe volvió a Richmond, donde se encontró con su amor de la juventud, Sarah Elmira Royster. Ambos estuvieron de acuerdo en casarse el 17 de octubre de 1849.</p>\r\n<p><span>El 3 de octubre de 1849,</span> : fue hallado inconsciente en una calle de Baltimore y conducido a un hospital, donde falleció pocos días más tarde, el 7 de octubre  aparentemente de un ataque cerebral.</p>', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_files`
--

CREATE TABLE `omeka_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `has_derivative_image` tinyint(1) NOT NULL,
  `authentication` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mime_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_os` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` text COLLATE utf8_unicode_ci NOT NULL,
  `original_filename` text COLLATE utf8_unicode_ci NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `added` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `stored` tinyint(1) NOT NULL DEFAULT 0,
  `metadata` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `omeka_files`
--

INSERT INTO `omeka_files` (`id`, `item_id`, `order`, `size`, `has_derivative_image`, `authentication`, `mime_type`, `type_os`, `filename`, `original_filename`, `modified`, `added`, `stored`, `metadata`) VALUES
(2, 1, NULL, 166318, 1, '270083641870e2a577a0704a81075994', 'image/jpeg', '', 'fd1a3c511524420bb71712e6ca4a24cc.jpg', 'deathnote.jpg', '2021-12-10 16:30:44', '2021-12-03 17:01:18', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":717,\"resolution_y\":1039,\"compression_ratio\":0.07441890850060115}}'),
(3, 2, NULL, 39088, 1, '9be05be936c345e655778e950fb3ad6c', 'image/jpeg', '', '09d40898f98ea88336d42488c80649e0.jpg', '7BN7MROFVTFLCFQ2FXZPUC3Y3E.jpg', '2021-12-10 16:31:25', '2021-12-03 17:12:36', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":414,\"resolution_y\":658,\"compression_ratio\":0.04782951313941138}}'),
(4, 3, NULL, 17787, 1, 'b3586d8221dfa63f552a63d93a67a313', 'image/jpeg', '', 'fca235db033c95008dc5c3b0c3a3dbb0.jpg', 'descarga.jpg', '2021-12-10 16:31:45', '2021-12-10 16:29:53', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":181,\"resolution_y\":278,\"compression_ratio\":0.11783059740053262}}'),
(5, 4, NULL, 20180, 1, 'b575f7d03b6834cf03cbdb8894d9b989', 'image/jpeg', '', '35ef0836e223fb3fe0b2326bcdd5db3c.jpg', 'descarga (1).jpg', '2021-12-10 16:35:24', '2021-12-10 16:35:24', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":189,\"resolution_y\":266,\"compression_ratio\":0.1338001087374521}}'),
(6, 5, NULL, 78122, 1, 'd04803f54eac65d598740e3332bea3df', 'image/jpeg', '', '87c5d292247969c6f3f4668a37a88bc1.jpg', 'C117-La-llamada-de-Cthulhu-y-otras-historias.jpg', '2021-12-10 16:43:37', '2021-12-10 16:39:54', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":600,\"resolution_y\":950,\"compression_ratio\":0.045685380116959065},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"87c5d292247969c6f3f4668a37a88bc1.jpg\",\"FileDateTime\":1639154394,\"FileSize\":78122,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0, COMMENT, EXIF\"},\"COMPUTED\":{\"html\":\"width=\\\"600\\\" height=\\\"950\\\"\",\"Height\":950,\"Width\":600,\"IsColor\":1,\"ByteOrderMotorola\":1},\"IFD0\":{\"XResolution\":72,\"YResolution\":72,\"ResolutionUnit\":2,\"Exif_IFD_Pointer\":78},\"COMMENT\":[\"Compressed by jpeg-recompress\"],\"EXIF\":{\"ExifImageWidth\":600,\"ExifImageLength\":950}}}}'),
(7, 6, NULL, 25735, 1, '11feff3e78c173780791c1d86c21978d', 'image/jpeg', '', 'ff93baa216bad2500729065434725126.jpg', '12435-1.jpg', '2021-12-10 16:43:33', '2021-12-10 16:42:59', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":187,\"resolution_y\":283,\"compression_ratio\":0.16209696213853353},\"comments\":{\"IPTCEnvelope\":{\"CodedCharacterSet\":[\"\\u001b%G\"]},\"IPTCApplication\":{\"ApplicationRecordVersion\":[\"\\u0002\"]}},\"comments_html\":{\"IPTCEnvelope\":{\"CodedCharacterSet\":[\"\\u001b%G\"]},\"IPTCApplication\":{\"ApplicationRecordVersion\":[\"\\u0002\"]}},\"iptc\":{\"comments\":{\"IPTCEnvelope\":{\"CodedCharacterSet\":[\"\\u001b%G\"]},\"IPTCApplication\":{\"ApplicationRecordVersion\":[\"\\u0000\\u0002\"]}},\"encoding\":\"ISO-8859-1\"},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"ff93baa216bad2500729065434725126.jpg\",\"FileDateTime\":1639154579,\"FileSize\":25735,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"IFD0, APP12\"},\"COMPUTED\":{\"html\":\"width=\\\"187\\\" height=\\\"283\\\"\",\"Height\":283,\"Width\":187,\"IsColor\":1,\"ByteOrderMotorola\":0},\"APP12\":{\"Company\":\"Ducky\",\"Info\":\"\\u0001\"}}}}'),
(8, 7, NULL, 26626, 1, '73f4beb40ecbb6ed54be6065dd847bf2', 'image/jpeg', '', 'd0065d0d2aa3234a1ba86b7fa55c703a.jpg', 'POE_04_01a-330x504.jpg', '2022-01-06 17:54:02', '2022-01-06 17:54:02', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":330,\"resolution_y\":504,\"compression_ratio\":0.05336299502966169}}'),
(9, 8, NULL, 589717, 1, 'b6c0914c81f6e23e6f39029b0d14f513', 'image/jpeg', '', 'ba7d94396c82f6d32aab946680c92667.jpg', '91zIwQ1iI1L.jpg', '2022-01-06 18:00:44', '2022-01-06 18:00:42', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1877,\"resolution_y\":2560,\"compression_ratio\":0.04090893324897887}}'),
(10, 9, NULL, 90962, 1, '421c0b1746ad9e99dc1d3324012653bc', 'image/jpeg', '', 'f0b0117ee7c4b355e53fed86abe8e607.jpg', '9788467033281.jpg', '2022-01-06 18:04:00', '2022-01-06 18:04:00', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":552,\"resolution_y\":841,\"compression_ratio\":0.06531360756403408}}'),
(11, 10, NULL, 75460, 1, 'b3e59e71a8735d74cfd9e8435c23e11e', 'image/jpeg', '', 'f5b54500398c241cafd2e77c1a031aa1.jpg', '001_m.jpg', '2022-01-06 18:21:54', '2022-01-06 18:21:54', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":500,\"resolution_y\":639,\"compression_ratio\":0.07872717788210747}}'),
(12, 11, NULL, 7567, 1, 'a1dddc50137c6af85c148f85e17139c4', 'image/jpeg', '', 'fa1dcde8568d0ed844723c4bcf1b875e.jpg', 'descarga (2).jpg', '2022-01-06 18:26:14', '2022-01-06 18:26:14', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":181,\"resolution_y\":278,\"compression_ratio\":0.05012785351829034}}'),
(13, 12, NULL, 10165, 1, '271d089f0831a9ded11fbb92a2e7716e', 'image/jpeg', '', '8ee268c7066754dcf5b422bf771fc6da.jpg', 'descarga (3).jpg', '2022-01-06 18:29:29', '2022-01-06 18:29:29', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":182,\"resolution_y\":276,\"compression_ratio\":0.06745368158411637}}'),
(14, 13, NULL, 16564, 1, '1c2b9ecd65c328fb8c398f4621e51337', 'image/jpeg', '', '3e1134d9ed98fd0840e631664297be37.jpg', 'descarga (4).jpg', '2022-01-06 18:32:56', '2022-01-06 18:32:56', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":168,\"resolution_y\":300,\"compression_ratio\":0.10955026455026455}}'),
(15, 14, NULL, 8367, 1, '0ef12db6b8613480cacc53cc0a8f5bb0', 'image/jpeg', '', 'c7614b56e007a550a1dfec226ab5a9dc.jpg', 'descarga (5).jpg', '2022-01-06 19:42:23', '2022-01-06 19:42:23', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":186,\"resolution_y\":270,\"compression_ratio\":0.055535643170051774}}'),
(16, 15, NULL, 10920, 1, 'd39c762b77068a49c84db7352f90285b', 'image/jpeg', '', 'feea38e21ae1b37d2e021b441626baa2.jpg', 'descarga (6).jpg', '2022-01-06 19:48:14', '2022-01-06 19:48:14', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":181,\"resolution_y\":278,\"compression_ratio\":0.07233991812075202}}'),
(17, 16, NULL, 4923, 1, '14845bf9f00db67e36ef168c1b8825d8', 'image/jpeg', '', 'fc6f47ea8727b1ba220762df8063bc0a.jpg', 'descarga (7).jpg', '2022-01-07 17:15:24', '2022-01-07 17:15:23', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":203,\"resolution_y\":249,\"compression_ratio\":0.03246483470829129}}'),
(18, 17, NULL, 4167, 1, 'd002cf4e982a99ce8e1935ab50f0d4eb', 'image/jpeg', '', '318dce6f48b97bc42e64b6b0c16b5c59.jpg', 'descarga (8).jpg', '2022-01-07 17:17:05', '2022-01-07 17:17:05', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":189,\"resolution_y\":266,\"compression_ratio\":0.02762859529776823}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_items`
--

CREATE TABLE `omeka_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_type_id` int(10) UNSIGNED DEFAULT NULL,
  `collection_id` int(10) UNSIGNED DEFAULT NULL,
  `featured` tinyint(4) NOT NULL,
  `public` tinyint(4) NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `added` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `owner_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `omeka_items`
--

INSERT INTO `omeka_items` (`id`, `item_type_id`, `collection_id`, `featured`, `public`, `modified`, `added`, `owner_id`) VALUES
(1, NULL, 2, 1, 1, '2021-12-10 16:30:44', '2021-12-03 16:34:57', 1),
(2, NULL, 1, 0, 1, '2021-12-10 16:31:25', '2021-12-03 17:12:36', 1),
(3, NULL, 2, 0, 1, '2021-12-10 16:31:45', '2021-12-10 16:29:53', 1),
(4, NULL, 1, 0, 1, '2021-12-10 16:35:24', '2021-12-10 16:34:09', 1),
(5, NULL, 1, 0, 1, '2021-12-10 16:43:37', '2021-12-10 16:38:27', 1),
(6, NULL, 1, 0, 1, '2021-12-10 16:43:33', '2021-12-10 16:42:59', 1),
(7, NULL, 1, 0, 1, '2022-01-06 17:54:02', '2022-01-06 17:54:02', 1),
(8, NULL, 1, 0, 1, '2022-01-06 18:00:42', '2022-01-06 18:00:42', 1),
(9, NULL, 1, 0, 1, '2022-01-06 18:04:00', '2022-01-06 18:04:00', 1),
(10, NULL, 1, 0, 1, '2022-01-06 18:21:53', '2022-01-06 18:21:53', 1),
(11, NULL, 1, 0, 1, '2022-01-06 18:26:14', '2022-01-06 18:26:14', 1),
(12, NULL, 1, 0, 1, '2022-01-06 18:29:29', '2022-01-06 18:29:29', 1),
(13, NULL, 1, 0, 1, '2022-01-06 18:32:56', '2022-01-06 18:32:56', 1),
(14, NULL, 1, 0, 1, '2022-01-06 19:42:23', '2022-01-06 19:42:23', 1),
(15, NULL, 2, 0, 1, '2022-01-06 19:48:14', '2022-01-06 19:48:14', 1),
(16, NULL, NULL, 0, 0, '2022-01-07 17:15:23', '2022-01-07 17:15:23', 1),
(17, NULL, NULL, 0, 0, '2022-01-07 17:17:05', '2022-01-07 17:17:05', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_item_order_item_orders`
--

CREATE TABLE `omeka_item_order_item_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `collection_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_item_types`
--

CREATE TABLE `omeka_item_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `omeka_item_types`
--

INSERT INTO `omeka_item_types` (`id`, `name`, `description`) VALUES
(1, 'Text', 'A resource consisting primarily of words for reading. Examples include books, letters, dissertations, poems, newspapers, articles, archives of mailing lists. Note that facsimiles or images of texts are still of the genre Text.'),
(3, 'Moving Image', 'A series of visual representations imparting an impression of motion when shown in succession. Examples include animations, movies, television programs, videos, zoetropes, or visual output from a simulation.'),
(4, 'Oral History', 'A resource containing historical information obtained in interviews with persons having firsthand knowledge.'),
(5, 'Sound', 'A resource primarily intended to be heard. Examples include a music playback file format, an audio compact disc, and recorded speech or sounds.'),
(6, 'Still Image', 'A static visual representation. Examples include paintings, drawings, graphic designs, plans and maps. Recommended best practice is to assign the type Text to images of textual materials.'),
(7, 'Website', 'A resource comprising of a web page or web pages and all related assets ( such as images, sound and video files, etc. ).'),
(8, 'Event', 'A non-persistent, time-based occurrence. Metadata for an event provides descriptive information that is the basis for discovery of the purpose, location, duration, and responsible agents associated with an event. Examples include an exhibition, webcast, conference, workshop, open day, performance, battle, trial, wedding, tea party, conflagration.'),
(9, 'Email', 'A resource containing textual messages and binary attachments sent electronically from one person to another or one person to many people.'),
(10, 'Lesson Plan', 'A resource that gives a detailed description of a course of instruction.'),
(11, 'Hyperlink', 'A link, or reference, to another resource on the Internet.'),
(12, 'Person', 'An individual.'),
(13, 'Interactive Resource', 'A resource requiring interaction from the user to be understood, executed, or experienced. Examples include forms on Web pages, applets, multimedia learning objects, chat services, or virtual reality environments.'),
(14, 'Dataset', 'Data encoded in a defined structure. Examples include lists, tables, and databases. A dataset may be useful for direct machine processing.'),
(15, 'Physical Object', 'An inanimate, three-dimensional object or substance. Note that digital representations of, or surrogates for, these objects should use Moving Image, Still Image, Text or one of the other types.'),
(16, 'Service', 'A system that provides one or more functions. Examples include a photocopying service, a banking service, an authentication service, interlibrary loans, a Z39.50 or Web server.'),
(17, 'Software', 'A computer program in source or compiled form. Examples include a C source file, MS-Windows .exe executable, or Perl script.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_item_types_elements`
--

CREATE TABLE `omeka_item_types_elements` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_type_id` int(10) UNSIGNED NOT NULL,
  `element_id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `omeka_item_types_elements`
--

INSERT INTO `omeka_item_types_elements` (`id`, `item_type_id`, `element_id`, `order`) VALUES
(1, 1, 7, NULL),
(2, 1, 1, NULL),
(3, 6, 7, NULL),
(6, 6, 10, NULL),
(7, 3, 7, NULL),
(8, 3, 11, NULL),
(9, 3, 12, NULL),
(10, 3, 13, NULL),
(11, 3, 14, NULL),
(12, 3, 5, NULL),
(13, 5, 7, NULL),
(14, 5, 11, NULL),
(15, 5, 15, NULL),
(16, 5, 5, NULL),
(17, 4, 7, NULL),
(18, 4, 11, NULL),
(19, 4, 15, NULL),
(20, 4, 5, NULL),
(21, 4, 2, NULL),
(22, 4, 3, NULL),
(23, 4, 4, NULL),
(24, 4, 16, NULL),
(25, 9, 17, NULL),
(26, 9, 18, NULL),
(27, 9, 20, NULL),
(28, 9, 19, NULL),
(29, 9, 21, NULL),
(30, 9, 22, NULL),
(31, 9, 23, NULL),
(32, 10, 24, NULL),
(33, 10, 25, NULL),
(34, 10, 26, NULL),
(35, 10, 11, NULL),
(36, 10, 27, NULL),
(37, 7, 6, NULL),
(38, 11, 28, NULL),
(39, 8, 29, NULL),
(40, 8, 30, NULL),
(41, 8, 11, NULL),
(42, 12, 31, NULL),
(43, 12, 32, NULL),
(44, 12, 33, NULL),
(45, 12, 34, NULL),
(46, 12, 35, NULL),
(47, 12, 36, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_keys`
--

CREATE TABLE `omeka_keys` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `key` char(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varbinary(16) DEFAULT NULL,
  `accessed` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_options`
--

CREATE TABLE `omeka_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `omeka_options`
--

INSERT INTO `omeka_options` (`id`, `name`, `value`) VALUES
(1, 'omeka_version', '3.0.1'),
(2, 'administrator_email', 'asp161@gcloud.ua.es'),
(3, 'copyright', 'Álvaro Sánchez Pinedo y Jorge Zaragoza Garrigós'),
(4, 'site_title', 'Biblioteca'),
(5, 'author', ''),
(6, 'description', 'Sitio web dedicado a la organización de libros.'),
(7, 'thumbnail_constraint', '200'),
(8, 'square_thumbnail_constraint', '200'),
(9, 'fullsize_constraint', '800'),
(10, 'per_page_admin', '10'),
(11, 'per_page_public', '10'),
(12, 'show_empty_elements', '0'),
(13, 'path_to_convert', ''),
(14, 'admin_theme', 'default'),
(16, 'file_extension_whitelist', 'aac,aif,aiff,asf,asx,avi,bmp,c,cc,class,css,divx,doc,docx,exe,gif,gz,gzip,h,ico,j2k,jp2,jpe,jpeg,jpg,m4a,m4v,mdb,mid,midi,mov,mp2,mp3,mp4,mpa,mpe,mpeg,mpg,mpp,odb,odc,odf,odg,odp,ods,odt,ogg,opus,pdf,png,pot,pps,ppt,pptx,qt,ra,ram,rtf,rtx,swf,tar,tif,tiff,txt,wav,wax,webm,wma,wmv,wmx,wri,xla,xls,xlsx,xlt,xlw,zip'),
(17, 'file_mime_type_whitelist', 'application/msword,application/ogg,application/pdf,application/rtf,application/vnd.ms-access,application/vnd.ms-excel,application/vnd.ms-powerpoint,application/vnd.ms-project,application/vnd.ms-write,application/vnd.oasis.opendocument.chart,application/vnd.oasis.opendocument.database,application/vnd.oasis.opendocument.formula,application/vnd.oasis.opendocument.graphics,application/vnd.oasis.opendocument.presentation,application/vnd.oasis.opendocument.spreadsheet,application/vnd.oasis.opendocument.text,application/x-ms-wmp,application/x-ogg,application/x-gzip,application/x-msdownload,application/x-shockwave-flash,application/x-tar,application/zip,audio/aac,audio/aiff,audio/mid,audio/midi,audio/mp3,audio/mp4,audio/mpeg,audio/mpeg3,audio/ogg,audio/wav,audio/wma,audio/x-aac,audio/x-aiff,audio/x-m4a,audio/x-midi,audio/x-mp3,audio/x-mp4,audio/x-mpeg,audio/x-mpeg3,audio/x-mpegaudio,audio/x-ms-wax,audio/x-realaudio,audio/x-wav,audio/x-wma,image/bmp,image/gif,image/icon,image/jpeg,image/pjpeg,image/png,image/tiff,image/x-icon,image/x-ms-bmp,text/css,text/plain,text/richtext,text/rtf,video/asf,video/avi,video/divx,video/mp4,video/mpeg,video/msvideo,video/ogg,video/quicktime,video/webm,video/x-m4v,video/x-ms-wmv,video/x-msvideo'),
(18, 'disable_default_file_validation', ''),
(20, 'display_system_info', '1'),
(21, 'html_purifier_is_enabled', '1'),
(22, 'html_purifier_allowed_html_elements', 'p,br,strong,em,span,div,ul,ol,li,a,h1,h2,h3,h4,h5,h6,address,pre,table,tr,td,blockquote,thead,tfoot,tbody,th,dl,dt,dd,q,small,strike,sup,sub,b,i,big,small,tt'),
(23, 'html_purifier_allowed_html_attributes', '*.style,*.class,a.href,a.title,a.target'),
(24, 'tag_delimiter', ','),
(26, 'search_record_types', 'a:3:{s:4:\"Item\";s:8:\"Elemento\";s:4:\"File\";s:7:\"Archivo\";s:10:\"Collection\";s:10:\"Colección\";}'),
(27, 'api_enable', ''),
(28, 'api_per_page', '50'),
(29, 'show_element_set_headings', '1'),
(30, 'use_square_thumbnail', '1'),
(32, 'public_theme', 'rhythm'),
(40, 'theme_rhythm_options', 'a:8:{s:11:\"style_sheet\";s:4:\"fall\";s:12:\"site_tagline\";s:0:\"\";s:4:\"logo\";N;s:21:\"homepage_recent_items\";s:0:\"\";s:13:\"homepage_text\";s:0:\"\";s:11:\"footer_text\";s:116:\"Página realizada por Álvaro Sánchez y Jorge Zaragoza, estudiantes de Ing.Multimedia en la Universidad de Alicante\";s:24:\"display_footer_copyright\";s:1:\"0\";s:19:\"use_advanced_search\";s:1:\"0\";}'),
(41, 'csv_export_canonical_file_urls', '0'),
(42, 'csv_export_separator_character', ','),
(43, 'csv_export_separator_character_internal', '^^'),
(44, 'csv_import_memory_limit', ''),
(45, 'csv_import_php_path', ''),
(50, 'csv_import_column_delimiter', ','),
(51, 'csv_import_element_delimiter', ''),
(52, 'csv_import_tag_delimiter', ','),
(53, 'csv_import_file_delimiter', ','),
(55, 'search_by_metadata_elements', 'a:1:{s:11:\"Dublin Core\";a:7:{i:0;s:7:\"Creator\";i:1;s:4:\"Date\";i:2;s:11:\"Description\";i:3;s:8:\"Language\";i:4;s:7:\"Subject\";i:5;s:5:\"Title\";i:6;s:4:\"Type\";}}'),
(62, 'simple_contact_form_forward_to_email', 'asp161@gcloud.ua.es'),
(63, 'simple_contact_form_contact_page_title', 'Contacto'),
(64, 'simple_contact_form_contact_page_instructions', '<p>Porfavor, manda cualquier tipo de problema o bug en la web</p>'),
(65, 'simple_contact_form_thankyou_page_title', 'Gracias por tu mensaje!'),
(66, 'simple_contact_form_thankyou_page_message', '<p>Apreciamos los usuarios que ayudan a mejorar nuestro sitio web, muchas gracias</p>'),
(67, 'simple_contact_form_add_to_main_navigation', '1'),
(75, 'omeka_update', 'a:2:{s:14:\"latest_version\";s:6:\"3.0.1\n\";s:12:\"last_updated\";i:1641498501;}'),
(77, 'exhibit_builder_sort_browse', 'added'),
(90, 'public_navigation_main', '[{\"uid\":\"http:\\/\\/localhost\\/omeka\\/\",\"can_delete\":true,\"type\":\"Omeka_Navigation_Page_Uri\",\"label\":\"Inicio\",\"fragment\":null,\"id\":null,\"class\":null,\"title\":null,\"target\":null,\"accesskey\":null,\"rel\":[],\"rev\":[],\"customHtmlAttribs\":[],\"order\":1,\"resource\":null,\"privilege\":null,\"active\":false,\"visible\":true,\"pages\":[],\"uri\":\"http:\\/\\/localhost\\/omeka\\/\"},{\"uid\":\"\\/omeka\\/items\\/browse\",\"can_delete\":false,\"type\":\"Omeka_Navigation_Page_Uri\",\"label\":\"Libros\",\"fragment\":null,\"id\":null,\"class\":null,\"title\":null,\"target\":null,\"accesskey\":null,\"rel\":[],\"rev\":[],\"customHtmlAttribs\":[],\"order\":2,\"resource\":null,\"privilege\":null,\"active\":false,\"visible\":true,\"pages\":[],\"uri\":\"\\/omeka\\/items\\/browse\"},{\"uid\":\"\\/omeka\\/collections\\/browse\",\"can_delete\":false,\"type\":\"Omeka_Navigation_Page_Uri\",\"label\":\"Procedencia\",\"fragment\":null,\"id\":null,\"class\":null,\"title\":null,\"target\":null,\"accesskey\":null,\"rel\":[],\"rev\":[],\"customHtmlAttribs\":[],\"order\":3,\"resource\":null,\"privilege\":null,\"active\":false,\"visible\":true,\"pages\":[],\"uri\":\"\\/omeka\\/collections\\/browse\"},{\"uid\":\"http:\\/\\/localhost\\/omeka\\/exhibits\\/show\\/autores\\/autores\",\"can_delete\":true,\"type\":\"Omeka_Navigation_Page_Uri\",\"label\":\"Autores\",\"fragment\":null,\"id\":null,\"class\":null,\"title\":null,\"target\":null,\"accesskey\":null,\"rel\":[],\"rev\":[],\"customHtmlAttribs\":[],\"order\":4,\"resource\":null,\"privilege\":null,\"active\":false,\"visible\":true,\"pages\":[],\"uri\":\"http:\\/\\/localhost\\/omeka\\/exhibits\\/show\\/autores\\/autores\"},{\"uid\":\"\\/omeka\\/contact\",\"can_delete\":false,\"type\":\"Omeka_Navigation_Page_Uri\",\"label\":\"Contacto\",\"fragment\":null,\"id\":null,\"class\":null,\"title\":null,\"target\":null,\"accesskey\":null,\"rel\":[],\"rev\":[],\"customHtmlAttribs\":[],\"order\":5,\"resource\":null,\"privilege\":null,\"active\":false,\"visible\":true,\"pages\":[],\"uri\":\"\\/omeka\\/contact\"},{\"uid\":\"\\/omeka\\/exhibits\",\"can_delete\":false,\"type\":\"Omeka_Navigation_Page_Uri\",\"label\":\"Expsoiciones\",\"fragment\":null,\"id\":null,\"class\":null,\"title\":null,\"target\":null,\"accesskey\":null,\"rel\":[],\"rev\":[],\"customHtmlAttribs\":[],\"order\":6,\"resource\":null,\"privilege\":null,\"active\":false,\"visible\":true,\"pages\":[],\"uri\":\"\\/omeka\\/exhibits\"}]'),
(91, 'homepage_uri', 'http://localhost/omeka/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_plugins`
--

CREATE TABLE `omeka_plugins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL,
  `version` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `omeka_plugins`
--

INSERT INTO `omeka_plugins` (`id`, `name`, `active`, `version`) VALUES
(1, 'SimplePages', 1, '3.2'),
(2, 'AdminImages', 1, '1.3'),
(3, 'ItemOrder', 1, '2.0.2'),
(4, 'CSSEditor', 1, '1.1'),
(5, 'CsvExport', 1, '1.1.2'),
(6, 'YouTubeImport', 1, '1.3'),
(7, 'CsvImport', 1, '2.0.6'),
(8, 'SearchByMetadata', 1, '1.2.1'),
(9, 'SimpleContactForm', 1, '1.1.1'),
(10, 'ExhibitBuilder', 1, '3.5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_processes`
--

CREATE TABLE `omeka_processes` (
  `id` int(10) UNSIGNED NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('starting','in progress','completed','paused','error','stopped') COLLATE utf8_unicode_ci NOT NULL,
  `args` text COLLATE utf8_unicode_ci NOT NULL,
  `started` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `stopped` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_records_tags`
--

CREATE TABLE `omeka_records_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `record_id` int(10) UNSIGNED NOT NULL,
  `record_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag_id` int(10) UNSIGNED NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `omeka_records_tags`
--

INSERT INTO `omeka_records_tags` (`id`, `record_id`, `record_type`, `tag_id`, `time`) VALUES
(2, 1, 'Item', 2, '2021-12-03 17:07:35'),
(3, 1, 'Item', 3, '2021-12-03 17:07:35'),
(4, 1, 'Item', 4, '2021-12-03 17:07:35'),
(5, 1, 'Item', 5, '2021-12-03 17:07:35'),
(6, 1, 'Item', 6, '2021-12-03 17:07:35'),
(7, 2, 'Item', 7, '2021-12-03 17:12:37'),
(8, 2, 'Item', 8, '2021-12-03 17:12:37'),
(9, 2, 'Item', 9, '2021-12-03 17:12:37'),
(10, 3, 'Item', 10, '2021-12-10 16:29:54'),
(11, 3, 'Item', 9, '2021-12-10 16:29:54'),
(12, 3, 'Item', 11, '2021-12-10 16:29:54'),
(13, 3, 'Item', 5, '2021-12-10 16:29:54'),
(14, 4, 'Item', 12, '2021-12-10 16:35:24'),
(15, 4, 'Item', 8, '2021-12-10 16:35:24'),
(16, 4, 'Item', 9, '2021-12-10 16:35:24'),
(17, 5, 'Item', 1, '2021-12-10 16:39:54'),
(18, 5, 'Item', 13, '2021-12-10 16:39:54'),
(19, 6, 'Item', 1, '2021-12-10 16:42:59'),
(20, 6, 'Item', 13, '2021-12-10 16:42:59'),
(21, 8, 'Item', 14, '2022-01-06 18:00:44'),
(22, 8, 'Item', 9, '2022-01-06 18:00:44'),
(23, 9, 'Item', 6, '2022-01-06 18:04:00'),
(24, 9, 'Item', 15, '2022-01-06 18:04:00'),
(25, 10, 'Item', 5, '2022-01-06 18:21:54'),
(26, 10, 'Item', 16, '2022-01-06 18:21:54'),
(27, 11, 'Item', 8, '2022-01-06 18:26:14'),
(28, 11, 'Item', 17, '2022-01-06 18:26:14'),
(29, 11, 'Item', 13, '2022-01-06 18:26:14'),
(30, 12, 'Item', 13, '2022-01-06 18:29:29'),
(31, 13, 'Item', 9, '2022-01-06 18:32:56'),
(32, 13, 'Item', 18, '2022-01-06 18:32:56'),
(33, 14, 'Item', 17, '2022-01-06 19:42:23'),
(34, 14, 'Item', 6, '2022-01-06 19:42:23'),
(35, 15, 'Item', 13, '2022-01-06 19:48:14'),
(36, 16, 'Item', 19, '2022-01-07 17:15:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_schema_migrations`
--

CREATE TABLE `omeka_schema_migrations` (
  `version` varchar(16) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `omeka_schema_migrations`
--

INSERT INTO `omeka_schema_migrations` (`version`) VALUES
('20100401000000'),
('20100810120000'),
('20110113000000'),
('20110124000001'),
('20110301103900'),
('20110328192100'),
('20110426181300'),
('20110601112200'),
('20110627223000'),
('20110824110000'),
('20120112100000'),
('20120220000000'),
('20120221000000'),
('20120224000000'),
('20120224000001'),
('20120402000000'),
('20120516000000'),
('20120612112000'),
('20120623095000'),
('20120710000000'),
('20120723000000'),
('20120808000000'),
('20120808000001'),
('20120813000000'),
('20120914000000'),
('20121007000000'),
('20121015000000'),
('20121015000001'),
('20121018000001'),
('20121110000000'),
('20121218000000'),
('20130422000000'),
('20130426000000'),
('20130429000000'),
('20130701000000'),
('20130809000000'),
('20140304131700'),
('20150211000000'),
('20150310141100'),
('20150814155100'),
('20151118214800'),
('20151209103299'),
('20151209103300'),
('20161209171900'),
('20170331084000'),
('20170405125800'),
('20200127165700');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_search_texts`
--

CREATE TABLE `omeka_search_texts` (
  `id` int(10) UNSIGNED NOT NULL,
  `record_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `record_id` int(10) UNSIGNED NOT NULL,
  `public` tinyint(1) NOT NULL,
  `title` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `omeka_search_texts`
--

INSERT INTO `omeka_search_texts` (`id`, `record_type`, `record_id`, `public`, `title`, `text`) VALUES
(21, 'Exhibit', 2, 1, 'Exposición Literatura', 'Exposición Literatura <p>La Literatura es el arte que utiliza las palabras como medio de expresión</p> '),
(2, 'Item', 1, 1, 'Death Note', 'drama fantasía misterio policiaca suspense Death Note Death Note cuenta la historia de Light Yagami, un estudiante excepcional de secundaria que encuentra un misterioso cuaderno de notas el cual pertenece a un dios de la muerte también llamado shinigami que responde al nombre de Ryuk. El poder de este sobrenatural bloc de notas permite terminar con la vida de los demás. Tsugumi Ōba 2003 manga japonés '),
(3, 'Collection', 1, 1, 'Literatura Occidental', 'Literatura Occidental '),
(4, 'Item', 2, 1, 'Don Quijote De La Mancha', 'aventuras parodia sátira Don Quijote De La Mancha El ingenioso hidalgo don Quijote de la Mancha narra las aventuras de Alonso Quijano, un hidalgo pobre que de tanto leer novelas de caballería acaba enloqueciendo y creyendo ser un caballero andante, nombrándose a sí mismo como don Quijote de la Mancha. Miguel de Cervantes 1605 Literatura occidental castellano '),
(5, 'Collection', 2, 1, 'Literatura Oriental', 'Literatura Oriental '),
(6, 'Item', 3, 1, 'Naruto', 'acción aventuras fantasía shonen Naruto Es una serie Manga que cuenta la historia de un joven ninja hiperactivo llamado Naruto Uzumaki que hará todo lo posible por ascender al máximo grado ninja de su aldea con el propósito de ser reconocido como alguien importante dentro de su aldea. Masashi Kishimoto marzo 2000 japonés manga '),
(7, 'Item', 4, 1, 'Mortadelo y Filemón', 'aventuras humor sátira Mortadelo y Filemón Filemón es el jefe de una agencia de detectives y tiene a Mortadelo como empleado y único ayudante. Francisco Ibáñez 1958 cómic español '),
(8, 'Item', 5, 1, 'La llamada de Cthulhu', 'ficción terror La llamada de Cthulhu La llamada de Cthulhu da inicio con la muerte de un profesor, cuyos documentos de estudio llegan a manos del personaje principal quién a través de ellos descubre la existencia de Cthulhu, una horrorosa criatura que habita en las profundidades del mar y que es venerada por una sexta. H. P. Lovecraft 1928 literatura occidental inglés '),
(9, 'Item', 6, 1, 'El Gato Negro', 'ficción terror El Gato Negro Un joven matrimonio lleva una vida hogareña apacible en compañía de varios animales domésticos, entre ellos un misterioso gato negro. Todo cambia cuando el marido empieza a dejarse arrastrar por la bebida. El alcohol le vuelve irascible y en uno de sus accesos de furia acaba con la vida del animal. Edgar Allan Poe 1843 literatura occidental inglés '),
(10, 'Item', 7, 1, 'Romancero Gitano', 'Romancero Gitano El Romancero gitano es una obra poética de Federico García Lorca, publicada en 1928. Está compuesta por dieciocho romances con temas como la noche, la muerte, el cielo, la luna. Todos los poemas tienen algo en común, tratan de la cultura gitana. Federico García Lorca 1928 Castellano '),
(11, 'Item', 8, 1, 'Viaje Al Centro De La Tierra', 'aventuras ciencia ficción Viaje Al Centro De La Tierra El joven Axel y su tío, el profesor Otto, emprenden un viaje fantástico al interior de la Tierra. Y todo ello a partir del descubrimiento de unos signos misteriosos hallados entre las páginas de un libro antiguo. Julio Verne 1864 Castellano '),
(12, 'Item', 9, 1, 'Historia De Una Escalera', 'drama guerra civil Historia De Una Escalera Historia de una escalera es una obra de teatro (1947 y 1948) de Antonio Buero Vallejo, por la que recibió el Premio Lope de Vega. En ella se analiza la sociedad española, con todas sus mentiras, a través de la vecindad de una escalera. El tema principal de la obra es la frustración individual y el amor entre jóvenes. Antonio Buero Vallejo 1947 Castellano '),
(13, 'Item', 10, 1, 'El Mago De Oz', 'fantasía infantil El Mago De Oz Mago de Oz: Vive en la Ciudad Esmeralda, al centro del País de Oz. Ha ganado reputación de ser un ser superior, pues ha mantenido a raya a las Brujas del Este y del Oeste, que le han hecho la guerra durante años. Al igual que Dorothy llegó accidentalmente a Oz. L. Frank Baum 1945 Castellano '),
(14, 'Item', 11, 1, 'Orgullo y Prejuicio', 'ficción romance sátira Orgullo y Prejuicio Orgullo y prejuicio narra las aventuras y desventuras amorosas de las hermanas Bennet, centrándose en el personaje de Elizabeth, a través de las cuales la autora nos presenta con comicidad la sociedad de su tiempo y coloca a la mujer en un lugar más notorio que el que le correspondía en su época con la figura de la ... Jane Austen 1813 inglés '),
(15, 'Item', 12, 1, 'El Retrato Dorian Gray', 'ficción El Retrato Dorian Gray Basil Hallward es un artista que queda fuertemente impresionado por la belleza estética de un joven llamado Dorian Gray y comienza a admirarlo. Basil pinta un retrato del joven. ... Al darse cuenta de que un día su belleza se desvanecerá, Dorian desea tener siempre la edad de cuando Basil le pintó en el cuadro. Oscar Wilde 1890 inglés '),
(16, 'Item', 13, 1, 'El Lazarillo De Tormes', 'aventuras picaresca El Lazarillo De Tormes Lazarillo de Tormes: es el protagonista de la novela, representa la clase baja y vagabunda de la época. Es un antihéroe, astuto, dependiente para poder subsistir, y un pícaro. El iba de amo en amo para satisfacer su hambruna. Cada amo era una situación social diferente. Anónimo 1554 castellano '),
(17, 'Item', 14, 1, 'Romeo y Julieta', 'drama romance Romeo y Julieta Romeo y Julieta es una historia de amor entre dos jóvenes de 16 años. Son de familias enemigas en la ciudad de Verona. Pertenecen a las familias de los Capuletos y los Montescos, que son las más poderosas de la ciudad pero están enfrentadas entre sí. William Shakespeare 1597 inglés '),
(18, 'Item', 15, 1, 'La Mujer Del Kimono Blanco', 'ficción La Mujer Del Kimono Blanco La mujer del kimono blanco es una emotiva novela de Ana Johns que aborda la dureza del Japón de la posguerra desde un prisma humano. La novela alterna dos líneas temporales distintas, una en Estados Unidos en la actualidad y otra en el Japón de 1957. Las dos líneas temporales confluirán en un final emotivo y agridulce. Ana Johns 1957 japonés '),
(19, 'Exhibit', 1, 1, 'Literatura gótica', 'Literatura gótica  '),
(22, 'ExhibitPage', 2, 1, 'Literatura española', '     Literatura española '),
(23, 'ExhibitPage', 3, 1, 'Literatura internacional', '   Literatura internacional '),
(24, 'Exhibit', 3, 0, 'Autores', 'Autores <p><span>Los buenos escritores son aquellos que conservan la eficiencia del lenguaje.</span></p> '),
(25, 'Item', 16, 0, 'H.P Lovecraft', 'autor H.P Lovecraft '),
(26, 'Item', 17, 0, 'Edgar Allan Poe', 'Edgar Allan Poe '),
(27, 'ExhibitPage', 4, 0, 'Autores', '<p><span>Howard Lovecraft </span>nació el 20 de agosto de 1890 en Providence, Rhode Island, Estados Unidos. Hijo único de Winfield Scott Lovecraft representante de ventas y de Sarah Susan Phillips.<br />Cuando tenía tres años, su padre sufrió una crisis nerviosa en la habitación de un hotel de Chicago y fue ingresado en un centro psiquiátrico de Providence siendo incapacitado legalmente,<span>Lovecraft además tuvo una mala relación con su madre que </span><span>lo sobreprotegió hasta límites demenciales y lo trató como si fuera su único bien en la tierra. Esta actitud provocó que a Lovecraft le costara convivir con su entorno debido a la poca habilidad que desarrolló para relacionarse con el resto de las personas</span>.</p>\r\n<p>Lovecraft recitaba poesía a los dos años, leía a los tres y empezó a escribir a los seis años. Debido a su mala salud, no asistió al colegio hasta los ocho años y lo abandonó después de un año.<br /><br />Fue una persona solitaria que dedicaba su tiempo a la lectura, la astronomía y a cartearse con otros aficionados a la literatura macabra,e<span>ntre 1903 y 1908, Lovecraft vivió como un ermitaño sin apenas contacto con el mundo exterior</span>.</p>\r\n<p>Su prosa está influenciada por Lord Dunsany, William H. Hodgson, Arthur Machen y Edgar Allan Poe. Fue un gran innovador del cuento de terror gracias a su singular tratamiento de la narrativa y la atmósfera de sus historias, que acercó el género a la ciencia-ficción.</p>\r\n<p>Con dieciséis años escribía una columna de astronomía para el Providence Tribune. De 1908 a 1923 ganaba algo de dinero escribiendo ocasionalmente relatos para revistas de poca tirada, como Weird Tales. Diez años más adelante, su obra empezó a interesar a mucha gente.</p>\r\n<p>Sus relatos tratan sobre espíritus malignos, posesiones psíquicas y mundos oníricos donde el tiempo y el espacio se alteran irremediablemente, como en sus Mitos de Cthulhu, un trabajo colectivo que fue creciendo con las aportaciones del llamado Círculo de Lovecraft, un grupo de escritores formado por el propio Lovecraft, Clark Ashton Smith, Robert E. Howard, Robert Bloch, August Derleth, Frank Belknap, Long Henry Kuttner, E. Hoffman Price y otros. También fueron incluidas aportaciones provenientes de escritores anteriores como Ambrose Bierce, Algernon Blackwood, o Robert W. Chambers y de algunas mitologías como la árabe, la polinesia o la sumeria.<br /><br />Sus relatos se recopilaron en varios volúmenes póstumos, entre los que figuran El extraño y otros cuentos (1939) y El cazador en la oscuridad y otros cuentos (1951).</p>\r\n<p><span>Tras la muerte de su madre en 1921, Lovecraft acudió a una convención de escritores aficionados en Boston donde conoció a Sonia H. Greene. </span>Sonia era hija de inmigrantes judíos procedentes de Ucrania, viuda y siete años mayor que él. Se casó con Sonia Greene en 1924, y se mudó a Brooklyn, en la ciudad de Nueva York. En 1926, se divorciaron.</p>\r\n<p>Howard Lovecraft murió de cáncer intestinal en el hospital Jane Brown Memorial, de Providence el 15 de marzo de 1937 en la pobreza y el anonimato. Fue enterrado tres días después en el panteón de su abuelo Phillips en el cementerio de Swan Point. </p>\r\n<p></p>\r\n<p></p>\r\n<p>---------------------------------------------------------------------------------------------</p>  <p><span>Edgar Allan Poe </span>nació en Boston, Estados Unidos, el 19 de enero de 1809, y murió el 7 de octubre de 1849 en Baltimore, Estados Unidos. <span>Fue un escritor, crítico, periodista y poeta estadounidense</span>. Es reconocido como uno de los padres del cuento moderno, así como el creador del género policial. Además, fue un gran escritor tanto de ciencia ficcion como de obras de terror.</p>\r\n<p>Edgar Allan Poe perdió a sus padres, actores de teatro itinerantes, cuando contaba apenas dos años de edad. El pequeño Edgar fue educado por John Allan, un acaudalado hombre de negocios de Richmond. Las relaciones de Poe con su padre adoptivo fueron traumáticas; también la temprana muerte de su madre se convertiría en una de sus obsesiones recurrentes. De 1815 a 1820 vivió con John Allan y su esposa en el Reino Unido, donde comenzó su educación.</p>\r\n<p>La familia había viajado porque John Allan tenía negocios en el viejo continente. Como estos no tuvieron buen término, los Allan regresaron a Richmond en 1820 .Después de regresar a Estados Unidos, Edgar Allan Poe siguió estudiando en centros privados y asistió a la Universidad de Virginia, pero en 1827 su afición al juego y a la bebida le acarreó la expulsión. Abandonó poco después el puesto de empleado que le había asignado su padre adoptivo, y viajó a Boston, donde publicó anónimamente su primer libro, <em>Tamerlán y otros poemas </em>(Tamerlane and Other Poems, 1827).</p>\r\n<p>Se alistó luego en el ejército, en el que permaneció dos años. En 1829 apareció su segundo libro de poemas, <em>Al Aaraaf</em>, y obtuvo, por influencia de su padre adoptivo, un cargo en la Academia Militar de West Point, de la que a los pocos meses fue expulsado por negligencia en el cumplimiento del deber.</p>\r\n<p>Ese mismo año partió a Nueva York y publicó <em>Poems</em> con ayuda de sus antiguos compañeros de la Academia. Y más tarde se trasladó a la casa de su tía, donde su hermano Henry murió ese mismo año, en parte, por el alcoholismo.</p>\r\n<p>En 1832, y después de la publicación de su tercer libro, <em>Poemas </em>(Poems by Edgar Allan Poe, 1831), se desplazó a Baltimore, donde contrajo matrimonio con su jovencísima prima Virginia Clemm, que tenía entoces catorce años. Por esta época entró como redactor en el periódico Southern Baltimore Messenger, en el que aparecieron diversas narraciones y poemas suyos, y que bajo su dirección se convertiría en el más importante periódico del sur del país.</p>\r\n<p><span>En 1845, publicó su poema más famoso, </span><em>El cuervo</em><span>, por el que sería reconocido en todo el país</span>, pero del que sólo habría recibido 9 dólares por su publicación.</p>\r\n<p>En 1847 murió Virginia de tuberculosis, y el comportamiento y el estado de ánimo de Poe se vieron claramente afectados, al punto de realizar varias acciones erráticas e inducirlo al alcoholismo y al consumo de drogas. Finalmente, Poe volvió a Richmond, donde se encontró con su amor de la juventud, Sarah Elmira Royster. Ambos estuvieron de acuerdo en casarse el 17 de octubre de 1849.</p>\r\n<p><span>El 3 de octubre de 1849,</span> : fue hallado inconsciente en una calle de Baltimore y conducido a un hospital, donde falleció pocos días más tarde, el 7 de octubre  aparentemente de un ataque cerebral.</p>  Autores '),
(20, 'ExhibitPage', 1, 1, 'Literatura Gótica', '<p>Las características de este género pasan en primer lugar por una ambientación romántica: paisajes sombríos, bosques tenebrosos, ruinas medievales y castillos con sus respectivos sótanos, criptas y pasadizos bien poblados de fantasmas, ruidos nocturnos, cadenas, esqueletos, demonios... Personajes fascinantes, extraños e insólitos, grandes peligros y a menudo cándidas muchachas en apuros; los elementos sobrenaturales podían aparecer directamente o solamente ser sugeridos. Estas ubicaciones y personajes, en tiempo y espacio, respondían a la demanda de temas exóticos característica de la tendencia al medievalismo, el exotismo y el orientalismo propia de la sensibilidad romántica.</p>    Literatura Gótica ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_sessions`
--

CREATE TABLE `omeka_sessions` (
  `id` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `modified` bigint(20) DEFAULT NULL,
  `lifetime` int(11) DEFAULT NULL,
  `data` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `omeka_sessions`
--

INSERT INTO `omeka_sessions` (`id`, `modified`, `lifetime`, `data`) VALUES
('c9mhlc8vpcus65nofofikkpk6e', 1641577521, 1209600, 0x44656661756c747c613a313a7b733a383a227265646972656374223b733a313a222f223b7d5a656e645f417574687c613a313a7b733a373a2273746f72616765223b693a313b7d4f6d656b6153657373696f6e43737266546f6b656e7c613a313a7b733a353a22746f6b656e223b733a33323a223365363330613661353735626539363435386333323961343732656263313864223b7d5f5f5a467c613a343a7b733a34313a225a656e645f466f726d5f456c656d656e745f486173685f73616c745f73657474696e67735f63737266223b613a323a7b733a343a22454e4e48223b693a313b733a333a22454e54223b693a313634313537373936343b7d733a33373a225a656e645f466f726d5f456c656d656e745f486173685f73616c745f757365725f63737266223b613a323a7b733a343a22454e4e48223b693a313b733a333a22454e54223b693a313634313537383839333b7d733a34333a225a656e645f466f726d5f456c656d656e745f486173685f73616c745f617070656172616e63655f63737266223b613a323a7b733a343a22454e4e48223b693a313b733a333a22454e54223b693a313634313537393533303b7d733a34333a225a656e645f466f726d5f456c656d656e745f486173685f73616c745f6e617669676174696f6e5f63737266223b613a323a7b733a343a22454e4e48223b693a313b733a333a22454e54223b693a313634313537393535303b7d7d5a656e645f466f726d5f456c656d656e745f486173685f73616c745f73657474696e67735f637372667c613a313a7b733a343a2268617368223b733a33323a226564336137373934346330663438666230333735353465346334343739323034223b7d5a656e645f466f726d5f456c656d656e745f486173685f73616c745f757365725f637372667c613a313a7b733a343a2268617368223b733a33323a223161373362663531366562636365336530366534393663616235313161386231223b7d5a656e645f466f726d5f456c656d656e745f486173685f73616c745f617070656172616e63655f637372667c613a313a7b733a343a2268617368223b733a33323a226264363939653164383638623834336263656637663063333835396134363865223b7d5a656e645f466f726d5f456c656d656e745f486173685f73616c745f6e617669676174696f6e5f637372667c613a313a7b733a343a2268617368223b733a33323a226437383135313938396166653364656137306133623132396233626262646538223b7d);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_simple_pages_pages`
--

CREATE TABLE `omeka_simple_pages_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `modified_by_user_id` int(10) UNSIGNED NOT NULL,
  `created_by_user_id` int(10) UNSIGNED NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `title` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `slug` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `inserted` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `order` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL,
  `template` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `use_tiny_mce` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_tags`
--

CREATE TABLE `omeka_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `omeka_tags`
--

INSERT INTO `omeka_tags` (`id`, `name`) VALUES
(11, 'acción'),
(19, 'autor'),
(9, 'aventuras'),
(14, 'ciencia ficción'),
(6, 'drama'),
(5, 'fantasía'),
(13, 'ficción'),
(15, 'guerra civil'),
(12, 'humor'),
(16, 'infantil'),
(4, 'misterio'),
(7, 'parodia'),
(18, 'picaresca'),
(2, 'policiaca'),
(17, 'romance'),
(8, 'sátira'),
(10, 'shonen'),
(3, 'suspense'),
(1, 'terror');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_users`
--

CREATE TABLE `omeka_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL,
  `role` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `omeka_users`
--

INSERT INTO `omeka_users` (`id`, `username`, `name`, `email`, `password`, `salt`, `active`, `role`) VALUES
(1, 'asp161jzg6', 'Scurum Master', 'asp161@gcloud.ua.es', '072e5e0acfc9d4b790cd2622ec756baf7747a3b0', 'b21197ae795af48a', 1, 'super');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_users_activations`
--

CREATE TABLE `omeka_users_activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `omeka_admin_images`
--
ALTER TABLE `omeka_admin_images`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `omeka_collections`
--
ALTER TABLE `omeka_collections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `public` (`public`),
  ADD KEY `featured` (`featured`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Indices de la tabla `omeka_csv_import_imported_items`
--
ALTER TABLE `omeka_csv_import_imported_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item_id` (`item_id`),
  ADD KEY `import_id` (`import_id`);

--
-- Indices de la tabla `omeka_csv_import_imports`
--
ALTER TABLE `omeka_csv_import_imports`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `omeka_elements`
--
ALTER TABLE `omeka_elements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_element_set_id` (`element_set_id`,`name`),
  ADD UNIQUE KEY `order_element_set_id` (`element_set_id`,`order`),
  ADD KEY `element_set_id` (`element_set_id`);

--
-- Indices de la tabla `omeka_element_sets`
--
ALTER TABLE `omeka_element_sets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `record_type` (`record_type`);

--
-- Indices de la tabla `omeka_element_texts`
--
ALTER TABLE `omeka_element_texts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `record_type_record_id` (`record_type`,`record_id`),
  ADD KEY `element_id` (`element_id`),
  ADD KEY `text` (`text`(20));

--
-- Indices de la tabla `omeka_exhibits`
--
ALTER TABLE `omeka_exhibits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `public` (`public`);

--
-- Indices de la tabla `omeka_exhibit_block_attachments`
--
ALTER TABLE `omeka_exhibit_block_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `block_id_order` (`block_id`,`order`);

--
-- Indices de la tabla `omeka_exhibit_pages`
--
ALTER TABLE `omeka_exhibit_pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `exhibit_id_parent_id_slug` (`exhibit_id`,`parent_id`,`slug`),
  ADD KEY `exhibit_id_order` (`exhibit_id`,`order`);

--
-- Indices de la tabla `omeka_exhibit_page_blocks`
--
ALTER TABLE `omeka_exhibit_page_blocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id_order` (`page_id`,`order`);

--
-- Indices de la tabla `omeka_files`
--
ALTER TABLE `omeka_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indices de la tabla `omeka_items`
--
ALTER TABLE `omeka_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_type_id` (`item_type_id`),
  ADD KEY `collection_id` (`collection_id`),
  ADD KEY `public` (`public`),
  ADD KEY `featured` (`featured`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Indices de la tabla `omeka_item_order_item_orders`
--
ALTER TABLE `omeka_item_order_item_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id_order` (`item_id`,`order`);

--
-- Indices de la tabla `omeka_item_types`
--
ALTER TABLE `omeka_item_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `omeka_item_types_elements`
--
ALTER TABLE `omeka_item_types_elements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item_type_id_element_id` (`item_type_id`,`element_id`),
  ADD KEY `item_type_id` (`item_type_id`),
  ADD KEY `element_id` (`element_id`);

--
-- Indices de la tabla `omeka_keys`
--
ALTER TABLE `omeka_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`);

--
-- Indices de la tabla `omeka_options`
--
ALTER TABLE `omeka_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `omeka_plugins`
--
ALTER TABLE `omeka_plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `active_idx` (`active`);

--
-- Indices de la tabla `omeka_processes`
--
ALTER TABLE `omeka_processes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `started` (`started`),
  ADD KEY `stopped` (`stopped`);

--
-- Indices de la tabla `omeka_records_tags`
--
ALTER TABLE `omeka_records_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tag` (`record_type`,`record_id`,`tag_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indices de la tabla `omeka_schema_migrations`
--
ALTER TABLE `omeka_schema_migrations`
  ADD UNIQUE KEY `unique_schema_migrations` (`version`);

--
-- Indices de la tabla `omeka_search_texts`
--
ALTER TABLE `omeka_search_texts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `record_name` (`record_type`,`record_id`);
ALTER TABLE `omeka_search_texts` ADD FULLTEXT KEY `text` (`text`);

--
-- Indices de la tabla `omeka_sessions`
--
ALTER TABLE `omeka_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `omeka_simple_pages_pages`
--
ALTER TABLE `omeka_simple_pages_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `is_published` (`is_published`),
  ADD KEY `inserted` (`inserted`),
  ADD KEY `updated` (`updated`),
  ADD KEY `created_by_user_id` (`created_by_user_id`),
  ADD KEY `modified_by_user_id` (`modified_by_user_id`),
  ADD KEY `order` (`order`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indices de la tabla `omeka_tags`
--
ALTER TABLE `omeka_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `omeka_users`
--
ALTER TABLE `omeka_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `active_idx` (`active`);

--
-- Indices de la tabla `omeka_users_activations`
--
ALTER TABLE `omeka_users_activations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `omeka_admin_images`
--
ALTER TABLE `omeka_admin_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `omeka_collections`
--
ALTER TABLE `omeka_collections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `omeka_csv_import_imported_items`
--
ALTER TABLE `omeka_csv_import_imported_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `omeka_csv_import_imports`
--
ALTER TABLE `omeka_csv_import_imports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `omeka_elements`
--
ALTER TABLE `omeka_elements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `omeka_element_sets`
--
ALTER TABLE `omeka_element_sets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `omeka_element_texts`
--
ALTER TABLE `omeka_element_texts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT de la tabla `omeka_exhibits`
--
ALTER TABLE `omeka_exhibits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `omeka_exhibit_block_attachments`
--
ALTER TABLE `omeka_exhibit_block_attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `omeka_exhibit_pages`
--
ALTER TABLE `omeka_exhibit_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `omeka_exhibit_page_blocks`
--
ALTER TABLE `omeka_exhibit_page_blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `omeka_files`
--
ALTER TABLE `omeka_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `omeka_items`
--
ALTER TABLE `omeka_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `omeka_item_order_item_orders`
--
ALTER TABLE `omeka_item_order_item_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `omeka_item_types`
--
ALTER TABLE `omeka_item_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `omeka_item_types_elements`
--
ALTER TABLE `omeka_item_types_elements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `omeka_keys`
--
ALTER TABLE `omeka_keys`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `omeka_options`
--
ALTER TABLE `omeka_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT de la tabla `omeka_plugins`
--
ALTER TABLE `omeka_plugins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `omeka_processes`
--
ALTER TABLE `omeka_processes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `omeka_records_tags`
--
ALTER TABLE `omeka_records_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `omeka_search_texts`
--
ALTER TABLE `omeka_search_texts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `omeka_simple_pages_pages`
--
ALTER TABLE `omeka_simple_pages_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `omeka_tags`
--
ALTER TABLE `omeka_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `omeka_users`
--
ALTER TABLE `omeka_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `omeka_users_activations`
--
ALTER TABLE `omeka_users_activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
