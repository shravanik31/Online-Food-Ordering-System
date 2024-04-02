<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
body
{
 background-image: url("https://fairwaysatbeylea.com/wp-content/uploads/2015/02/Ordering-Food-Online.jpg");
 background-repeat: no-repeat;
background-size: 700px 500px;
background-position:center;
padding-top: 50px;
  padding-right: 30px;
  padding-bottom: 50px;
  padding-left: 30px;
}
form
{
font-weight:bold;
font-family:Comic Sans MS;
font-size:24;
color: #4ABDAC;
}

.b{
background-color:#F7B733;
border-color:#DFDCE3;
width:200px;
height: 40px;
font-weight:bold;
font-family:Comic Sans MS;
font-size:24;
color:white;

}
.b:hover {
  background-color: #FC4A1A;
  color: white;
}
.hi{
height: 30px;
width: 100 px;

}


</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>FOS</title>
</head>
<body>


<h1><font face="Broadway" size="60" color="#FC4A1A">LOGIN </font></h1>

<form action="login.jsp" method="post">

Username :&nbsp<input type="text" class="hi" name="username" required>
<br />
&nbspPassword :&nbsp<input type="password"  class="hi" name="password" required>
<br />
<br />
<input type="submit" class="b" value="LOGIN" width="60" height="40">

</form>

</body>
</html>