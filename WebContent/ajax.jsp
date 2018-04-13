<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<button onclick="sendAjax()">提交</button>
	
	<script>
		function sendAjax(){
			//创建一个XMLHttpRequest对象
			var xhr = new XMLHttpRequest();
			//发送请求
			//第一个参数，提交方式 POST 和 GET
			//第二个参数 请求的路径
			//第三个参数 是否为异步请求 true:异步  false:同步
			xhr.open("POST", "AjaxServlet?username=asf", true);
			xhr.send();
			xhr.onreadystatechange = function (){
				if(xhr.readyState == 4 && xhr.status == 200){
					//接收服务器传递过来的数据
					var data = xhr.responseText;
					//对数据具体的处理
					alert(data);
				}
			};
		}
	</script>
</body>
</html>