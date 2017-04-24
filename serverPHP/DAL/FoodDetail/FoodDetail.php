<?php
	include '../../dbhelper2.php';

	function FoodDetail(){
		$sql = "select * from FoodDetail";

		$result = inquiry($sql);
		if(count($result) > 0){
			$mes = array(true,"success",$result);
			return $mes;
		}else{
			$mes = array(true,"fail",$result);
			return $mes;
		}
	}
?>
