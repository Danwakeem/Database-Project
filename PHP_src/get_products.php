<?php
	ob_start();

	if(isset($_POST['action']) && !empty($_POST['action'])){
		$action = $_POST['action'];
		switch($action){
			case 'mainPageGet': mainPageGetMore();
		}
	}

	function mainPageProducts(){
		include 'dbConnect.php';
		$productTable = "product";

		$con = dbConnect();
		$sql = "SELECT * FROM $productTable WHERE sold != 1 ORDER BY id DESC LIMIT 10";
		$result = mysqli_query($con,$sql);

		if($result){
			$arr = [];
			$i = 0;
			while($row = mysqli_fetch_array($result)){
				$arr[$i++] = $row;
			}
			return $arr;
		}
		return -1;

	}

	function productPageInfo($prodId){
		include 'dbConnect.php';
		$productTable = "product";
		$userTable = "user";

		$con = dbConnect();
		$sql = "SELECT u.username, p.* FROM $productTable as p, $userTable as u WHERE u.user_id = p.user_id AND p.id = $prodId";
		$result = mysqli_query($con,$sql);

		if($result){
			$arr = array();
			while($row = mysqli_fetch_array($result)){
				$arr = array(
					'username' => $row['username'],
					'prod_name' => $row['prod_name'],
      				'prod_desc' => $row['prod_desc'],
      				'price' => $row['price'],
      				'user_id' => $row['user_id']
				);
			}
			return $arr;
		}
	} 

	function mainPageGetMore(){
		session_start();
		include 'dbConnect.php';
		$productTable = "product";
		$offSet = $_SESSION['main_page_offset'];

		$con = dbConnect();
		$sql = "SELECT * FROM $productTable WHERE sold != 1 ORDER BY id DESC LIMIT $offSet, 10";
		$result = mysqli_query($con,$sql);

		if($result){
			$_SESSION['main_page_offset'] += 10;
			$arr = array();
			while($row = mysqli_fetch_array($result)){
				$arr[] = array(
      				'id' => $row['id'],
      				'prod_name' => $row['prod_name'],
      				'prod_desc' => $row['prod_desc'],
      				'price' => $row['price'],
      				'user_id' => $row['user_id']
   				);
			}
			echo json_encode($arr);
		}
	}

	ob_end_flush();

?>