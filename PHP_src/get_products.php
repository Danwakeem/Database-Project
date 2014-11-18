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
			case 'rmCart' : $prod_id = $_POST['proId']; rmShoppingCart($prod_id); break;
			case 'profile-pic' : $userId =$_POST['usrId']; getProfilePicture($userId); break;
		}
	}

	function getProducts($action,$data){
		switch ($action){
			case 'mainPage':
				$sql = "SELECT * FROM product WHERE sold != 1 ORDER BY id DESC LIMIT 10";
				return arrResults($sql);
				break;
			case 'productPage':
				$sql = "SELECT u.username, p.* FROM product as p, user as u WHERE u.user_id = p.user_id AND p.id = $data";
				return keyValueResults($sql);
				break;
			case 'userReviews':
				$sql = "SELECT r.*, u.profile_picture FROM reviews as r, user as u WHERE r.reviewer_id = u.user_id and r.user_id = $data ORDER BY review_id DESC";
				return arrResults($sql);
				break;
			case 'userProducts':
				$sql = "SELECT * FROM product WHERE sold != 1 AND user_id = $data LIMIT 10";
				return arrResults($sql);
				break;
			case 'soldProducts':
				$sql = "SELECT * FROM product WHERE sold = 1 AND user_id = $data LIMIT 10";
				return arrResults($sql);
				break;
			case 'search':
				$sql = "SELECT * FROM product WHERE sold != 1 AND prod_name LIKE '%$data%' ORDER BY id DESC LIMIT 10";
				return arrResults($sql);
				break;
			case 'categoryProducts':
				$sql = "SELECT DISTINCT p.* FROM product AS p, category AS c, product_category AS pc WHERE p.id = pc.product_id AND c.cat_name = pc.category_name AND p.sold != 1 AND c.cat_name = '$data' OR c.parent_name = '$data' ORDER BY p.id DESC LIMIT 10";
				return arrResults($sql);
				break;
			default:
				break;
		}

	}

	function arrResults($statement){
		include 'dbConnect.php';

		$con = dbConnect();
		$sql = $statement;
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

	function keyValueResults($statement){
		include 'dbConnect.php';

		$con = dbConnect();
		$sql = $statement;
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
      				'user_id' => $row['user_id'],
      				'featured_img' => $row['featured_image']
				);
			}
			return $arr;
		}
	}

	function getProfilePicture($userId){
		include 'dbConnect.php';
		$userTable = 'user';

		$con = dbConnect();
		$sql = "SELECT profile_picture FROM $userTable WHERE user_id = $userId";
		$result = mysqli_query($con,$sql);

		if($result){
			while($row = mysqli_fetch_array($result)){
				$picture = $row[0];
			}
			echo $picture;
		}
	}

	function rmShoppingCart($prod_id){
		include 'dbConnect.php';
		session_start();
		$prodOrders = 'product_orders';
		$cartId = $_SESSION['shoppingCartId'];

		$con = dbConnect();
		$sql = "DELETE FROM $prodOrders WHERE order_id = $cartId and product_id = $prod_id";
		$result = mysqli_query($con,$sql);

		if($result){
			echo 1;
		}
		else {
			echo 0;
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
      				'user_id' => $row['user_id'],
      				'featured_img'=> $row['featured_image']
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
      				'user_id' => $row['user_id'],
      				'featured_img'=> $row['featured_image']
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
      				'user_id' => $row['user_id'],
      				'featured_img'=> $row['featured_image']
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
      				'user_id' => $row['user_id'],
      				'featured_img'=> $row['featured_image']
   				);
			}
			echo json_encode($arr);
		}

	}

	ob_end_flush();

?>