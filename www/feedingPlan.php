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
	 "id_feeding_plan" =>   $_POST["var"]												
		]);
		
?>

<!DOCTYPE html>
<html lang="es">

<head>
	<meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/w3.css">
    <link rel="stylesheet" href="bootstrap-3.3.6/css/bootstrap.css">
    
      <link rel="stylesheet" href="bootstrap-3.3.6/css/bootstrap.min.css">
  <script src="jq/jquery-1.12.4.min.js"></script>
  <script src="bootstrap-3.3.6/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <title>Measure Mass</title>
	
	
</head>
    
<body>
   
    <!--Content-->
    <div class="w3-container w3-blue-grey">
	    <div class="w3-container w3-teal" id="header">
		    <h2>Plan de alimentación </h2>
		    <h3>Measure Mass</h3>	
			
	    </div>

   <nav class="navbar">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#" >Lunes</a></li>
        <li><a href="#">Martes</a></li>
        <li><a href="#">Miércoles</a></li>
        <li><a href="#">Jueves</a></li>
        <li><a href="#">Viernes</a></li>
        <li><a href="#">Sábado</a></li>
        <li><a href="#">Domingo</a></li>
      </ul>
    </div>
  </div>
</nav>
    
		<div class="table-responsive" id="header-content">
			
		<table class="table-hover table-bordered">
			<tr>
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
		
        </div>
    </div>  
</body>
    
</html