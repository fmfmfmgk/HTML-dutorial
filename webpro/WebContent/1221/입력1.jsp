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
	String userPass = request.getParameter("pass");
	String userName = request.getParameter("name");

	//db와 연결 - 해당하는 데이터가 있는지 
	//검색, 삭제, 수정, 추가
	
	//db수행결과를 가지고 응답페이지를 생성
	
%>

<table border="1">
	<tr>
		<td>아이디</td>
		<td>비밀번호</td>
		<td>이름</td>
	</tr>

	<tr>
		<td><%=userId %></td>
		<td><%=userPass %></td>
		<td><%=userName %></td>
	</tr>

</table>

</body>
</html>







