-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-07-2018 a las 06:09:57
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ledit_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_Categoria` int(11) NOT NULL,
  `nombre_Categoria` varchar(200) NOT NULL,
  `imagen_Categoria` varchar(300) NOT NULL,
  `descripcion_Categoria` varchar(300) NOT NULL,
  `id_Status_Categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos`
--

CREATE TABLE `contactos` (
  `id_Contacto` int(11) NOT NULL,
  `nombre_Contacto` varchar(500) NOT NULL,
  `telefono_Contacto` int(11) NOT NULL,
  `email_Contacto` varchar(500) NOT NULL,
  `mensaje_Contacto` varchar(1000) NOT NULL,
  `fecha_Contacto` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `contactos`
--

INSERT INTO `contactos` (`id_Contacto`, `nombre_Contacto`, `telefono_Contacto`, `email_Contacto`, `mensaje_Contacto`, `fecha_Contacto`) VALUES
(12, 'Miguel Angel Rios Gómez', 2147483647, 'rios@gmail.com', 'josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, ', '2018-07-21'),
(13, 'Miguel Angel Rios Gómez', 2147483647, 'rios@gmail.com', 'josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.', '2018-07-21'),
(14, 'asdfghjkl;lkjhgfdsdfghl;\'', 2147483647, 'rios@gmail.com', 'josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.', '2018-07-21'),
(15, '345678909876543', 123123, 'rios@gmail.com', 'asdfghjhgfdsasdfghjkjhg\r\njosemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.', '2018-07-21'),
(16, 'asdasdasdasd', 2345678, 'rios@gmail.com', 'asdasdasdasda   asdasd asdasd asdasd asdasdadasdasdasdasdasdasdasdasdasdasadas   asdsadasd asdasdasdasda asdasjosemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.d asdasdas asdasdasdasdasdasdasd asdasd', '2018-07-21'),
(17, 'aasdsadsadasdasd', 23414, 'rios@gmail.com', 'sdfghjgfdsasdfghjklkjhgfdsjosemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.', '2018-07-21'),
(18, 'sdfghjklkjhgf', 123123123, 'rios@gmail.com', 'asdasdasdasdsadsadajosemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.', '2018-07-21'),
(19, 'dfghjkl;\'', 2147483647, 'rios@gmail.com', 'josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.', '2018-07-21'),
(20, 'sdfghjklkjhgfdsdfghjkh', 2147483647, 'rios@gmail.com', 'asdsadsajosemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.', '2018-07-21'),
(21, 'asaxasxas', 2147483647, 'rios@gmail.com', 'josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.', '2018-07-21'),
(22, 'sdfghjklkjhgfdsdfghjkh', 123456, 'rios@gmail.com', 'josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.josemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.', '2018-07-21'),
(23, 'SchoolBoy Q', 117117114, 'sbq@aftermath.com', '47-690-07-88\r\njosemanuel@ledit.mx\r\nled_it@live.com\r\nAlvaro Obregon 26-A Col. Centro CP 61250\r\nMaravatio, Michoacan.', '2018-07-23'),
(24, 'STONE COLD', 316, 'stone@hotmail.com', 'order by nombre_Usuarioorder by nombre_Usuarioorder by nombre_Usuarioorder by nombre_Usuario', '2018-07-24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `id_Detalle_Venta` int(11) NOT NULL,
  `id_Venta_Detalle_Venta` int(11) NOT NULL,
  `id_Producto_Detalle_Venta` int(11) NOT NULL,
  `catidad_Detalle_Venta` int(11) NOT NULL,
  `total_Detalle_Venta` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `faqs`
--

CREATE TABLE `faqs` (
  `id_Faq` int(11) NOT NULL,
  `id_Usuario_Faq` int(11) NOT NULL,
  `pregunta_Faq` varchar(500) NOT NULL,
  `respuesta_Faq` varchar(500) NOT NULL,
  `id_Status_Faq` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `faqs`
--

INSERT INTO `faqs` (`id_Faq`, `id_Usuario_Faq`, `pregunta_Faq`, `respuesta_Faq`, `id_Status_Faq`) VALUES
(3, 4, 'a', 'a', 2),
(4, 4, 'z', 'z', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galeria`
--

CREATE TABLE `galeria` (
  `id_Galeria` int(11) NOT NULL,
  `id_Usuario_Galeria` int(11) NOT NULL,
  `titulo_Galeria` varchar(100) NOT NULL,
  `imagen_Galeria` varchar(300) NOT NULL,
  `id_Status_Galeria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `galeria`
--

INSERT INTO `galeria` (`id_Galeria`, `id_Usuario_Galeria`, `titulo_Galeria`, `imagen_Galeria`, `id_Status_Galeria`) VALUES
(12, 4, 'asdasd', 'e4b84-1.jpg', 1),
(13, 4, 'asdasd', 'd6d7d-fb_img_1517848804324.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id_Noticia` int(11) NOT NULL,
  `id_Usuario_Noticia` int(11) NOT NULL,
  `titulo_Noticia` varchar(200) NOT NULL,
  `imagen_Noticia` varchar(300) NOT NULL,
  `descripcion_Corta_Noticia` varchar(300) NOT NULL,
  `descripcion_Larga_Noticia` varchar(1000) NOT NULL,
  `fecha_Noticia` date NOT NULL,
  `id_Status_Noticia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id_Noticia`, `id_Usuario_Noticia`, `titulo_Noticia`, `imagen_Noticia`, `descripcion_Corta_Noticia`, `descripcion_Larga_Noticia`, `fecha_Noticia`, `id_Status_Noticia`) VALUES
(10, 4, 'sdrtyul', 'cec8f-fb_img_1526789551445.jpg', 'sdfghjk', 'asdfghjklkjhgfdsdfghjklkjhgf', '2018-07-23', 1),
(11, 4, 'ASDASDAS', '9df53-fb_img_1527372249543.jpg', 'ASDSAD', 'ASDASD', '2018-07-23', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_Producto` int(11) NOT NULL,
  `id_Usuario_Producto` int(11) NOT NULL,
  `id_Categoria_Producto` int(11) NOT NULL,
  `imagen_Producto` varchar(300) NOT NULL,
  `modelo_Producto` varchar(200) NOT NULL,
  `nombre_Producto` varchar(200) NOT NULL,
  `potencia_Producto` varchar(100) NOT NULL,
  `voltaje_Producto` varchar(200) NOT NULL,
  `color_Luz_Producto` varchar(200) NOT NULL,
  `flujo_Luminoso_Producto` varchar(200) NOT NULL,
  `material_Producto` varchar(200) NOT NULL,
  `precio_Producto` double NOT NULL,
  `stock_Producto` int(11) NOT NULL,
  `id_Status_Producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status`
--

CREATE TABLE `status` (
  `id_Status` int(11) NOT NULL,
  `status` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `status`
--

INSERT INTO `status` (`id_Status`, `status`) VALUES
(1, 'Activo'),
(2, 'Inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_Usuario` int(11) NOT NULL,
  `imagen_Usuario` varchar(300) NOT NULL,
  `nombre_Usuario` varchar(200) NOT NULL,
  `apellido_Paterno_Usuario` varchar(200) NOT NULL,
  `apellido_Materno_Usuario` varchar(200) NOT NULL,
  `estado_Usuario` varchar(200) NOT NULL,
  `ciudad_Usuario` varchar(200) NOT NULL,
  `calle_Usuario` varchar(200) NOT NULL,
  `numero_Interior_Usuario` varchar(50) DEFAULT NULL,
  `numero_Exterior_Usuario` varchar(50) DEFAULT NULL,
  `telefono_Usuario` varchar(200) NOT NULL,
  `correo_Usuario` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `privilegios_Usuario` int(11) NOT NULL,
  `id_Status_Usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_Usuario`, `imagen_Usuario`, `nombre_Usuario`, `apellido_Paterno_Usuario`, `apellido_Materno_Usuario`, `estado_Usuario`, `ciudad_Usuario`, `calle_Usuario`, `numero_Interior_Usuario`, `numero_Exterior_Usuario`, `telefono_Usuario`, `correo_Usuario`, `password`, `privilegios_Usuario`, `id_Status_Usuario`) VALUES
(4, '926fa-52-1-447-125-8532-20171224_113125.jpg', 'Miguel Angel', 'Rios', 'Gómez', 'Michoacán', 'Santa Elena', 'Nicolás Bravo', '(Número exterior solamente)', '27', '4471258532', 'rios@gmail.com', '123', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_Venta` int(11) NOT NULL,
  `id_Usuario_Venta` int(11) NOT NULL,
  `folio_Venta` varchar(200) NOT NULL,
  `fecha_Venta` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_Categoria`),
  ADD KEY `id_status_Categoria` (`id_Status_Categoria`);

--
-- Indices de la tabla `contactos`
--
ALTER TABLE `contactos`
  ADD PRIMARY KEY (`id_Contacto`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`id_Detalle_Venta`),
  ADD KEY `fk_detalle_Venta_productos1_idx` (`id_Producto_Detalle_Venta`),
  ADD KEY `fk_detalle_Venta_ventas1_idx` (`id_Venta_Detalle_Venta`);

--
-- Indices de la tabla `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id_Faq`),
  ADD KEY `fk_faqs_usuarios1_idx` (`id_Usuario_Faq`),
  ADD KEY `id_Status_Faq` (`id_Status_Faq`);

--
-- Indices de la tabla `galeria`
--
ALTER TABLE `galeria`
  ADD PRIMARY KEY (`id_Galeria`),
  ADD KEY `fk_galeria_usuarios1_idx` (`id_Usuario_Galeria`),
  ADD KEY `id_status_Galeria` (`id_Status_Galeria`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id_Noticia`),
  ADD KEY `fk_noticias_usuarios1_idx` (`id_Usuario_Noticia`),
  ADD KEY `id_status_Noticia` (`id_Status_Noticia`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_Producto`),
  ADD KEY `fk_productos_categorias1_idx` (`id_Categoria_Producto`),
  ADD KEY `fk_productos_usuarios1_idx` (`id_Usuario_Producto`),
  ADD KEY `id_status_Producto` (`id_Status_Producto`);

--
-- Indices de la tabla `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id_Status`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_Usuario`),
  ADD KEY `id_status_Usuario` (`id_Status_Usuario`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_Venta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_Categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `contactos`
--
ALTER TABLE `contactos`
  MODIFY `id_Contacto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `id_Detalle_Venta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id_Faq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `galeria`
--
ALTER TABLE `galeria`
  MODIFY `id_Galeria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id_Noticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_Producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `status`
--
ALTER TABLE `status`
  MODIFY `id_Status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_Venta` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD CONSTRAINT `categorias_ibfk_1` FOREIGN KEY (`id_status_Categoria`) REFERENCES `status` (`id_Status`),
  ADD CONSTRAINT `categorias_ibfk_2` FOREIGN KEY (`id_Status_Categoria`) REFERENCES `status` (`id_Status`);

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `fk_detalle_Venta_productos1` FOREIGN KEY (`id_Producto_Detalle_Venta`) REFERENCES `productos` (`id_Producto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detalle_Venta_ventas1` FOREIGN KEY (`id_Venta_Detalle_Venta`) REFERENCES `ventas` (`id_Venta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `faqs`
--
ALTER TABLE `faqs`
  ADD CONSTRAINT `faqs_ibfk_1` FOREIGN KEY (`id_Status_Faq`) REFERENCES `status` (`id_Status`),
  ADD CONSTRAINT `fk_faqs_usuarios1` FOREIGN KEY (`id_Usuario_Faq`) REFERENCES `usuarios` (`id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `galeria`
--
ALTER TABLE `galeria`
  ADD CONSTRAINT `fk_galeria_usuarios1` FOREIGN KEY (`id_Usuario_Galeria`) REFERENCES `usuarios` (`id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `galeria_ibfk_1` FOREIGN KEY (`id_status_Galeria`) REFERENCES `status` (`id_Status`),
  ADD CONSTRAINT `galeria_ibfk_2` FOREIGN KEY (`id_Status_Galeria`) REFERENCES `status` (`id_Status`);

--
-- Filtros para la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD CONSTRAINT `fk_noticias_usuarios1` FOREIGN KEY (`id_Usuario_Noticia`) REFERENCES `usuarios` (`id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `noticias_ibfk_1` FOREIGN KEY (`id_status_Noticia`) REFERENCES `status` (`id_Status`),
  ADD CONSTRAINT `noticias_ibfk_2` FOREIGN KEY (`id_Status_Noticia`) REFERENCES `status` (`id_Status`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_productos_categorias1` FOREIGN KEY (`id_Categoria_Producto`) REFERENCES `categorias` (`id_Categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_productos_usuarios1` FOREIGN KEY (`id_Usuario_Producto`) REFERENCES `usuarios` (`id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_status_Producto`) REFERENCES `status` (`id_Status`),
  ADD CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`id_Status_Producto`) REFERENCES `status` (`id_Status`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_status_Usuario`) REFERENCES `status` (`id_Status`),
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`id_Status_Usuario`) REFERENCES `status` (`id_Status`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
