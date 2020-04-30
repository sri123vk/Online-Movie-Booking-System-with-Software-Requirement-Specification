<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*" %>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%
int m=Integer.valueOf(request.getParameter("mid"));
try{
Class.forName("com.mysql.jdbc.Driver");
Connection
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/movie_booking","root","");
Statement st=con.createStatement();
st.executeUpdate("delete from movie where  mid="+m);
out.println(" MOVIE delete SUCCESSFULLY !!");
}catch(Exception e){out.println(e);}%>
<a href url="admindashboard.jsp">CLICK HERE</a>

</body>
</html>