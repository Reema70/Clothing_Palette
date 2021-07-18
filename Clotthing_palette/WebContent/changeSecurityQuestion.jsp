<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="changeDetailsHeader.jsp"%>
<%@include file="footer.jsp"%>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Security Question</title>
</head>
<body background="page3.jsp">
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Your security Question successfully changed !</h3>
<%} %>
<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">Your Password is wrong!</h3>
<%} %>
<form action="changeSecurityquestionAction.jsp" method="post">
<h3>Select Your New Securtiy Question</h3>
<div class="contentcontainer med left" style="margin-left: 650px;">
  <select>
  <option value="What is your favorite book">What is your favorite book.
  <option value="What is your first car">What is your first car.
  <option value="What is your favorite dish">What is your favorite dish.
 
  </select>
   </div>
 <hr>
 <h3></h3>
 <input class="input-style" type="text" name="newAnswer" placeholder="Enter your new answer" required>
<hr>
<h3></h3>
<input class="input-style" type="text" name="password" placeholder="Enter password (for security)" required>
<hr>
<button class="button" type="submit">Save <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</html>