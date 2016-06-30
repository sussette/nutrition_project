var result = 0;
var index = 0;
function calculate(){
    
    clearItems();
    clearFeedingPlan();
    s1 = document.getElementById('weight').value;
    s2 = document.getElementById('height').value;
    
if($('input[name="gender"]').is(':checked')){
    if(s1 !=0 && s2!=0){
		
		if((s1>=40&&s1<=400)&&(s2>=145&&s2<=300)){
   
    result = s1/Math.pow((s2/100),2);
    $("#resultBMI").append("<h2>Su IMC es: "+result.toFixed(2)+"</h2>");
    calculateConditionBMI(result);
     $('#result').slideDown();
            document.getElementById('result').focus();
   
		}
       else{
		   if(s1<40){
			   alert('El peso no puede ser menor a 40');
		   }else{
			   
			   if(s1>400)
			  
				    alert('El peso no puede ser mayor a 400');
			   }
		   
		   if(s2<145){
			    alert('Altura no puede ser menor a 145');
		   }else{
			    if(s2>300)
			   alert('Altura no puede ser mayor a 300');
		   }
        
        return false;
    }	 
        
        
}
   else{
        alert('Por favor ingrese los datos, deben ser distintos a cero.');
        return false;
    }	 
    
}
    else{
        alert('Debe seleccionar Maculino o Femenino');
        return false;
    }		
  
}

function clearItems(){
    $("#result").hide();
    $("#result").find('input').remove();
    $("#result").find('h2').remove();
}

function calculateConditionBMI(result) {
    $.ajax({
            method: "POST",
            url: "http://appmultimediosimc.hol.es/api/json.php",
            data: { param: 'ctrl' },
            dataType: "json"
    })
        .done(function( items ) {
                
                var len = items.length;
                for(var i=0; i<len; i++){
                    if  (result >= items[i].initialBMI && result <= items[i].finalBMI){ 
                        $("#resultBMI").append("<h2>Su condición de peso es:"+" "+items[i].description+"</h2>");
                        index=items[i].idBMI;
                    }
                }
        }); 
}

function feedingPlan(day){
    clearFeedingPlan();
      $.ajax({
            method: "POST",
            url: "http://appmultimediosimc.hol.es/api/json2.php",
            data: { param: index },
            dataType: "json",
          
          success: function ( items ) {
                
                var len = items.length;
                for(var i=0;i<len;i++){
                    if (day==items[i].day){
                        $("#table-feeding").append("<tr><th>Desayuno</th></tr><tr><td>"+items[i].breakfast+
                                                   "</td></tr><tr><th> Merienda</th></tr><tr></td> <td>"+items[i].snack+
                                                   "</td></tr><tr> <th>Almuerzo</th></tr><tr><td>"+items[i].lunch+
                                                   "</td></tr><tr><th>Bocadillo</th></tr><tr><td>"+items[i].afterSnack+
                                                   "</td></tr><tr><th>Cena</th></tr><tr><td>"+items[i].dinner+
                                                   "</td></tr>");
                    }  
                }
              
                $('#show').slideDown();
			    
			  
        },
          error:function(jqXHR,textStatus,error){
              alert("Revise su conexion a internet.");
          }
          
    }); 
    
    
}

function clearFeedingPlan(){
     $("#show").hide();
      $("#show").find('td').remove();
    $("#show").find('th').remove();
    $("#show").find('tr').remove();
    $("#table-exercise").hide();
    $("#table-feeding").show();
     $("#menuFeed").show();
     }


function exercisePlan(){
    clearExercisePlan();
    
    $.ajax({
            method: "POST",
            url: "http://appmultimediosimc.hol.es/api/json3.php",
            data: { param: index },
            dataType: "json",
          
          success: function ( items ) {
                
                var len = items.length;
                for(var i=0;i<len;i++){
                        $("#table-exercise").append("<tr><th>Ejercicio</th></tr><tr><td>"+items[i].name+"</td></tr><tr><th>Descripcion</th></tr><tr><td>"+items[i].description+"</td></tr>");
                 }
              
                $('#show').slideDown();
        },
          error:function(jqXHR,textStatus,error){
              alert("Revise su conexion a Internet.");
          }
          
    }); 
    
  
    
    
}

function clearExercisePlan(){
     $("#show").hide();
      $("#show").find('td').remove();
      $("#table-feeding").hide();
      $("#table-exercise").show();
      $("#menuFeed").hide();
     }