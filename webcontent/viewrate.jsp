<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Login</title>
<style>

body{
background-color:cyan;
}
</style>
</head>

<body>

<%! int dbfprice;
int dbseat;
String dbmname;
String dbshowtiming;
int dbmid;
%>

<%
Connection con= null;

PreparedStatement ps = null;

ResultSet rs = null;
String mname=request.getParameter("mname");
String showtiming=request.getParameter("showtiming");
int seat=Integer.valueOf(request.getParameter("seat"));

String driverName = "com.mysql.jdbc.Driver";

String url = "jdbc:mysql://localhost:3306/movie_booking";

String user = "root";
String users=(String)session.getAttribute("username");
out.println(users);
out.println(users);

String dbpsw = "";

String sql = "select mid,mname,seats,fprice,showtiming from movie where mname=? and showtiming=?";

if((!(mname.equals(null) || mname.equals("")) && !(showtiming.equals(null) || showtiming.equals("")) && !(seat<=0)))

{
	

try{

Class.forName(driverName);

con = DriverManager.getConnection(url, user, dbpsw);

ps = con.prepareStatement(sql);

ps.setString(1, mname);

ps.setString(2, showtiming);

rs = ps.executeQuery();

if(rs.next())

{ 

dbmname = rs.getString("mname");
dbshowtiming=rs.getString("showtiming");
dbseat=rs.getInt("seats");
dbfprice = rs.getInt("fprice"); 
dbmid=rs.getInt("mid");



if(mname.equals(dbmname) && showtiming.equals(dbshowtiming))

{
	
	if(dbseat==0)
	{
		out.println(" seats not available select other timings/movie !!");
		%>
		<center><a href="bookmovie.jsp">BOOK ANOTHER MOVIE</a></center>
<%
	}
	else
	{
out.println(" 	HII THE PRICE TO BE PAID !!");
int amt=seat*dbfprice;
out.println();
out.println(amt);
Statement st=con.createStatement();
st.executeUpdate("insert into bookings3(uname,mname,nos,price,showtiming)values('"+users+"','"+mname+"','"+seat+"','"+amt+"','"+showtiming+"')");
String sql2="Update movie set seats=? where mid="+dbmid;
ps = con.prepareStatement(sql2);
int newseat=dbseat-seat;
ps.setInt(1,newseat);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("");
}
else
{
out.print("There is a problem in Booking.");
}
%>

<center><a href="payment.jsp">DO PAYMENT</a></center>
<%
	}
} 

}

else

response.sendRedirect("error.jsp");

rs.close();

ps.close(); 

}

catch(SQLException sqe)

{

out.println(sqe);

} 

}

else

{

%>

<center><p style="color:red">Error In Login</p></center>

<% 

getServletContext().getRequestDispatcher("/home.jsp").include(request, 
response);

}

%>

</body>

</html>