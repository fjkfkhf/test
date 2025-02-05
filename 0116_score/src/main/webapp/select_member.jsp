<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
import= "java.sql.*"
import= "DBPKG.Util"
%>

<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css">
<meta charset="UTF-8">
<title>학생 조회</title>
</head>
<body>
	 <header><jsp:include page="header.jsp"></jsp:include></header>
	 <nav><jsp:include page="nav.jsp"></jsp:include></nav>
	 <section>
		<h3>학생 조회</h3>
		<table border="1">
			<tr><td>학번</td><td>이름</td><td>학년</td><td>반</td><td>번호</td><td>성별</td></tr>
			
<%
	Connection conn = null;
	Statement stmt = null;
	
	try {
		conn = Util.getConnection();
		stmt = conn.createStatement();
		
		String sql = "SELECT id, " + 
					       "name, " +
					       "SUBSTR(id, 1, 1) AS year, " +
					       "SUBSTR(id, 2, 2) AS class, " +
					       "SUBSTR(id, 4, 2) AS num, " + 
					       "gender " +
					 "FROM member_tbl";
		
		ResultSet rs = stmt.executeQuery(sql);
		while(rs.next()) {
%>
	<tr>
		<td><%= rs.getString("id") %></td>
		<td><%= rs.getString("name") %></td>
		<td><%= rs.getString("year") %></td>
		<td><%= rs.getString("class") %></td>
		<td><%= rs.getString("num") %></td>
		<td><%= rs.getString("gender") %></td>
	</tr>
<%
		}
	} catch(Exception e) {
		e.printStackTrace();
	}
%>
		</table>
	 </section>
	 <footer><jsp:include page="footer.jsp"></jsp:include></footer>
</body>
</html>