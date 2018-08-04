-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-08-2018 a las 13:37:31
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
(1, 'Exteriores', 'd857d-david-20180724_011512.jpg', 'Iluminación led para exteriores', 1),
(2, 'Hogares', 'ba22a-img-20180711-wa0001.jpg', 'Lámparas para hogares', 1);

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
(3, 'Miguel Angel  ', 2147483647, 'rios@revoltech.rt', 'iuahskjhasxasxkhakjxhs', '2018-08-04');

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
(4, 4, 'jhagjhg', 'jhagjhgasx', 1);

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
(1, 4, 'ASDFG', 'a940f-2.jpeg', 1);

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
(3, 'Usuario'),
(4, 'Cliente');

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
  `potencia_Producto` int(11) NOT NULL,
  `voltaje_Producto` int(11) NOT NULL,
  `color_Luz_Producto` varchar(200) NOT NULL,
  `flujo_Luminoso_Producto` varchar(200) NOT NULL,
  `material_Producto` varchar(200) NOT NULL,
  `precio_Producto` double(10,2) NOT NULL,
  `stock_Producto` int(11) NOT NULL,
  `id_Status_Producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_Producto`, `id_Usuario_Producto`, `id_Categoria_Producto`, `imagen_Producto`, `modelo_Producto`, `nombre_Producto`, `potencia_Producto`, `voltaje_Producto`, `color_Luz_Producto`, `flujo_Luminoso_Producto`, `material_Producto`, `precio_Producto`, `stock_Producto`, `id_Status_Producto`) VALUES
(6, 4, 2, '8d06b-img_0635.png', 'LG2835-3W/F/C', 'BOMBILLA LED ', 3, 127, 'B. FRIO, B. CALIDO', '280 lm ', 'PVC + PC', 25.00, 10, 1),
(7, 4, 2, 'abd08-dsc00852mini.png', 'LCLS3W/F/C', 'FOCO VELA LED ', 3, 85, 'B. FRIO, B. CALIDO', '280 lm', 'ALUMINIO + PC', 30.00, 10, 1),
(8, 4, 2, '61ed3-img_0611mini.jpg', 'LCLSMD3W/C', 'FOCO VELA LED ', 3, 85, 'B. CALIDO', '220 lm ', 'ALUMINIO VIDRIO', 28.50, 10, 1),
(9, 4, 1, '79c6b-3w.jpg', 'ELED3W/F/C', 'EMPOTRADO LED ', 3, 85, 'B. FRIO, B. CALIDO', '330lm', 'ALUMINIO + PC ', 150.50, 20, 1),
(10, 4, 1, '1425f-img_0738.jpg', 'ELEDC4W/F/C', 'EMPOTRADO LED', 4, 85, 'B. FRIO, B. CALIDO', '440lm', 'ALUMINIO + PC', 172.20, 10, 1),
(11, 4, 1, '6eb75-img_0741.jpg', 'ELED12W/F/C', 'EMPOTRADO LED', 12, 85, 'B. FRIO, B. CALIDO', '1320lm', 'ALUMINIO + PC', 180.00, 10, 1);

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
  `imagen_Usuario` varchar(300) DEFAULT NULL,
  `nombre_Usuario` varchar(200) DEFAULT NULL,
  `apellido_Paterno_Usuario` varchar(200) DEFAULT NULL,
  `apellido_Materno_Usuario` varchar(200) DEFAULT NULL,
  `estado_Usuario` varchar(200) DEFAULT NULL,
  `ciudad_Usuario` varchar(200) DEFAULT NULL,
  `calle_Usuario` varchar(200) DEFAULT NULL,
  `numero_Interior_Usuario` varchar(100) DEFAULT NULL,
  `numero_Exterior_Usuario` varchar(100) DEFAULT NULL,
  `telefono_Usuario` int(11) DEFAULT NULL,
  `correo_Usuario` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `id_Privilegios_Usuario` int(11) NOT NULL,
  `id_Status_Usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_Usuario`, `imagen_Usuario`, `nombre_Usuario`, `apellido_Paterno_Usuario`, `apellido_Materno_Usuario`, `estado_Usuario`, `ciudad_Usuario`, `calle_Usuario`, `numero_Interior_Usuario`, `numero_Exterior_Usuario`, `telefono_Usuario`, `correo_Usuario`, `password`, `id_Privilegios_Usuario`, `id_Status_Usuario`) VALUES
(1, '', 'SuperAdmin', 'SuperAdmin', 'SuperAdmin', 'SuperAdmin', 'SuperAdmin', 'SuperAdmin', '0', '0', 0, 'superadmin@revoltech.rt', '123', 1, 1),
(2, '88f23-david-20180724_011512.jpg', 'Oscar David', 'López', 'Bárcenas', 'Michoacán', 'Maravatío', 'Lázaro Cárdenas', '0', '526', 447562288, 'david@revoltech.rt', '123', 2, 1),
(3, 'b5d97-descarga.png', 'José Eduardo', 'Soreque', 'Ávila', 'Michoacán', 'Maravatío', 'Benito Júarez', '0', '98', 44756226, 'sore@revoltech.rt', '123', 3, 1),
(4, '4bae4-52-1-447-125-8532-20171224_113125.jpg', 'Miguel Angel', 'Rios', 'Gómez', 'Michoacán', 'Santa Elena', 'Nicolás Bravo', '0', '27', 2147483647, 'rios@revoltech.rt', '123', 2, 1),
(11, NULL, 'Ximena', 'Rios', 'Gómez', NULL, NULL, 'Nicolás Bravo', 'Exterior 27', '61259', 2147483647, 'xime@gmail.com', '12345678', 4, 1),
(12, NULL, 'Juan Pablo', 'Rios', 'Gómez', NULL, NULL, 'Nicolás Bravo', 'Exterior 27', '61259', 2147483647, 'juan@gmail.com', '123456789', 4, 1),
(13, NULL, 'rios', 'rios', 'rios', NULL, NULL, 'rioss', 'riossss', '61259', 2147483647, 'rios@gmail.rt', '12345678', 4, 1),
(14, NULL, '    ', 'asxasxas', 'asxasx', NULL, NULL, 'asxasxasx', '23123123', '12345', 2147483647, 'rios@gmail.rs', '12345678', 4, 1),
(15, NULL, 'asxasxasx', 'asxasxasxasxasx', 'aasxasxasxasxasx', NULL, NULL, 'asxasxasxasxasxasx', 'asxasxasxasx', '21345', 2147483647, 'rios@gmail.kl', '12345678', 4, 1),
(16, NULL, '    ', 'asxasxasxsa', 'asxasxasxasx', NULL, NULL, 'asxasxasxasxasx', 'asxasxasxasxasx', '12345', 2147483647, 'rios@gmail.rsa', '12345678', 4, 1),
(17, NULL, '      ', 'asxasxasx', 'asxasxasxasxasxasx', NULL, NULL, 'asxasxasxasx', 'asxasxasxasxasx', '12345', 2147483647, 'rios@gmail.rsas', '123123123', 4, 1),
(18, NULL, '   ', 'asxasxasx', 'asxasx', NULL, NULL, 'asxasx', 'asxsax', '12345', 2147483647, 'rios@gmail.ra', '12345678', 4, 1),
(19, NULL, '    ', 'asxasxasx', 'asxasxasx', NULL, NULL, 'kjahsxjkahsxkjahsx', 'kjxnkjashkjasnxkjasx', '12345', 2147483647, 'rios@gmail.oi', '12345678', 4, 1),
(20, NULL, '     ', 'asdasdasd', 'asdasdasd', NULL, NULL, 'axasxasx', 'asxasxasxasx', '12345', 2147483647, 'rios@gmail.po', '12345678', 4, 1),
(21, NULL, '', '', '', NULL, NULL, '', '', '', 0, '', '', 4, 1),
(22, NULL, '', '', '', NULL, NULL, '', '', '', 0, 'rios@gmail.p54', '', 4, 1),
(23, NULL, '', '', '', NULL, NULL, '', '', '', 0, 'rios@gmail.asdasd', '', 4, 1),
(24, NULL, '', '', '', NULL, NULL, '', '', '', 0, 'asxasxasx', '', 4, 1),
(25, NULL, 'rios', 'rios', 'rioss', NULL, NULL, 'riosss', 'riosss', '12345', 2147483647, 'rios@hotmail.com', '123456789', 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_Venta` int(11) NOT NULL,
  `id_Usuario_Venta` int(11) NOT NULL,
  `cantidad_Producto` int(11) NOT NULL,
  `total_Venta` decimal(11,2) NOT NULL,
  `metodo_Pago_Venta` varchar(300) NOT NULL,
  `metodo_Envio_Venta` varchar(300) NOT NULL,
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
  ADD PRIMARY KEY (`id_Venta`),
  ADD KEY `id_Usuario_Venta` (`id_Usuario_Venta`,`cantidad_Producto`),
  ADD KEY `id_Producto_Venta` (`cantidad_Producto`);

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
  MODIFY `id_Contacto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id_Privilegio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_Producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `status`
--
ALTER TABLE `status`
  MODIFY `id_Status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_Venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

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

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`cantidad_Producto`) REFERENCES `productos` (`id_Producto`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`id_Usuario_Venta`) REFERENCES `usuarios` (`id_Usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
