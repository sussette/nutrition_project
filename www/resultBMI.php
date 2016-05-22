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
    <meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/w3.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel=-shortcut icon- href=/img/logoIcon.ico />
    <title>Resultado IMC</title>
    </head>

<body>
      <div class="w3-container w3-grey">
       
        <div class="w3-container w3-teal" id="header">
        <h3>Measure Mass</h3>
        </div>
      <div class="w3-container w3-section" id="header-content">
              
               <div id="card" class="w3-container">
               
               <div id="measureMassCard">
                   <div class="headerCard">
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
		              }?>  
		          
                    </div>
                    <div class="containerCard">
                        <?php 	
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
                            }?>   
                    </div>
                </div>  
        		
        </div>	
     
         <button type="button" class=" w3-xlarge w3-buttom w3-blue-grey w3-hover-blue w3-round-xlarge"  onclick="location.href='exercisesRoutine.php'" style="width:30%">Rutina de ejercicio</button>
         
         <button type="button" class=" w3-xlarge w3-buttom w3-blue-grey w3-hover-blue w3-round-xlarge"     onclick="location.href='feedingPlan.php?var=<?php echo $feeding_bread?>'" style="width:30%">Rutina de alimentacion</button>
     
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
<!--Fim Content-->  
</body>

</html>
