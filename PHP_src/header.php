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
		            <p class="navbar-text">Signed in as <a href="user_profile.php?id=<?php echo $_SESSION['usrId']; ?>"><?php echo $_SESSION['username']; ?></a></p>
		            <p class="navbar-text" style="margin: 11px 15px 0px 15px;"><a href="#"><i class="fa fa-plus-circle fa-2x" rel="tooltip" title="add product"  data-toggle="modal" data-target="#addProduct"></i></a></p>
		            <p class="navbar-text" style="margin: 11px 15px 0px 15px;"><a href="#"><i class="fa fa-shopping-cart fa-2x" rel="tooltip" title="Shopping Cart" data-toggle="modal" data-target="#shoppingCart"></i></a></p>
		        <?php else: ?>
		        	<a href="login.php"><button type="button" class="btn btn-default navbar-btn">Sign in</button></a>
		        <?php endif; ?>
		        <form class="navbar-form navbar-right" role="form" method="POST" action="search.php">
  					<div class="form-group">
    					<input name="search" id="search" type="text" class="form-control" placeholder="Search">
  					</div>
  					<button type="submit" class="btn btn-default">Submit</button>
				</form>
				<ul class="nav navbar-nav navbar-right">
		        	<li class="dropdown">
		        		<a href="category.php?category=Books" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
		        			Books
		        			<span class="caret"></span>
		        		</a>
		        		<ul class="dropdown-menu" role="menu">
		        			<li><a href="category.php?category=Fiction">  Fiction</a></li>
		        			<li><a href="category.php?category=Non-Fiction">  Non-Fiction</a></li>
		        		</ul>
		        	</li>
		        </ul>
		        </div><!--/.nav-collapse -->
	    </nav>
	    <!-- Modal -->
		<div class="modal fade" id="shoppingCart" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
		        <h4 class="modal-title" id="myModalLabel">Shopping Cart</h4>
		      </div>
		      <div class="modal-body"></div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		      </div>
		    </div>
		  </div>
		</div>
		<div class="modal fade" id="addProduct" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
		        <h4 class="modal-title" id="myModalLabel">Add Product</h4>
		      </div>
		      <div class="modal-body">
		      	<form role="form" action="add_product.php" method="post" enctype="multipart/form-data">
			      	<div class="upload-text">
				    	<div class="row">
				    		<div class="col-md-6">
								<div class="settings-group">
									<h3>Product Title</h3>
									<input type="text" class="form-control" name="title" placeholder="Title">
								</div>
							</div>
							<div class="col-md-6">
								<div class="settings-group">
									<h3>Price</h3>
									<input type="number" step="0.01" class="form-control" name="price" placeholder="Price">
								</div>
							</div>
						</div>
						<div class="settings-group">
							<h3>Product description</h3>
							<textarea class="form-control" rows="3" name="desc" placeholder="Product Description"></textarea>
						</div>
						<div class="settings-group">
							<h3>Category</h3>
							<select class="form-control" name="category">
								<option value="None">None</option>
	  							<option value="Fiction">Fiction</option>
	  							<option value="Non-Fiction">Non-Fiction</option>
							</select>
						</div>
						<div class="settings-group">
							<label for="exampleInputFile">Featured Image</label>
						    <input type="file" id="exampleInputFile" name="featured-pic">
    						<p class="help-block">JPEG only</p>
						</div>
						<button type="submit" name="submit" id="submit" class="btn btn-default">Submit</button>
					</div>
				</form>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		      </div>
		    </div>
		  </div>
		</div>