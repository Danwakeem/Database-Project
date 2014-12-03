<?php
	ob_start();
	$json = file_get_contents('php://input');
	$dataArray = json_decode($json, true);

	/*
	//What do i need to update
	foreach($x in $dataArray){
		switch ($x) {
			case 'value':
				# code...
				break;
			
			default:
				# code...
				break;
		}

	}

	include 'dbConnect.php';
	$productTable = "product";

	$con = dbConnect();
	$sql = "SELECT * FROM $productTable WHERE sold != 1 ORDER BY id DESC LIMIT 10";
	$result = mysqli_query($con,$sql);
	*/
	return $dataArray;


?>