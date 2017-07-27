<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Meta -->
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, initial-scale=1.0, user-scalable=yes">
    <meta charset="utf-8">
	
	<!-- CSS Sources -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap-theme.min.css">
	<link rel="stylesheet" href="css/main.css">
	
	<!-- Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Anton|Lobster" rel="stylesheet">
	
	<!-- Icon -->
	<link rel="icon" type="image/png" href="images/miner.png" />
	
	<!-- Java script -->
	<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="js/plotly-latest.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/stock.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
	
	<title>BlackIron</title>
</head>
<body class="mainbody">
	<!-- Navigation Bar -->
	<nav class="navbar navbar-inverse navbar-toggleable-md navbar-fixed-top">
		<div class="container-fluid">	
			<a class="navbar-brand" href="#">
				<img src="images/miner.svg" width="25" height="25" class="d-inline-block align-top" alt="Miner Logo">
			</a>
			
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="#">Home<span class="sr-only">(current)</span></a></li>
					<li><a href="#">Watchlist<span class="sr-only">(current)</span></a></li>
					<li><a href="#">Bot Management <span class="sr-only">(current)</span></a></li>
					<li><a href="#">Account<span class="sr-only">(current)</span></a></li>
				</ul>
				<form class="navbar-form navbar-right">
					<div class="form-group">
					  <input type="text" class="form-control" placeholder="Search">
					</div>
					<button type="submit" class="btn btn-primary">Search</button>
				</form>
			</div>
		</div>
	</nav>
	
	<div class="jumbotron">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h1>BlackIron</h1>
					<p>Harder, Better, Faster</p>
				</div>
			</div>
		</div>
	</div>
	<div id="content-main" src="html/main.html"></div>

	
	<div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
	  <div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
		  <div class="modal-header">
			<h4 class="modal-title">Sign In</h4>
		  </div>
		  <div class="modal-body">
			<form>
				<div class="row">
					<div class="col-md-6">
						<span>Username: </span>
					</div> 	
					<div class="col-md-6">
						<input type="text" name="txtUsername"><br>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<span>Password: </span>
					</div>
					<div class="col-md-6">
						<input type="password" name="txtPassword"><br>
					</div>
				</div>
			</form>
		  </div>
		</div>
	  </div>
	</div>

	<footer>
		<div container-fluid>
			<a href="http://www.freepik.com/">Background and Pictures provided by Freepik</a>
		</div>
	</footer>
</body>
</html>