
CREATE TABLE `tbl_area` (
  `id_area` int NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

--
-- Volcado de datos para la tabla `tbl_area`
--

INSERT INTO `tbl_area` (`id_area`, `nombre`) VALUES(1, 'Ventas');
INSERT INTO `tbl_area` (`id_area`, `nombre`) VALUES(2, 'Mercadeo');
INSERT INTO `tbl_area` (`id_area`, `nombre`) VALUES(3, 'Publicista');
INSERT INTO `tbl_area` (`id_area`, `nombre`) VALUES(4, 'Limpieza');
INSERT INTO `tbl_area` (`id_area`, `nombre`) VALUES(5, 'Vigilancia');
INSERT INTO `tbl_area` (`id_area`, `nombre`) VALUES(6, 'community manager');
INSERT INTO `tbl_area` (`id_area`, `nombre`) VALUES(7, 'Puntos de venta');
INSERT INTO `tbl_area` (`id_area`, `nombre`) VALUES(8, 'Asesores de moda');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_departamentos`
--

CREATE TABLE `tbl_departamentos` (
  `idDepartamento` int NOT NULL,
  `Departamento` varchar(50) NOT NULL,
  `pf` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

--
-- Volcado de datos para la tabla `tbl_departamentos`
--

INSERT INTO `tbl_departamentos` (`idDepartamento`, `Departamento`, `pf`) VALUES(1, 'Ahuachapán', 'ah');
INSERT INTO `tbl_departamentos` (`idDepartamento`, `Departamento`, `pf`) VALUES(2, 'Cabañas', 'ca');
INSERT INTO `tbl_departamentos` (`idDepartamento`, `Departamento`, `pf`) VALUES(3, 'Chalatenango', 'ch');
INSERT INTO `tbl_departamentos` (`idDepartamento`, `Departamento`, `pf`) VALUES(4, 'Cuscatlan', 'cu');
INSERT INTO `tbl_departamentos` (`idDepartamento`, `Departamento`, `pf`) VALUES(5, 'La libertad', 'li');
INSERT INTO `tbl_departamentos` (`idDepartamento`, `Departamento`, `pf`) VALUES(6, 'Morazán', 'mo');
INSERT INTO `tbl_departamentos` (`idDepartamento`, `Departamento`, `pf`) VALUES(7, 'La Paz', 'pa');
INSERT INTO `tbl_departamentos` (`idDepartamento`, `Departamento`, `pf`) VALUES(8, 'Santa Ana', 'sa');
INSERT INTO `tbl_departamentos` (`idDepartamento`, `Departamento`, `pf`) VALUES(9, 'San Miguel', 'sm');
INSERT INTO `tbl_departamentos` (`idDepartamento`, `Departamento`, `pf`) VALUES(10, 'San Salvador', 'ss');
INSERT INTO `tbl_departamentos` (`idDepartamento`, `Departamento`, `pf`) VALUES(11, 'San Vicente', 'sv');
INSERT INTO `tbl_departamentos` (`idDepartamento`, `Departamento`, `pf`) VALUES(12, 'Sonsonate', 'so');
INSERT INTO `tbl_departamentos` (`idDepartamento`, `Departamento`, `pf`) VALUES(13, 'La Unión', 'un');
INSERT INTO `tbl_departamentos` (`idDepartamento`, `Departamento`, `pf`) VALUES(14, 'Usulutan', 'us');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_empleados`
--

CREATE TABLE `tbl_empleados` (
  `id_empleados` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `genero` char(1) NOT NULL,
  `telefono` int NOT NULL,
  `id_empresa` int NOT NULL,
  `area` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

--
-- Volcado de datos para la tabla `tbl_empleados`
--

INSERT INTO `tbl_empleados` (`id_empleados`, `nombre`, `fechaNacimiento`, `genero`, `telefono`, `id_empresa`, `area`) VALUES(2, 'Juan Antonio Benitez Fuentes', '1980-05-05', 'M', 72832728, 30, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_empresas`
--

CREATE TABLE `tbl_empresas` (
  `id_empresa` int NOT NULL,
  `nombreComercial` varchar(100) NOT NULL,
  `razonSocial` varchar(200) NOT NULL,
  `direccionGeneral` varchar(100) NOT NULL,
  `idDepartamento` int NOT NULL,
  `telefonoempresarial` int NOT NULL,
  `correoEmpresarial` varchar(100) NOT NULL,
  `idUsuario` int NOT NULL,
  `fechaCreacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

--
-- Volcado de datos para la tabla `tbl_empresas`
--

INSERT INTO `tbl_empresas` (`id_empresa`, `nombreComercial`, `razonSocial`, `direccionGeneral`, `idDepartamento`, `telefonoempresarial`, `correoEmpresarial`, `idUsuario`, `fechaCreacion`) VALUES(30, 'Almacenes bou', 'Venta de articulos diversos', '30 calle oriente. #234', 9, 783928392, 'bou@gmail.com', 1, '2023-05-24 21:57:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `id_Rol` int NOT NULL,
  `rol` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

--
-- Volcado de datos para la tabla `tbl_roles`
--

INSERT INTO `tbl_roles` (`id_Rol`, `rol`) VALUES(1, 'SuperAdmin');
INSERT INTO `tbl_roles` (`id_Rol`, `rol`) VALUES(2, 'Admin');
INSERT INTO `tbl_roles` (`id_Rol`, `rol`) VALUES(3, 'General');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuarios`
--

CREATE TABLE `tbl_usuarios` (
  `id_Usuario` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `id_Rol` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

--
-- Volcado de datos para la tabla `tbl_usuarios`
--

INSERT INTO `tbl_usuarios` (`id_Usuario`, `nombre`, `usuario`, `pwd`, `id_Rol`) VALUES(1, 'Administrador', 'admin', '202cb962ac59075b964b07152d234b70', 1);
INSERT INTO `tbl_usuarios` (`id_Usuario`, `nombre`, `usuario`, `pwd`, `id_Rol`) VALUES(2, 'Juan Manuel Gomez Toledo', 'Jmanuel', '202cb962ac59075b964b07152d234b70', 2);
INSERT INTO `tbl_usuarios` (`id_Usuario`, `nombre`, `usuario`, `pwd`, `id_Rol`) VALUES(3, 'Miguel Angel Dueñas Cruz', 'Mangel', '202cb962ac59075b964b07152d234b70', 3);
INSERT INTO `tbl_usuarios` (`id_Usuario`, `nombre`, `usuario`, `pwd`, `id_Rol`) VALUES(18, 'Juana Armida Gutierrez', 'Jarmida', '81dc9bdb52d04dc20036dbd8313ed055', 1);
INSERT INTO `tbl_usuarios` (`id_Usuario`, `nombre`, `usuario`, `pwd`, `id_Rol`) VALUES(19, 'Pedro Antonio Gaitan', 'Pantonio', '202cb962ac59075b964b07152d234b70', 3);
INSERT INTO `tbl_usuarios` (`id_Usuario`, `nombre`, `usuario`, `pwd`, `id_Rol`) VALUES(20, 'Andrea Maria Lopez', 'Amaria', '202cb962ac59075b964b07152d234b70', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_area`
--
ALTER TABLE `tbl_area`
  ADD PRIMARY KEY (`id_area`);

--
-- Indices de la tabla `tbl_departamentos`
--
ALTER TABLE `tbl_departamentos`
  ADD PRIMARY KEY (`idDepartamento`);

--
-- Indices de la tabla `tbl_empleados`
--
ALTER TABLE `tbl_empleados`
  ADD PRIMARY KEY (`id_empleados`),
  ADD KEY `id_empresa` (`id_empresa`),
  ADD KEY `area` (`area`);

--
-- Indices de la tabla `tbl_empresas`
--
ALTER TABLE `tbl_empresas`
  ADD PRIMARY KEY (`id_empresa`),
  ADD KEY `idDepartamento` (`idDepartamento`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indices de la tabla `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`id_Rol`);

--
-- Indices de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  ADD PRIMARY KEY (`id_Usuario`),
  ADD UNIQUE KEY `usuario` (`usuario`),
  ADD UNIQUE KEY `nombre` (`nombre`),
  ADD KEY `id_Rol` (`id_Rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_area`
--
ALTER TABLE `tbl_area`
  MODIFY `id_area` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tbl_departamentos`
--
ALTER TABLE `tbl_departamentos`
  MODIFY `idDepartamento` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `tbl_empleados`
--
ALTER TABLE `tbl_empleados`
  MODIFY `id_empleados` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_empresas`
--
ALTER TABLE `tbl_empresas`
  MODIFY `id_empresa` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `id_Rol` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  MODIFY `id_Usuario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_empleados`
--
ALTER TABLE `tbl_empleados`
  ADD CONSTRAINT `tbl_empleados_ibfk_1` FOREIGN KEY (`id_empresa`) REFERENCES `tbl_empresas` (`id_empresa`),
  ADD CONSTRAINT `tbl_empleados_ibfk_2` FOREIGN KEY (`area`) REFERENCES `tbl_area` (`id_area`);

--
-- Filtros para la tabla `tbl_empresas`
--
ALTER TABLE `tbl_empresas`
  ADD CONSTRAINT `tbl_empresas_ibfk_1` FOREIGN KEY (`idDepartamento`) REFERENCES `tbl_departamentos` (`idDepartamento`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tbl_empresas_ibfk_2` FOREIGN KEY (`idUsuario`) REFERENCES `tbl_usuarios` (`id_Usuario`);

--
-- Filtros para la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  ADD CONSTRAINT `tbl_usuarios_ibfk_1` FOREIGN KEY (`id_Rol`) REFERENCES `tbl_roles` (`id_Rol`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
