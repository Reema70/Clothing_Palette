<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String email=session.getAttribute("email").toString();
String securityQuestion=request.getParameter("securityQuestion");
String newAnswer=request.getParameter("newAnswer");
String password=request.getParameter("password");
int check=0;
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from user where email='"+email+"' and password='"+password+"'");
	while(rs.next())
	{
		check=1;
		st.executeUpdate("update users set securityQuestion='"+securityQuestion+"',newAnswer='"+newAnswer+"' and password='"+password+"'");
		response.sendRedirect("sequrityQuestion.jsp?msg=done");
		}

	if(check==0)
	{
		response.sendRedirect("sequrityQuestion.jsp?msg=wrong");
	}
}
catch(Exception e)
{
 System.out.println(e);	
}
%>