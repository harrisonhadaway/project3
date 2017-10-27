<!DOCTYPE html>
<html>
<head>

	<title>Green Arrow Online </title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
  	<link rel="stylesheet" href="/app/style.css">
  	<script src="https://use.fontawesome.com/14f1f2c704.js"></script>

</head>
<body class="container">

	<h1 class="text-center mt-5">Green Arrow Online</h1>
	<h3 class="text-center mt-2">Welcome to Team Arrow</h3>

		<div>

		<ul class="list-unstyled">
  			<li class="media">
    			<img class="mr-3" src="..." alt="Generic placeholder image">
   				 <div class="media-body">
      				<h5 class="mt-0 mb-1">List-based media object</h5>
      					Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
    			</div>
  			</li>
  			<li class="media my-4">
    			<img class="mr-3" src="..." alt="Generic placeholder image">
    			<div class="media-body">
      				<h5 class="mt-0 mb-1">List-based media object</h5>
      				Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
   				</div>
  			</li>
  			<li class="media">
    			<img class="mr-3" src="..." alt="Generic placeholder image">
    			<div class="media-body">
      				<h5 class="mt-0 mb-1">List-based media object</h5>
      				Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
    			</div>
  			</li>
		</ul>
			
		</div>


<?php
	function getDb() {
        $db = pg_connect("host=localhost port=5432 dbname=project3 user=greenarrow password=arrowarrowarrow");
        if(!$db){
        	echo "Error on connect!\n";
        	exit;
        }
        return $db;
    }
       //Make a request.
    function getInfo() {
        $request = pg_query(getDb(), "SELECT * FROM heroes");
        // Return a fetch to use the data.
        return pg_fetch_all($request);
    }
        print_r(getInfo());
?>

<?php //connection for the end of development 
	// function getDb() {
	//     if (file_exists('.env')) {
	//       require __DIR__ . '/vendor/autoload.php';
	//       $dotenv = new Dotenv\Dotenv(__DIR__);
	//       $dotenv->load();
	//     }
	//     $url = parse_url(getenv("DATABASE_URL"));
	//      var_dump($url);
	//     $db_port = $url['port'];
	//     $db_host = $url['host'];
	//     $db_user = $url['user'];
	//     $db_pass = $url['pass'];
	//     $db_name = substr($url['path'], 1);
	//     $db = pg_connect(
	//       "host=" . $db_host .
	//       " port=" . $db_port .
	//       " dbname=" . $db_name .
	//       " user=" . $db_user .
	//       " password=" . $db_pass);
	//     return $db;
	//   }
?>

</body>
</html>