<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/movie_booking";%>
<%!String user = "root";%>
<%!String psw = "";%>
<a href url="admindashboard.jsp">CLICK HERE</a>
<%
int m=Integer.valueOf(request.getParameter("mid"));
String mname=request.getParameter("mname");
String showtiming=request.getParameter("showtiming");
String date=request.getParameter("date");
int seats=Integer.valueOf(request.getParameter("seats"));
int totalseats=Integer.valueOf(request.getParameter("totalseats"));
int fprice=Integer.valueOf(request.getParameter("fprice"));
int  sprice=Integer.valueOf(request.getParameter("sprice"));
if(m != 0)
{
Connection con = null;
PreparedStatement ps = null;
try
{
	Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update movie set mid=?,mname=?,showtiming=?,date=?,seats=?,totalseats=?,fprice=?,sprice=? where mid="+m;
ps = con.prepareStatement(sql);
ps.setInt(1,m);
ps.setString(2,mname);
ps.setString(3, showtiming);
ps.setString(4, date);
ps.setInt(5, seats);
ps.setInt(6, totalseats);
ps.setInt(7, fprice);
ps.setInt(8, sprice);

int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>

