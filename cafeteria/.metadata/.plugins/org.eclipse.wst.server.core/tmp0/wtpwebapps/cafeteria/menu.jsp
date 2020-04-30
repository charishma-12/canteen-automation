<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TODAY'S Menu</title>
</head>
<body>
<center><h1><u>Todays Menu</u></h1></center>

<%
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cafeteria","root","");
	PreparedStatement ps=con.prepareStatement(" select * from menu");
	ResultSet rs=ps.executeQuery();
	while(rs.next()) {
		//session.setAttribute("key",s);
		//String s=rs.getString("item");
		%>
		<%=rs.getString("item")%><br><br>
		<%
		
	}
	out.println();
} 
catch (Exception e) {
	e.printStackTrace();
}
%>
<form action="index.jsp">
<input type="submit" value="logout">
</form>
</body>
</html>