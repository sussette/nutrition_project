var result = 0;

$('#validate').click(function(){
    if($('input[name="gender"]').is(':checked')){
        
    }else{
        alert('Debe seleccionar Maculino o Femenino')
        return false;
    }			
});

function calculate(){
    clearItems();
    clearFeedingPlan();
    s1 = document.getElementById('weight').value;
    s2 = document.getElementById('height').value;
    result = parseInt(s1)/Math.pow((parseInt(s2)/100),2);
    $("#result").append("<h2>Si IMC es: "+result.toFixed(2)+"</h2>");
    calculateConditionBMI(result);
}

function clearItems(){
    $("#result").hide();
    $("#result").find('input').remove();
    $("#result").find('h2').remove();
}

function calculateConditionBMI(result) {
    $.ajax({
            method: "POST",
            url: "json.php",
            data: { param: 'ctrl' },
            dataType: "json"
    })
        .done(function( items ) {
                $('#result').slideDown();
                var len = items.length;
                var age = 16;
                for(var i=0; i<len; i++){
                    if  (result >= items[i].initialBMI && result <= items[i].finalBMI){ 
                        $("#result").append("<h2>Su condición de peso es:"+items[i].description+"</h2>");  }
                }
        }); 
}

function feedingPlan(){
    clearFeedingPlan();
    
}

function clearFeedingPlan(){
    $("#feedingPlan").hide();
    
}

$(document).ready(function(){ 
    
    
    
    $('#validate').on('click',function(e){		  
        $('#result').slideDown();
        e.preventDefault();
    })
    
    $('#showPlan').on('click', function(f){
        $('#feedingPlan').slideDown();
        f.preventDefault();    
    })        
});
