<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String email=session.getAttribute("email").toString();
String address=request.getParameter("address");
String city=request.getParameter("city");
String status=request.getParameter("status");
String country=request.getParameter("country");


try
{
	Connection con=ConnectionProvider.getCon();
	   PreparedStatement ps=con.prepareStatement("update users set address=?,city=?,status=?,country=? where email=?");
	   ps.setString(1,address);
	   ps.setString(1,city);
	   ps.setString(1,status);
	   ps.setString(1,country);
	   ps.setString(1,email);
	   ps.executeUpdate();
	   response.sendRedirect("addChangeAddress.jsp?msg=vaild");
	}
catch(Exception e)
{
  System.out.println(e);	
  response.sendRedirect("addChangeAddress.jsp?msg=invaild");
}
%>