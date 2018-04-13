<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	省份:<select onChange="selectCity(this.value)">
    	<option value="0">---请选择省份---</option>
        <option value="1">四川省</option>
        <option value="2">陕西省</option>
        <option value="3">广东省</option>
        <option value="4">江西省</option>
    </select>
    城市:<select id="city">
    	
    </select>
    
    <script>
		
    	function selectCity(id){
			var xhr = new XMLHttpRequest();
			xhr.open("POST","AjaxServlet?id="+id,true);
			xhr.send();
			xhr.onreadystatechange = function (){
				if(xhr.readyState == 4 && xhr.status == 200){
					var data = xhr.responseText;
					data = eval(data);
					var citySelect = document.getElementById("city");
					citySelect.length=0;
					for (var i = 0; i < data.length; i++) {
						var opt = document.createElement("option");
						opt.value = data[i].c_id;
						opt.innerHTML = data[i].c_name;
						citySelect.appendChild(opt);
					}
				}
			};
		}
    	
    </script>
</body>
</html>