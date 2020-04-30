<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>registered</title>
</head>
<body>
<%
String reno = request.getParameter("regno");
String nam = request.getParameter("name");
String pas = request.getParameter("pass");
String copas = request.getParameter("confirmpassword");

try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cafeteria","root","");
	if(copas.equals(pas)){
	PreparedStatement ps = con.prepareStatement("insert into user values('"+reno+"','"+nam+"','"+pas+"')");
	int i = ps.executeUpdate();
	if (i>0){
		response.sendRedirect("index.jsp");
	}
	}
	else{
		response.sendRedirect("registration.html");
	}
}
catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}	

%>

</body>
</html>