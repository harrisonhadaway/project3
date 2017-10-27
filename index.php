<!DOCTYPE html>
<html>
<head>

	<title>Green Arrow Online </title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
  	<link rel="stylesheet" href="/app/style.css">
  	<script src="https://use.fontawesome.com/14f1f2c704.js"></script>
  	<link rel="stylesheet" href="style.css">
  	<link href="https://fonts.googleapis.com/css?family=Cormorant" rel="stylesheet">

</head>

<body class="container">

	<div class="text-center img-responsive">
		<img src="https://www.firstcomicsnews.com/wp-content/uploads/2016/09/Arrow-Logo-600x257.png">
	</div>

	<h3 class="text-center mb-3">Welcome to Team Arrow</h3>

	<hr>

 	<ul class="list-unstyled ml-5">

<?php 

	foreach (getInfo() as $heroes) {
		
		echo '<li class="media">';
		echo '<img class="media-object img-responsive" src="' . $heroes['image_url'] . '" alt="Generic placeholder image" width:64px height:64px>';
		echo '<div class="media-body ml-4">';
		echo '<h3 class="mt-0 mb-1"><a href="profile_page.php?id=' . urlencode($heroes['name']) . '"">' . $heroes['name'] . '</a></h3>';
		echo '<p>' . $heroes['about_me'] . '</p>';
		echo '</div>';
		echo '</li>';
		echo '<br>';
	} 
?>
	</ul>


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
	    //print_r(getInfo());

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