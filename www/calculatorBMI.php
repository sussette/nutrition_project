<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/w3.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
	<title>Measure Mass</title>
	<link rel=-shortcut icon- href=/img/logoIcon.ico />
</head>
    
<body>
  
<!--Content-->
	<div class="w3-container w3-grey">
        <div class="w3-container w3-teal" id="header">
		    <h3>Measure Mass </h3>	
	    </div>
	    <div class="w3-container w3-section" id="header-content">
	    
	    <div class="w3-container w3-teal">
  			<h2>Índice de masa corporal</h2>
		</div>
		
		<div class="w3-container w3-section w3-border">
		<!-- <form class="w3-container" method="get" action="form.asp"> -->
		
		<div id="BMI-section" class="w3-container">
                  
                   <div id="textBMI-section" class=" w3-row-padding w3-third ">
                    <p>El Índice de Masa Corporal (IMC) es una herramienta con la que se puede determinar, a partir de la estatura y peso de una persona, si su peso se encuentra en un nivel saludable.</p>
                    <img class="w3-round" src="../nutrition_project/img/logo.ico" alt="">
                    </div>
                
                    <div id="calcBMI-section" class=" w3-row-padding w3-twothird">
                    <h3>Llene los campos para calcular su IMC:</h3>
                       
                        <form class="w3-container" method="get" action="resultBMI.php">
		
                        <div id="calc-section1" class="w3-row-container w3-section">
                            
                            <label class="w3-label w3-text-white"><b>Peso:</b></label>
                            <input class=" w3-border  w3-round-large" type="number" step="any" name="first">
                            <label class="w3-label w3-text-grey"><b>Kg</b></label>
                        </div>
                         
                         
                        <div id="calc-section2" class="w3-row-container w3-section">
                            <label class="w3-label w3-text-white"><b>Altura:</b></label>
                            <input class=" w3-border  w3-round-large" type="number" step="any"  name="last">
                            <label class="w3-label w3-text-grey"><b>m</b></label>
                        </div>
                        
                        <div id="gender-section" class="w3-row-container w3-section">
                               <input class="w3-radio" type="radio" name="gender" value="male" checked>
                               <img class=" w3-circle male-icon" alt="">

                                <input class="w3-radio" type="radio" name="gender" value="female">
                                <i></i>
                                <img class=" w3-circle female-icon" alt="">
                        </div>
                    </div>
                    
                   
                       <div class="w3-container w3-section">
                        <button class=" w3-xlarge w3-buttom w3-blue-grey w3-hover-blue w3-round-xlarge" "submit" name="envia" >Calcular</button>
                        </div>
                    </form>
                       
                        
        
                  </div>
            </div>
		
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
    </div>
<!-- Content end-->   
</body>
    
</html>
