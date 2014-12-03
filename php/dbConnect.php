<?php

	ini_set('display_errors',1); 
	error_reporting(E_ALL);
	GLOBAL $con;

	function dbConnect(){	
		$host = "localhost"; // Host name 
		$username = "root"; // Mysql username 
		$password = "root"; // Mysql password 
		$db_name = "ecom"; // Database name

		// Connect to server and select databse.
		$con = mysqli_connect("$host", "$username", "$password", "$db_name") or die("cannot connect"); 
	
		// Return the connection
		return $con;
	}

	// Called to close the connection
	function closeMySQL($connnection){
		mysql_close($connection);
	}

?> 