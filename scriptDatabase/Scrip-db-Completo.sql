-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 26-02-2023 a las 05:35:12
-- Versión del servidor: 5.7.39
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `app_votaciones`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidatos`
--

CREATE TABLE `candidatos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `candidatos`
--

INSERT INTO `candidatos` (`id`, `nombre`) VALUES
(1, 'Pedro'),
(2, 'Juan'),
(3, 'Diego');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunas`
--

CREATE TABLE `comunas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `id_region` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `comunas`
--

INSERT INTO `comunas` (`id`, `nombre`, `id_region`) VALUES
(3461, 'Arica', 165),
(3462, 'Camarones', 165),
(3463, 'Putre', 165),
(3464, 'General Lagos', 165),
(3465, 'Iquique', 166),
(3466, 'Alto Hospicio', 166),
(3467, 'Pozo Almonte', 166),
(3468, 'Camiña', 166),
(3469, 'Colchane', 166),
(3470, 'Huara', 166),
(3471, 'Pica', 166),
(3472, 'Antofagasta', 167),
(3473, 'Mejillones', 167),
(3474, 'Sierra Gorda', 167),
(3475, 'Taltal', 167),
(3476, 'Calama', 167),
(3477, 'Ollagüe', 167),
(3478, 'San Pedro de Atacama', 167),
(3479, 'Tocopilla', 167),
(3480, 'María Elena', 167),
(3481, 'Copiapó', 168),
(3482, 'Caldera', 168),
(3483, 'Tierra Amarilla', 168),
(3484, 'Chañaral', 168),
(3485, 'Diego de Almagro', 168),
(3486, 'Vallenar', 168),
(3487, 'Alto del Carmen', 168),
(3488, 'Freirina', 168),
(3489, 'Huasco', 168),
(3490, 'La Serena', 169),
(3491, 'Coquimbo', 169),
(3492, 'Andacollo', 169),
(3493, 'La Higuera', 169),
(3494, 'Paiguano', 169),
(3495, 'Vicuña', 169),
(3496, 'Illapel', 169),
(3497, 'Canela', 169),
(3498, 'Los Vilos', 169),
(3499, 'Salamanca', 169),
(3500, 'Ovalle', 169),
(3501, 'Combarbalá', 169),
(3502, 'Monte Patria', 169),
(3503, 'Punitaqui', 169),
(3504, 'Río Hurtado', 169),
(3505, 'Valparaíso', 170),
(3506, 'Casablanca', 170),
(3507, 'Concón', 170),
(3508, 'Juan Fernández', 170),
(3509, 'Puchuncaví', 170),
(3510, 'Quintero', 170),
(3511, 'Viña del Mar', 170),
(3512, 'Isla de Pascua', 170),
(3513, 'Los Andes', 170),
(3514, 'Calle Larga', 170),
(3515, 'Rinconada', 170),
(3516, 'San Esteban', 170),
(3517, 'La Ligua', 170),
(3518, 'Cabildo', 170),
(3519, 'Papudo', 170),
(3520, 'Petorca', 170),
(3521, 'Zapallar', 170),
(3522, 'Quillota', 170),
(3523, 'Calera', 170),
(3524, 'Hijuelas', 170),
(3525, 'La Cruz', 170),
(3526, 'Nogales', 170),
(3527, 'San Antonio', 170),
(3528, 'Algarrobo', 170),
(3529, 'Cartagena', 170),
(3530, 'El Quisco', 170),
(3531, 'El Tabo', 170),
(3532, 'Santo Domingo', 170),
(3533, 'San Felipe', 170),
(3534, 'Catemu', 170),
(3535, 'Llaillay', 170),
(3536, 'Panquehue', 170),
(3537, 'Putaendo', 170),
(3538, 'Santa María', 170),
(3539, 'Quilpué', 170),
(3540, 'Limache', 170),
(3541, 'Olmué', 170),
(3542, 'Villa Alemana', 170),
(3543, 'Rancagua', 171),
(3544, 'Codegua', 171),
(3545, 'Coinco', 171),
(3546, 'Coltauco', 171),
(3547, 'Doñihue', 171),
(3548, 'Graneros', 171),
(3549, 'Las Cabras', 171),
(3550, 'Machalí', 171),
(3551, 'Malloa', 171),
(3552, 'Mostazal', 171),
(3553, 'Olivar', 171),
(3554, 'Peumo', 171),
(3555, 'Pichidegua', 171),
(3556, 'Quinta de Tilcoco', 171),
(3557, 'Rengo', 171),
(3558, 'Requínoa', 171),
(3559, 'San Vicente', 171),
(3560, 'Pichilemu', 171),
(3561, 'La Estrella', 171),
(3562, 'Litueche', 171),
(3563, 'Marchihue', 171),
(3564, 'Navidad', 171),
(3565, 'Paredones', 171),
(3566, 'San Fernando', 171),
(3567, 'Chépica', 171),
(3568, 'Chimbarongo', 171),
(3569, 'Lolol', 171),
(3570, 'Nancagua', 171),
(3571, 'Palmilla', 171),
(3572, 'Peralillo', 171),
(3573, 'Placilla', 171),
(3574, 'Pumanque', 171),
(3575, 'Santa Cruz', 171),
(3576, 'Talca', 172),
(3577, 'Constitución', 172),
(3578, 'Curepto', 172),
(3579, 'Empedrado', 172),
(3580, 'Maule', 172),
(3581, 'Pelarco', 172),
(3582, 'Pencahue', 172),
(3583, 'Río Claro', 172),
(3584, 'San Clemente', 172),
(3585, 'San Rafael', 172),
(3586, 'Cauquenes', 172),
(3587, 'Chanco', 172),
(3588, 'Pelluhue', 172),
(3589, 'Curicó', 172),
(3590, 'Hualañé', 172),
(3591, 'Licantén', 172),
(3592, 'Molina', 172),
(3593, 'Rauco', 172),
(3594, 'Romeral', 172),
(3595, 'Sagrada Familia', 172),
(3596, 'Teno', 172),
(3597, 'Vichuquén', 172),
(3598, 'Linares', 172),
(3599, 'Colbún', 172),
(3600, 'Longaví', 172),
(3601, 'Parral', 172),
(3602, 'Retiro', 172),
(3603, 'San Javier', 172),
(3604, 'Villa Alegre', 172),
(3605, 'Yerbas Buenas', 172),
(3606, 'Cobquecura', 173),
(3607, 'Coelemu', 173),
(3608, 'Ninhue', 173),
(3609, 'Portezuelo', 173),
(3610, 'Quirihue', 173),
(3611, 'Ránquil', 173),
(3612, 'Treguaco', 173),
(3613, 'Bulnes', 173),
(3614, 'Chillán Viejo', 173),
(3615, 'Chillán', 173),
(3616, 'El Carmen', 173),
(3617, 'Pemuco', 173),
(3618, 'Pinto', 173),
(3619, 'Quillón', 173),
(3620, 'San Ignacio', 173),
(3621, 'Yungay', 173),
(3622, 'Coihueco', 173),
(3623, 'Ñiquén', 173),
(3624, 'San Carlos', 173),
(3625, 'San Fabián', 173),
(3626, 'San Nicolás', 173),
(3627, 'Concepción', 174),
(3628, 'Coronel', 174),
(3629, 'Chiguayante', 174),
(3630, 'Florida', 174),
(3631, 'Hualqui', 174),
(3632, 'Lota', 174),
(3633, 'Penco', 174),
(3634, 'San Pedro de la Paz', 174),
(3635, 'Santa Juana', 174),
(3636, 'Talcahuano', 174),
(3637, 'Tomé', 174),
(3638, 'Hualpén', 174),
(3639, 'Lebu', 174),
(3640, 'Arauco', 174),
(3641, 'Cañete', 174),
(3642, 'Contulmo', 174),
(3643, 'Curanilahue', 174),
(3644, 'Los Álamos', 174),
(3645, 'Tirúa', 174),
(3646, 'Los Ángeles', 174),
(3647, 'Antuco', 174),
(3648, 'Cabrero', 174),
(3649, 'Laja', 174),
(3650, 'Mulchén', 174),
(3651, 'Nacimiento', 174),
(3652, 'Negrete', 174),
(3653, 'Quilaco', 174),
(3654, 'Quilleco', 174),
(3655, 'San Rosendo', 174),
(3656, 'Santa Bárbara', 174),
(3657, 'Tucapel', 174),
(3658, 'Yumbel', 174),
(3659, 'Alto Biobío', 174),
(3660, 'Temuco', 175),
(3661, 'Carahue', 175),
(3662, 'Cunco', 175),
(3663, 'Curarrehue', 175),
(3664, 'Freire', 175),
(3665, 'Galvarino', 175),
(3666, 'Gorbea', 175),
(3667, 'Lautaro', 175),
(3668, 'Loncoche', 175),
(3669, 'Melipeuco', 175),
(3670, 'Nueva Imperial', 175),
(3671, 'Padre las Casas', 175),
(3672, 'Perquenco', 175),
(3673, 'Pitrufquén', 175),
(3674, 'Pucón', 175),
(3675, 'Saavedra', 175),
(3676, 'Teodoro Schmidt', 175),
(3677, 'Toltén', 175),
(3678, 'Vilcún', 175),
(3679, 'Villarrica', 175),
(3680, 'Cholchol', 175),
(3681, 'Angol', 175),
(3682, 'Collipulli', 175),
(3683, 'Curacautín', 175),
(3684, 'Ercilla', 175),
(3685, 'Lonquimay', 175),
(3686, 'Los Sauces', 175),
(3687, 'Lumaco', 175),
(3688, 'Purén', 175),
(3689, 'Renaico', 175),
(3690, 'Traiguén', 175),
(3691, 'Victoria', 175),
(3692, 'Valdivia', 176),
(3693, 'Corral', 176),
(3694, 'Lanco', 176),
(3695, 'Los Lagos', 176),
(3696, 'Máfil', 176),
(3697, 'Mariquina', 176),
(3698, 'Paillaco', 176),
(3699, 'Panguipulli', 176),
(3700, 'La Unión', 176),
(3701, 'Futrono', 176),
(3702, 'Lago Ranco', 176),
(3703, 'Río Bueno', 176),
(3704, 'Puerto Montt', 177),
(3705, 'Calbuco', 177),
(3706, 'Cochamó', 177),
(3707, 'Fresia', 177),
(3708, 'Frutillar', 177),
(3709, 'Los Muermos', 177),
(3710, 'Llanquihue', 177),
(3711, 'Maullín', 177),
(3712, 'Puerto Varas', 177),
(3713, 'Castro', 177),
(3714, 'Ancud', 177),
(3715, 'Chonchi', 177),
(3716, 'Curaco de Vélez', 177),
(3717, 'Dalcahue', 177),
(3718, 'Puqueldón', 177),
(3719, 'Queilén', 177),
(3720, 'Quellón', 177),
(3721, 'Quemchi', 177),
(3722, 'Quinchao', 177),
(3723, 'Osorno', 177),
(3724, 'Puerto Octay', 177),
(3725, 'Purranque', 177),
(3726, 'Puyehue', 177),
(3727, 'Río Negro', 177),
(3728, 'San Juan de la Costa', 177),
(3729, 'San Pablo', 177),
(3730, 'Chaitén', 177),
(3731, 'Futaleufú', 177),
(3732, 'Hualaihué', 177),
(3733, 'Palena', 177),
(3734, 'Coihaique', 178),
(3735, 'Lago Verde', 178),
(3736, 'Aisén', 178),
(3737, 'Cisnes', 178),
(3738, 'Guaitecas', 178),
(3739, 'Cochrane', 178),
(3740, 'O’Higgins', 178),
(3741, 'Tortel', 178),
(3742, 'Chile Chico', 178),
(3743, 'Río Ibáñez', 178),
(3744, 'Punta Arenas', 179),
(3745, 'Laguna Blanca', 179),
(3746, 'Río Verde', 179),
(3747, 'San Gregorio', 179),
(3748, 'Cabo de Hornos (Ex Navarino)', 179),
(3749, 'Antártica', 179),
(3750, 'Porvenir', 179),
(3751, 'Primavera', 179),
(3752, 'Timaukel', 179),
(3753, 'Natales', 179),
(3754, 'Torres del Paine', 179),
(3755, 'Cerrillos', 180),
(3756, 'Cerro Navia', 180),
(3757, 'Conchalí', 180),
(3758, 'El Bosque', 180),
(3759, 'Estación Central', 180),
(3760, 'Huechuraba', 180),
(3761, 'Independencia', 180),
(3762, 'La Cisterna', 180),
(3763, 'La Florida', 180),
(3764, 'La Granja', 180),
(3765, 'La Pintana', 180),
(3766, 'La Reina', 180),
(3767, 'Las Condes', 180),
(3768, 'Lo Barnechea', 180),
(3769, 'Lo Espejo', 180),
(3770, 'Lo Prado', 180),
(3771, 'Macul', 180),
(3772, 'Maipú', 180),
(3773, 'Ñuñoa', 180),
(3774, 'Pedro Aguirre Cerda', 180),
(3775, 'Peñalolén', 180),
(3776, 'Providencia', 180),
(3777, 'Pudahuel', 180),
(3778, 'Quilicura', 180),
(3779, 'Quinta Normal', 180),
(3780, 'Recoleta', 180),
(3781, 'Renca', 180),
(3782, 'Santiago', 180),
(3783, 'San Joaquín', 180),
(3784, 'San Miguel', 180),
(3785, 'San Ramón', 180),
(3786, 'Vitacura', 180),
(3787, 'Puente Alto', 180),
(3788, 'Pirque', 180),
(3789, 'San José de Maipo', 180),
(3790, 'Colina', 180),
(3791, 'Lampa', 180),
(3792, 'Tiltil', 180),
(3793, 'San Bernardo', 180),
(3794, 'Buin', 180),
(3795, 'Calera de Tango', 180),
(3796, 'Paine', 180),
(3797, 'Melipilla', 180),
(3798, 'Alhué', 180),
(3799, 'Curacaví', 180),
(3800, 'María Pinto', 180),
(3801, 'San Pedro', 180),
(3802, 'Talagante', 180),
(3803, 'El Monte', 180),
(3804, 'Isla de Maipo', 180),
(3805, 'Padre Hurtado', 180),
(3806, 'Peñaflor', 180);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `referencias`
--

CREATE TABLE `referencias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `referencias`
--

INSERT INTO `referencias` (`id`, `nombre`) VALUES
(1, 'Web'),
(2, 'TV'),
(3, 'Redes sociales'),
(4, 'Amigos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regiones`
--

CREATE TABLE `regiones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `regiones`
--

INSERT INTO `regiones` (`id`, `nombre`) VALUES
(165, 'Arica y Parinacota'),
(166, 'Tarapacá'),
(167, 'Antofagasta'),
(168, 'Atacama'),
(169, 'Coquimbo'),
(170, 'Valparaíso'),
(171, 'Región del Libertador Gral. Bernardo O’Higgins'),
(172, 'Región del Maule'),
(173, 'Región de Ñuble'),
(174, 'Región del Biobío'),
(175, 'Región de la Araucanía'),
(176, 'Región de Los Ríos'),
(177, 'Región de Los Lagos'),
(178, 'Región Aisén del Gral. Carlos Ibáñez del Campo'),
(179, 'Región de Magallanes y de la Antártica Chilena'),
(180, 'Región Metropolitana de Santiago');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votos`
--

CREATE TABLE `votos` (
  `id` int(11) NOT NULL,
  `nombre_apellido` varchar(50) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `RUT` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `id_comuna` int(11) NOT NULL,
  `id_candidato` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votos_referencia`
--

CREATE TABLE `votos_referencia` (
  `id` int(11) NOT NULL,
  `id_voto` int(11) NOT NULL,
  `id_referencia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comunas`
--
ALTER TABLE `comunas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_region` (`id_region`);

--
-- Indices de la tabla `referencias`
--
ALTER TABLE `referencias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `regiones`
--
ALTER TABLE `regiones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `votos`
--
ALTER TABLE `votos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_comuna` (`id_comuna`),
  ADD KEY `id_candidato` (`id_candidato`);

--
-- Indices de la tabla `votos_referencia`
--
ALTER TABLE `votos_referencia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_voto` (`id_voto`),
  ADD KEY `id_referencia` (`id_referencia`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `comunas`
--
ALTER TABLE `comunas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3807;

--
-- AUTO_INCREMENT de la tabla `referencias`
--
ALTER TABLE `referencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `regiones`
--
ALTER TABLE `regiones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT de la tabla `votos`
--
ALTER TABLE `votos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de la tabla `votos_referencia`
--
ALTER TABLE `votos_referencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comunas`
--
ALTER TABLE `comunas`
  ADD CONSTRAINT `comunas_ibfk_1` FOREIGN KEY (`id_region`) REFERENCES `regiones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `votos`
--
ALTER TABLE `votos`
  ADD CONSTRAINT `votos_ibfk_1` FOREIGN KEY (`id_comuna`) REFERENCES `comunas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `votos_ibfk_2` FOREIGN KEY (`id_candidato`) REFERENCES `candidatos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `votos_referencia`
--
ALTER TABLE `votos_referencia`
  ADD CONSTRAINT `votos_referencia_ibfk_1` FOREIGN KEY (`id_referencia`) REFERENCES `referencias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `votos_referencia_ibfk_2` FOREIGN KEY (`id_voto`) REFERENCES `votos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
