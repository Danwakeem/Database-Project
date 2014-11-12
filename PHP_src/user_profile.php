<?php 
	include_once 'header.php'; 
	include_once 'get_products.php'; 
	$userId = $_GET['id'];
	$postings =  userProducts($userId);
?>
	<div class="container">
		<div class="row top-margin">
			<div class="col-md-4">
				<div class="user-sidebar">
					<div class="user-photo">
						<img class="user-image" src="img_default/default-user.jpg" >
					</div>
					<div class="user-settings">
						<div class="list-group">
	  						<a class="list-group-item" href="user_profile.php?id=<?php echo $userId; ?>"><i class="fa fa-pencil fa-fw"></i>&nbsp; Recent Postings</a>
							<a class="list-group-item sold" href="#"><i class="fa fa-check fa-fw"></i>&nbsp; Sold</a>
							<a class="list-group-item settings" href="#"><i class="fa fa-cog fa-fw"></i>&nbsp; Settings</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-8">
				<div class="toggle">
					<h1>Recent Postings</h1>
					<hr>
					<?php foreach($postings as $row): ?>
						<div class="product-posts">
							<div class="row">
								<div class="col-md-4">
									<div class="row">
										<a href="product_page.php?id=<?php echo $row[0]; ?>"><img src="img_default/default-prod.jpg" style="width:100%;height:100%;"></a>
									</div>
								</div>
								<div class="col-md-8" style="bottom: 25px;">
									<h3><a href="product_page.php?id=<?php echo $row[0]; ?>"><?php echo $row[1]; ?></a></h2>
									<hr>
									<p><?php echo $row[2]; ?></p>
								</div>
							</div>
						</div>
						<hr>
					<?php endforeach; ?>
				</div>
			</div>
		</div>
	</div>
<?php include_once 'footer.php'; ?>