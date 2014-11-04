<?php

	ob_start();
	$tbl_name = "user"; // Database table
	// Connect to database
	include 'dbConnect.php';
	// Get Connection
	$con = dbConnect();

	// username and password sent from form 
	$myusername = $_POST['myusername']; 
	$mypassword = $_POST['mypassword']; 

	$myusername = stripslashes($myusername);
	$mypassword = stripslashes($mypassword);
	//$myusername = mysql_real_escape_string($myusername);
	//$mypassword = mysql_real_escape_string($mypassword);

	$sql = "SELECT * FROM $tbl_name WHERE username = '$myusername' and password = '$mypassword'";
	$result = mysqli_query($con, $sql);

	// If result matched $myusername and $mypassword, table row must be 1 row
	if($result->num_rows == 1) {
		$numberOfDays = 7;
		$dateOfExpiry = time() + 60 * 60 * 24 * $numberOfDays ;
		$id = mysqli_fetch_array($result);
		setcookie("usrId", $id[0], $dateOfExpiry);
		header("location:login_success.php");
	}
	else {
		echo "Wrong username and or Password. Sorry.";
	}
	ob_end_flush();
	//Close MySQL in the dbConnect file
	closeMySQL();
?>