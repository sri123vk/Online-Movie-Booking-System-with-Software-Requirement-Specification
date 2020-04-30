<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VMS DELIVERY SYSTEM</title>
    </head>
    <body>
        <h1>ADMIN LOGIN</h1>
        <BR>
        <form name="form2" action="admin2.jsp" method="post">
            <div>
                <label>PASSWORD</label>
                <input type="password" class="form-control" name="password" placeholder="password">
            </div>
            <div>
                <br>
                <button name="submit" onclick="admin2.jsp" value="admin" class="btn">LOGIN</button>
                <a href="admin2.jsp">login</a>
            </div>
        </form>
    </body>
</html>
