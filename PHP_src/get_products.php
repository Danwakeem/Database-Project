<?php
	ob_start();

	if(isset($_POST['action']) && !empty($_POST['action'])){
		$action = $_POST['action'];
		switch($action){
			case 'mainPageGet': mainPageGetMore(); break;
			case 'loadMoreSearches': loadMoreSearches(); break;
			case 'moreFromCategory': moreFromCategory(); break;
			case 'addToCart' : $prod_id = $_POST['proId']; addToShoppingCart($prod_id); break;
			case 'getCart' : getShoppingCart(); break;
		}
	}

	function getShoppingCart(){
		include 'dbConnect.php';
		session_start();
		$prodOrders = 'product_orders';
		$cartId = $_SESSION['shoppingCartId'];
		$products = 'product';

		$con = dbConnect();
		$sql = "SELECT p.* FROM $products as p, $prodOrders as po WHERE po.order_id = $cartId AND po.product_id = p.id";
		$result = mysqli_query($con,$sql);

		if($result){
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
		else {
			echo "sorry";
		}
	}

	function addToShoppingCart($prod_id){
		include 'dbConnect.php';
		$prodOrders = 'product_orders';
		session_start();
		$cartId = $_SESSION['shoppingCartId'];

		$con = dbConnect();
		$sql = "INSERT INTO $prodOrders VALUES ($cartId,$prod_id)";
		$result = mysqli_query($con,$sql);

		if($result){
			echo 0;
		}
		else {
			echo -1;
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
					'id' => $row['id'],
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

	function userReviews($userId){
		include 'dbConnect.php';
		$reviewTable = 'reviews';

		$con = dbConnect();
		$sql = "SELECT * FROM $reviewTable WHERE user_id = $userId ORDER BY review_id DESC";
		$result = mysqli_query($con,$sql);

		if($result){
			$arr = [];
			$i = 0;
			while($row = mysqli_fetch_array($result)){
				$arr[$i++] = $row;
			}
			return $arr;
		}	
	}

	function userProducts($userId){
		include 'dbConnect.php';
		$productTable = "product";

		$con = dbConnect();
		$sql = "SELECT * FROM $productTable WHERE sold != 1 AND user_id = $userId LIMIT 10";
		$result = mysqli_query($con,$sql);

		if($result){
			$arr = [];
			$i = 0;
			while($row = mysqli_fetch_array($result)){
				$arr[$i++] = $row;
			}
			return $arr;
		}
	} 

	function userSoldProducts($userId){
		include 'dbConnect.php';
		$productTable = "product";

		$con = dbConnect();
		$sql = "SELECT * FROM $productTable WHERE sold = 1 AND user_id = $userId LIMIT 10";
		$result = mysqli_query($con,$sql);

		if($result){
			$arr = [];
			$i = 0;
			while($row = mysqli_fetch_array($result)){
				$arr[$i++] = $row;
			}
			return $arr;
		}
	}

	function search($search){
		include 'dbConnect.php';
		$productTable = "product";

		$con = dbConnect();
		$sql = "SELECT * FROM $productTable WHERE sold != 1 AND prod_name LIKE '%$search%' ORDER BY id DESC LIMIT 10";
		$result = mysqli_query($con,$sql);

		if($result){
			$arr = [];
			$i = 0;
			while($row = mysqli_fetch_array($result)){
				$arr[$i++] = $row;
			}
			return $arr;
		}
		return 1;
	}

	function categoryProducts($category){
		include 'dbConnect.php';
		$productTable = "product";
		$categoryTable = "category";
		$prodCatTable = "product_category";

		$con = dbConnect();
		$sql = "SELECT DISTINCT p.* FROM $productTable AS p, $categoryTable AS c, $prodCatTable AS pc WHERE p.id = pc.product_id AND c.cat_name = pc.category_name AND p.sold != 1 AND c.cat_name = '$category' OR c.parent_name = '$category' ORDER BY p.id DESC LIMIT 10";
		$result = mysqli_query($con,$sql);

		if($result){
			$arr = [];
			$i = 0;
			while($row = mysqli_fetch_array($result)){
				$arr[$i++] = $row;
			}
			return $arr;
		}
		return 1;
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

	function loadMoreSearches(){
		session_start();
		include 'dbConnect.php';
		$productTable = "product";
		$offSet = $_SESSION['search_offset'];
		$search = $_SESSION['search'];

		$con = dbConnect();
		$sql = "SELECT * FROM $productTable WHERE prod_name LIKE '%$search%' ORDER BY id DESC LIMIT $offSet, 10";
		$result = mysqli_query($con,$sql);

		if($result){
			$_SESSION['search_offset'] += 10;
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

	function moreFromCategory(){
		session_start();
		include 'dbConnect.php';
		$productTable = "product";
		$categoryTable = "category";
		$prodCatTable = "product_category";
		$offSet = $_SESSION['category_offset'];
		$category = $_SESSION['category'];

		$con = dbConnect();
		$sql = "SELECT DISTINCT p.* FROM $productTable AS p, $categoryTable AS c, $prodCatTable AS pc WHERE p.id = pc.product_id AND c.cat_name = pc.category_name AND p.sold != 1 AND c.cat_name = '$category' OR c.parent_name = '$category' ORDER BY p.id DESC LIMIT $offSet, 10";
		$result = mysqli_query($con,$sql);

		if($result){
			$_SESSION['category_offset'] += 10;
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