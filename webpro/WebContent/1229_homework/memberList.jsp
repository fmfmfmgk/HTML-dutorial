<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table{
	border: 1px solid skyblue;
}
td{
	width: 150px;
	height: 50px;
	text-align: center;
}
</style>
</head>
<body>
<%!
private Connection conn = null; //연결객체
private ResultSet rs = null;
private PreparedStatement ps = null; //실행객체

private String driver ="oracle.jdbc.driver.OracleDriver";
private String url ="jdbc:oracle:thin:@localhost:1521:xe";
private String user ="HYH93";
private String password ="JAVA";
%>


<%
	//입력한 아이디
	String userId = request.getParameter("id");
	
	//OracleDriver클래스를 로드 시켜야 한다.
	Class.forName(driver);
	
	//연결객체
	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","HYH93","JAVA");
	//쿼리문 작성
	String sql = "SELECT MEM_ID, MEM_NAME, MEM_HP FROM MEMBER"; 
	
	ps = conn.prepareStatement(sql);
	
	
	//실행
	rs = ps.executeQuery();
	//실행결과 비교하기 - 사용가능 불가능 
%> 
<table border="1">
    <tr>
        <th>아이디</th>
        <th>이름</th>
        <th>전화번호</th>
    </tr>
    <% 
    while (rs.next()) {
        String memberId = rs.getString("MEM_ID");
        String memberName = rs.getString("MEM_NAME");
        String memberPhoneNumber = rs.getString("MEM_HP");
    %>
    <tr>
        <td><%= memberId %></td>
        <td><%= memberName %></td>
        <td><%= memberPhoneNumber %></td>
    </tr>
    <% } %>
</table>
</body>
</html>