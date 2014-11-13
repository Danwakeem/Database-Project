<?php 
	include_once 'header.php';
	include_once 'get_products.php';
	$prodId = $_GET['id'];
	$arr = productPageInfo($prodId);

?>
	<div class="product-page">
		<div class="product-header">
			<h1><?php echo $arr['prod_name']; ?></h1>
			<hr>
			<img src="img_default/default-prod.jpg" style="width:100%; height:100%;">
		</div>
		<div class="row">
			<div class="col-md-6">
				<h3>Seller: <a href="user_profile.php?id=<?php echo $arr['user_id']; ?>"><?php echo $arr['username']; ?></a></h3>
			</div>
			<div class="col-md-6 align-right">
				<!-- <a class="load_more btn btn-primary lefty"><i class="fa fa-shopping-cart fa-fw"></i>Add to cart</a> -->
				<h3>Price: $<?php echo $arr['price']; ?></h3>
			</div>
		</div>
		<hr>
		<h4>Description:</h4>
		</br>
		<p><?php echo $arr['prod_desc']; ?></p>
	</div>

<?php include_once 'footer.php' ?>