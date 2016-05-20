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


	$plan=  ($_GET['$feeding_bread']);
	echo "$plan";

$data = $database->select("tb_feeding_plan", [
		  "[><]tb_feeding" => ["id_feeding" => "id_feeding"]
		],[
	
	
			"tb_feeding_plan.id_feeding_plan",	
			"tb_feeding.id_feeding",
			"tb_feeding.day",
			"tb_feeding.breakfast",
			"tb_feeding.lunch",
			"tb_feeding.dinner"
	],[
	 "id_feeding_plan" => $plan
												
		]);
		
		/*
		$data = $database->select("tb_personal", [
		  "[><]tb_deptos" => ["id_depto" => "id_depto"]
		],[
			"tb_personal.id_personal",
			"tb_personal.nombre",
            "tb_personal.apellido",
            "tb_personal.gender",
			"tb_personal.profile",
			"tb_deptos.id_depto",
			"tb_deptos.depto"
		]);
	
		
		
*/

/*$data = $database->select("tb_feeding", "*");*/





?>
 

<!DOCTYPE html>
<html lang="es">

<head>
	<meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <title>Measure Mass</title>
</head>
    
<body>
   
 
   <!--Content-->
    <div class="w3-container w3-blue-grey">
	    <div class="w3-container w3-red" id="header">
		    <h2>Plan de alimentación </h2>
		    <h3>Measure Mass</h3>	
	    </div>
	
		
		<div class="w3-container w3-section" id="header-content">
			
			<table>
			<tr>
				<th>Dia</th>
				<th>Desayuno</th>
				<th>Almuerzo</th>
				<th>cena</th>
				
			</tr>
				
			<?php
                $len = count($data);
                for($i=0; $i<$len; $i++){
                    echo  "<tr>
					<td>".$data[$i]["day"]."</td>
					<td>".$data[$i]["breakfast"]."</td>
					<td>".$data[$i]["lunch"]."</td>
					<td>".$data[$i]["dinner"]."</td>
					</tr>";
                }
            ?>
		

			</table>
			
			
			
			
		<!-- <div class="weekcalendar" style="display: block";></div>	
			<div class="menuPlan">
				<div class="section-center">
					<ul class="schedule.nav">
						<li class="text">Lunes</li>
						<li class="text">Martes</li>
						<li class="text">Miercoles</li>
						<li class="text">Jueves</li>
						<li class="text">Vierner</li>
						<li class="text">Sábado</li>
						<li class="text">Domimgo</li>
					</ul>
				</div>
			</div>	
			
		<div class="content-plan">
			<div class="description-plan">
			
				<table class="calendar-week">
					<thead>
					<tr>
						<th class="">Desayuno</th>
						<th class="">Almuerzo</th>
						<th class="">Cena</th>
					</tr>
					
					</thead>
					
					<tbody>
						<tr>
							
							<td class="">
								<ul>
									<li>Winny fea</li>
									<li>chino y jeffy</li>
									<li>sdfsdfsdfsdfsd</li>
								</ul>
							</td>
							
							<td class="">
								<ul>
									<li>Winny fea</li>
									<li>chino y jeffy</li>
									<li>sdfsdfsdfsdfsd</li>
								</ul>
							</td>
							
							<td class="">
								<ul>
									<li>Winny fea</li>
									<li>chino y jeffy</li>
									<li>sdfsdfsdfsdfsd</li>
								</ul>
							</td>
							
							
						</tr>
					</tbody>
				
				
				
				</table>
			
			</div>
		</div>-->
			
		</div>
	    
		   
	
	   <div class="w3-container w3-red" id="footer">
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