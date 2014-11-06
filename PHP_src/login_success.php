	<?php session_start(); if(isset($_SESSION['usrId'])): ?>
		<h1><?php echo $_SESSION['username']; ?></h1>
	<?php else: ?>
		<h1>Oh NO:( </h1>
	<?php endif; ?>