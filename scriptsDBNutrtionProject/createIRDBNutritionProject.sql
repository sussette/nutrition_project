USE nutrition_project;

alter table tb_exercises_routine
add foreign key (id_routine)
references tb_routine (id_routine);

alter table tb_exercises_routine
add foreign key (id_exercise)
references tb_exercise (id_exercise); 
 
alter table tb_plan_routines_BMI
add foreign key (id_BMI)
references tb_BMI (id_BMI); 

alter table tb_plan_routines
add foreign key (id_plan_routines)
references tb_plan_routines_BMI (id_plan_routines); 

alter table tb_plan_routines
add foreign key (id_routine)
references tb_routine (id_routine); 


alter table tb_feeding_plan_BMI
add foreign key (id_BMI)
references tb_BMI(id_BMI); 

alter table tb_feeding_plan
add foreign key (id_feeding_plan)
references tb_feeding_plan_BMI(id_feeding_plan); 

alter table tb_feeding_plan
add foreign key (id_feeding)
references tb_feeding(id_feeding);
