-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-07-2018 a las 04:32:46
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

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_Categoria`, `nombre_Categoria`, `imagen_Categoria`, `descripcion_Categoria`, `id_Status_Categoria`) VALUES
(2, 'asxsa', '9ebc5-david-20180724_011512.jpg', 'asxsa', 1);

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
(1, 'sdasd', 12313, 'rios@gmail.com', 'asdasdasdasdsaddatatable Alvaro Obregon 26-A Col. Centro CP 61250  Alvaro Obregon 26-A Col. Centro CP 61250  Alvaro Obregon 26-A Col. Centro CP 61250 datatable', '2018-07-25'),
(2, 'Miguel', 12323123, 'rios@gmail.coma', 'asdasdasdasdasdasdasdasd', '2018-07-25'),
(3, 'asxasx', 123123, 'saxasx', '', '2018-07-27'),
(4, 'asxasx', 123, 'rios@gmail.com', 'asxasxasxasxasxasx', '2018-07-27'),
(5, 'Rios', 4344062, 'rios@gamil.com', 'hola', '2018-07-29'),
(6, 'asxasx', 123123, 'rios@gamil.com', '12123', '2018-07-29'),
(7, 'asdsd', 123123, 'rios@gamil.com', 'asdasd', '2018-07-29'),
(8, 'asxasx', 12323, 'rios@gamil.com', 'asxasxasxasx', '2018-07-29'),
(9, 'asdad', 443231, 'rios@gamil.com', '12321', '2018-07-30'),
(10, 'asxas', 123213, 'rios@gamil.com', '123123', '2018-07-30'),
(11, 'asx', 123, 'rios@gamil.com', '123asd', '2018-07-30'),
(12, 'asx', 123, 'rios@gamil.com', '123asd', '2018-07-30'),
(13, 'asdsd', 3123, 'rios@gamil.com', '123123', '2018-07-30'),
(14, 'aaa', 123123213, 'rios@gamil.com', 'qdqwdqwdasdasd', '2018-07-30'),
(15, 'AX', 123213, 'rios@gamil.com', 'ASX', '2018-07-30'),
(16, 'AX', 123213, 'rios@gamil.com', 'ASX', '2018-07-30'),
(17, 'AX', 123213, 'rios@gamil.com', 'ASX', '2018-07-30'),
(18, 'AX', 123213, 'rios@gamil.com', 'ASX', '2018-07-30'),
(19, 'AX', 123213, 'rios@gamil.com', 'ASX', '2018-07-30'),
(20, 'asdas', 1213, 'rios@gamil.com', '123112', '2018-07-30');

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
(92, 4, 'que paso', 'nada', 1);

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
(1, 3, 'asc', '5ff78-david-20180724_011512.jpg', 1);

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
(1, 3, 'asaxs', '38890-udj6k3xewbgq8n1hb96e.jpg', 'asx', 'asxasx', '2018-07-28', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `privilegios`
--

CREATE TABLE `privilegios` (
  `id_Privilegio` int(11) NOT NULL,
  `privilegio` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `privilegios`
--

INSERT INTO `privilegios` (`id_Privilegio`, `privilegio`) VALUES
(1, 'Super Administrador'),
(2, 'Administrador'),
(3, 'Usuario');

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
  `precio_Producto` double(9,2) NOT NULL,
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
  `id_Privilegios_Usuario` int(11) NOT NULL,
  `id_Status_Usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_Usuario`, `imagen_Usuario`, `nombre_Usuario`, `apellido_Paterno_Usuario`, `apellido_Materno_Usuario`, `estado_Usuario`, `ciudad_Usuario`, `calle_Usuario`, `numero_Interior_Usuario`, `numero_Exterior_Usuario`, `telefono_Usuario`, `correo_Usuario`, `password`, `id_Privilegios_Usuario`, `id_Status_Usuario`) VALUES
(1, '', 'SuperAdmin', 'SuperAdmin', 'SuperAdmin', 'SuperAdmin', 'SuperAdmin', 'SuperAdmin', 'SuperAdmin', 'SuperAdmin', 'SuperAdmin', 'superadmin@gmail.com', '123', 1, 1),
(2, '88f23-david-20180724_011512.jpg', 'Oscar David', 'López', 'Bárcenas', 'Michoacán', 'Maravatío', 'Lázaro Cárdenas', 'S/N', '526', '447562288', 'david@revoltech.rt', '123', 2, 1),
(3, 'b5d97-descarga.png', 'José Eduardo', 'Soreque', 'Ávila', 'Michoacán', 'Maravatío', 'Benito Júarez', 'S/N', '98', '44756226', 'sore@revoltech.rt', '123', 3, 1),
(4, '4bae4-52-1-447-125-8532-20171224_113125.jpg', 'Miguel Angel', 'Rios', 'Gómez', 'Michoacán', 'Santa Elena', 'Nicolás Bravo', 'S/N', '27', '447226552', 'rios@revoltech.rt', '123', 2, 1);

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
-- Indices de la tabla `privilegios`
--
ALTER TABLE `privilegios`
  ADD PRIMARY KEY (`id_Privilegio`);

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
  ADD KEY `id_status_Usuario` (`id_Status_Usuario`),
  ADD KEY `id_Privilegios_Usuario` (`id_Privilegios_Usuario`);

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
  MODIFY `id_Categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `contactos`
--
ALTER TABLE `contactos`
  MODIFY `id_Contacto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `id_Detalle_Venta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id_Faq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT de la tabla `galeria`
--
ALTER TABLE `galeria`
  MODIFY `id_Galeria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id_Noticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `privilegios`
--
ALTER TABLE `privilegios`
  MODIFY `id_Privilegio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_Producto` int(11) NOT NULL AUTO_INCREMENT;

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
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`id_Status_Usuario`) REFERENCES `status` (`id_Status`),
  ADD CONSTRAINT `usuarios_ibfk_3` FOREIGN KEY (`id_Privilegios_Usuario`) REFERENCES `privilegios` (`id_Privilegio`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
