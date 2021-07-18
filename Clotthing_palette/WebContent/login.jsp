
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Login</title>
</head>
<body>
<div id='container'> 

  <div class='signup'>
  <h2>LOGIN</h2>
     <form action="loginAction.jsp" method="post">
     <input type="email" name="email" placeholder="Enter Email" required>
     <input type="password" name="password" placeholder="Enter Password" required>
     <input type="submit" value="Login">
     </form>
      <a style="color:black;" href="signup.jsp">SignUp</a>
      <a style="color:black;" href="forgotPassword.jsp">Forgot Password?</a>
  </div>
  <div>
  <%
  String msg=request.getParameter("msg");
  if("notexist".equals(msg))
  {	  
  %>
  <h1>Incorrect user name or Password</h1>
<%}%>
<% if("invalid".equals(msg))
{%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>


  </div>
</div>

</body>
</html>