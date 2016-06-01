<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/w3.css">
     <link rel="stylesheet" href="bootstrap-3.3.6/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
	<title>Measure Mass</title>
	<script src="jq/jquery-2.2.4.js">
    </script>
	
	

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
                    <img class="w3-round" src="../www/img/logo.ico" alt="">
                    </div>
                
                    <div id="calcBMI-section" class=" w3-row-padding w3-twothird">
                    <h3>Llene los campos para calcular su IMC:</h3>
                       
                        <form name="form" class="w3-container" method="post" action="resultBMI.php">
		
                        <div id="calc-section1" class="w3-row-container w3-section">
                            
                            <label class="w3-label w3-text-white right"><b>Peso:</b></label>
                            <input class=" w3-border  w3-round-large" type="number" required="true" name="weight">
                            <label class="w3-label w3-text-white left"><b>Kg</b></label>
                        </div>
                         
                         
                        <div id="calc-section2" class="w3-row-container w3-section">
                            <label class="w3-label w3-text-white right"><b>Altura:</b></label>
                            <input class=" w3-border  w3-round-large" type="number" required="true" name="height">
                            <label class="w3-label w3-text-white left"><b>cm</b></label>
                        </div>
                        
                        <div id="gender-section" class="w3-row-container w3-section">
                               <input class="w3-radio" type="radio" name="gender" value="male">
                               <img class=" w3-circle male-icon" alt="">

                                <input class="w3-radio" type="radio" name="gender" value="female">
                                <i></i>
                                <img class=" w3-circle female-icon" alt="">
                        </div>
                        <div class="w3-container w3-section">
                            <input class=" btn-lg btn w3-blue-grey w3-hover-blue w3-round-xlarge input2" type="submit" value="Calcular" id="validate" >
                              <script>
                               $('#validate').click(function() {

                                //Se verifica si alguno de los radios esta seleccionado
                                if ($('input[name="gender"]').is(':checked')) {

                                } else {
                                    alert('Debe seleccionar Masculino o Femenino');
                                }
                            });</script>
                        </div>
                    </div>
                    
                   
                       
                    </form>
                       
                        
        
                  </div>
            </div>
		
        </div>
        <div class="w3-container w3-teal" id="footer">
        
		    <h2>&#169;CopyRight</h2>
		
    
        </div>
	
	    </div>
    </div>
<!-- Content end-->   
</body>
    
</html>
