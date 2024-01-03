<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

table{
	border: 10px solid skyblue;
	width: 470px;
	border-spacing: 15px;
}
td{
	width: 50px;
	height: 50px;
	text-align: center;
	border-width: 0px 0px 1px 0px;
	border-color: skyblue;
	border-style: solid; 
	/* border-radius: 200px 20px 200px 100px;  */
	padding: 2px;
}
</style>
</head>
<body>

<%
	String dan = request.getParameter("dan");
	
	int dan1 = Integer.parseInt(dan);	

	String str="<table border='1'>";
	String a="<td>*</td>";
	String b="<td>=</td>";
	
	str += "<tr>";
	for(int i=1; i<=9; i++){
		str += "<td>"+dan+"</td>"+a+"<td>"+i+
				"</td>"+b+"<td>"+(dan1*i)+"</td>";
	str += "</tr>";
	}
	str += "</table>";
	
%>

<%=str%>
</body>
</html>