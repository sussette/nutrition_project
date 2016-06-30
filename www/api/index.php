<?php

    require '../medoo.php';
    require 'Slim/Slim.php';
    \Slim\Slim::registerAutoloader();
    
    $app = new \Slim\Slim();



    $app->get('/', function(){
        echo "<h1>SIMPLE API CALLS</h1>
  <p>To start using this API, please review the available operations and parameters.</p>
  <ul>

    <li>
      <b>/all</b> you should use this operation to retrieve all the registered items in the application.
      <ul>
        <li><b>parameters:</b> none.</li>
        <li><b>response format:</b> array - JSON</li>
      </ul>
    </li>

    <li>
      <b>/gender/:id</b> you should use this operation to retrieve items according to 'gender'.
      <ul>
          <li><b>parameters:</b> gender id (m or f).</li>
          <li><b>response format:</b> array - JSON</li>
        </ul>
    </li>

    <li>
      <b>/depto/:id</b> you should use this operation to retrieve items according to department.
      <ul>
          <li><b>parameters:</b> department id (integer number).</li>
          <li><b>response format:</b> array - JSON</li>
        </ul>
    </li>

    <li>
      <b>/search/:keyword</b> you should use this operation to search a registered user according to 'name' or 'lastname'.
      <ul>
          <li><b>parameters:</b> department id (integer number).</li>
          <li><b>response format:</b> array - JSON</li>
        </ul>
    </li>
    <h4>JSON response example</h4>
    <p><pre><code><span class='green'>[</span>
<span class='purple'>{</span>
<span class='attr'>name</span>: 'Ricky',
<span class='attr'>lastname</span>: 'Lucas',
<span class='attr'>gender</span>: 'm',
<span class='attr'>profile</span>: 'profile/rlucas.jpg',
<span class='attr'>depto</span>: 'Contabilidad'
<span class='purple'>}</span>,
<span class='purple'>{</span>
<span class='attr'>name</span>: 'Martha',
<span class='attr'>lastname</span>: 'Nelson',
<span class='attr'>gender</span>: 'f',
<span class='attr'>profile</span>: 'profile/mnelson.jpg',
<span class='attr'>depto</span>: 'Proveeduria'
<span class='purple'>}</span>
<span class='green'>]</span></code></pre></p>

  </ul>";
    });
    
    //API functions

    //GET ALL REGISTERED USERS
    $app->get('/all', function(){
        
        $database = new medoo([
            // required
            'database_type' => 'mysql',
            'database_name' => 'test',
            'server' => 'localhost',
            'username' => 'root',
            'password' => 'root',
            'charset' => 'utf8'
        ]);

        $items = array();
        
        $data = $database->select(
                "tb_personal", 
            [
                "[><]tb_deptos" => ["id_depto" => "id_depto"]
            ],
            [
                "tb_personal.id_personal",
                "tb_personal.nombre",
                "tb_personal.apellido",
                "tb_personal.gender",
                "tb_personal.profile",
                "tb_deptos.id_depto",
                "tb_deptos.depto"
            ]
        );
        
        foreach ($data as $key => $val) {
           
            $item = new stdClass;
            $item->name = $data[$key]["nombre"];
            $item->lastname = $data[$key]["apellido"];
            $item->gender = $data[$key]["gender"];
            $item->profile = $data[$key]["profile"];
            $item->depto = $data[$key]["depto"];

            $items[] = $item;
        }

        echo json_encode($items);

    });
    
    //GET ITEMS BY GENDER: m/f
    $app->get('/day/:id', function ($day){
        
        $database = new medoo([
            // required
            'database_type' => 'mysql',
            'database_name' => 'nutrition_project',
            'server' => 'localhost',
            'username' => 'root',
            'password' => 'root',
            'charset' => 'utf8'
        ]);

        $items = array();
        
        $data = $database->select(
                "tb_feeding",
            [
                "tb_feeding.breakfast",
                "tb_feeding.morningSnack",
                "tb_feeding.lunch",
                "tb_feeding.afternoonSnack",
                "tb_feeding.dinner",
                "tb_feeding.day",
    
            ],
            [
                "tb_feeding.day" =>$day
            ]
        );

        $response = count($data);
        
        if($response>0){
            foreach ($data as $key => $val) {
                $item = new stdClass;
                $item->breakfast = $data[$key]["breakfast"];
                $item->snack = $data[$key]["morningSnack"];
                $item->lunch = $data[$key]["lunch"];
                $item->afterSnack = $data[$key]["afternoonSnack"];
                $item->dinner = $data[$key]["dinner"];

                $items[] = $item;
            }
            echo json_encode($items);
        }else{
            echo json_encode(array(
                'status' => false,
                'message' => "$id is not avilable"
            ));
        }
    });
    
    //GET ITEMS BY DEPTO
 $app->get('/depto/:id', function ($id){
        
        $database = new medoo([
            // required
            'database_type' => 'mysql',
            'database_name' => 'test',
            'server' => 'localhost',
            'username' => 'root',
            'password' => 'root',
            'charset' => 'utf8'
        ]);

        $items = array();
        
        $data = $database->select(
                "tb_personal", 
            [
                "[><]tb_deptos" => ["id_depto" => "id_depto"]
            ],
            [
                "tb_personal.id_personal",
                "tb_personal.nombre",
                "tb_personal.apellido",
                "tb_personal.gender",
                "tb_personal.profile",
                "tb_deptos.id_depto",
                "tb_deptos.depto"
            ],
            [
                "tb_personal.id_depto" =>$id
            ]
        );

        $response = count($data);
        
        if($response>0){
            foreach ($data as $key => $val) {
                $item = new stdClass;
                $item->name = $data[$key]["nombre"];
                $item->lastname = $data[$key]["apellido"];
                $item->gender = $data[$key]["gender"];
                $item->profile = $data[$key]["profile"];
                $item->depto = $data[$key]["depto"];

                $items[] = $item;
            }
            echo json_encode($items);
        }else{
            echo json_encode(array(
                'status' => false,
                'message' => "Department ID $id does not exist"
            ));
        }
    });
        
      
    $app->run();

?>
<!--<html>
    <head>
        <style>
code,pre{font-size:95%;line-height:140%;white-space:pre}.attr,.green,.purple{font-weight:700}body{font-family:Arial}pre{font-family:"Courier 10 Pitch",Courier,monospace;white-space:pre-wrap;white-space:-moz-pre-wrap;white-space:-o-pre-wrap}code{font-family:Monaco,Consolas,"Andale Mono","DejaVu Sans Mono",monospace;white-space:pre-wrap;white-space:-moz-pre-wrap;white-space:-o-pre-wrap;background:#faf8f0}.green{color:red}.purple{color:#3498db;margin:0 10px}.attr{color:#e67e22;margin:0 20px}

</style>
    </head>
</html>-->