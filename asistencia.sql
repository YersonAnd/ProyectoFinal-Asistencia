-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-11-2023 a las 03:13:10
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `asistencia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad`
--

CREATE TABLE `actividad` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `created_user` bigint(20) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `deted_user` bigint(20) DEFAULT NULL,
  `state` bit(1) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `updated_user` bigint(20) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `fecha_fin` datetime(6) DEFAULT NULL,
  `fecha_inicio` datetime(6) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `materia_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `actividad`
--

INSERT INTO `actividad` (`id`, `created_at`, `created_user`, `deleted_at`, `deted_user`, `state`, `updated_at`, `updated_user`, `descripcion`, `fecha_fin`, `fecha_inicio`, `nombre`, `materia_id`) VALUES
(1, '2023-11-21 18:40:50.000000', NULL, NULL, NULL, b'1', NULL, NULL, 'Derivadas', '2023-11-17 00:00:00.000000', '2023-11-22 12:00:00.000000', 'Actividad 1', 1),
(2, '2023-11-21 18:42:47.000000', NULL, NULL, NULL, b'1', NULL, NULL, 'Pagina Web', '2023-11-29 00:00:00.000000', '2023-11-24 12:00:00.000000', 'Actividad 2', 2),
(3, '2023-11-21 18:44:02.000000', NULL, NULL, NULL, b'1', NULL, NULL, 'Linux', '2023-11-29 00:00:00.000000', '2023-11-24 12:00:00.000000', 'Actividad 3', 3),
(4, '2023-11-21 18:44:48.000000', NULL, NULL, NULL, b'1', NULL, NULL, 'Aparato Digestivo', '2023-11-29 00:00:00.000000', '2023-11-24 12:00:00.000000', 'Actividad 4', 4),
(5, '2023-11-21 18:46:03.000000', NULL, NULL, NULL, b'1', NULL, NULL, 'Cuerpo Humano', '2023-11-29 00:00:00.000000', '2023-11-24 12:00:00.000000', 'Actividad 5', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia`
--

CREATE TABLE `asistencia` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `created_user` bigint(20) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `deted_user` bigint(20) DEFAULT NULL,
  `state` bit(1) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `updated_user` bigint(20) DEFAULT NULL,
  `aula` varchar(100) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time(6) DEFAULT NULL,
  `materia_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asistencia`
--

INSERT INTO `asistencia` (`id`, `created_at`, `created_user`, `deleted_at`, `deted_user`, `state`, `updated_at`, `updated_user`, `aula`, `fecha`, `hora`, `materia_id`) VALUES
(1, '2023-11-21 18:50:16.000000', NULL, NULL, NULL, b'1', NULL, NULL, 'A103', '2023-11-22', '10:00:00.000000', 1),
(2, '2023-11-21 18:51:00.000000', NULL, NULL, NULL, b'1', NULL, NULL, 'A202', '2023-11-23', '12:00:00.000000', 2),
(3, '2023-11-21 18:51:33.000000', NULL, NULL, NULL, b'1', NULL, NULL, 'A301', '2023-11-24', '14:00:00.000000', 3),
(4, '2023-11-21 18:52:12.000000', NULL, NULL, NULL, b'1', NULL, NULL, 'A400', '2023-11-25', '16:00:00.000000', 4),
(5, '2023-11-21 18:52:41.000000', NULL, NULL, NULL, b'1', NULL, NULL, 'A500', '2023-11-26', '18:00:00.000000', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `created_user` bigint(20) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `deted_user` bigint(20) DEFAULT NULL,
  `state` bit(1) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `updated_user` bigint(20) DEFAULT NULL,
  `descripcion` varchar(255) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id`, `created_at`, `created_user`, `deleted_at`, `deted_user`, `state`, `updated_at`, `updated_user`, `descripcion`, `nombre`) VALUES
(1, '2023-11-21 18:15:15.000000', NULL, NULL, NULL, b'1', NULL, NULL, 'Materia obligatoria para todas las carreras', 'Matemáticas'),
(2, '2023-11-21 18:20:00.000000', NULL, NULL, NULL, b'1', NULL, NULL, 'Materia obligatoria para Ingenieria de Software', 'Programacion'),
(3, '2023-11-21 18:20:49.000000', NULL, NULL, NULL, b'1', NULL, NULL, 'Materia obligatoria para Ingenieria de Software', 'Sistemas Operativos'),
(4, '2023-11-21 18:21:55.000000', NULL, NULL, NULL, b'1', NULL, NULL, 'Materia obligatoria para Medicina', 'Anatomía'),
(5, '2023-11-21 18:22:27.000000', NULL, NULL, NULL, b'1', NULL, NULL, 'Materia obligatoria para Medicina', 'Fisiología');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `created_user` bigint(20) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `deted_user` bigint(20) DEFAULT NULL,
  `state` bit(1) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `updated_user` bigint(20) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `documento` varchar(50) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `created_at`, `created_user`, `deleted_at`, `deted_user`, `state`, `updated_at`, `updated_user`, `apellidos`, `correo`, `documento`, `nombre`, `telefono`) VALUES
(1, '2023-11-21 17:27:09.000000', NULL, NULL, NULL, b'1', NULL, NULL, 'Perez', 'juanperez@example.com', '123456789', 'Juan', '1234567890'),
(2, '2023-11-21 17:27:22.000000', NULL, NULL, NULL, b'1', NULL, NULL, 'Lopez', 'marialopez@example.com', '987654321', 'Maria', '9876543210'),
(3, '2023-11-21 17:27:36.000000', NULL, NULL, NULL, b'1', NULL, NULL, 'Garcia', 'pedrogarcia@example.com', '012345678', 'Pedro', '0123456789'),
(4, '2023-11-21 17:27:44.000000', NULL, NULL, NULL, b'1', NULL, NULL, 'Martinez', 'anamartinez@example.com', '543210987', 'Ana', '5432109870'),
(5, '2023-11-21 17:27:59.000000', NULL, NULL, NULL, b'1', NULL, NULL, 'Sanchez', 'carlossanchez@example.com', '789012345', 'Carlos', '7890123450');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `created_user` bigint(20) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `deted_user` bigint(20) DEFAULT NULL,
  `state` bit(1) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `updated_user` bigint(20) DEFAULT NULL,
  `descripcion` varchar(255) NOT NULL,
  `funcion` varchar(50) NOT NULL,
  `usuario_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id`, `created_at`, `created_user`, `deleted_at`, `deted_user`, `state`, `updated_at`, `updated_user`, `descripcion`, `funcion`, `usuario_id`) VALUES
(1, '2023-11-21 17:51:54.000000', NULL, NULL, NULL, b'1', NULL, NULL, 'Estudiante de la carrera de ingeniería de software', 'estudiante', 1),
(2, '2023-11-21 17:52:54.000000', NULL, NULL, NULL, b'1', NULL, NULL, 'Profesor de la carrera de ingeniería de software', 'profesor', 2),
(3, '2023-11-21 17:53:49.000000', NULL, NULL, NULL, b'0', NULL, NULL, 'Estudiante de la carrera de medicina', 'estudiante', 3),
(4, '2023-11-21 17:54:47.000000', NULL, NULL, NULL, b'1', NULL, NULL, 'Profesor de la carrera de medicina', 'profesor', 4),
(5, '2023-11-21 17:55:30.000000', NULL, NULL, NULL, b'1', NULL, NULL, 'Estudiante de la carrera de ingeniería de software', 'estudiante', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `created_user` bigint(20) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `deted_user` bigint(20) DEFAULT NULL,
  `state` bit(1) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `updated_user` bigint(20) DEFAULT NULL,
  `contraseña` varchar(100) DEFAULT NULL,
  `usuario` varchar(30) DEFAULT NULL,
  `persona_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `created_at`, `created_user`, `deleted_at`, `deted_user`, `state`, `updated_at`, `updated_user`, `contraseña`, `usuario`, `persona_id`) VALUES
(1, '2023-11-21 17:42:38.000000', NULL, NULL, NULL, b'1', NULL, NULL, '12345', 'juanperez', 1),
(2, '2023-11-21 17:43:24.000000', NULL, NULL, NULL, b'1', NULL, NULL, '123456', 'marialopez', 2),
(3, '2023-11-21 17:43:48.000000', NULL, NULL, NULL, b'1', NULL, NULL, '123434', 'pedrogarcia', 3),
(4, '2023-11-21 17:44:09.000000', NULL, NULL, NULL, b'1', NULL, NULL, '123434567', 'anamartinez', 4),
(5, '2023-11-21 17:44:33.000000', NULL, NULL, NULL, b'1', NULL, NULL, '1234234567', 'carlossanchez', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_materia`
--

CREATE TABLE `usuario_materia` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `created_user` bigint(20) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `deted_user` bigint(20) DEFAULT NULL,
  `state` bit(1) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `updated_user` bigint(20) DEFAULT NULL,
  `materia_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario_materia`
--

INSERT INTO `usuario_materia` (`id`, `created_at`, `created_user`, `deleted_at`, `deted_user`, `state`, `updated_at`, `updated_user`, `materia_id`, `user_id`) VALUES
(1, '2023-11-21 18:27:04.000000', NULL, NULL, NULL, b'1', NULL, NULL, 1, 1),
(2, '2023-11-21 18:28:25.000000', NULL, NULL, NULL, b'1', NULL, NULL, 2, 2),
(4, '2023-11-21 18:32:12.000000', NULL, NULL, NULL, b'1', NULL, NULL, 4, 3),
(5, '2023-11-21 18:32:57.000000', NULL, NULL, NULL, b'1', NULL, NULL, 4, 4),
(6, '2023-11-21 18:33:43.000000', NULL, NULL, NULL, b'1', NULL, NULL, 3, 5),
(7, '2023-11-21 18:35:03.000000', NULL, NULL, NULL, b'1', NULL, NULL, 5, 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_nlp57jftst18smdsx8rdmnt8w` (`materia_id`);

--
-- Indices de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_8xc3cqc32q4su2b1mg9mh04yj` (`materia_id`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_2vlfa3ehkep2jv3e1hkeyfdd2` (`usuario_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_c30a561f4mytkssjk76n0c1b3` (`persona_id`);

--
-- Indices de la tabla `usuario_materia`
--
ALTER TABLE `usuario_materia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKc14477boom5yk5x0dl54bdf88` (`materia_id`),
  ADD KEY `FKejcym6vn2iv2qltiuxs2b0o40` (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividad`
--
ALTER TABLE `actividad`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuario_materia`
--
ALTER TABLE `usuario_materia`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD CONSTRAINT `FKemh0uwjlstjjtjhbeglxffaqw` FOREIGN KEY (`materia_id`) REFERENCES `materia` (`id`);

--
-- Filtros para la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD CONSTRAINT `FKbtn53gfdnw30st22r8v80xa1e` FOREIGN KEY (`materia_id`) REFERENCES `materia` (`id`);

--
-- Filtros para la tabla `rol`
--
ALTER TABLE `rol`
  ADD CONSTRAINT `FKd2sr59c3mhscbo3xnhx6qfmha` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `FKlse7lqghmt3r1sp298ss9s5bc` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`);

--
-- Filtros para la tabla `usuario_materia`
--
ALTER TABLE `usuario_materia`
  ADD CONSTRAINT `FKc14477boom5yk5x0dl54bdf88` FOREIGN KEY (`materia_id`) REFERENCES `materia` (`id`),
  ADD CONSTRAINT `FKejcym6vn2iv2qltiuxs2b0o40` FOREIGN KEY (`user_id`) REFERENCES `usuario` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
