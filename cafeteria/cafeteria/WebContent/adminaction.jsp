<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>WelcomeAdmin</title>
</head>
<body>
<h1>AdminLogin</h1>
<%
String s=request.getParameter("ano");
String pswd=request.getParameter("apwd");
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cafeteria","root","");
	PreparedStatement ps=con.prepareStatement("Select * from admin where id='"+s+"' and password='"+pswd+"'");
	ResultSet rs=ps.executeQuery();
	if(rs.next()) {
		session.setAttribute("key",s);
		response.sendRedirect("insertaction.jsp");
	}
	else{
		response.sendRedirect("index.jsp");
	}
} catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}

%>
</body>
</html>
