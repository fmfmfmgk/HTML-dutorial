<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.PreparedStatement" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#id2{
	color: red;
}
#id1{
	color: blue;
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
	String sql = "SELECT MEM_ID FROM MEMBER WHERE MEM_ID = ?"; 
	
	ps = conn.prepareStatement(sql);
	ps.setString(1, userId);
	
	//실행
	rs = ps.executeQuery();
	//실행결과 비교하기 - 사용가능 불가능 


	if(rs.next()){   %>     
	 <span id="id1"><%=userId%></span>는 사용 <span id="id2">불가능</span> 입니다.
<%	}else{                %>
	 <span id="id1"><%=userId%></span>는 사용  <span id="id2">가능</span> 입니다.
<%  }                     %>



</body>
</html>