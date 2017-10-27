<!DOCTYPE html>
<html>
<head>
	<title>Profile Page</title>

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

	<h2 class="text-center mb-3">Team Arrow Database</h2>
	
	<hr>

<?php
	
	$name = urldecode($_GET['id']);

	foreach (getInfo($name) as $hero){
		echo '<div class="container ml-2 mr-2">';
		echo '<img class="img-responsive" src="' . $hero['image_url'] . '" alt="placeholder image" style="width:auto">';
		echo '<h1>' . $hero['name'] . '</h1>';
		echo '<p class="title">' . $hero['about_me'] . '</p>';
		echo '<p>' . $hero['biography'] . '</p>';
		echo '<p><button onclick="history.back(-1)">Back to Team Arrow</button></p>';
		echo '</div>';
	}

	if (isset($_GET['id'])) {
    $safeId = htmlentities($_GET['id']);
    getInfo($safeId);
  	}

	function getInfo($name) {
		$sql = "SELECT * FROM heroes WHERE name='" . $name . "'";
	    $request = pg_query(getDb(), $sql);
	    return pg_fetch_all($request);
	}

	function getDb() {

        if(file_exists('.env')) {
            require __DIR__ . '/vendor/autoload.php';
            $dotenv = new Dotenv\Dotenv(__DIR__);
            $dotenv->load();
        }
        
        $url = parse_url(getenv("DATABASE_URL"));

        $db_port = $url['port'];
        $db_host = $url['host'];
        $db_user = $url['user'];
        $db_pass = $url['pass'];
        $db_name = substr($url['path'], 1);

        $db = pg_connect(
            "host=" . $db_host .
            " port=" . $db_port .
            " dbname=" . $db_name .
            " user=" . $db_user .
            " password=" . $db_pass);
        return $db;
    }
?>
</body>
</html>