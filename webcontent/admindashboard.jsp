<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<b><h1>PVR CINIMAS</h1></b>
<style>

body{
     background-color:black;background-image: url("ss1.jpg");
background-repeat:no-repeat;
background-position:center;
background-size:100%;
height:100%;
}
h1
{
color:white;
font-family:ALGERIAN;
}
head
{color: white;
}

.di a:link {
  background-color: #001f3f;
  color: white;
  padding: 14px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

.di a:hover, a:active {
  background-color: #FF4136;
}
section
{
height:95%;
}
footer
{
width:25%;
}
</style>
</head>
<body bgcolor="aqua">
<section>
<center>
<div class="di">
<br>
<br>
<br>
<a href="addmovie.jsp" target="_blank">ADD MOVIE</a><br><br>
<a href="deletemovie.jsp" target="_blank">DELETE MOVIE</a><br><br>
<a href="updatemovie.jsp" target="_blank">UPDATE MOVIE</a><br><br>
<a href="bookingview.jsp" target="_blank">VIEW BOOKINGS</a><br><br>
<a href="logout.jsp" target="_blank">LOGOUT</a><br><br>

 </div>
</center>
</section>

</body>
</html>