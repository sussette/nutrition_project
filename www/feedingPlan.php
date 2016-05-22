<?php
require 'medoo.php';
 
$database = new medoo([
	// required
	'database_type' => 'mysql',
	'database_name' => 'nutrition_project',
	'server' => 'localhost',
	'username' => 'root',
	'password' => 'root',
	'charset' => 'utf8'
]);

$data = $database->select("tb_feeding_plan", [
		  "[><]tb_feeding" => ["id_feeding" => "id_feeding"]
		],[
	
	
			"tb_feeding_plan.id_feeding_plan",	
			"tb_feeding.id_feeding",
			"tb_feeding.day",
			"tb_feeding.morningSnack",
			"tb_feeding.breakfast",
			"tb_feeding.afternoonSnack",
			"tb_feeding.lunch",
			"tb_feeding.dinner"
	],[
	 "id_feeding_plan" =>   $_GET["var"]												
		]);
		
?>

<!DOCTYPE html>
<html lang="es">

<head>
	<meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/w3.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel=-shortcut icon- href=/img/logoIcon.ico />
    <title>Measure Mass</title>
	
	
</head>
    
<body>
   
    <!--Content-->
    <div class="w3-container w3-blue-grey">
	    <div class="w3-container w3-teal" id="header">
		    <h2>Plan de alimentación </h2>
		    <h3>Measure Mass</h3>	
			
	    </div>
	
		
		<div class="w3-container w3-section" id="header-content">
			
		<table>
			<tr>
				<th>Día</th>
				<th>Desayuno</th>
				<th>Merienda</th>
				<th>Almuerzo</th>
				<th>Bocadillo de la tarde</th>
				<th>Cena</th>
				
			</tr>
			
		 <?php
                $len = count($data);
                for($i=0; $i<$len; $i++){
                    echo  "<tr>
					<td>".$data[$i]["day"]."</td>
					<td>".$data[$i]["morningSnack"]."</td>
					<td>".$data[$i]["breakfast"]."</td>
					<td>".$data[$i]["afternoonSnack"]."</td>
					<td>".$data[$i]["lunch"]."</td>
					<td>".$data[$i]["dinner"]."</td>
					</tr>";
                }
            ?>
				
			 
			</table>
				
		</div>
	   
	   <div class="w3-container w3-teal" id="footer">
		    <h2>&#169;CopyRight</h2>
		
		    <div class="w3-contanier">
            <ul>
                <li class="w3-padding-16"><a href="https://www.instagram.com"><img class="w3-center w3-circle" style="width:40px" src="img/instagram.png"></a></li>
                <li class="w3-padding-20"><a href="https://www.facebook.com"><img class="w3-center w3-circle" style="width:40px" src="img/facebook.png" ></a></li>
                <li class="w3-padding-16"><a href="https://accounts.google.com/ServiceLogin?sacu=1&continue=https%3A%2F%2Fphotos.google.com%2Flogin&followup=https%3A%2F%2Fphotos.google.com%2Flogin&osid=1#identifier"><img class="w3-center w3-circle" style="width:40px" src="img/google+.png"></a></li>
                <li class="w3-padding-16"> <a href="https://twitter.com"><img class="w3-center w3-circle" style="width:40px" src="img/twitter.png" ></a></li>
            </ul>
		      		       	
		    </div>
        </div>
    </div>  
</body>
    
</html