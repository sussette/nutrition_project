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
		