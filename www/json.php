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



$BMI = $database->select("tb_bmi", ["id_BMI","description","initial_bmi","final_bmi"]);


 if($_POST){
        
        if($_POST["param"] == "ctrl"){
            createJSON($BMI);
        }    
        
    }



function createJSON($data){
    $length = count($data);
    for($i=0; $i<$length; $i++) {
        $item = new stdClass;
        $item->idBMI = $data[$i]["id_BMI"];
        $item->description  = $data[$i]["description"];
        $item->initialBMI    = $data[$i]["initial_bmi"];
        $item->finalBMI       = $data[$i]["final_bmi"];
        
        $items[] = $item;

        }
        echo json_encode($items);
    }


?>