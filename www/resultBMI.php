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

$data = $database->select("tb_bmi", "*");
?>

<!doctype html>
<html>

<head>
<meta charset="utf-8">
<title>Calculadora IMC</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<body>
<!--Content-->
<div id="content">
    <!--Logo-->
    <div id="logo">
    </div>
    <!--Fim Logo-->
   
        <!--IMC-->
        <div id="resultado">
        
        <?php 
			
			
		$feeding_bread=0;
			
		$peso = $_GET['peso'];
		$altura = $_GET['altura'];
		
		$conta1 = $altura*$altura;
		$conta2 = $peso/$conta1;
		
		$resultado = number_format($conta2);
		
		if(isset($resultado) && $resultado != '0'){;	
			echo '<h1>Su IMC es:</h1>';
			echo '<h2>'.$resultado.'</h2>';
		}else{
			echo '<h1>Por favor,utilice nada mas números</h1>';	
		}
			
			$len = count($data);
          /*  for($i=0; $i<$len; $i++){*/
				
			 	if($resultado>=$data[0]["BMI_initial_range"] && $resultado<$data[0]["BMI_final_range"]){
					$feeding_bread=0;
					echo '<h1>peso bajo</h1>';
				}else{
				if($resultado>=$data[1]["BMI_initial_range"] && $resultado<$data[1]["BMI_final_range"]){
					$feeding_bread=1;
					echo '<h1>peso normal</h1>';
					}else{
						$feeding_bread=2;
				echo '<h1>sobrepeso</h1>';
				}
					
				/*	}*/
			
				
			}
			
			
			
		?>   
           
        </div>
        <!---Fim IMC-->        
</div>
<!--Fim Content-->   
	<a href="planAlimentacion.php/?$feeding_bread=<?php echo $feeding_bread ?>">Enviar</a>
	<button class="buttomCalculo" "submit" name="envia" >Ver Plan de  Alimentacion!</button>
    
</body>
</html>
