<?php
	include '../../DAL/FoodDetail/FoodDetail.php';

	$msg = FoodDetail();

	if(isset($_REQUEST['callback'])){

		$callback = $_REQUEST['callback'];

		$str = json_encode($msg);

		print_r( $callback."($str)" );

	}else{
		array_push($msg, "请求失败");

		$str = json_encode($msg);

		print_r( $str );
	}
?>
