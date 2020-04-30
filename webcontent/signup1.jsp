<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>

body{
background-color:cyan;
}
</style>
</head>
<body>
<%@page import="java.sql.*" %>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%
int uid=Integer.valueOf(request.getParameter("uid"));
String uname=request.getParameter("uname");
String email=request.getParameter("email");
String phoneno=request.getParameter("phoneno");
String dob=request.getParameter("dob");
String password=request.getParameter("password");

try{
Class.forName("com.mysql.jdbc.Driver");
Connection
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/movie_booking","root","");
Statement st=con.createStatement();
Statement st1=con.createStatement();
st.executeUpdate("insert into customer(uid,uname,email,phoneno,dob,password)values('"+uid+"','"+uname+"','"+email+"','"+phoneno+"','"+dob+"','"+password+"')");
out.println(" SIGNUP SUCCESSFULLY !!...");
st1.executeUpdate("insert into user(username,password)values('"+uname+"','"+password+"')");
}catch(Exception e){out.println(e);}%>
<a href url="admindashboard.jsp">CLICK HERE</a>

</body>
</html>
