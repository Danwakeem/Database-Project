<?php 
	include_once 'header.php'; 
	include_once 'get_products.php'; 
	$userId = $_GET['id'];
?>
	<div class="container">
		<div class="row top-margin">
			<div class="col-md-4">
				<div class="user-sidebar">
					<div class="user-photo">
						<img class="profile-pic user-image" data-userid="<?php echo $userId; ?>" src="" >
					</div>
					<div class="user-settings">
						<div class="list-group">
	  						<a class="list-group-item" href="user_profile.php?id=<?php echo $userId; ?>"><i class="fa fa-pencil fa-fw"></i>&nbsp; Recent Postings</a>
							<a class="list-group-item sold" href="user_profile.php?id=<?php echo $userId; ?>&sold=1"><i class="fa fa-check fa-fw"></i>&nbsp; Sold</a>
							<a class="list-group-item reviews" href="user_profile.php?id=<?php echo $userId; ?>&reviews=1"><i class="fa fa-newspaper-o"></i>&nbsp; Reviews</a>
							<?php if(isset($_SESSION['usrId']) && $userId == $_SESSION['usrId']): ?> 
								<a class="list-group-item settings" href="user_profile.php?id=<?php echo $userId; ?>&settings=1"><i class="fa fa-cog fa-fw"></i>&nbsp; Settings</a>
							<?php endif; ?>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-8">
				<div class="toggle">
					<?php if(isset($_GET['sold'])): ?>
						<?php $sold =  getProducts("soldProducts",$userId); ?>
						<h1>Sold Products</h1>
						<hr>
						<?php foreach($sold as $row): ?>
							<div class="product-posts">
								<div class="row">
									<div class="col-md-4">
										<div class="row">
											<a href="product_page.php?id=<?php echo $row[0]; ?>"><img src="<?php echo $row[6]; ?>" style="width:100%;height:100%;"></a>
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
					<?php elseif(isset($_GET['reviews'])): ?>
						<?php $reviews = getProducts("userReviews",$userId); ?>
						<h1>Reviews</h1>
						<hr>
						<?php foreach ($reviews as $row): ?>
							<div class="product-posts">
								<div class="row">
									<div class="col-md-4">
										<div class="row">
											<a href="user_profile.php?id=<?php echo $row[2]; ?>"><img class="user-image" src="<?php echo $row[6]; ?>" style="width:100%;height:100%;"></a>
										</div>
									</div>
									<div class="col-md-8">
										<?php for($i = 0; $i < 5; $i++): ?>
											<?php if(($row[4] - $i) > 0): ?>
												<i class="fa fa-star"></i>
											<?php else: ?>
												<i class="fa fa-star-o"></i>
											<?php endif; ?>
										<?php endfor; ?>
										<hr>
										<p><?php echo $row[3]; ?></p>
									</div>
								</div>
							</div>
						<?php endforeach; ?>
					<?php elseif(isset($_GET['settings'])): ?>
						<div class="user-account-settings">
							<form role="form" method="POST" action="">
								<div class="row">
									<div class="col-md-1">
										<i class="fa fa-user fa-2x" style="margin-top: 23px;"></i>
									</div>
									<div class="col-md-11">
										<h2>Account</h2>
									</div>
								<div class="margin-left">
									<div class="settings-group">
										<p>Username</p>
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span><input class="form-control username" type="text" placeholder="Username">
										</div>
									</div>
									<div class="settings-group">
										<p>Password</p>
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-key fa-fw"></i></span><input class="form-control password" type="password" placeholder="Password">
										</div>
									</div>
									<div class="settings-group">
										<p>Email</p>
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-envelope-o fa-fw"></i></span><input class="form-control email" type="text" placeholder="Email address">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-1">
										<i class="fa fa-building-o fa-2x" style="margin-top: 23px;"></i>
									</div>
									<div class="col-md-11">
										<h2>Billing</h2>
									</div>
								</div>
								<div class="margin-left">
									<div class="settings-group">
										<p>State</p>
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-location-arrow fa-fw"></i></span><input class="form-control state" type="text" placeholder="State">
										</div>
									</div>
									<div class="settings-group">
										<p>Street</p>
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-cab fa-fw"></i></span><input class="form-control street" type="text" placeholder="Street">
										</div>
									</div>
									<div class="settings-group">
										<p>City</p>
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-building-o fa-fw"></i></span><input class="form-control city" type="text" placeholder="City">
										</div>
									</div>
									<div class="settings-group">
										<p>Zip</p>
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span><input class="form-control zip" type="text" placeholder="Zip">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-1">
										<i class="fa fa-credit-card fa-2x" style="margin-top: 23px;"></i>
									</div>
									<div class="col-md-11">
										<h2>Credit Card</h2>
									</div>
								<div class="margin-left">
									<div class="settings-group">
										<p>Credit card number</p>
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-credit-card fa-fw"></i></span><input class="form-control credit-card" type="password" placeholder="CC Number">
										</div>
									</div>
								</div>
								<button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
							</form>
						</div>
					<?php else: ?>
						<?php $postings = getProducts("userProducts",$userId); ?>
						<h1>Recent Postings</h1>
						<hr>
						<?php foreach($postings as $row): ?>
							<div class="product-posts">
								<div class="row">
									<div class="col-md-4">
										<div class="row">
											<a href="product_page.php?id=<?php echo $row[0]; ?>"><img src="<?php echo $row[6]; ?>" style="width:100%;height:100%;"></a>
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
					<?php endif; ?>
				</div>
			</div>
		</div>
	</div>
<?php include_once 'footer.php'; ?>