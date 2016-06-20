use nutrition_project;

		insert into tb_BMI(id_BMI, description, initial_bmi, final_bmi) values(00,'bajo peso',16.00,18.50);
		insert into tb_BMI(id_BMI, description, initial_bmi, final_bmi) values(01,'normal',18.50,24.99);
		insert into tb_BMI(id_BMI, description, initial_bmi, final_bmi) values(02,'sobre peso',25.00,40.00);


		
		insert into tb_feeding_plan_BMI (id_BMI, id_feeding_plan) values(00,00);
		insert into tb_feeding_plan_BMI (id_BMI, id_feeding_plan) values(01,01);
		insert into tb_feeding_plan_BMI (id_BMI, id_feeding_plan) values(02,02);



/*----------------------------------------------------------------------------------------------------------------------
	Introducción de los datos en la tabla feeding
/*
	Ganar peso
	Lunes
*/ 

    insert into tb_feeding(id_feeding, day, breakfast, morningSnack, lunch,afternoonSnack, dinner) values
    (00,'lunes',
     'Tortilla de 3 huevos con pimiento, cebolla y queso. Leche con avena, café con leche. 1 naranja.',
     '1 manzana, 1 banano y 4 nueces',
     'Filete con verduras y arroz',
     '12 almendras, yogur con avena, vaso de leche',
     'Pescado con ensalada de tomate y espárragos');

/*
	Ganar peso
	Martes
*/ 
    insert into tb_feeding(id_feeding, day, breakfast, morningSnack, lunch,afternoonSnack, dinner) values
    (01,'martes',
     'Tortilla de 3 huevos con pimiento, cebolla y queso. Leche con avena, café con leche.',
     '1 manzana, 1 banano y 12 almendras',
     'Pollo a la plancha con patatas cocidas, pimientos y aguacate',
     'Pan integral con queso, 1 banano, 1 yogur',
     'Pescado a la plancha con ensalada de aguacate y tomate');

/*
	Ganar peso
	Miércoles
*/ 

    insert into tb_feeding(id_feeding, day, breakfast, morningSnack, lunch,afternoonSnack, dinner) values
    (02,'miercoles',
     'Tortilla de 3 huevos con espinacas queso. Leche con avena, café con leche. 1 pera',
     '1 manzana, 1 banano y 4 nueces',
     'Lentejas con arroz, patatas, ensalada de tomate y aguacate',
     'Taza de frutos rojos(fresas, arándanos...), 12 almendras, 1 trozo de queso',
     'Ensalada grande de atún, queso, lechuga, tomate y aguacate');
 
/*
	Ganar peso
	Jueves
*/ 

    insert into tb_feeding(id_feeding, day, breakfast, morningSnack, lunch,afternoonSnack, dinner) values
    (03,'jueves',
     'Tortilla de 3 huevos con setas y queso. Leche con avena, café con leche. 1 kiwi',
     '1 manzana, 1 banano y 12 almendras',
     'Filete con verduras y arroz. 1 taza de uvas',
     'Pan integral con queso, 1 yogur y 4 nueces',
     'Pescado con ensalada de tomate y espárragos');


/*
	Ganar peso
	Viernes
*/ 

    insert into tb_feeding(id_feeding, day, breakfast, morningSnack, lunch,afternoonSnack, dinner) values
    (04,'viernes',
     'Tortilla de 3 huevos con tomate y queso. Leche con avena, café con leche. 1 naranja',
     '1 manzana, 1 banano y 4 nueces',
     'Garbanzos con espinacas, ensalada de tomate y aguacate',
     'Taza de frutos rojos(Fresas, arándanos...), 6 almendras y 1 vaso de leche',
     'Salmón a la plancha con patatas cocidas y zanahorias');
 
/*
	Ganar peso
	Sábado
*/ 

    insert into tb_feeding(id_feeding, day, breakfast, morningSnack, lunch,afternoonSnack, dinner) values
    (05,'sabado',
     '3 tostadas de pan integral con mantequilla y miel (o aceite de oliva) leche con avena, café con leche. 1 pera',
     '1 manzana, 1 banano y 12 almendras',
     'Carne con ensalada de aguacate y 1 boniato',
     'Pan integral con queso, 1 yogur y 4 nueces',
     'Quínoa con una lata grande de atún, ensalada de aguacate y tomate');

/*
	Ganar peso
	Domingo
*/ 

insert into tb_feeding(id_feeding, day, breakfast, morningSnack, lunch,afternoonSnack, dinner) values
(06,'domingo',
'Tortilla de 3 huevos con tomate y queso. Leche con avena, café con leche. 1 kiwi',
'1 manzana, 1 banano y 4 nueces',
'Judías negras con arroz integral, vegetales al grill',
'Taza de frutos rojos(Fresas, arándanos...), 12 almendras y 1 trozo de queso',
'Pescado a la plancha con ensalada de tomate y aguacate');


/***********************************************************************************************************************
	mantener peso
	Lunes
***********************************************************************************************************************/ 
insert into tb_feeding(id_feeding, day, breakfast, morningSnack, lunch,afternoonSnack, dinner) values
(07,'lunes',
'Leche decremada con cereales y una fruta',
'1/2 sandwich',
'Ensalada, carne, pan y fruta',
'Batido de frutas y verduras',
'Verduras, tortilla, pan y yogur');

/***********************************************************************************************************************
	mantener peso
	Martes
***********************************************************************************************************************/ 
insert into tb_feeding(id_feeding, day, breakfast, morningSnack, lunch,afternoonSnack, dinner) values
(08,'martes',
'Leche descremada con tostada y una fruta',
'Yogur con avena y trozos de fruta fresca',
'Ensalada, pescado azul, pan y fruta',
'Infusión y un puñado de nueces',
'Crema de verduras, pollo pan y yogur');

/***********************************************************************************************************************
	mantener peso
	Miercoles 
***********************************************************************************************************************/ 

insert into tb_feeding(id_feeding, day, breakfast, morningSnack, lunch,afternoonSnack, dinner) values
(09,'miercoles',
'Yogur con avena y trozos de fruta',
'1/2 sandwich y 1 infusión',
'Ensalada de legumbres con verduras, pan y fruta',
'Batido de frutas y verduras',
'Verduras, pescado, pan y yogur');

/***********************************************************************************************************************
	mantener peso
	Jueves
***********************************************************************************************************************/ 
insert into tb_feeding(id_feeding, day, breakfast, morningSnack, lunch,afternoonSnack, dinner) values
(10,'jueves',
'Leche descremada con cereales y una fruta',
'yogur con cereales y una fruta',
'Ensalada pasta con verduras, pan y fruta',
'yogur y fruta',
'Verduras, huevos, pan y yogur');

/***********************************************************************************************************************
	mantener peso
	Viernes
***********************************************************************************************************************/ 

insert into tb_feeding(id_feeding, day, breakfast, morningSnack, lunch,afternoonSnack, dinner) values
(11,'viernes',
'Yogur con avena y trozos de fruta',
'Tostada y una fruta',
'Ensalada de legumbres con carne, pan y fruta',
'Batido de frutas y verduras',
'Verduras, pescado, pan y yogur');

/***********************************************************************************************************************
	mantener peso
	Sabado
***********************************************************************************************************************/ 
insert into tb_feeding(id_feeding, day, breakfast, morningSnack, lunch,afternoonSnack, dinner) values
(12,'sabado',
'Leche descremada con tostada y una fruta',
'Bocadillo pequeño y un vaso de jugo',
'Ensalada, arroz con verduras, pan y fruta',
'Yogur y avena',
'Verduras, pollo, pan y yogur');

/***********************************************************************************************************************
	mantener peso
	Domingo
***********************************************************************************************************************/ 
insert into tb_feeding(id_feeding, day, breakfast, morningSnack, lunch,afternoonSnack, dinner) values
(13,'domingo',
'Leche descremada con cereales y jugo',
'Tostada y una fruta',
'Patatas, pescado blanco, pan y frutas',
'Batidos de frutas y verduras',
'Ensalada, arroz, pan y yogur');

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	perder peso
	Lunes
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

insert into tb_feeding(id_feeding, day, breakfast, morningSnack, lunch,afternoonSnack, dinner) values
(14,'lunes',
 'Tortilla de 2 huevos con espinacas y 1 tomate, café(solo)',
 '1 manzana y 2 nueces',
 'Filete con verdura y ensalada',
 'Taza de frutos rojos(fresas, arándanos...) y 6 almendras',
 'Pescado con ensalada de tomate y espárragos');

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	perder peso
	Martes
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

insert into tb_feeding(id_feeding, day, breakfast, morningSnack, lunch,afternoonSnack, dinner) values
(15,'martes',
 '2 huevos revueltos con cebolla y 1 tomate, café(solo)',
 '1 pera y 6 almendras',
 'Pollo a la plancha con pimientos y aguacate',
 '1 yogur y 2 nueces',
 'Pescado a la plancha con ensalada de espinacas y tomate');

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	perder peso
	Miércoles
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

insert into tb_feeding(id_feeding, day, breakfast, morningSnack, lunch,afternoonSnack, dinner) values
(16,'miercoles',
'Tortilla de 2 huevos con espinacas y 1 tomate, café(solo)',
'1 manzana y 2 nueces',
'Pavo con ensalada de lechuga, tomate y aguacate',
'Taza de frutos rojos(fresas, arándanos...) y 6 almendras',
'Ensalada grande de atún con lechuga, tomate y aguacate');

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	perder peso
	Jueves
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

insert into tb_feeding(id_feeding, day, breakfast, morningSnack, lunch,afternoonSnack, dinner) values
(17,'jueves',
'Tortilla de 2 huevos con queso de cabra y 1 tomate, café(solo)',
'1 pera y 6 almendras',
'Filete con verdura y ensalada',
'1 yogur y 2 nueces',
'Sópa de calabacín y ensalada');

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	perder peso
	Viernes
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

insert into tb_feeding(id_feeding, day, breakfast, morningSnack, lunch,afternoonSnack, dinner) values
(18,'viernes',
'2 huevos revueltos con setas y 1 tomate, café(solo)',
'1 manzana y 2 nueces',
'Ensalada grande de atún con lechuga, tomate y aguacate',
'Taza de frutos rojos(fresas, arándanos...) y 6 almendras',
'Pescado a la plancha con ensalada de espinacas y tomate');

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	perder peso
	Sábado
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

insert into tb_feeding(id_feeding, day, breakfast, morningSnack, lunch,afternoonSnack, dinner) values
(19,'sabado',
'Tortilla de 2 huevos con espinacas y 1 tomate, café(solo)',
'1 pera y 6 almendras',
'Lomo de cerdo con ensalada',
'1 yogur y 2 nueces',
'Ensalada grande de atún con lechuga, tomate y aguacate');

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	perder peso
	Domingo
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

insert into tb_feeding(id_feeding, day, breakfast, morningSnack, lunch,afternoonSnack, dinner) values
(20,'domingo',
'1 yogur con avena, 3 nueces, 1/2 aguacate, café(solo)',
'1 manzana y un trozo de queso',
'Salmón al horno con ensalada',
'Taza de frutos rojos(fresas, arándanos...) y 6 almendras',
'Tortilla de vegetales(2 huevos)');


/*______________________________________________________________________________________________________________________

	Introduccion de los datos a la tabla feeding_plan
	Plan Subir de peso
______________________________________________________________________________________________________________________*/

		insert into tb_feeding_plan(id_feeding_plan,id_feeding) values(00, 00);
		insert into tb_feeding_plan(id_feeding_plan,id_feeding) values(00, 01);
		insert into tb_feeding_plan(id_feeding_plan,id_feeding) values(00, 02);
		insert into tb_feeding_plan(id_feeding_plan,id_feeding) values(00, 03);
		insert into tb_feeding_plan(id_feeding_plan,id_feeding) values(00, 04);
		insert into tb_feeding_plan(id_feeding_plan,id_feeding) values(00, 05);
		insert into tb_feeding_plan(id_feeding_plan,id_feeding) values(00, 06);
		
/*_____________________________________________________________________________________________________________________
	
	Introduccion de los datos a la tabla feeding_plan
	Plan Mantener peso
______________________________________________________________________________________________________________________*/
		
		insert into tb_feeding_plan(id_feeding_plan,id_feeding) values(01, 07);
		insert into tb_feeding_plan(id_feeding_plan,id_feeding) values(01, 08);
		insert into tb_feeding_plan(id_feeding_plan,id_feeding) values(01, 09);
		insert into tb_feeding_plan(id_feeding_plan,id_feeding) values(01, 10);
		insert into tb_feeding_plan(id_feeding_plan,id_feeding) values(01, 11);
		insert into tb_feeding_plan(id_feeding_plan,id_feeding) values(01, 12);
		insert into tb_feeding_plan(id_feeding_plan,id_feeding) values(01, 13);
		

/*______________________________________________________________________________________________________________________
	
	Introduccion de los datos a la tabla feeding_plan
	Plan Bajar de peso
______________________________________________________________________________________________________________________*/
        insert into tb_feeding_plan(id_feeding_plan,id_feeding) values(02, 14);
		insert into tb_feeding_plan(id_feeding_plan,id_feeding) values(02, 15);
		insert into tb_feeding_plan(id_feeding_plan,id_feeding) values(02, 16);
		insert into tb_feeding_plan(id_feeding_plan,id_feeding) values(02, 17);
		insert into tb_feeding_plan(id_feeding_plan,id_feeding) values(02, 18);
		insert into tb_feeding_plan(id_feeding_plan,id_feeding) values(02, 19);
		insert into tb_feeding_plan(id_feeding_plan,id_feeding) values(02, 20);
		
		
		
	
	/*
Inserts of exercises
*/
insert into tb_exercise(id_exercise, name, description) values(01, 'Zancada', 'Se colocan con los pies juntos y daremos un paso hacia adelante doblando las dos piernas hasta que la rodilla de atrás casi toque el suelo y ambas rodillas estén dobladas a 90 grados. Haz fuerza con los pies y cambia de pierna con cada repetición.');
insert into tb_exercise(id_exercise, name, description) values(02, 'Sentadilla', 'Partiendo de la posición erguida, se inclina el torso hacia atrás mientras se doblan las rodillas hacia adelante. Se suele emplear un apoyo (banco o pared) para mantener el equilibrio');
insert into tb_exercise(id_exercise, name, description) values(03, 'Extension de pierna', 'El ejercicio consiste en levantar las piernas y sentir la fuerza de las pesas sobre la parte superior del muslo.');
insert into tb_exercise(id_exercise, name, description) values(04, 'Extension lateral de pierna', 'Estando parada sobre una pierna con la espalda recta, mantén la rodilla sobre la que te estabilizas ligeramente doblada. Manteniendo a la pierna opuesta a unas cuantas pulgadas del suelo, levántala tanto como puedas, usualmente a 45 grados. Bájala a la posición inicial y repite. Evita doblar la cintura para compensar por los músculos débiles y descansa tus manos en tu cadera para mantener a los brazos fuera del ejercicio');
insert into tb_exercise(id_exercise, name, description) values(05, 'Flexión  de pierna cruzada', 'De pie con las piernas semiflexionadas y cruzadas a la altura de los tobillos, brazos en la cintura, tronco semiflexionado al frente para lograr una mayor tensión en los músculos de las piernas gemelos, tibial anterior y la articulaciión del tobillo. ');
insert into tb_exercise(id_exercise, name, description) values(06, 'Sentadilla con salto', 'Consiste en el mismo ejercicio que en las sentadillas solo que al momento de volver a erguirse se debe saltar.');
insert into tb_exercise(id_exercise, name, description) values(07, 'Flexiones de pecho', 'Se realizan simplemente con nuestro cuerpo apoyado al suelo por las palmas de las manos y las puntas de los pies. El cuerpo debe mantenerse recto durante todo el ejercicio y lo que debemos hacer el colocar las manos laterales y paralelas al pecho. Lo que haremos será elevar el cuerpo mediante la contracción del pecho, para luego bajar a la posición inicial lentamente y contrayendo al máximo la parte pectoral.');
insert into tb_exercise(id_exercise, name, description) values(08, 'Abdominales', 'Acostado (a) sobre una banca, coloque ambas manos sosteniendo su cabeza. Eleve la mitad superior del tronco por medio de la contraccion de sus abdominales. Descienda el tronco de forma controlada.');
insert into tb_exercise(id_exercise, name, description) values(09, 'Press en banco plano con barra', 'Tumbate sobre un banco plano. Los glúteos deben estar sobre el banco y los pies en el suelo.inspira y baja la barra hasta el pecho controlando en todo momento la carga. En segundo lugar eleva la barra hacia arriba estirando los brazos. Espira al final del movimiento. ');
insert into tb_exercise(id_exercise, name, description) values(10, 'Remo mancuerna a una sola mano', 'Coloca una mancuerna junto a un banco plano, ahora coloca tu rodilla derecha sobre el banco, apoya también la palma derecha de tu mano sobre el banco. Toma la mancuerna con la mano que tienes libre y estira completamente este brazo. Eleva la mancuerna y la llevas hasta tu cadera, en un movimiento lento y sin impulso, una vez que toque la mancuerna tu cadera mantén la posición durante 1 ó 2 segundos y desciende el peso lentamente. Estira de nuevo y realiza otra repetición, cuando finalices tu serie, repites lo mismo pero con el otro brazo. ');
insert into tb_exercise(id_exercise, name, description) values(11, 'Pull over para pecho', 'Sujetaremos la mancuerna con ambas manos y la mantendremos recta por encima del pecho con una curva entre nuestros brazos. Manteniendo los brazos bloqueados en la posición final de movimiento, bajaremos el peso poco a poco en un arco hacia detrás de la cabeza, mientras inhalamos hasta que sienta el pecho bastante estirado. En ese momento, devolveremos la mancuerna a la posición inicial revirtiendo el movimiento que realizamos al subir la pesa y exhalaremos a medida que lo ejecutamos. Mantenga el peso en la posición inicial alrededor de un segundo.');
insert into tb_exercise(id_exercise, name, description) values(12, 'Jalon polea alta', 'Sentado frente al aparato, piernas fijadas, barra cogida en pronación, manos muy separadas, inspirar y tirar de la barra hasta la horquilla esternal, ensanchando el pecho y llevando los codos hacia atrás. Espirar al final del movimiento');
insert into tb_exercise(id_exercise, name, description) values(13, 'Extensión tríceps en polea', 'Realizamos una extensión de los codos, llevando el mango de la polea hacia abajo, sin despegar los codos de los lados del cuerpo y únicamente movilizando el antebrazo. Espiramos al final del movimiento y regresamos lentamente a la posición inicial.');
insert into tb_exercise(id_exercise, name, description) values(14, 'Curl o flexión de bíceps en predicador', 'Para hacerlo debemos tomar una barra recta, W o E-Z a gusto y sentarnos en el banco; tomar la barra a una separación media entre manos, y flexionar, manteniendo en todo momento las axilas en el filo del apoyo del banco. Cuando se desciende no se debe extender completamente el brazo, pues de hacerlo se corre el riesgo de apoyar el peso en el acolchado, y además es un ejercicio en el cual se quiere mantener la tensión constante mediante el manejo de pesos bajos, para lograr congestiones óptimas, lo que supone hipertrofia.');
insert into tb_exercise(id_exercise, name, description) values(15, 'Flexión bíceps con mancuerna alternado', 'Sentado sobre una banca, tome un par de mancuernas a los costados con los brazos totalmente extendidos y las palmas hacia adelante. Sin mover la parte superior de los brazos, flexione un codo y lleve la mancuerna al hombro. Haga una pausa y luego baje la pesa a la posición inicial. Cambie de brazo con cada repetición.');
insert into tb_exercise(id_exercise, name, description) values(16, 'Patada triceps con mancuerna', 'Los antebrazos apuntarán a la misma dirección mientras tenemos sujeta la mancuerna. Debe haber un ángulo de 90 grados formado entre el antebrazo y la parte superior del brazo. Manteniendo quietos los brazos, debemos exhalar y utilizando el  tríceps para levantar las pesas hasta que el brazo está totalmente extendido. Nos centraremos en mover el antebrazo al ejecutar el movimiento. Después de una breve pausa en la contracción de la parte superior, inhale y baje lentamente las mancuernas hacia abajo a la posición inicial.');
insert into tb_exercise(id_exercise, name, description) values(17, 'Extension para el cuadriceps', 'Colocamos las manos agarrando el asiento o los brazos del sillon para estabilizar el tronco y nos sentamos de manera tal que la espalda y las caderas queden perfectamente apoyadas sobre el respaldo de la máquina. Previamente debemos cargar la máquina con el peso elegido y una vez en esta posición, debemos inspirar y realizar una extensión de rodilla de manera de levantar el peso con las piernas hasta que éstas queden horizontales y paralelas al piso, el torso debe permanecer inmóvil y erguido. Espiramos al final del movimiento y comenzamos un descenso lento y controlado. Las piernas deben permanecer, durante todo el recorrido, paralelas entre sí.');
insert into tb_exercise(id_exercise, name, description) values(18, 'Flexion para biceps femoral', 'Acostado sobre un banco con las rótulas justamente sobre el borde. Coloca las manos sobre el suelo o agarra las patas frontales del banco para conseguir estabilidad. Deja que tus cuádriceps se aprieten contra el banco a medida que subas el peso hasta que los gemelos se pongan verticales al suelo. No subas más el peso porque si no se acabará cayendo. Cuando alcances la posición final, aprieta el músculo a tope durante un segundo. Vuelve al punto de partida, resistiendo el impulso de la gravedad. Sigue bajando el peso hasta que los gemelos se acerquen a la paralela al suelo.');
insert into tb_exercise(id_exercise, name, description) values(19, 'Pantorrillas', 'Siéntate en el aparato con la planta del pie extendida de forma que los dedos queden sobre la parte más baja de la plataforma y los talones por fuera. La parte más baja de los muslos quedará bajo el mango acolchado, y las manos sobre el mismo, para mantenerlo en su sitio. Presiona la almohadilla del mango levantando los talones; después, vuelve a bajarlos lentamente flexionando los tobillos. Una vez hecho esto, extiende los tobillos elevando los talones tanto como te sea posible, contrayendo los músculos de las pantorrillas, y aguanta en esta posición.');
insert into tb_exercise(id_exercise, name, description) values(20, 'Press militar', 'Para comenzar el ejercicio nos colocaremos sentados con una barra cogida en pronación, es decir, con las palmas de las manos mirando hacia atras o hacia abajo cuando colocamos los brazos perpendiculares al cuerpo. Las manos deben estar sobre la barra algo más separadas que la anchura de los hombros. Con la espalda bien recta, llevamos la barra con las manos hasta la parte alta del pecho, casi a la altura de los hombros y desde allí comenzamos el ejercicio. Inspiramos y elevamos la barra hacia arriba como si la estuviéramos empujando con las manos mientras los brazos se extienden, espiramos al final del movimiento y comenzamos el descenso hacia la posición inicial de manera controlada.');
insert into tb_exercise(id_exercise, name, description) values(21, 'Flexion de biceps con mancuernas', 'Ponte de pie y sujeta una mancuerna con cada mano, a los costados de tu cuerpo, con las palmas apuntando una hacia otra. Eleva ambas mancuernas hasta que alcancen la altura de tus hombros y bájalas lentamente hacia atrás luego de una breve pausa. Trata de NO mover tu tronco en el intento de ayudar a levantar las cargas.');
insert into tb_exercise(id_exercise, name, description) values(22, 'Retraccion escapular', 'La retracción escapular consiste en juntar las escápulas (omóplatos). Esto se consigue  echando hacia atrás  y hacia abajo los hombros. Es muy importante tener en cuenta que no solo debemos echar hacia atrás los hombros. También debemos bajarlos para que la retracción sea completa.');
insert into tb_exercise(id_exercise, name, description) values(23, 'Flexiones de Muñeca con Barra', 'Siéntate en uno de los extremos de un banco y sujeta la barra, con las muñecas contra tus rodillas, con las palmas hacia arriba. Eleva la barra hacia arriba flexionando tus muñecas y bájala lentamente luego de una breve pausa. Mantén tus antebrazos presionados contra tus muslos a lo largo de todo el ejercicio.');
insert into tb_exercise(id_exercise, name, description) values(24, 'Tijera corta', 'Consiste en colocarnos de frente, con la espalda recta, vista al frente y una mancuerna en cada mano. Partiendo de esta posición adelantamos una pierna hacia delante dejando estirada al máximo la pierna que queda detrás, de forma que sólo se deje apoyada la punta del pie. La pierna que adelantamos bebe ser simplemente la que aguante el equilibrio, pues la que queda por detrás es la que trabajará. En esta posición la debemos doblar la pierna que queda hacia atrás intentando pegar con la rodilla en el suelo, bajando lo máximo que podamos y regresando a la posición inicial. Cuanto más estirada tengamos esta pierna más incidiremos sobre los glúteos. Es importante que la pierna que está delante aguante el equilibrio y el empuje del ejercicio intentando que la rodilla en ningún caso quede más adelantada que el pie, ya que podemos causarnos daños en esta articulación. ');
insert into tb_exercise(id_exercise, name, description) values(25, 'Dominadas trasnuca', 'Para realizar adecuadamente las dominadas tras nuca, deberemos sujetarnos a la barra de dominadas con las palmas mirando hacia adelante con fuerza. Extenderemos ambos brazos sosteniendo la barra, llevando el torso hacia delante y la cabeza dibujando una línea imaginaria desde la barra de dominadas en la parte posterior de su cuello, o sea la nuca. Tiraremos de nuestro torso hacia arriba hasta que la barra esté cerca de la parte posterior de nuestro cuello. Para ello, empuja con los hombros y los brazos hacia arriba y  hacia atrás mientras se inclina ligeramente la cabeza hacia adelante.');
insert into tb_exercise(id_exercise, name, description) values(26, 'Sentadilla en pistola', 'Ponte de pie con los pies separados a la distancia de los hombros. Levanta una pierna por delante del cuerpo echando las caderas hacia atrás al mismo tiempo y haz una sentadilla con la pierna de apoyo Extiende los brazos por delante del cuerpo para ayudar a mantener el equilibrio. Baja las caderas lo máximo posible y mantén la pierna levantada al frente. Vuelve a la posición inicial.');
insert into tb_exercise(id_exercise, name, description) values(27, 'Remo con barra', 'Incline el pecho hacia adelante en un ángulo de unos 45º con las caderas, agarrando la barra con una distancia entre las manos igual al ancho de los hombros y con las palmas hacia abajo. Eleve la barra hasta que toque la parte inferior del pecho, manteniendo la columna vertebral recta y las rodillas ligeramente flexionadas. Baje la barra lentamente hasta volver a la posición inicial.');
insert into tb_exercise(id_exercise, name, description) values(28, 'Extension del triceps con barra de pie', 'Ponte de pie y sujeta una barra detrás de tus hombros, las partes superiores de tus brazos apuntando hacia arriba, y tus codos en un ángulo de 90 grados. Eleva la barra extendiendo tus brazos y bájala lentamente luego de una breve pausa. Ten cuidado de no bajar la barra demasiado abajo, hasta el punto desde el cual es difícil levantarla de nuevo.');
insert into tb_exercise(id_exercise, name, description) values(29, 'Curl de biceps de pie con barra', 'Tomaremos una barra lisa con las manos, de manera que las palmas miren hacia arriba, es decir, con agarre en supinación. Las manos deben estar separadas en la barra un poco más allá de la anchura de los hombros. Desde esta posición, sin movilizar el tronco y manteniendo los codos a los lados del cuerpo, debemos inspirar y flexionar los codos mientras acercamos la barra al pecho y contraemos glúteos, abdominales y espinales para no mover el tronco.');
insert into tb_exercise(id_exercise, name, description) values(30, 'Flexion de biceps en pronacion', 'Coge una barra con agarre en pronación y las manos separadas a la distancia de los hombros. De pie, con un posición erguida y derecho con los pies separados a la distancia de los hombros. Mantén firmes los brazos y levanta la barra hacia el pecho. Contrae los bíceps en la posición tope del movimiento, haz una pausa y luego baja despacio la barra hasta la posición inicial. Repite el ejercicio hasta completar el número de veces deseado.');
insert into tb_exercise(id_exercise, name, description) values(31, 'Apertura de pierna lateral', 'Recuerda que una apertura lateral de piernas es un split lateral. Así que párate derecho y abre las piernas a una distancia un poco más ancha que los hombros. Intenta permanecer lo más relajado posible, ve a tu ritmo. Si sientes dolor en cualquier momento al intentar realizar la apertura de piernas, detente. Después de abrir las piernas, comienza a bajar tu torso lentamente hasta el suelo. Ve lo más bajo que puedas. A medida que bajas, la meta será colocar las piernas en un ángulo de 180° y que la pelvis toque el suelo.');
insert into tb_exercise(id_exercise, name, description) values(32, 'Correr', 'Se ejecuta como una secuencia de pasos alternados de las dos (piernas). Cada zancada se puede dividir en tres fases: apoyo, impulso y recuperación. El apoyo y el impulso ocurren cuando el pie tiene contacto con el suelo. La recuperación ocurre con el pie en el aire. Debido a que al correr solamente un pie está en el suelo, siempre hay una pierna en recuperación mientras la otra pasa por las fases de apoyo e impulso. Por un instante, mientras el corredor salta, ambas piernas están en recuperación.');
insert into tb_exercise(id_exercise, name, description) values(33, 'Elevacion Lateral', 'La posición de las piernas es importante, aunque mucha gente ni se preocupe por este aspecto una ligera flexión de rodillas nos va a dar una mayor estabilidad para poder realizar el ejercicio. El codo debe de estar ligeramente flexionado en todo el recorrido, mucha gente hace las elevaciones laterales con el codo completamente extendido y esto hace que se genere mucha tensión en la zona del antebrazo, sobrecargando la articulación y músculos del codo, además de crear una mayor palanca de fuerza que actúa en contra de la columna. Con el codo ligeramente flexionado se aisla completamente el deltoides y el trabajo es más eficaz además de evitar lesiones en codo y hombro. La subida de las mancuernas no debe de hacerse más alla de la altura del hombro, ya que estaremos forzando el movimiento natural de la articulación');
insert into tb_exercise(id_exercise, name, description) values(34, 'Saltar cuerda', 'Saltar una cuerda');
insert into tb_exercise(id_exercise, name, description) values(35, 'Lagartijas', 'Recuéstate en el piso boca abajo, elévate con las puntas de los pies, separa las manos a la altura de los hombros.');
insert into tb_exercise(id_exercise, name, description) values(36, 'Puente', 'Acuestate sobre tu espalda y apoya tus manos en el suelo. Tus pies deben apuntar hacia adelante con las rodillas dobladas. Contrae los abdominales y levanta la cadera del suelo. ');
insert into tb_exercise(id_exercise, name, description) values(37, 'Saltos laterales', 'Mantén tu rodilla delantera en 90 grados. Intenta tocar el suelo con la otra rodilla, manteniendo el torso vertical. Luego debes hace que el pie que está adelante pase hacia atrás. Coordina el movimiento del brazo de manera que el delantero se vaya hacia adelante mientras cambiar las piernas de posición. Aterrizar suavemente');
insert into tb_exercise(id_exercise, name, description) values(38, 'Pierna peso muerto', 'Mantén la espalda plana y el cuerpo apretado. Y carga el peso del cuerpo en una de las piernas y levanta la otra hacia atrás lo más que puedas.');
insert into tb_exercise(id_exercise, name, description) values(39, 'Estocada', 'Párate sobre tus dos pies y con uno de éstos da un paso hacia atrás. Mantén tu rodilla en un ángulo de 90 grados. Tu pecho debe estar apuntando hacia arriba. Y permite que la rodilla trasera toque ligeramente el suelo.');
insert into tb_exercise(id_exercise, name, description) values(40, 'Remo renegado', 'Levante una mancuerna hacia un lado del cuerpo mientras mantiene el equilibrio con la otra mano y el otro pie. Mantenga la mancuerna arriba durante un segundo y regrese lentamente a la posición inicial para repetir el ejercicio con el otro lado.');

/*
Inserts of routine
*/
insert into tb_day(id_day, day) values(0, 'Lunes');
insert into tb_day(id_day, day) values(1, 'Martes');
insert into tb_day(id_day, day) values(2, 'Miercoles');
insert into tb_day(id_day, day) values(3, 'Jueves');
insert into tb_day(id_day, day) values(4, 'Viernes');
insert into tb_day(id_day, day) values(5, 'Sabado');
insert into tb_day(id_day, day) values(6, 'Domimgo');

insert into tb_routine(id_routine, idBMI, id_day) values (0,0);
insert into tb_routine(id_routine, idBMI, id_day) values (1,0);
insert into tb_routine(id_routine, idBMI, id_day) values (2,0);
insert into tb_routine(id_routine, idBMI, id_day) values (3,0);
insert into tb_routine(id_routine, idBMI, id_day) values (4,0);
insert into tb_routine(id_routine, idBMI, id_day) values (5,0);
insert into tb_routine(id_routine, idBMI, id_day) values (6,0);

insert into tb_routine(id_routine, idBMI, id_day) values (7,1);
insert into tb_routine(id_routine, idBMI, id_day) values (8,1);
insert into tb_routine(id_routine, idBMI, id_day) values (9,1);
insert into tb_routine(id_routine, idBMI, id_day) values (10,1);
insert into tb_routine(id_routine, idBMI, id_day) values (11,1);
insert into tb_routine(id_routine, idBMI, id_day) values (12,1);
insert into tb_routine(id_routine, idBMI, id_day) values (13,1);

insert into tb_routine(id_routine, idBMI, id_day) values (14,1);
insert into tb_routine(id_routine, idBMI, id_day) values (15,1);
insert into tb_routine(id_routine, idBMI, id_day) values (16,1);
insert into tb_routine(id_routine, idBMI, id_day) values (17,1);
insert into tb_routine(id_routine, idBMI, id_day) values (18,1);
insert into tb_routine(id_routine, idBMI, id_day) values (19,1);
insert into tb_routine(id_routine, idBMI, id_day) values (20,1);


/*
Inserts exercises_routine
BMI: Bajo peso
Day: Lunes
*/
insert into tb_exercises_routine(id_routine, id_exercise) values(0,1);
insert into tb_exercises_routine(id_routine, id_exercise) values(0,2);
insert into tb_exercises_routine(id_routine, id_exercise) values(0,3);
insert into tb_exercises_routine(id_routine, id_exercise) values(0,4);
insert into tb_exercises_routine(id_routine, id_exercise) values(0,5);
insert into tb_exercises_routine(id_routine, id_exercise) values(0,6);
insert into tb_exercises_routine(id_routine, id_exercise) values(0,7);
insert into tb_exercises_routine(id_routine, id_exercise) values(0,8);
insert into tb_exercises_routine(id_routine, id_exercise) values(0,9);
insert into tb_exercises_routine(id_routine, id_exercise) values(0,10);
insert into tb_exercises_routine(id_routine, id_exercise) values(0,11);
insert into tb_exercises_routine(id_routine, id_exercise) values(0,12);
insert into tb_exercises_routine(id_routine, id_exercise) values(0,13);
insert into tb_exercises_routine(id_routine, id_exercise) values(0,14);
insert into tb_exercises_routine(id_routine, id_exercise) values(0,15);
insert into tb_exercises_routine(id_routine, id_exercise) values(0,16);

/*
Day: Martes
*/
insert into tb_exercises_routine(id_routine, id_exercise) values(1,17);
insert into tb_exercises_routine(id_routine, id_exercise) values(1,18);
insert into tb_exercises_routine(id_routine, id_exercise) values(1,19);
insert into tb_exercises_routine(id_routine, id_exercise) values(1,20);
insert into tb_exercises_routine(id_routine, id_exercise) values(1,21);
insert into tb_exercises_routine(id_routine, id_exercise) values(1,22);
insert into tb_exercises_routine(id_routine, id_exercise) values(1,23);

/*
Day: Miercoles
*/
insert into tb_exercises_routine(id_routine, id_exercise) values(2,1);
insert into tb_exercises_routine(id_routine, id_exercise) values(2,2);
insert into tb_exercises_routine(id_routine, id_exercise) values(2,6);
insert into tb_exercises_routine(id_routine, id_exercise) values(2,4);
insert into tb_exercises_routine(id_routine, id_exercise) values(2,24);
insert into tb_exercises_routine(id_routine, id_exercise) values(2,25);
insert into tb_exercises_routine(id_routine, id_exercise) values(2,26);

/*
Day: Jueves
*/
insert into tb_exercises_routine(id_routine, id_exercise) values(3,9);
insert into tb_exercises_routine(id_routine, id_exercise) values(3,27);
insert into tb_exercises_routine(id_routine, id_exercise) values(3,11);
insert into tb_exercises_routine(id_routine, id_exercise) values(3,12);
insert into tb_exercises_routine(id_routine, id_exercise) values(3,14);
insert into tb_exercises_routine(id_routine, id_exercise) values(3,28);
insert into tb_exercises_routine(id_routine, id_exercise) values(3,29);
insert into tb_exercises_routine(id_routine, id_exercise) values(3,30);
insert into tb_exercises_routine(id_routine, id_exercise) values(3,8);

/*
Day: Viernes
*/
insert into tb_exercises_routine(id_routine, id_exercise) values(4,6);
insert into tb_exercises_routine(id_routine, id_exercise) values(4,2);
insert into tb_exercises_routine(id_routine, id_exercise) values(4,3);
insert into tb_exercises_routine(id_routine, id_exercise) values(4,4);
insert into tb_exercises_routine(id_routine, id_exercise) values(4,8);
insert into tb_exercises_routine(id_routine, id_exercise) values(4,31);

/*
Day: Sabado Yeimi
*/
insert into tb_exercises_routine(id_routine, id_exercise) values(5,40);
insert into tb_exercises_routine(id_routine, id_exercise) values(5,39);
insert into tb_exercises_routine(id_routine, id_exercise) values(5,38);
insert into tb_exercises_routine(id_routine, id_exercise) values(5,28);
insert into tb_exercises_routine(id_routine, id_exercise) values(5,17);
insert into tb_exercises_routine(id_routine, id_exercise) values(5,10);
insert into tb_exercises_routine(id_routine, id_exercise) values(5,9);
insert into tb_exercises_routine(id_routine, id_exercise) values(5,2);

/*
Day: Domingo Yeimi
*/
insert into tb_exercises_routine(id_routine, id_exercise) values(6,40);
insert into tb_exercises_routine(id_routine, id_exercise) values(6,39);
insert into tb_exercises_routine(id_routine, id_exercise) values(6,38);
insert into tb_exercises_routine(id_routine, id_exercise) values(6,28);
insert into tb_exercises_routine(id_routine, id_exercise) values(6,17);
insert into tb_exercises_routine(id_routine, id_exercise) values(6,10);
insert into tb_exercises_routine(id_routine, id_exercise) values(6,9);
insert into tb_exercises_routine(id_routine, id_exercise) values(6,2);

/*
BMI: Normal
Day: Lunes
*/
insert into tb_exercises_routine(id_routine, id_exercise) values(0,34);
insert into tb_exercises_routine(id_routine, id_exercise) values(0,2);
insert into tb_exercises_routine(id_routine, id_exercise) values(0,8);
insert into tb_exercises_routine(id_routine, id_exercise) values(0,19);
insert into tb_exercises_routine(id_routine, id_exercise) values(0,32);
insert into tb_exercises_routine(id_routine, id_exercise) values(0,33);

/*
Day: Martes
*/
insert into tb_exercises_routine(id_routine, id_exercise) values(1,35);
insert into tb_exercises_routine(id_routine, id_exercise) values(1,2);
insert into tb_exercises_routine(id_routine, id_exercise) values(1,8);
insert into tb_exercises_routine(id_routine, id_exercise) values(1,24);
insert into tb_exercises_routine(id_routine, id_exercise) values(1,26);

/*
Day: Miercoles
*/
insert into tb_exercises_routine(id_routine, id_exercise) values(2,35);
insert into tb_exercises_routine(id_routine, id_exercise) values(2,36);
insert into tb_exercises_routine(id_routine, id_exercise) values(2,6);
insert into tb_exercises_routine(id_routine, id_exercise) values(2,37);
insert into tb_exercises_routine(id_routine, id_exercise) values(2,38);
insert into tb_exercises_routine(id_routine, id_exercise) values(2,39);

/*
Day: Jueves
*/
insert into tb_exercises_routine(id_routine, id_exercise) values(3,8);
insert into tb_exercises_routine(id_routine, id_exercise) values(3,2);
insert into tb_exercises_routine(id_routine, id_exercise) values(3,36);
insert into tb_exercises_routine(id_routine, id_exercise) values(3,19);
insert into tb_exercises_routine(id_routine, id_exercise) values(3,32);
insert into tb_exercises_routine(id_routine, id_exercise) values(3,24);

/*
Day: Viernes
*/
insert into tb_exercises_routine(id_routine, id_exercise) values(4,8);
insert into tb_exercises_routine(id_routine, id_exercise) values(4,2);
insert into tb_exercises_routine(id_routine, id_exercise) values(4,6);
insert into tb_exercises_routine(id_routine, id_exercise) values(4,19);
insert into tb_exercises_routine(id_routine, id_exercise) values(4,32);
insert into tb_exercises_routine(id_routine, id_exercise) values(4,35);

/*
Day: Sabado Yeimi
*/
insert into tb_exercises_routine(id_routine, id_exercise) values(5,40);
insert into tb_exercises_routine(id_routine, id_exercise) values(5,39);
insert into tb_exercises_routine(id_routine, id_exercise) values(5,38);
insert into tb_exercises_routine(id_routine, id_exercise) values(5,28);
insert into tb_exercises_routine(id_routine, id_exercise) values(5,17);
insert into tb_exercises_routine(id_routine, id_exercise) values(5,10);
insert into tb_exercises_routine(id_routine, id_exercise) values(5,9);
insert into tb_exercises_routine(id_routine, id_exercise) values(5,2);

/*
Day: Domingo Yeimi
*/
insert into tb_exercises_routine(id_routine, id_exercise) values(6,40);
insert into tb_exercises_routine(id_routine, id_exercise) values(6,39);
insert into tb_exercises_routine(id_routine, id_exercise) values(6,38);
insert into tb_exercises_routine(id_routine, id_exercise) values(6,28);
insert into tb_exercises_routine(id_routine, id_exercise) values(6,17);
insert into tb_exercises_routine(id_routine, id_exercise) values(6,10);
insert into tb_exercises_routine(id_routine, id_exercise) values(6,9);
insert into tb_exercises_routine(id_routine, id_exercise) values(6,2);

/*
BMI: Sobre peso
Day: Lunes
*/
insert into tb_exercises_routine(id_routine, id_exercise) values(0,40);
insert into tb_exercises_routine(id_routine, id_exercise) values(0,39);
insert into tb_exercises_routine(id_routine, id_exercise) values(0,38);
insert into tb_exercises_routine(id_routine, id_exercise) values(0,28);
insert into tb_exercises_routine(id_routine, id_exercise) values(0,17);
insert into tb_exercises_routine(id_routine, id_exercise) values(0,10);
insert into tb_exercises_routine(id_routine, id_exercise) values(0,9);
insert into tb_exercises_routine(id_routine, id_exercise) values(0,2);

/*
Day: Martes Yeimi
*/
insert into tb_exercises_routine(id_routine, id_exercise) values(1,40);
insert into tb_exercises_routine(id_routine, id_exercise) values(1,39);
insert into tb_exercises_routine(id_routine, id_exercise) values(1,38);
insert into tb_exercises_routine(id_routine, id_exercise) values(1,28);
insert into tb_exercises_routine(id_routine, id_exercise) values(1,17);
insert into tb_exercises_routine(id_routine, id_exercise) values(1,10);
insert into tb_exercises_routine(id_routine, id_exercise) values(1,9);
insert into tb_exercises_routine(id_routine, id_exercise) values(1,2);

/*
Day: Miercoles
*/
insert into tb_exercises_routine(id_routine, id_exercise) values(2,40);
insert into tb_exercises_routine(id_routine, id_exercise) values(2,39);
insert into tb_exercises_routine(id_routine, id_exercise) values(2,38);
insert into tb_exercises_routine(id_routine, id_exercise) values(2,28);
insert into tb_exercises_routine(id_routine, id_exercise) values(2,17);
insert into tb_exercises_routine(id_routine, id_exercise) values(2,10);
insert into tb_exercises_routine(id_routine, id_exercise) values(2,9);
insert into tb_exercises_routine(id_routine, id_exercise) values(2,2);

/*
Day: Jueves Yeimi
*/
insert into tb_exercises_routine(id_routine, id_exercise) values(3,40);
insert into tb_exercises_routine(id_routine, id_exercise) values(3,39);
insert into tb_exercises_routine(id_routine, id_exercise) values(3,38);
insert into tb_exercises_routine(id_routine, id_exercise) values(3,28);
insert into tb_exercises_routine(id_routine, id_exercise) values(3,17);
insert into tb_exercises_routine(id_routine, id_exercise) values(3,10);
insert into tb_exercises_routine(id_routine, id_exercise) values(3,9);
insert into tb_exercises_routine(id_routine, id_exercise) values(3,2);

/*
Day: Viernes
*/
insert into tb_exercises_routine(id_routine, id_exercise) values(4,40);
insert into tb_exercises_routine(id_routine, id_exercise) values(4,39);
insert into tb_exercises_routine(id_routine, id_exercise) values(4,38);
insert into tb_exercises_routine(id_routine, id_exercise) values(4,28);
insert into tb_exercises_routine(id_routine, id_exercise) values(4,17);
insert into tb_exercises_routine(id_routine, id_exercise) values(4,10);
insert into tb_exercises_routine(id_routine, id_exercise) values(4,9);
insert into tb_exercises_routine(id_routine, id_exercise) values(4,2);

/*
Day: Sabado Yeimi
*/
insert into tb_exercises_routine(id_routine, id_exercise) values(5,40);
insert into tb_exercises_routine(id_routine, id_exercise) values(5,39);
insert into tb_exercises_routine(id_routine, id_exercise) values(5,38);
insert into tb_exercises_routine(id_routine, id_exercise) values(5,28);
insert into tb_exercises_routine(id_routine, id_exercise) values(5,17);
insert into tb_exercises_routine(id_routine, id_exercise) values(5,10);
insert into tb_exercises_routine(id_routine, id_exercise) values(5,9);
insert into tb_exercises_routine(id_routine, id_exercise) values(5,2);

/*
Day: Domingo Yeimi
*/
insert into tb_exercises_routine(id_routine, id_exercise) values(6,40);
insert into tb_exercises_routine(id_routine, id_exercise) values(6,39);
insert into tb_exercises_routine(id_routine, id_exercise) values(6,38);
insert into tb_exercises_routine(id_routine, id_exercise) values(6,28);
insert into tb_exercises_routine(id_routine, id_exercise) values(6,17);
insert into tb_exercises_routine(id_routine, id_exercise) values(6,10);
insert into tb_exercises_routine(id_routine, id_exercise) values(6,9);
insert into tb_exercises_routine(id_routine, id_exercise) values(6,2);

/*
Day: Sabado Yeimi
*/
insert into tb_exercises_routine(id_routine, id_exercise) values(5,40);
insert into tb_exercises_routine(id_routine, id_exercise) values(5,39);
insert into tb_exercises_routine(id_routine, id_exercise) values(5,38);
insert into tb_exercises_routine(id_routine, id_exercise) values(5,28);
insert into tb_exercises_routine(id_routine, id_exercise) values(5,17);
insert into tb_exercises_routine(id_routine, id_exercise) values(5,10);
insert into tb_exercises_routine(id_routine, id_exercise) values(5,9);
insert into tb_exercises_routine(id_routine, id_exercise) values(5,2);

/*
Day: Domingo Yeimi
*/
insert into tb_exercises_routine(id_routine, id_exercise) values(6,40);
insert into tb_exercises_routine(id_routine, id_exercise) values(6,39);
insert into tb_exercises_routine(id_routine, id_exercise) values(6,38);
insert into tb_exercises_routine(id_routine, id_exercise) values(6,28);
insert into tb_exercises_routine(id_routine, id_exercise) values(6,17);
insert into tb_exercises_routine(id_routine, id_exercise) values(6,10);
insert into tb_exercises_routine(id_routine, id_exercise) values(6,9);
insert into tb_exercises_routine(id_routine, id_exercise) values(6,2);

/*
Inserts of plan_routine_BMI
BMI: Bajo peso
*/
insert into tb_plan_routines_bmi(id_plan_routines, id_BMI) values (00,00);

/*
BMI: Normal
*/
insert into tb_plan_routines_bmi(id_plan_routines, id_BMI) values (01,01);

/*
BMI: Sobre peso
*/
insert into tb_plan_routines_bmi(id_plan_routines, id_BMI) values (02,02);

/*
Inserts of plan_routines
BMI: Bajo peso
*/
insert into tb_plan_routines(id_plan_routines, id_routine) values(0,0);
insert into tb_plan_routines(id_plan_routines, id_routine) values(0,1);
insert into tb_plan_routines(id_plan_routines, id_routine) values(0,2);
insert into tb_plan_routines(id_plan_routines, id_routine) values(0,3);
insert into tb_plan_routines(id_plan_routines, id_routine) values(0,4);
insert into tb_plan_routines(id_plan_routines, id_routine) values(0,5);
insert into tb_plan_routines(id_plan_routines, id_routine) values(0,6);

/*
BMI: Normal
*/
insert into tb_plan_routines(id_plan_routines, id_routine) values(1,0);
insert into tb_plan_routines(id_plan_routines, id_routine) values(1,1);
insert into tb_plan_routines(id_plan_routines, id_routine) values(1,2);
insert into tb_plan_routines(id_plan_routines, id_routine) values(1,3);
insert into tb_plan_routines(id_plan_routines, id_routine) values(1,4);
insert into tb_plan_routines(id_plan_routines, id_routine) values(1,5);
insert into tb_plan_routines(id_plan_routines, id_routine) values(1,6);
/*
BMI: Sobre peso
*/
insert into tb_plan_routines(id_plan_routines, id_routine) values(2,0);
insert into tb_plan_routines(id_plan_routines, id_routine) values(2,1);
insert into tb_plan_routines(id_plan_routines, id_routine) values(2,2);
insert into tb_plan_routines(id_plan_routines, id_routine) values(2,3);
insert into tb_plan_routines(id_plan_routines, id_routine) values(2,4);
insert into tb_plan_routines(id_plan_routines, id_routine) values(2,5);
insert into tb_plan_routines(id_plan_routines, id_routine) values(2,6);
		
