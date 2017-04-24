<?php 
	// header('Content-type: text/plain');
	include '../../DAL/LifeCircle/LifeCircle.php';
	// print_r("res");
	$msg = LifeCircle();
	// var_dump($msg);
	//跨域处理,判断是否是jsonp的请求
    //isset(var) 判断变量是否被定义
    if(isset($_REQUEST['callback'])){
        // 表示是一个jsonp的请求
        //找到callback 的函数名称
        // echo "回调";
        // echo "<br>";
        $callback = $_REQUEST['callback'];
        //将数组转化为字符串
        $str = json_encode($msg);
        // print_r($str);
        // echo "</br>";
        //调用callback的函数
        print_r( $callback."('$str')");
    }else{
        // echo "不回调";
        array_push($msg, "请求失败");
        $str = json_encode($msg);
        print_r( $str );
    }
 ?>