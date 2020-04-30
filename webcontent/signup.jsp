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
<form action="signup1.jsp" method="post" name="StudentRegistration" onsubmit="return(validate());">
<table cellpadding="5" width="50%" height:"100%" bgcolor="99FFFF" align="center"
cellspacing="2">
<div class="container">
<tr>
<td colspan=2>
<center><font size=4><b>User register Form</b></font></center>
</td>
</tr>
<tr>
<td>USER ID</td>
<td><input type="text" name="uid" id="uid" size="30"></td>
</tr>

<tr><td>USER NAME</td>
<td><input type="text" name="uname" id="uname" size="30"></td>
</tr>
<tr><td>EMAIL ID</td>
<td><input type="text" name="email" id="email" size="30"></td>
</tr>
<tr><td>PHONE NUMBER</td>
<td><input type="text" name="phoneno" id="phoneno" size="30"></td>
</tr>
<tr><td>DATE OF BIRTH</td>
<td><input type="text" name="dob" id="dob" size="30"></td>
</tr>
<tr><td>PASSWORD</td>
<td><input type="text" name="password" id="password" size="30"></td>
</tr>
<td><input type="reset"></td>
<td colspan="2"><input type="submit" value="SIGNUP" /></td>
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

