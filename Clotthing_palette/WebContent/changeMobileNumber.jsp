<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="changeDetailsHeader.jsp"%>
<%@include file="footer.jsp"%>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Mobile Number</title>
</head>
<body background="page3.jsp">
<%String msg=request.getParameter("msg");
 if("done".equals(msg))
		 {
%>
<h3 class="alert">Your Mobile Number successfully changed!</h3>
<%} %>
<%
if("done".equals(msg))
		 {
%>
<h3 class="alert">Your Password is wrong!</h3>
<%} %>
<form action="changeMobileNumberAction.jsp" method="post">
 <h3></h3>
 <input class="input-style" type="number" name="mobileNumber" placeholder="Enter new mobile Number" required>
 <hr>
<h3></h3>
<input class="input-style" type="password" name="password" placeholder="Enter password" required>
<hr>
 <button class="button" type="submit">Save<i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</html>