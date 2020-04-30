<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
{box-sizing: border-box}
.container {
  padding: 16px;
}

/* Full-width input fields */
input[type=text], input[type=password] 
{
  padding: 7px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}
body{
     background-color:black;background-image: url("ss4.jpg");
background-repeat:no-repeat;
background-position:center;
background-size:100%;
height:100%;
}
input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}


.registerbtn:hover {
  opacity:1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}
body{
     background-color:black;background-image: url("ss12.jpg");
background-repeat:no-repeat;
background-position:center;
background-size:100%;
height:100%;
}
</style>
</head>

<body>
  <h3>MOVIES CURRENTLY RUNNING</h3>
  <ul>
  <li>1.BAHUBALI</li>
  <li>2.DARBAR</li>
  <li>3.FROZEN2</li>
  </ul>
  <form action="viewrate.jsp" method="post" name="StudentRegistration" onsubmit="return(validate());">
<table cellpadding="5" width="50%" height:"100%" bgcolor="99FFFF" align="center"
cellspacing="2">
<div class="container">
<tr>
<td colspan=2>
<center><font size=4><b>MOVIE booking Form</b></font></center>
</td>
</tr>
<tr>
<td>MOVIE NAME</td>
<td><select name="mname">
<option value="bahubali">BAHUBALI</option>
<option value="darbar">DARBAR</option>
<option value="frozen">FROZEN</option>
</select></td>
</tr>

<tr><td>MOVIE TIMING</td>
<td><select name="showtiming">
<option value="6.00">6.00</option>
<option value="15.00">15.00</option>
<option value="9.00">9.00</option>
</select></td>
</tr>

<tr><td> SEAT</td>
<td><input type="text" name="seat" id="seat" size="30"></td>
</tr>


<td><input type="reset"></td>
<td colspan="2"><input type="submit" value="book" /></td>
</tr>
</div>
</table>
</form>
  
</div>
</body>
</html>