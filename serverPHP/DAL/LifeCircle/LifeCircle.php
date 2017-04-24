<?php 
	include '../../dbhelper2.php';
	// include '../../Model/Message.php';
	function LifeCircle(){
		$sql = "select * from LifeCircle";
		//向数据库查询数据
		$result = inquiry($sql);
		if(count($result) > 0){
			//获取数据成功
			// $message = new Message(true,"success",$result);

			// $mes = message(true,"success",$result);
			$mes = array(true,"success",$result);
			return $mes;
		}else{
			//获取数据失败
			// $message = new Message(false,"fail",$result);
			
			// $mes = message(true,"success",$result);
			$mes = array(true,"fail",$result);
			return $mes;
		}
	}
 ?>