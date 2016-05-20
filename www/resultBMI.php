<!doctype html>
<html>

<head>
<meta charset="utf-8">
<meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<title>Resultado IMC</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<body>
<!--Content-->
   <div class="w3-container w3-red" id="header">
		    <h3>Measure Mass</h3>	
   </div>
	
   <div class="w3-container w3-section" id="header-content">
	<div id="resultado">
        <?php 
		$peso = $_GET['peso'];
		$altura = $_GET['altura'];
		
		$conta1 = $altura*$altura;
		$conta2 = $peso/$conta1;
		
		$resultado = number_format($conta2);
		
		if(isset($resultado) && $resultado != '0'){;	
			echo '<h1>Su Indice de Masa Corporal es de:</h1>';
			echo '<h2>'.$resultado.'</h2>';
		}else{
			echo '<h1>Por favor, utilize apenas numeros!</h1>';	
		}
		?>   
        </div>
	   
	<input type="button" class=" w3-xlarge w3-buttom w3-red w3-hover-grey w3-round-xlarge"  onclick="location.href='planAlimentacion.php'" style="width:30%" value="Rutina de alimentacion" name="enter"></input> 
	<input type="button" class=" w3-xlarge w3-buttom w3-red w3-hover-grey w3-round-xlarge" onclick="location.href=''" style="width:30%" value="Rutina de ejercicios" name="enter"></input> 
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
<!--Fim Content-->   
    
</body>
</html>
