<!DOCTYPE html>
<html lang="en">
<head>
	<meta name="viewport" content="width=device-width, user-scalable, initial-scale=1.0", maximum-scale=1.0, minimum-scale=1.0>
	<meta charset="UTF-8">
	<title>Extreme Health Help</title>
	<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel=-shortcut icon- href=/imgs/ima.ico />
</head>
    
<body>

	
   
   
   <!--Content-->
<div id="contentIndex">

	<div class="headerIndex">
		<h3>Extreme healht help</h3>	
	</div>
	
    <div class="contentIMC" >
		<div class="main">
		<div class="calculatorIMC">
		<!--Logo-->
    	<div id="logo"></div>
    <!--Fim Logo-->
    
    <!--Calculadora-->
        <div id="calculadora">
    	<!--Formulario-->
        <form name="calc" method="get" enctype="multipart/form-data" action="resultBMI.php" class="form">
        	
            <fieldset class="f">
            	
                <label for="">Género</label>
                <br/>
                <form action="">
				
                  <input class="genero"  type="radio" name="gender" value="male"><img src="img/masculine.png"  width="50px" height="50px">
                  <input class="genero"  type="radio" name="gender" value="female"> <img src="img/femenine.png"  width="50px" height="50px">
                </form>
                <br/>
                <label for="">Peso</label>
                <br/>
                <input  type="text" name="peso" class="in" /><label for="">kg</label>
                <br />
                <label for="">Estatura</label>
                <br/>
                <input type="text" name="altura" class="in"/><label for="">cm</label><br/>
                
<!--                <button class="buttomCalculo" "submit" name="envia" >Calcular!</button>-->
            
            </fieldset></form>
            
             <button class="w3-btn w3-red w3-round-large" >Calcular!</button>
            
	    </div>
        
        <div ><img src="img/salud.gif"  width="350px" height="200px"></div>
			
        <!--Fim Formulario-->
        </div>
        </div>
    </div>    
    <!--Fim Calculadora-->

        <div id="footer">
		    <h2>&#169;CopyRight</h2>
		
		    <div class="images">
		        <a href="https://www.instagram.com"><img src="img/instagram.png"  width="40px" height="40px"></a>
		        <a href="https://www.facebook.com"><img src="img/facebook.png" width="30px" height="30px"></a>	
		        <a href="https://accounts.google.com/ServiceLogin?sacu=1&continue=https%3A%2F%2Fphotos.google.com%2Flogin&followup=https%3A%2F%2Fphotos.google.com%2Flogin&osid=1#identifier"><img src="img/google+.png"  width="30px" height="30px"></a>	
		        <a href="https://twitter.com"><img src="img/twitter.png"  width="30px" height="30px"></a>	
		    </div>
        </div>
	
	</div>
</div>
<!--Fim Content-->   
</body>
    
</html>