<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login?!</title>
</head>
<body>
<h1>CustomerLogin</h1>
<%
String s=request.getParameter("rno");
String pswd=request.getParameter("upwd");
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cafeteria","root","");
	PreparedStatement ps=con.prepareStatement("Select * from user where regno='"+s+"' and pwd='"+pswd+"'");
	ResultSet rs=ps.executeQuery();
	if(rs.next()) {
		session.setAttribute("key",s);
		response.sendRedirect("menu.jsp");
		
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
