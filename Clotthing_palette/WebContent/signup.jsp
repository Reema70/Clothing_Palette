<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body background="page4.jsp">
<div id='container'>
  <div class='signup'>
    <form action="signupAction.jsp" method="post">
    <input type="text" name="name" placeholder="Enter Name" required>
    <input type="email" name="email" placeholder="Enter Email" required>
    <input type="number" name="mobileNumber" placeholder="Enter Mobile Number" required>
    <select name="securityQuestions" required>
    <option value="What is your favorite book">What is your favorite book</option>
    <option value="What is your first car">What is your first car</option>
    <option value="What is your favorite">What is your favorite</option>
     </select>
   <input type="text" name="answer" placeholder="Enter Answer" required>
   <input type="password" name="password" placeholder="Enter password" required>
   <input type="submit" value="signup">
    </form>
      <h2><a href="login">Login</a></h2>
  </div>
  <div class='whysign'>

<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h1>Successfully Registered !</h1>
<%}%>
<%
if("invalid".equals(msg))
{%>
<h1>Something went Wrong! Try Again !</h1>
<%} %>

    
  </div>
</div>

</body>
</html>