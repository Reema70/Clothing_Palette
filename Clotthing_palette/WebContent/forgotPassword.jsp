<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
     <form action="forgotPasswordAction.jsp " method="post">
     <input type="email" name="email" placeholder="Enter Email" required>
     <input type="number" name="mobileNumber" placeholder=" Enter Mobile Number" required>
     <select name="securityQuestion">
     <option value="What is your favorite book">What is your favorite book</option>
     <option value="What is your first car">What is your first car</option>
     <option value="What is your favorite dish">What is your favorite dish</option>
      </select>
      <input type="text" name="answer" placeholder="Enter Answer" required>
      <input type="password" name="newPassword" placeholder="Enter your new password to set" required>
      <input type="submit" value="save">
     </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
 <%
 String msg=request.getParameter("msg");
 if("done".equals(msg))
 {
 %>
   
<h1>Password Changed Successfully!</h1>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>
    <h2></h2>
    <p></p>
  </div>
</div>
</body>
</html>