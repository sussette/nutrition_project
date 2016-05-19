DROP DATABASE nutrition_project;
CREATE DATABASE nutrition_project;
USE nutrition_project;


/*Table about BMI*/
CREATE TABLE tb_BMI(
id_BMI int(10),
description varchar(50),
initial_bmi double,
final_bmi double,
primary key (id_BMI));

/*Tables about exercises*/

CREATE TABLE tb_exercise (
id_exercise int(10),
name varchar (50),
description varchar(50),
primary key(id_exercise));

CREATE TABLE tb_routine (
id_routine int(10),
day varchar (50),
primary key(id_routine));

CREATE TABLE tb_exercises_routine (
id_routine int(10),
id_exercise int(10),
primary key(id_routine,id_exercise));

CREATE TABLE tb_plan_routines_BMI (
id_plan_routines int(10),
id_BMI int(10),
primary key(id_plan_routines));

CREATE TABLE tb_plan_routines(
id_plan_routines int(10),
id_routine int(10),
primary key(id_plan_routines, id_routine));

/*Tables about feeding plan*/
CREATE TABLE tb_feeding (
  id_feeding int(10),
  day varchar(10),
  morningSnack varchar(150),
  breakfast varchar(150),
  afternoonSnack varchar(150),
  lunch varchar(150),
  dinner varchar(150),
primary key(id_feeding)); 
  
CREATE TABLE tb_feeding_plan_BMI (
id_feeding_plan int(10),
id_BMI int(10),
primary key (id_feeding_plan));

CREATE TABLE tb_feeding_plan (
id_feeding_plan int(10),
id_feeding int(10),   
primary key (id_feeding_plan, id_feeding));

