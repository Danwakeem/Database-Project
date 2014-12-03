<?php

	// You have to call this when starting a mysql connection
	ob_start();
	$tbl_name = "user"; // Database table
	// Connect to database
	include 'dbConnect.php';
	// Get Connection
	$con = dbConnect();

	// username and password sent from form 
	$myusername = $_POST['myusername']; 
	$mypassword = $_POST['mypassword']; 

	// Get rid of mysql injections
	$myusername = stripslashes($myusername);
	$mypassword = stripslashes($mypassword);

	// The query
	$sql = "SELECT * FROM $tbl_name WHERE username = '$myusername' and password = '$mypassword'";
	// Running the query in the database
	$result = mysqli_query($con, $sql);

	// If result matched $myusername and $mypassword, table row must be 1 row
	if($result->num_rows == 1) {
		// Setting a cookie so the user can login once and not have to login again.
		//$numberOfDays = 7;
		//$dateOfExpiry = time() + 60 * 60 * 24 * $numberOfDays ;
		$id = mysqli_fetch_array($result);
		$statement = "SELECT * FROM orders WHERE user_id = $id[0] AND processed = 0";
		$res = mysqli_query($con,$statement);
		$shopping = mysqli_fetch_array($res);
		session_start();
		$_SESSION['shoppingCartId'] = $shopping[0];
		$_SESSION['usrId'] = $id[0];
		$_SESSION['username'] = $id[1];
		//setcookie("usrId", $id[0], $dateOfExpiry);
		// Redirect to the login page.
		header("location:index.php");
	}
	else {
		header("location:login.php?error=1");
	}
	// Flush the ob :) 
	ob_end_flush();
	//Close MySQL in the dbConnect file
	closeMySQL();
?>