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

$data = $database->select("feeding_plan", [
		  "[><]feeding" => ["id_feeding" => "id_feeding"]
		],[
	
			"feeding_plan.id_feeding_plan",	
			"feeding.id_feeding",
			"feeding.description",
			"feeding.day",
			"feeding.schedule"
															
		
		]);



$BMI = 26;

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
			
			<table border="2">
			<tr>
				<td>Desayuno</td>
				<td>Almuerzo</td>
				<td>cena</td>
				
			</tr>
				
				<?php
                $len = count($data);
                for($i=0; $i<$len; $i++){
                    echo  "<tr>
					<td>".$data[$i]["description"]."</td>
					<td>".$data[$i]["day"]."</td>
					<td>".$data[$i]["schedule"]."</td>
					
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