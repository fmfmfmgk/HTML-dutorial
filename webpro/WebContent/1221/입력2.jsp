<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
h1{
	color: green;
}
table{
	border: 2px double green;
	margin: 10%;
}
td{
	width: 300px;
	height: 40px;
	text-align: center;
}
</style>
</head>
<body>

<h1>JSP: Java Server Page</h1>
<p>서버내에서 실행되는 프로그램</p>
<p>자바언어를 기술할때는 &lt;% %> 사이에서 기술하고</p>
<p>자바변수를 출력할때는 &lt;%= %> 사이에서 기술한다.</p>

<%
	request.setCharacterEncoding("UTF-8");
	String userId = request.getParameter("id");
	String userName = request.getParameter("name");
	
	String sgend = request.getParameter("gend");
	
	String[] likes = request.getParameterValues("like");
	
	String str ="";
	for(int i=0; i<likes.length; i++){
		str += likes[i] + " ";
	} 
	

%>


<table border="1">
	<tr>
		<td>아이디</td>
		<td>이름</td>
		<td>성별</td>
		<td>좋아하는음식</td>
	</tr>

	<tr>
		<td><%=userId%></td>
		<td><%=userName%></td>
		<td><%=sgend%></td>
		<td><%=str%></td>
	</tr>

</table>




















</body>
</html>