<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<script type="text/javascript" src="validate.js"></script>
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
</style>

</head>
<body>
<form action="updatemovie1.jsp" method="post" name="StudentRegistration" onsubmit="return(validate());">
<table cellpadding="5" width="50%" height:"100%" bgcolor="99FFFF" align="center"
cellspacing="2">
<div class="container">
<tr>
<td colspan=2>
<center><font size=4><b>MOVIE update  Form</b></font></center>
</td>
</tr>
<tr>
<td>MOVIE ID</td>
<td><input type="text" name="mid" id="mid" size="30"></td>
</tr>

<tr><td>MOVIE NAME</td>
<td><input type="text" name="mname" id="mname" size="30"></td>
</tr>
<tr><td>MOVIE TIMING</td>
<td><input type="text" name="showtiming" id="showtiming" size="30"></td>
</tr>
<tr><td>MOVIE TIMING</td>
<td><input type="text" name="date" id="date" size="30"></td>
</tr>
<tr><td>AVAILABLE SEATS</td>
<td><input type="text" name="seats" id="seats" size="30"></td>
</tr>
<tr><td>TOTAL SEATS</td>
<td><input type="text" name="totalseats" id="totalseats" size="30"></td>
</tr>
<tr><td>FIRST CLASS PRICE</td>
<td><input type="text" name="fprice" id="fprice" size="30"></td>
</tr>

<tr><td>SECOND CLASS PRICE</td>
<td><input type="text" name="sprice" id="sprice" size="30"></td>
</tr>


<td><input type="reset"></td>
<td colspan="2"><input type="submit" value="update" /></td>
</tr>
</div>
</table>
</form>

<script>
function validate()
{
   if( document.StudentRegistration.regno.value == "" )
   {
     alert( "Please provide your Reg no!" );
     document.StudentRegistration.regno.focus() ;
     return false;
   }
if( document.StudentRegistration.password.value == "" )
{
             alert("Please provide password !");
       
            document.StudentRegistration.password.focus();
            return false;
         } 

   return( true );
}
</script>
</body>
</html>
