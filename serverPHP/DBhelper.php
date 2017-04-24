<?php 
	// include "Model/Message.php";
	function connect(){
		//配置数据库信息
		$servername = "127.0.0.1";
        $username = "root";
        $password = "";
        $dbname = 'no1cookmenu'; 
        //连接数据库
        $con = new mysqli($servername,$username,$password,$dbname);
        $con->query("set names utf8"); //设置编码为utf8 显示中文
        //判断是否连接成功
        if($con->connect_error){
        	//连接失败
        	echo "连接数据库失败：" . $con->connect_error;
        	return null;
        }
        //连接成功
        return $con;
	}

	//执行查询数据方法
	function inquiry($sql){
		//实例化数据对象
		// $sqldata = new SqlData();
		//调用连接数据库方法，获取数据库对象
		$con = connect();
		if(!$con->connect_error){
			//定义装查询结果的数组
			$arr = array();
			//连接成功，执行查询语句
			$res = $con->query($sql);
			
			if($res->num_rows > 0){
				//获取到数据
				while($row = $res->fetch_assoc()){
					//逐行查询获取,放row["img2"];
					// 入结果数组中
					// $sqldata->id = $row["id"];
					// $sqldata->title = $row["title"];
					// $sqldata->new = $row["new"];
					// $sqldata->name = $row["name"];
					// $sqldata->img1 = $row["img1"];
					// $sqldata->img2 = $// $sqldata->img3 = $row["img3"];
					// $sqldata->text = $row["text"];
					// $sqldata->username = $row["username"];
					// $sqldata->comment = $row["comment"];
					// $sqldata->good = $row["good"];
					// array_push($arr,$sqldata);

					array_push($arr,$row);
				}
			}else{
				array_push($arr,"NULL DATA");
			}
		}else{
			echo "连接数据库失败";
		}
		//关闭连接
		$con->close();
		//返回结果数组
		return $arr;
	}
	//执行逻辑语句（改动数据）
	function excute($sql){
		$con = connect();
		if($con->connect_error){
			$res = $con->query($sql);
			$con->close();
			return $res;
		} 
	}
 ?>