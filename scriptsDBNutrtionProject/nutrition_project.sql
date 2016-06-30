-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-06-2016 a las 06:01:01
-- Versión del servidor: 5.7.11
-- Versión de PHP: 5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `nutrition_project`
--
CREATE DATABASE IF NOT EXISTS `nutrition_project` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `nutrition_project`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_bmi`
--

CREATE TABLE `tb_bmi` (
  `id_BMI` int(10) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `initial_bmi` double DEFAULT NULL,
  `final_bmi` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_bmi`
--

INSERT INTO `tb_bmi` (`id_BMI`, `description`, `initial_bmi`, `final_bmi`) VALUES
(0, 'bajo peso', 0, 18.4),
(1, 'normal', 18.5, 24.9),
(2, 'sobre peso', 25, 400);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_exercise`
--

CREATE TABLE `tb_exercise` (
  `id_exercise` int(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_exercise`
--

INSERT INTO `tb_exercise` (`id_exercise`, `name`, `description`) VALUES
(1, 'Zancada', 'Se colocan con los pies juntos y daremos un paso hacia adelante doblando las dos piernas hasta que la rodilla de atrás casi toque el suelo y ambas rodillas estén dobladas a 90 grados. Haz fuerza con los pies y cambia de pierna con cada repetición.'),
(2, 'Sentadilla', 'Partiendo de la posición erguida, se inclina el torso hacia atrás mientras se doblan las rodillas hacia adelante. Se suele emplear un apoyo (banco o pared) para mantener el equilibrio'),
(3, 'Extension de pierna', 'El ejercicio consiste en levantar las piernas y sentir la fuerza de las pesas sobre la parte superior del muslo.'),
(4, 'Extension lateral de pierna', 'Estando parada sobre una pierna con la espalda recta, mantén la rodilla sobre la que te estabilizas ligeramente doblada. Manteniendo a la pierna opuesta a unas cuantas pulgadas del suelo, levántala tanto como puedas, usualmente a 45 grados. Bájala a la posición inicial y repite. Evita doblar la cintura para compensar por los músculos débiles y descansa tus manos en tu cadera para mantener a los brazos fuera del ejercicio'),
(5, 'Flexión  de pierna cruzada', 'De pie con las piernas semiflexionadas y cruzadas a la altura de los tobillos, brazos en la cintura, tronco semiflexionado al frente para lograr una mayor tensión en los músculos de las piernas gemelos, tibial anterior y la articulaciión del tobillo. '),
(6, 'Sentadilla con salto', 'Consiste en el mismo ejercicio que en las sentadillas solo que al momento de volver a erguirse se debe saltar.'),
(7, 'Flexiones de pecho', 'Se realizan simplemente con nuestro cuerpo apoyado al suelo por las palmas de las manos y las puntas de los pies. El cuerpo debe mantenerse recto durante todo el ejercicio y lo que debemos hacer el colocar las manos laterales y paralelas al pecho. Lo que haremos será elevar el cuerpo mediante la contracción del pecho, para luego bajar a la posición inicial lentamente y contrayendo al máximo la parte pectoral.'),
(8, 'Abdominales', 'Acostado (a) sobre una banca, coloque ambas manos sosteniendo su cabeza. Eleve la mitad superior del tronco por medio de la contraccion de sus abdominales. Descienda el tronco de forma controlada.'),
(9, 'Press en banco plano con barra', 'Tumbate sobre un banco plano. Los glúteos deben estar sobre el banco y los pies en el suelo.inspira y baja la barra hasta el pecho controlando en todo momento la carga. En segundo lugar eleva la barra hacia arriba estirando los brazos. Espira al final del movimiento. '),
(10, 'Remo mancuerna a una sola mano', 'Coloca una mancuerna junto a un banco plano, ahora coloca tu rodilla derecha sobre el banco, apoya también la palma derecha de tu mano sobre el banco. Toma la mancuerna con la mano que tienes libre y estira completamente este brazo. Eleva la mancuerna y la llevas hasta tu cadera, en un movimiento lento y sin impulso, una vez que toque la mancuerna tu cadera mantén la posición durante 1 ó 2 segundos y desciende el peso lentamente. Estira de nuevo y realiza otra repetición, cuando finalices tu serie, repites lo mismo pero con el otro brazo. '),
(11, 'Pull over para pecho', 'Sujetaremos la mancuerna con ambas manos y la mantendremos recta por encima del pecho con una curva entre nuestros brazos. Manteniendo los brazos bloqueados en la posición final de movimiento, bajaremos el peso poco a poco en un arco hacia detrás de la cabeza, mientras inhalamos hasta que sienta el pecho bastante estirado. En ese momento, devolveremos la mancuerna a la posición inicial revirtiendo el movimiento que realizamos al subir la pesa y exhalaremos a medida que lo ejecutamos. Mantenga el peso en la posición inicial alrededor de un segundo.'),
(12, 'Jalon polea alta', 'Sentado frente al aparato, piernas fijadas, barra cogida en pronación, manos muy separadas, inspirar y tirar de la barra hasta la horquilla esternal, ensanchando el pecho y llevando los codos hacia atrás. Espirar al final del movimiento'),
(13, 'Extensión tríceps en polea', 'Realizamos una extensión de los codos, llevando el mango de la polea hacia abajo, sin despegar los codos de los lados del cuerpo y únicamente movilizando el antebrazo. Espiramos al final del movimiento y regresamos lentamente a la posición inicial.'),
(14, 'Curl o flexión de bíceps en predicador', 'Para hacerlo debemos tomar una barra recta, W o E-Z a gusto y sentarnos en el banco; tomar la barra a una separación media entre manos, y flexionar, manteniendo en todo momento las axilas en el filo del apoyo del banco. Cuando se desciende no se debe extender completamente el brazo, pues de hacerlo se corre el riesgo de apoyar el peso en el acolchado, y además es un ejercicio en el cual se quiere mantener la tensión constante mediante el manejo de pesos bajos, para lograr congestiones óptimas, lo que supone hipertrofia.'),
(15, 'Flexión bíceps con mancuerna alternado', 'Sentado sobre una banca, tome un par de mancuernas a los costados con los brazos totalmente extendidos y las palmas hacia adelante. Sin mover la parte superior de los brazos, flexione un codo y lleve la mancuerna al hombro. Haga una pausa y luego baje la pesa a la posición inicial. Cambie de brazo con cada repetición.'),
(16, 'Patada triceps con mancuerna', 'Los antebrazos apuntarán a la misma dirección mientras tenemos sujeta la mancuerna. Debe haber un ángulo de 90 grados formado entre el antebrazo y la parte superior del brazo. Manteniendo quietos los brazos, debemos exhalar y utilizando el  tríceps para levantar las pesas hasta que el brazo está totalmente extendido. Nos centraremos en mover el antebrazo al ejecutar el movimiento. Después de una breve pausa en la contracción de la parte superior, inhale y baje lentamente las mancuernas hacia abajo a la posición inicial.'),
(17, 'Extension para el cuadriceps', 'Colocamos las manos agarrando el asiento o los brazos del sillon para estabilizar el tronco y nos sentamos de manera tal que la espalda y las caderas queden perfectamente apoyadas sobre el respaldo de la máquina. Previamente debemos cargar la máquina con el peso elegido y una vez en esta posición, debemos inspirar y realizar una extensión de rodilla de manera de levantar el peso con las piernas hasta que éstas queden horizontales y paralelas al piso, el torso debe permanecer inmóvil y erguido. Espiramos al final del movimiento y comenzamos un descenso lento y controlado. Las piernas deben permanecer, durante todo el recorrido, paralelas entre sí.'),
(18, 'Flexion para biceps femoral', 'Acostado sobre un banco con las rótulas justamente sobre el borde. Coloca las manos sobre el suelo o agarra las patas frontales del banco para conseguir estabilidad. Deja que tus cuádriceps se aprieten contra el banco a medida que subas el peso hasta que los gemelos se pongan verticales al suelo. No subas más el peso porque si no se acabará cayendo. Cuando alcances la posición final, aprieta el músculo a tope durante un segundo. Vuelve al punto de partida, resistiendo el impulso de la gravedad. Sigue bajando el peso hasta que los gemelos se acerquen a la paralela al suelo.'),
(19, 'Pantorrillas', 'Siéntate en el aparato con la planta del pie extendida de forma que los dedos queden sobre la parte más baja de la plataforma y los talones por fuera. La parte más baja de los muslos quedará bajo el mango acolchado, y las manos sobre el mismo, para mantenerlo en su sitio. Presiona la almohadilla del mango levantando los talones; después, vuelve a bajarlos lentamente flexionando los tobillos. Una vez hecho esto, extiende los tobillos elevando los talones tanto como te sea posible, contrayendo los músculos de las pantorrillas, y aguanta en esta posición.'),
(20, 'Press militar', 'Para comenzar el ejercicio nos colocaremos sentados con una barra cogida en pronación, es decir, con las palmas de las manos mirando hacia atras o hacia abajo cuando colocamos los brazos perpendiculares al cuerpo. Las manos deben estar sobre la barra algo más separadas que la anchura de los hombros. Con la espalda bien recta, llevamos la barra con las manos hasta la parte alta del pecho, casi a la altura de los hombros y desde allí comenzamos el ejercicio. Inspiramos y elevamos la barra hacia arriba como si la estuviéramos empujando con las manos mientras los brazos se extienden, espiramos al final del movimiento y comenzamos el descenso hacia la posición inicial de manera controlada.'),
(21, 'Flexion de biceps con mancuernas', 'Ponte de pie y sujeta una mancuerna con cada mano, a los costados de tu cuerpo, con las palmas apuntando una hacia otra. Eleva ambas mancuernas hasta que alcancen la altura de tus hombros y bájalas lentamente hacia atrás luego de una breve pausa. Trata de NO mover tu tronco en el intento de ayudar a levantar las cargas.'),
(22, 'Retraccion escapular', 'La retracción escapular consiste en juntar las escápulas (omóplatos). Esto se consigue  echando hacia atrás  y hacia abajo los hombros. Es muy importante tener en cuenta que no solo debemos echar hacia atrás los hombros. También debemos bajarlos para que la retracción sea completa.'),
(23, 'Flexiones de Muñeca con Barra', 'Siéntate en uno de los extremos de un banco y sujeta la barra, con las muñecas contra tus rodillas, con las palmas hacia arriba. Eleva la barra hacia arriba flexionando tus muñecas y bájala lentamente luego de una breve pausa. Mantén tus antebrazos presionados contra tus muslos a lo largo de todo el ejercicio.'),
(24, 'Tijera corta', 'Consiste en colocarnos de frente, con la espalda recta, vista al frente y una mancuerna en cada mano. Partiendo de esta posición adelantamos una pierna hacia delante dejando estirada al máximo la pierna que queda detrás, de forma que sólo se deje apoyada la punta del pie. La pierna que adelantamos bebe ser simplemente la que aguante el equilibrio, pues la que queda por detrás es la que trabajará. En esta posición la debemos doblar la pierna que queda hacia atrás intentando pegar con la rodilla en el suelo, bajando lo máximo que podamos y regresando a la posición inicial. Cuanto más estirada tengamos esta pierna más incidiremos sobre los glúteos. Es importante que la pierna que está delante aguante el equilibrio y el empuje del ejercicio intentando que la rodilla en ningún caso quede más adelantada que el pie, ya que podemos causarnos daños en esta articulación. '),
(25, 'Dominadas trasnuca', 'Para realizar adecuadamente las dominadas tras nuca, deberemos sujetarnos a la barra de dominadas con las palmas mirando hacia adelante con fuerza. Extenderemos ambos brazos sosteniendo la barra, llevando el torso hacia delante y la cabeza dibujando una línea imaginaria desde la barra de dominadas en la parte posterior de su cuello, o sea la nuca. Tiraremos de nuestro torso hacia arriba hasta que la barra esté cerca de la parte posterior de nuestro cuello. Para ello, empuja con los hombros y los brazos hacia arriba y  hacia atrás mientras se inclina ligeramente la cabeza hacia adelante.'),
(26, 'Sentadilla en pistola', 'Ponte de pie con los pies separados a la distancia de los hombros. Levanta una pierna por delante del cuerpo echando las caderas hacia atrás al mismo tiempo y haz una sentadilla con la pierna de apoyo Extiende los brazos por delante del cuerpo para ayudar a mantener el equilibrio. Baja las caderas lo máximo posible y mantén la pierna levantada al frente. Vuelve a la posición inicial.'),
(27, 'Remo con barra', 'Incline el pecho hacia adelante en un ángulo de unos 45º con las caderas, agarrando la barra con una distancia entre las manos igual al ancho de los hombros y con las palmas hacia abajo. Eleve la barra hasta que toque la parte inferior del pecho, manteniendo la columna vertebral recta y las rodillas ligeramente flexionadas. Baje la barra lentamente hasta volver a la posición inicial.'),
(28, 'Extension del triceps con barra de pie', 'Ponte de pie y sujeta una barra detrás de tus hombros, las partes superiores de tus brazos apuntando hacia arriba, y tus codos en un ángulo de 90 grados. Eleva la barra extendiendo tus brazos y bájala lentamente luego de una breve pausa. Ten cuidado de no bajar la barra demasiado abajo, hasta el punto desde el cual es difícil levantarla de nuevo.'),
(29, 'Curl de biceps de pie con barra', 'Tomaremos una barra lisa con las manos, de manera que las palmas miren hacia arriba, es decir, con agarre en supinación. Las manos deben estar separadas en la barra un poco más allá de la anchura de los hombros. Desde esta posición, sin movilizar el tronco y manteniendo los codos a los lados del cuerpo, debemos inspirar y flexionar los codos mientras acercamos la barra al pecho y contraemos glúteos, abdominales y espinales para no mover el tronco.'),
(30, 'Flexion de biceps en pronacion', 'Coge una barra con agarre en pronación y las manos separadas a la distancia de los hombros. De pie, con un posición erguida y derecho con los pies separados a la distancia de los hombros. Mantén firmes los brazos y levanta la barra hacia el pecho. Contrae los bíceps en la posición tope del movimiento, haz una pausa y luego baja despacio la barra hasta la posición inicial. Repite el ejercicio hasta completar el número de veces deseado.'),
(31, 'Apertura de pierna lateral', 'Recuerda que una apertura lateral de piernas es un split lateral. Así que párate derecho y abre las piernas a una distancia un poco más ancha que los hombros. Intenta permanecer lo más relajado posible, ve a tu ritmo. Si sientes dolor en cualquier momento al intentar realizar la apertura de piernas, detente. Después de abrir las piernas, comienza a bajar tu torso lentamente hasta el suelo. Ve lo más bajo que puedas. A medida que bajas, la meta será colocar las piernas en un ángulo de 180° y que la pelvis toque el suelo.'),
(32, 'Correr', 'Se ejecuta como una secuencia de pasos alternados de las dos (piernas). Cada zancada se puede dividir en tres fases: apoyo, impulso y recuperación. El apoyo y el impulso ocurren cuando el pie tiene contacto con el suelo. La recuperación ocurre con el pie en el aire. Debido a que al correr solamente un pie está en el suelo, siempre hay una pierna en recuperación mientras la otra pasa por las fases de apoyo e impulso. Por un instante, mientras el corredor salta, ambas piernas están en recuperación.'),
(33, 'Elevacion Lateral', 'La posición de las piernas es importante, aunque mucha gente ni se preocupe por este aspecto una ligera flexión de rodillas nos va a dar una mayor estabilidad para poder realizar el ejercicio. El codo debe de estar ligeramente flexionado en todo el recorrido, mucha gente hace las elevaciones laterales con el codo completamente extendido y esto hace que se genere mucha tensión en la zona del antebrazo, sobrecargando la articulación y músculos del codo, además de crear una mayor palanca de fuerza que actúa en contra de la columna. Con el codo ligeramente flexionado se aisla completamente el deltoides y el trabajo es más eficaz además de evitar lesiones en codo y hombro. La subida de las mancuernas no debe de hacerse más alla de la altura del hombro, ya que estaremos forzando el movimiento natural de la articulación'),
(34, 'Saltar cuerda', 'Saltar una cuerda'),
(35, 'Lagartijas', 'Recuéstate en el piso boca abajo, elévate con las puntas de los pies, separa las manos a la altura de los hombros.'),
(36, 'Puente', 'Acuestate sobre tu espalda y apoya tus manos en el suelo. Tus pies deben apuntar hacia adelante con las rodillas dobladas. Contrae los abdominales y levanta la cadera del suelo. '),
(37, 'Saltos laterales', 'Mantén tu rodilla delantera en 90 grados. Intenta tocar el suelo con la otra rodilla, manteniendo el torso vertical. Luego debes hace que el pie que está adelante pase hacia atrás. Coordina el movimiento del brazo de manera que el delantero se vaya hacia adelante mientras cambiar las piernas de posición. Aterrizar suavemente'),
(38, 'Pierna peso muerto', 'Mantén la espalda plana y el cuerpo apretado. Y carga el peso del cuerpo en una de las piernas y levanta la otra hacia atrás lo más que puedas.'),
(39, 'Estocada', 'Párate sobre tus dos pies y con uno de éstos da un paso hacia atrás. Mantén tu rodilla en un ángulo de 90 grados. Tu pecho debe estar apuntando hacia arriba. Y permite que la rodilla trasera toque ligeramente el suelo.'),
(40, 'Remo renegado', 'Levante una mancuerna hacia un lado del cuerpo mientras mantiene el equilibrio con la otra mano y el otro pie. Mantenga la mancuerna arriba durante un segundo y regrese lentamente a la posición inicial para repetir el ejercicio con el otro lado.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_feeding`
--

CREATE TABLE `tb_feeding` (
  `id_feeding` int(10) NOT NULL,
  `day` varchar(10) DEFAULT NULL,
  `morningSnack` varchar(150) DEFAULT NULL,
  `breakfast` varchar(150) DEFAULT NULL,
  `afternoonSnack` varchar(150) DEFAULT NULL,
  `lunch` varchar(150) DEFAULT NULL,
  `dinner` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_feeding`
--

INSERT INTO `tb_feeding` (`id_feeding`, `day`, `morningSnack`, `breakfast`, `afternoonSnack`, `lunch`, `dinner`) VALUES
(0, 'lunes', '1 manzana, 1 banano y 4 nueces', 'Tortilla de 3 huevos con pimiento, cebolla y queso. Leche con avena, café con leche. 1 naranja.', '12 almendras, yogur con avena, vaso de leche', 'Filete con verduras y arroz', 'Pescado con ensalada de tomate y espárragos'),
(1, 'martes', '1 manzana, 1 banano y 12 almendras', 'Tortilla de 3 huevos con pimiento, cebolla y queso. Leche con avena, café con leche.', 'Pan integral con queso, 1 banano, 1 yogur', 'Pollo a la plancha con patatas cocidas, pimientos y aguacate', 'Pescado a la plancha con ensalada de aguacate y tomate'),
(2, 'miercoles', '1 manzana, 1 banano y 4 nueces', 'Tortilla de 3 huevos con espinacas queso. Leche con avena, café con leche. 1 pera', 'Taza de frutos rojos(fresas, arándanos...), 12 almendras, 1 trozo de queso', 'Lentejas con arroz, patatas, ensalada de tomate y aguacate', 'Ensalada grande de atún, queso, lechuga, tomate y aguacate'),
(3, 'jueves', '1 manzana, 1 banano y 12 almendras', 'Tortilla de 3 huevos con setas y queso. Leche con avena, café con leche. 1 kiwi', 'Pan integral con queso, 1 yogur y 4 nueces', 'Filete con verduras y arroz. 1 taza de uvas', 'Pescado con ensalada de tomate y espárragos'),
(4, 'viernes', '1 manzana, 1 banano y 4 nueces', 'Tortilla de 3 huevos con tomate y queso. Leche con avena, café con leche. 1 naranja', 'Taza de frutos rojos(Fresas, arándanos...), 6 almendras y 1 vaso de leche', 'Garbanzos con espinacas, ensalada de tomate y aguacate', 'Salmón a la plancha con patatas cocidas y zanahorias'),
(5, 'sabado', '1 manzana, 1 banano y 12 almendras', '3 tostadas de pan integral con mantequilla y miel (o aceite de oliva) leche con avena, café con leche. 1 pera', 'Pan integral con queso, 1 yogur y 4 nueces', 'Carne con ensalada de aguacate y 1 boniato', 'Quínoa con una lata grande de atún, ensalada de aguacate y tomate'),
(6, 'domingo', '1 manzana, 1 banano y 4 nueces', 'Tortilla de 3 huevos con tomate y queso. Leche con avena, café con leche. 1 kiwi', 'Taza de frutos rojos(Fresas, arándanos...), 12 almendras y 1 trozo de queso', 'Judías negras con arroz integral, vegetales al grill', 'Pescado a la plancha con ensalada de tomate y aguacate'),
(7, 'lunes', '1/2 sandwich', 'Leche decremada con cereales y una fruta', 'Batido de frutas y verduras', 'Ensalada, carne, pan y fruta', 'Verduras, tortilla, pan y yogur'),
(8, 'martes', 'Yogur con avena y trozos de fruta fresca', 'Leche descremada con tostada y una fruta', 'Infusión y un puñado de nueces', 'Ensalada, pescado azul, pan y fruta', 'Crema de verduras, pollo pan y yogur'),
(9, 'miercoles', '1/2 sandwich y 1 infusión', 'Yogur con avena y trozos de fruta', 'Batido de frutas y verduras', 'Ensalada de legumbres con verduras, pan y fruta', 'Verduras, pescado, pan y yogur'),
(10, 'jueves', 'yogur con cereales y una fruta', 'Leche descremada con cereales y una fruta', 'yogur y fruta', 'Ensalada pasta con verduras, pan y fruta', 'Verduras, huevos, pan y yogur'),
(11, 'viernes', 'Tostada y una fruta', 'Yogur con avena y trozos de fruta', 'Batido de frutas y verduras', 'Ensalada de legumbres con carne, pan y fruta', 'Verduras, pescado, pan y yogur'),
(12, 'sabado', 'Bocadillo pequeño y un vaso de jugo', 'Leche descremada con tostada y una fruta', 'Yogur y avena', 'Ensalada, arroz con verduras, pan y fruta', 'Verduras, pollo, pan y yogur'),
(13, 'domingo', 'Tostada y una fruta', 'Leche descremada con cereales y jugo', 'Batidos de frutas y verduras', 'Patatas, pescado blanco, pan y frutas', 'Ensalada, arroz, pan y yogur'),
(14, 'lunes', '1 manzana y 2 nueces', 'Tortilla de 2 huevos con espinacas y 1 tomate, café(solo)', 'Taza de frutos rojos(fresas, arándanos...) y 6 almendras', 'Filete con verdura y ensalada', 'Pescado con ensalada de tomate y espárragos'),
(15, 'martes', '1 pera y 6 almendras', '2 huevos revueltos con cebolla y 1 tomate, café(solo)', '1 yogur y 2 nueces', 'Pollo a la plancha con pimientos y aguacate', 'Pescado a la plancha con ensalada de espinacas y tomate'),
(16, 'miercoles', '1 manzana y 2 nueces', 'Tortilla de 2 huevos con espinacas y 1 tomate, café(solo)', 'Taza de frutos rojos(fresas, arándanos...) y 6 almendras', 'Pavo con ensalada de lechuga, tomate y aguacate', 'Ensalada grande de atún con lechuga, tomate y aguacate'),
(17, 'jueves', '1 pera y 6 almendras', 'Tortilla de 2 huevos con queso de cabra y 1 tomate, café(solo)', '1 yogur y 2 nueces', 'Filete con verdura y ensalada', 'Sópa de calabacín y ensalada'),
(18, 'viernes', '1 manzana y 2 nueces', '2 huevos revueltos con setas y 1 tomate, café(solo)', 'Taza de frutos rojos(fresas, arándanos...) y 6 almendras', 'Ensalada grande de atún con lechuga, tomate y aguacate', 'Pescado a la plancha con ensalada de espinacas y tomate'),
(19, 'sabado', '1 pera y 6 almendras', 'Tortilla de 2 huevos con espinacas y 1 tomate, café(solo)', '1 yogur y 2 nueces', 'Lomo de cerdo con ensalada', 'Ensalada grande de atún con lechuga, tomate y aguacate'),
(20, 'domingo', '1 manzana y un trozo de queso', '1 yogur con avena, 3 nueces, 1/2 aguacate, café(solo)', 'Taza de frutos rojos(fresas, arándanos...) y 6 almendras', 'Salmón al horno con ensalada', 'Tortilla de vegetales(2 huevos)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_feeding_plan`
--

CREATE TABLE `tb_feeding_plan` (
  `id_feeding_plan` int(10) NOT NULL,
  `id_feeding` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_feeding_plan`
--

INSERT INTO `tb_feeding_plan` (`id_feeding_plan`, `id_feeding`) VALUES
(0, 0),
(0, 1),
(0, 2),
(0, 3),
(0, 4),
(0, 5),
(0, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_feeding_plan_bmi`
--

CREATE TABLE `tb_feeding_plan_bmi` (
  `id_feeding_plan` int(10) NOT NULL,
  `id_BMI` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_feeding_plan_bmi`
--

INSERT INTO `tb_feeding_plan_bmi` (`id_feeding_plan`, `id_BMI`) VALUES
(0, 0),
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_plan_routines`
--

CREATE TABLE `tb_plan_routines` (
  `id_exercise` int(11) NOT NULL,
  `id_plan_routine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_plan_routines`
--

INSERT INTO `tb_plan_routines` (`id_exercise`, `id_plan_routine`) VALUES
(1, 0),
(3, 0),
(7, 0),
(9, 0),
(11, 0),
(13, 0),
(15, 0),
(17, 0),
(2, 1),
(4, 1),
(6, 1),
(8, 1),
(10, 1),
(12, 1),
(14, 1),
(16, 1),
(18, 1),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_plan_routines_bmi`
--

CREATE TABLE `tb_plan_routines_bmi` (
  `id_plan_routines` int(10) NOT NULL,
  `id_BMI` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_plan_routines_bmi`
--

INSERT INTO `tb_plan_routines_bmi` (`id_plan_routines`, `id_BMI`) VALUES
(0, 0),
(1, 1),
(2, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_bmi`
--
ALTER TABLE `tb_bmi`
  ADD PRIMARY KEY (`id_BMI`);

--
-- Indices de la tabla `tb_exercise`
--
ALTER TABLE `tb_exercise`
  ADD PRIMARY KEY (`id_exercise`);

--
-- Indices de la tabla `tb_feeding`
--
ALTER TABLE `tb_feeding`
  ADD PRIMARY KEY (`id_feeding`);

--
-- Indices de la tabla `tb_feeding_plan`
--
ALTER TABLE `tb_feeding_plan`
  ADD PRIMARY KEY (`id_feeding_plan`,`id_feeding`),
  ADD KEY `id_feeding` (`id_feeding`);

--
-- Indices de la tabla `tb_feeding_plan_bmi`
--
ALTER TABLE `tb_feeding_plan_bmi`
  ADD PRIMARY KEY (`id_feeding_plan`),
  ADD KEY `id_BMI` (`id_BMI`);

--
-- Indices de la tabla `tb_plan_routines`
--
ALTER TABLE `tb_plan_routines`
  ADD PRIMARY KEY (`id_exercise`,`id_plan_routine`),
  ADD KEY `id_plan_routine` (`id_plan_routine`);

--
-- Indices de la tabla `tb_plan_routines_bmi`
--
ALTER TABLE `tb_plan_routines_bmi`
  ADD PRIMARY KEY (`id_plan_routines`),
  ADD KEY `id_BMI` (`id_BMI`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_feeding_plan`
--
ALTER TABLE `tb_feeding_plan`
  ADD CONSTRAINT `tb_feeding_plan_ibfk_1` FOREIGN KEY (`id_feeding_plan`) REFERENCES `tb_feeding_plan_bmi` (`id_feeding_plan`),
  ADD CONSTRAINT `tb_feeding_plan_ibfk_2` FOREIGN KEY (`id_feeding`) REFERENCES `tb_feeding` (`id_feeding`);

--
-- Filtros para la tabla `tb_feeding_plan_bmi`
--
ALTER TABLE `tb_feeding_plan_bmi`
  ADD CONSTRAINT `tb_feeding_plan_bmi_ibfk_1` FOREIGN KEY (`id_BMI`) REFERENCES `tb_bmi` (`id_BMI`);

--
-- Filtros para la tabla `tb_plan_routines`
--
ALTER TABLE `tb_plan_routines`
  ADD CONSTRAINT `tb_plan_routines_ibfk_1` FOREIGN KEY (`id_plan_routine`) REFERENCES `tb_plan_routines_bmi` (`id_plan_routines`),
  ADD CONSTRAINT `tb_plan_routines_ibfk_2` FOREIGN KEY (`id_exercise`) REFERENCES `tb_exercise` (`id_exercise`);

--
-- Filtros para la tabla `tb_plan_routines_bmi`
--
ALTER TABLE `tb_plan_routines_bmi`
  ADD CONSTRAINT `tb_plan_routines_bmi_ibfk_1` FOREIGN KEY (`id_BMI`) REFERENCES `tb_bmi` (`id_BMI`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
