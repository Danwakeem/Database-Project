<?php
	include_once 'header.php';
	include_once 'get_products.php';
	$search = $_POST['search'];
	//Block all SQL injections
	$search = mysql_real_escape_string($search);

	$products = getProducts("search",$search);
	//session_start(); 
	$_SESSION['search_offset'] = 10;
	$_SESSION['search'] = $search;
?>
<div class="search-title">
	<h1><?php echo $search; ?> products</h1>
	<hr> 
</div>
<div class="recent-products">
	<?php if($products != 1): ?>
		<?php foreach($products as $row): ?>
			<div class="product-posts">
				<div class="row">
					<div class="col-md-4">
						<div class="row">
							<a href="product_page.php?id=<?php echo $row[0]; ?>"><img src="<?php echo $row[6]; ?>" style="width:100%;height:100%;"></a>
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
	<?php else: ?>
		<h1>Oh NO! </h1>
	<?php endif;?>
	<div class="more-posts"></div>
</div>

<div class="more">
	<a class="search btn btn-primary"><i class="fa fa-bicycle fa-fw"></i> More products</a>
</div>


<?php include_once 'footer.php'; ?>