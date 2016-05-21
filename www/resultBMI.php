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

<div id="content">
   
    <div id="logo">
    </div>
   
        <div id="resultado">
        
        <?php 
			
			
		$feeding_bread=0;
			
		$peso = $_GET['first'];
		$altura = $_GET['last'];
		
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
				
			 	if($resultado>=$data[0]["initial_bmi"] && $resultado<=$data[0]["final_bmi"]){
					$feeding_bread=0;
					echo '<h1>bajo peso</h1>';
				}else{
				if($resultado>=$data[1]["initial_bmi"] && $resultado<=$data[1]["final_bmi"]){
					$feeding_bread=1;
					echo '<h1>peso normal</h1>';
					}else{
					 $feeding_bread=2;
				echo '<h1>sobre peso</h1>';
				}
				
			}			
			
		?>   
           
        </div>
           
</div>	
	<button type="button" onclick="location.href='planAlimentacion.php?var=<?php echo $feeding_bread?>'">Ver Plan de  Alimentacion!</button>
    
</body>
</html>
