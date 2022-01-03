<?php 

date_default_timezone_set("Asia/Jakarta");
error_reporting(0);
 
	$server = "localhost";
	$user = "root";
	$pass = "";
	$database = "db_toko";// nama database anda

	try{
			$config = new PDO("mysql:host=$host;dbname=$dbname;", $user,$pass);
			//echo 'sukses';
	}catch(PDOException $e){
			echo 'Gagal tersambung dengan database.' .$e -> getMessage();
	}

	$view = 'fungsi/view/view.php'; // direktori fungsi select data
 
?>
