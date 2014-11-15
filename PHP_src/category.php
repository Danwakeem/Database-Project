<?php 
	include_once 'header.php';
	include_once 'get_products.php';
	$category = $_GET['category'];
	$products = categoryProducts($category);
	$_SESSION['category_offset'] = 10;
	$_SESSION['category'] = $category;
?>

<div class="recent-products">
	<h1><?php echo $category; ?></h1>
	<hr>
	<?php foreach($products as $row): ?>
		<div class="product-posts">
			<div class="row">
				<div class="col-md-4">
					<div class="row">
						<a href="product_page.php?id=<?php echo $row[0]; ?>"><img src="img_default/default-prod.jpg" style="width:100%;height:100%;"></a>
					</div>
				</div>
				<div class="col-md-8">
					<h3><a href="product_page.php?id=<?php echo $row[0]; ?>"><?php echo $row[1]; ?></a></h2>
					<hr>
					<p><?php echo $row[2]; ?></p>
				</div>
			</div>
		</div>
	<?php endforeach; ?>
	<div class="more-posts"></div>
</div>

<div class="more">
	<a class="category btn btn-primary"><i class="fa fa-bicycle fa-fw"></i> More products</a>
</div>


<?php include_once 'footer.php'; ?>