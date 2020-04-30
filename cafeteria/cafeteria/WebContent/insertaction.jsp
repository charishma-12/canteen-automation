<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<center><h1>MENU</h1></center>
<BR><br>
<h2><u>Select Items:</u></h2>
<br><br>
<form ACTION="insertaction.jsp">
<input type="checkbox" name="id" value="veg Burger">veg Burger <BR>
<input type="checkbox" name="id" value="chicken Burger">chicken Burger<BR>
<input type="checkbox" name="id" value="french fries"> french fries<BR>
<input type="checkbox" name="id" value="sandwich">sandwich<BR>
<input type="checkbox" name="id" value="pastry"> pastry <BR>
<input type="submit" value="ADD">
<br><br>
</form>
<%

String select[] = request.getParameterValues("id"); 

if (select != null && select.length != 0) {
	int count=0;
for (int i = 0; i < select.length; i++) {
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cafeteria","root","");
		PreparedStatement ps=con.prepareStatement("insert into menu values('"+select[i]+"',now())");
		int j=ps.executeUpdate();
		if(j>0) {
			//session.setAttribute("key",s);
			count++;
			
		}
		else{
			response.sendRedirect("index.jsp");
		}
	} 
	catch (Exception e) {
		e.printStackTrace();
	}
}
if(count>0){
	
}
}
else{
	out.println("Items are not selected");
	out.println("Please Select Items");
}
%>
<form action="index.jsp">
<input type="submit" value="logout">
</form>
</html>