<?php
        // Hello
	session_start();
	include 'dbConnect.php';
	$userId = $_SESSION['usrId'];
	$prodTable = 'product';

	$title = $_POST['title'];
	$price = $_POST['price'];
	$description = $_POST['desc'];
	$category = $_POST['category'];

	$con = dbConnect();
	$sql = "INSERT INTO $prodTable (prod_name,prod_desc,price,user_id) VALUES ($title,$description,$price,$userId); ";
	$sql .= "INSERT INTO product_category (product_id,category_name) VALUES (LAST_INSERT_ID(),$category)";
	$result = mysqli_query($con,$sql);
	if($result){
		return 0;
	}
	else{
		echo "Error: " . $sql . "<br>" . mysqli_error($con);
	}

?>
