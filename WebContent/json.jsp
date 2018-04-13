<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		var j = "{'id':1,'name':'zhansan','age':18}";
		
		var jarray = [
				{'id':1,'name':'zhansan','age':18},
				{'id':2,'name':'lucy','age':19},
				{'id':3,'name':'lily','age':17},
				{'id':4,'name':'lilei','age':20}
		];
		
		var str = "["+
				"{'id':1,'name':'zhansan','age':18},"+
				"{'id':2,'name':'lucy','age':19},"+
				"{'id':3,'name':'lily','age':17},"+
				"{'id':4,'name':'lilei','age':20}"+
		"]";
		
		/* //将字符串转化为js可以误识别的表达式 */
		j = "("+j+")";
		j = eval(j);
		str = eval(str);
		for(var i=0; i<str.length;i++){
			document.write(str[i].id+"---");
			document.write(str[i].name+"---");
			document.write(str[i].age+"<br>");
		}
		//var i = j.id;
		/* alert(i);
		alert(j.name);
		alert(j.age); */
		
	</script>
</body>
</html>