-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-06-2018 a las 14:25:20
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
  `status_Categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_Categoria`, `nombre_Categoria`, `imagen_Categoria`, `descripcion_Categoria`, `status_Categoria`) VALUES
(1, 'Focos Spot - GU10 MR16 E27', '/p10.jpg', 'Foco tipo spot on luces de LED para interiores', 1),
(2, 'Foco Tipo Bombilla, 3W, 5W, 7W, 9W y 12W', '/p13.jpg', 'Foco de bombilla con diferentes potencias.', 1),
(3, 'Foco Tipo Bombilla, 12V DC', '/p6.jpg', 'Foco tipo bombilla de diferentes watts.', 1),
(4, 'Foco LED Tipo Vela 180° y 360°\r\n', '/p12.jpg', 'Bombilla de LED con forma alagartada para interiores.', 1),
(5, 'Empotrado LED 3W-30W', '/p7.jpg', '\r\nLámpara de Led fija.', 1),
(6, 'Reflector LED 10W - 400W', '/p2.jpg', 'Reflectores de LED de gran potencia.', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos`
--

CREATE TABLE `contactos` (
  `id_Contacto` int(11) NOT NULL,
  `id_Usuario_Contacto` int(11) NOT NULL,
  `fecha_Contacto` date NOT NULL,
  `asunto_Contacto` varchar(200) NOT NULL,
  `mensaje_Contacto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `faqs`
--

CREATE TABLE `faqs` (
  `id_Faq` int(11) NOT NULL,
  `id_Usuario_Faq` int(11) NOT NULL,
  `pregunta_Faq` varchar(500) NOT NULL,
  `respuesta_Faq` varchar(500) NOT NULL,
  `status_Faq` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `faqs`
--

INSERT INTO `faqs` (`id_Faq`, `id_Usuario_Faq`, `pregunta_Faq`, `respuesta_Faq`, `status_Faq`) VALUES
(7, 2, '¿Por qué mi sitio no se visualiza correctamente en Internet Explorer?', 'En la mayoría de los casos, muchos problemas de visualización de las páginas del sitio web se pueden resolver borrando el caché en Internet Explorer.', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galeria`
--

CREATE TABLE `galeria` (
  `id_Galeria` int(11) NOT NULL,
  `id_Usuario_Galeria` int(11) NOT NULL,
  `titulo_Galeria` varchar(100) NOT NULL,
  `imagen_Galeria` varchar(300) NOT NULL,
  `status_Galeria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `galeria`
--

INSERT INTO `galeria` (`id_Galeria`, `id_Usuario_Galeria`, `titulo_Galeria`, `imagen_Galeria`, `status_Galeria`) VALUES
(1, 2, 'Lámpara de jardín', '/g4.jpg', 1),
(2, 2, 'Lámpara de pared solar', '/g1.jpg', 1),
(3, 2, 'Foco Led Solar', '/g2.jpg', 1),
(4, 2, 'Lámpara pared solar', '/g3.jpg', 1),
(5, 2, 'Lámpara jardín', '/g5.jpg', 1),
(6, 2, 'Foco led solar', '/g6.png', 1),
(7, 2, 'Foco led solar', '/g7.jpg', 1),
(8, 2, 'Luces led para escalera', '/g8.jpeg', 1);

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
  `status_Noticia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id_Noticia`, `id_Usuario_Noticia`, `titulo_Noticia`, `imagen_Noticia`, `descripcion_Corta_Noticia`, `descripcion_Larga_Noticia`, `fecha_Noticia`, `status_Noticia`) VALUES
(4, 2, 'La nueva tecnología que viene a cambiar al mundo', '/n1.jpg', '¿QUIENES SOMOS?\r\n Empresa formalmente establecida especializada en iluminación con tecnología LED.\r\n Ofrecemos Productos y soluciones para un gran número de necesidades de iluminación para el hogar oficinas e industria.\r\n Buscamos estar siempre a la vanguardia en productos de última generación para ', '¿QUIENES SOMOS?\r\n Empresa formalmente establecida especializada en iluminación con tecnología LED.\r\n Ofrecemos Productos y soluciones para un gran número de necesidades de iluminación para el hogar oficinas e industria.\r\n Buscamos estar siempre a la vanguardia en productos de última generación para ofrecer siempre la mejor solución y precio.\r\nNUESTRA MISIÓN\r\n Ofrecer las últimas tecnologías de ahorro de energía en iluminación a precios competitivos y alta calidad.\r\nNUESTRA VISIÓN\r\n Vemos un mundo con recursos materiales y energéticos limitados donde un gasto eficiente e inteligente en iluminación nos asegure una vida mejor.\r\n', '2018-06-05', 1),
(5, 2, 'Aplicación de la energía solar en la industria de la iluminación. ', '/n2.jpeg', '¿QUIENES SOMOS?\r\n Empresa formalmente establecida especializada en iluminación con tecnología LED.\r\n Ofrecemos Productos y soluciones para un gran número de necesidades de iluminación para el hogar oficinas e industria.\r\n Buscamos estar siempre a la vanguardia en productos de última generación para ', '¿QUIENES SOMOS?\r\n Empresa formalmente establecida especializada en iluminación con tecnología LED.\r\n Ofrecemos Productos y soluciones para un gran número de necesidades de iluminación para el hogar oficinas e industria.\r\n Buscamos estar siempre a la vanguardia en productos de última generación para ofrecer siempre la mejor solución y precio.\r\nNUESTRA MISIÓN\r\n Ofrecer las últimas tecnologías de ahorro de energía en iluminación a precios competitivos y alta calidad.\r\nNUESTRA VISIÓN\r\n Vemos un mundo con recursos materiales y energéticos limitados donde un gasto eficiente e inteligente en iluminación nos asegure una vida mejor.\r\n', '2018-06-17', 1),
(6, 2, 'Beneficios del uso de energías renovables ', '/n3.jpg', '¿QUIENES SOMOS?\r\n Empresa formalmente establecida especializada en iluminación con tecnología LED.\r\n Ofrecemos Productos y soluciones para un gran número de necesidades de iluminación para el hogar oficinas e industria.\r\n Buscamos estar siempre a la vanguardia en productos de última generación para ', '¿QUIENES SOMOS?\r\n Empresa formalmente establecida especializada en iluminación con tecnología LED.\r\n Ofrecemos Productos y soluciones para un gran número de necesidades de iluminación para el hogar oficinas e industria.\r\n Buscamos estar siempre a la vanguardia en productos de última generación para ofrecer siempre la mejor solución y precio.\r\nNUESTRA MISIÓN\r\n Ofrecer las últimas tecnologías de ahorro de energía en iluminación a precios competitivos y alta calidad.\r\nNUESTRA VISIÓN\r\n Vemos un mundo con recursos materiales y energéticos limitados donde un gasto eficiente e inteligente en iluminación nos asegure una vida mejor.\r\n', '2018-06-17', 1),
(7, 2, 'Una gran opción en la ilimunación', '/n4.jpg', '¿QUIENES SOMOS?\r\n Empresa formalmente establecida especializada en iluminación con tecnología LED.\r\n Ofrecemos Productos y soluciones para un gran número de necesidades de iluminación para el hogar oficinas e industria.\r\n Buscamos estar siempre a la vanguardia en productos de última generación para ', '¿QUIENES SOMOS?\r\n Empresa formalmente establecida especializada en iluminación con tecnología LED.\r\n Ofrecemos Productos y soluciones para un gran número de necesidades de iluminación para el hogar oficinas e industria.\r\n Buscamos estar siempre a la vanguardia en productos de última generación para ofrecer siempre la mejor solución y precio.\r\nNUESTRA MISIÓN\r\n Ofrecer las últimas tecnologías de ahorro de energía en iluminación a precios competitivos y alta calidad.\r\nNUESTRA VISIÓN\r\n Vemos un mundo con recursos materiales y energéticos limitados donde un gasto eficiente e inteligente en iluminación nos asegure una vida mejor.\r\n', '2018-06-17', 1);

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
  `status_Producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_Producto`, `id_Usuario_Producto`, `id_Categoria_Producto`, `imagen_Producto`, `modelo_Producto`, `nombre_Producto`, `potencia_Producto`, `voltaje_Producto`, `color_Luz_Producto`, `flujo_Luminoso_Producto`, `material_Producto`, `precio_Producto`, `stock_Producto`, `status_Producto`) VALUES
(2, 2, 2, '/p2.jpg', 'LG-5W/F/C', 'BOMBILLA LED', '5W', '85-265V AC', 'B. FRIO, B. CALIDO', '550 lm', 'ALUMINIO + PC', 35, 30, 1),
(3, 2, 5, '/p1.jpg', 'JDRLED4W/F/C', 'SPOT LED 4*1W', '4W', '85-265V AC', 'B. FRIO, B. CALIDO', '320', 'ALUMINIO + PC', 42, 20, 1),
(4, 2, 6, '/p3.jpg', 'LFL10W/F/C', 'REFLECTOR LED', '10W', '85-265V AC', 'B. FRIO, B. CALIDO', '900lm', 'ALUMINIO/VIDRIO', 30, 20, 1),
(5, 2, 1, '/p4.jpg', 'LCLS3W/F/C', 'FOCO VELA LED', '3W', '85-265V AC', 'B. FRIO, B. CALIDO', '280 lm', 'ALUMINIO + PC', 40, 20, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_Usuario` int(11) NOT NULL,
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
  `status_Usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_Usuario`, `nombre_Usuario`, `apellido_Paterno_Usuario`, `apellido_Materno_Usuario`, `estado_Usuario`, `ciudad_Usuario`, `calle_Usuario`, `numero_Interior_Usuario`, `numero_Exterior_Usuario`, `telefono_Usuario`, `correo_Usuario`, `password`, `privilegios_Usuario`, `status_Usuario`) VALUES
(2, 'Miguel Angel', 'Rios', 'Gómez', 'Michoacán', 'Maravatío', 'Nicolas Bravo', '20', '27', '43440628', 'mianrigo96@gamil.com', '123', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_Venta` int(11) NOT NULL,
  `id_Usuario_Venta` int(11) NOT NULL,
  `folio_Venta` varchar(200) NOT NULL,
  `fecha_Venta` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_Categoria`);

--
-- Indices de la tabla `contactos`
--
ALTER TABLE `contactos`
  ADD PRIMARY KEY (`id_Contacto`),
  ADD KEY `fk_contactos_usuarios1_idx` (`id_Usuario_Contacto`);

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
  ADD KEY `fk_faqs_usuarios1_idx` (`id_Usuario_Faq`);

--
-- Indices de la tabla `galeria`
--
ALTER TABLE `galeria`
  ADD PRIMARY KEY (`id_Galeria`),
  ADD KEY `fk_galeria_usuarios1_idx` (`id_Usuario_Galeria`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id_Noticia`),
  ADD KEY `fk_noticias_usuarios1_idx` (`id_Usuario_Noticia`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_Producto`),
  ADD KEY `fk_productos_categorias1_idx` (`id_Categoria_Producto`),
  ADD KEY `fk_productos_usuarios1_idx` (`id_Usuario_Producto`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_Usuario`);

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
  MODIFY `id_Categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `contactos`
--
ALTER TABLE `contactos`
  MODIFY `id_Contacto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `id_Detalle_Venta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id_Faq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `galeria`
--
ALTER TABLE `galeria`
  MODIFY `id_Galeria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id_Noticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_Producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_Venta` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `contactos`
--
ALTER TABLE `contactos`
  ADD CONSTRAINT `fk_contactos_usuarios1` FOREIGN KEY (`id_Usuario_Contacto`) REFERENCES `usuarios` (`id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
  ADD CONSTRAINT `fk_faqs_usuarios1` FOREIGN KEY (`id_Usuario_Faq`) REFERENCES `usuarios` (`id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `galeria`
--
ALTER TABLE `galeria`
  ADD CONSTRAINT `fk_galeria_usuarios1` FOREIGN KEY (`id_Usuario_Galeria`) REFERENCES `usuarios` (`id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD CONSTRAINT `fk_noticias_usuarios1` FOREIGN KEY (`id_Usuario_Noticia`) REFERENCES `usuarios` (`id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_productos_categorias1` FOREIGN KEY (`id_Categoria_Producto`) REFERENCES `categorias` (`id_Categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_productos_usuarios1` FOREIGN KEY (`id_Usuario_Producto`) REFERENCES `usuarios` (`id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
