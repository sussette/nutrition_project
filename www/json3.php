<?php


require 'medoo.php';
 
$database = new medoo([
	// required
	'database_type' => 'mysql',
	'database_name' => 'u730260015_app8',
	'server' => 'mysql.hostinger.mx',
	'username' => 'u730260015_app8',
	'password' => 'rhcert',
	'charset' => 'utf8'
]);

$index=0;
$id=0;

if($_POST["param"] >= 0){
    $index=$_POST["param"];   
}

$routineplan= $database->select("tb_plan_routines_bmi", ["id_plan_routines","id_BMI"],["id_BMI"=>$index]);

$id=$routineplan[0]["id_plan_routines"];

$plan= $database->select("tb_exercise", ["[><]tb_plan_routines"=>["id_exercise"=>"id_exercise"]],["tb_exercise.name","tb_exercise.description"],["tb_plan_routines.id_plan_routine"=>$id]);

 if($_POST){
        
       
        if($index >= 0){
            createJSON($plan);
        }
        
        
    }

function createJSON($data){
    $length = count($data);
    
    for($i=0; $i<$length; $i++) {
        $item = new stdClass;
        $item->name = $data[$i]["name"];
        $item->description = $data[$i]["description"];
        
        $items[] = $item;
        
        }
        echo json_encode($items);
    }

?>