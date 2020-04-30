<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VMS DELIVERY SYSTEM</title>
    </head>
    <body>
        <h1>USER LOGIN</h1>
        <BR>
        <form name="form2" action="user1.jsp" method="post">
           <div>
                <label>USERNAME</label>
                <input type="text" class="form-control" name="username" >
            </div>
           
           
            <div>
                <label>PASSWORD</label>
                <input type="password" class="form-control" name="password">
            </div>
            <div>
                <br>
                <button name="submit" onclick="user1.jsp" value="admin" class="btn">LOGIN</button>
                <a href="signup.jsp">if u are a new user</a>
            </div>
        </form>
    </body>
</html>