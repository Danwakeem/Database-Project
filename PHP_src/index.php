<?php include_once 'header.php'; ?>
<?php session_start(); $_SESSION['main_page_offset'] = 10; ?>

<!-- Main component for a primary marketing message or call to action -->
<div class="jumbotron">
	<h1>Welcome to BlackBOX.</h1>
    	<p>Here at blackBOX you will find a ton of exciting products from some exciting people. If you need something at a good price you should type what you need in the search box above. Happy hunting.</p>
        <!-- <p><a class="btn btn-lg btn-primary" href="#" role="button">Recent Products</a></p> -->
</div>

<h1>Recent Products</h1>
<hr>

<div class="recent-products">
	<?php include_once('get_products.php');
		$arr = getProducts("mainPage",0);
		foreach($arr as $row):
	?>
		<div class="product-posts">
			<div class="row">
				<div class="col-md-4">
					<div class="row">
						<a href="product_page.php?id=<?php echo $row[0]; ?>"><img src="<?php echo $row[6]; ?>" style="width:100%;height:100%;"></a>
					</div>
				</div>
				<div class="col-md-8">
					<h3><a href="product_page.php?id=<?php echo $row[0]; ?>"><?php echo $row[1]; ?></a></h3>
					<hr>
					<p><?php echo $row[2]; ?></p>
				</div>
			</div>
		</div>
	<?php endforeach; ?>
	<div class="more-posts"></div>
</div>

<div class="more">
	<a class="load_more btn btn-primary"><i class="fa fa-bicycle fa-fw"></i> More products</a>
</div>


<?php include_once 'footer.php'; ?>