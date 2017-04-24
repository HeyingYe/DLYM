<?php
	
	header('Access-Control-Allow-Origin:*');
	class Food{
		public $foodId;
		public $foodName;
		public $foodDescribe;
		public $foodTime;
		public $foodUserIcon;
		public $foodUserName;
		public $foodImg;
	}
	
	$con = new mysqli('127.0.0.1','root','','no1cookmenu');
	$con -> query("set names utf8");
	
	$sql = 'select * from indexFood limit 0,5';
	$res = $con -> query($sql);
	$arr = array();
	if($res->num_rows > 0){
		while($row = $res->fetch_assoc()){
			$food = new Food();
			$food->foodId = $row["foodId"];
			$food->foodName = $row["foodName"];
			$food->foodDescribe = $row["foodDescribe"];
			$food->foodTime = $row["foodTime"];
			$food->foodUserIcon = $row["foodUserIcon"];
			$food->foodUserName = $row["foodUserName"];
			$food->foodImg = $row["foodImg"];
			
			array_push($arr, $food);
		}
		
	}else{
		array_push($arr, "什么都没有");
	}
	
	if(isset($_REQUSET['callback'])){
		$callback = $_REQUSET['callback'];
		$str = json_encode($arr);
		print_r( $callback."('$str')" );
	}else{
//		echo json_encode($arr);
		$str = json_encode($arr);
		print_r( $str);
	}
	
?>