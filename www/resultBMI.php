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
    <link rel="stylesheet" href="bootstrap-3.3.6/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
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
                       
                        $condition="";
                        $feeding_bread=0;
                       if($_POST){
                   
                    $weight= $_POST['weight'];
                    $height = $_POST['height']/100;
                       }
                    $result1 = $height*$height;
                    $result2 = $weight/$result1;
                    $result = number_format($result2, 2, '.', '');
                   
                    if(isset($result) && $result != '0'){;
                        echo '<h1>Su IMC es:</h1>';
                        echo '<h2>'.$result.'</h2>';
		              }else{
			             echo '<h1>Por favor,utilice nada mas números</h1>';	
		              }?>  
		          
                    </div>
                    <div class="containerCard">
                        <?php 	
			             $len = count($data);
                        for($i=0;$i<=$len;$i++){
                            if($result>=$data[$i]["initial_bmi"] && $result<=$data[$i]["final_bmi"]){
					       $feeding_bread=$i;
                            $condition=$data[$i]["description"];
                                break;
					       
				            }
                         }
        		
                        echo '<h1>Su condicion de peso es: '.$condition.'</h1>';
			 	     
                            ?>   
                    </div>
                </div>  
        		
        </div>	
     <form action="feedingPlan.php" method="post">
         <input   type="hidden"  name="var" value="<?php echo $feeding_bread?>">
         <button type="submit" class=" btn-lg btn w3-blue-grey w3-hover-blue w3-round-xlarge input">Rutina de alimentacion</button>
     </form>
         <button type="button" class=" btn-lg btn w3-blue-grey w3-hover-blue w3-round-xlarge input"  onclick="location.href='exercisesRoutine.php'">Rutina de ejercicio</button>
         
         
     
	 </div>
       
        <div class="w3-container w3-teal" id="footer">
		    <h2>&#169;CopyRight</h2>
        </div>  
</div>	
<!--Fim Content-->  
</body>

</html>
