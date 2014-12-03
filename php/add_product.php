<?php
	session_start();
	include 'dbConnect.php';
	$userId = $_SESSION['usrId'];
	$prodTable = 'product';

	$title = $_POST['title'];
	$price = $_POST['price'];
	$description = $_POST['desc'];
	$category = $_POST['category'];

	if(isset($_POST['submit'])){
		echo $_FILES['featured-pic']['name'];
		echo "</br>";
		echo $_FILES['featured-pic']['type'];
		echo "</br>";
		$validextensions = array("jpeg", "jpg", "png", "JPG", "JPEG");
		$temporary = explode(".", $_FILES["featured-pic"]["name"]);
		$file_extension = end($temporary);
		//Approx. 100kb files can be uploaded.
		//Chown to allow the file to be written to that directory
		if ((($_FILES["featured-pic"]["type"] == "image/png") || ($_FILES["featured-pic"]["type"] == "image/jpeg") || ($_FILES["featured-pic"]["type"] == "image/jpeg")) && in_array($file_extension, $validextensions)) {
			if ($_FILES["featured-pic"]["error"] > 0) {
				echo "Return Code: " . $_FILES["featured-pic"]["error"] . "<br/><br/>";
			} 
			else {
				echo "<span>Your File Uploaded Succesfully...!!</span><br/>";
				echo "<br/><b>File Name:</b> " . $_FILES["featured-pic"]["name"] . "<br>";
				echo "<b>Type:</b> " . $_FILES["featured-pic"]["type"] . "<br>";
				echo "<b>Size:</b> " . ($_FILES["featured-pic"]["size"] / 1024) . " kB<br>";
				echo "<b>Temp file:</b> " . $_FILES["featured-pic"]["tmp_name"] . "<br>";
			}
			if (file_exists("upload/" . $_FILES["featured-pic"]["name"])) {
				echo $_FILES["featured-pic"]["name"] . " <b>already exists.</b> ";
			} 
			else {
				move_uploaded_file($_FILES["featured-pic"]["tmp_name"], "upload/" . $_FILES["featured-pic"]["name"]);
				echo "<b>Stored in:</b> " . "upload/" . $_FILES["featured-pic"]["name"];
			}
		}
		else {
			echo "<span>***Invalid file Size or Type***<span>";
			echo "</br>";
		}
	}

	echo $title;
	echo "</br>";
	echo $price;
	echo "</br>";
	echo $description;
	echo "</br>";
	echo $category;
	echo "</br>";
	echo $userId;
	echo "</br>";
?>