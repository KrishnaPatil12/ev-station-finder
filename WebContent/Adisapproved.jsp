<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ page import="java.sql.*" %>
    <%@ page import="com.charging.station.finder.Dbconnection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin - Approved all</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat&family=Poppins:ital,wght@0,
100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
<style>
body{
background: #1f2b37;
color: white;
font-family:"Poppins","Montserrat","Seoge UI";}
table{
font-size:18px;
padding:4px;}
table th,td{
padding:4px;}
a{
text-decoration:none;
color:#6ac2e9;
}
h2 {
      color: #00ffd5;
      margin-bottom: 25px;
      font-size: 28px;
    }
      .log {
  position: fixed;
  bottom: 30px;
  right: 30px;
}

.back-btn {
  display: flex;
  align-items: center;
  gap: 10px;
  background-color: #1a222d;
  color: #00f3ff;
  text-decoration: none;
  padding: 12px 20px;
  border-radius: 12px;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.back-btn:hover {
  transform: translateY(-6px);
  box-shadow: 0 4px 12px rgba(0, 255, 255, 0.4);
}

.back-btn img {
  display: inline-block;
}
button {
  font-family: "Poppins", sans-serif;
  border: none;
  color: white;
  font-size: 18px;
  background-color:#8f3d3d;
  padding: 8px 8px;
  border-radius: 10px;
  display: flex;
  justify-content: center;
  align-items: center;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

button:hover {
  transform: translateY(-5px);
  box-shadow: 0 8px 12px rgba(0, 255, 255, 0.4);
}
 
</style>
</head>
<body>
<%
Connection con=Dbconnection.connect();
try{
	PreparedStatement pstmt=con.prepareStatement("select * from register");
	ResultSet rs=pstmt.executeQuery();
	
%>
<center><h2>All Charging Stations</h2></center>
<center>
<table border="1">
<tr>
	<th>Id </th>
	<th>Station_name</th>
	<th>Address</th>
	<th>City</th>
	<th>Taluka</th>
	<th>District</th>
	<th>Open_time</th>
	<th>Close_time</th>
	<th>Mobile</th>
	<th>Latitude</th>
	<th>Longitude</th>
	<th>Password</th>
	<th>Power</th>
	<th>Status</th>
	<th>Disapprove</th>
</tr>
<% while(rs.next()){ %>

<tr>
<td> <%= rs.getInt(1) %> </td>
<td> <%= rs.getString(2)%> </td>
<td> <%= rs.getString(3) %> </td>
<td> <%= rs.getString(4) %> </td>
<td> <%= rs.getString(5)%> </td>
<td> <%= rs.getString(6) %> </td>
<td> <%= rs.getString(7) %> </td>
<td> <%= rs.getString(8)%> </td>
<td> <%= rs.getString(9) %> </td>
<td> <%= rs.getDouble(10) %> </td>
<td> <%= rs.getDouble(11)%> </td>
<td> <%= rs.getString(12) %> </td>
<td> <%= rs.getInt(13) %> </td>
<td> <%= rs.getString(14)%> </td>
<td><a href="disapproved.jsp?id=<%=rs.getInt(1)%>">
<button>Disapprove</button></a></td>
</tr>
<% }
	}catch(Exception e){
		e.printStackTrace();
	}
%>
</table>
</center>
<div class="log">
  <a href="Adashboard.jsp" class="back-btn">
    <img src="images/back.png" alt="Back" width="20" height="20">
    <span>Back</span>
  </a>
</div>
</body>
</html>