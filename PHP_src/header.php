<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Demo site</title>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
	<!-- Fontawesome -->
	<link href="https://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="container">
		<?php session_start(); ?>	

		<!-- Static navbar -->
		<nav class="navbar navbar-default" role="navigation">
		    <div class="container-fluid">
		        <div class="navbar-header">
		            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
		              <span class="sr-only">Toggle navigation</span>
		              <span class="icon-bar"></span>
		              <span class="icon-bar"></span>
		              <span class="icon-bar"></span>
		            </button>
		            <a class="navbar-brand" href="index.php">BlackBOX Books</a>
		        </div>
		        <?php if(isset($_SESSION['usrId'])): ?>
		              	<p class="navbar-text">Signed in as <?php echo $_SESSION['username']; ?></p>
		              <?php else: ?>
		              	<a href="login.php"><button type="button" class="btn btn-default navbar-btn">Sign in</button></a>
		              <?php endif; ?>
		            <form class="navbar-form navbar-right" role="search">
  						<div class="form-group">
    						<input type="text" class="form-control" placeholder="Search">
  						</div>
  						<button type="submit" class="btn btn-default">Submit</button>
					</form>
		        </div><!--/.nav-collapse -->
	    </nav>