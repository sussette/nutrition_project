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

$feedplan= $database->select("tb_feeding_plan_bmi", ["id_feeding_plan","id_BMI"],["id_BMI"=>$index]);

$id=$feedplan[0]["id_feeding_plan"];

$plan= $database->select("tb_feeding", ["[><]tb_feeding_plan"=>["id_feeding"=>"id_feeding"]],["tb_feeding.day","tb_feeding.breakfast","tb_feeding.morningSnack","tb_feeding.lunch","tb_feeding.afternoonSnack","tb_feeding.dinner"],["tb_feeding_plan.id_feeding_plan"=>$id]);

 if($_POST){
        
       
        if($index >= 0){
            createJSON($plan);
        }
        
        
    }

function createJSON($data){
    $length = count($data);
    
    for($i=0; $i<$length; $i++) {
        $item = new stdClass;
        $item->day = $data[$i]["day"];
        $item->breakfast = $data[$i]["breakfast"];
        $item->snack = $data[$i]["morningSnack"];
        $item->lunch= $data[$i]["lunch"];
        $item->afterSnack = $data[$i]["afternoonSnack"];
        $item->dinner = $data[$i]["dinner"];
        
        $items[] = $item;
        
        }
        echo json_encode($items);
    }

?>