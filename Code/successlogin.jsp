<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
body{
background-image:url(http://www.baltana.com/files/wallpapers-2/Orange-Powerpoint-Background-Wallpaper-07121.jpg);
}
img {
 
  padding: 5px;
  width: 200px;
  height:200px;
 
}
.pro {
  
  color: #FC4A1A;
  border-radius: 5px;
  padding: 20px;
  font-size: 200%;
 border : 5px double #4ABDAC;
 margin-left: 12cm;
  margin-right: 12cm;
}
.button{
background-color:#F7B733;
color:white;
border-color:#DFDCE3;
padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 24px;
  margin: 4px 2px;
width:200px;

}
.button:hover {
  background-color:#FC4A1A;
  color: #F7B733;
border-color:#F7B733;
}
</style>
</head>
<body>
<center><div class="pro">
		<center> <p>
	<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="loginpage.jsp">Please Login</a>
<%} else {
%>
            <strong>Hi <%=session.getAttribute("userid")%></strong>
           
        </p>
		<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXAv8sNl-3u2aI8-3vkMPLrsLOajMCMUa7xddO2OCsV2iXeWdU">
			<br>
			<a href="C:\Users\cse\Desktop\Web Technologies Project Food Ordering System/cat.html"><button class="button">Confirm</button></center>
	</div><center>
<%
    }
%>
</body>
</html>