<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.sql.*" %>
    <%@ page import="com.charging.station.finder.Dbconnection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Charging Station - District</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat&family=Poppins:ital,wght@0,
100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
<style>
body{
background: #1f2b37;
color: white;
font-family:"Poppins","Montserrat","Seoge UI";
  display: flex;
  flex-direction:column;
	  height:90vh;
	  
	  align-items: center;
   }
table{
font-size:18px;
padding:3px;}
table th,td{
padding: 8px;}

.Login{
background-color:#1a222d;
padding:15px 30px;
font-size:18px;
border-radius:10px;
}
input{
	 padding:12px;
	 border-radius:10px;
	border: none;
      outline: none;
	 background-color:#3a47548a;
	 color:white;
	 border:none;
	 width:160px;
	 font-size:16px;
}
button {
  display: flex;
  align-items: center;
  font-size: 14px;
  padding-inline: 25px;
  padding-block: 10px;
  border: none;
  background:#28748bad;
  border-radius: 25px;
  margin: 5px;
  color: white;
  transition: transform 0.3s ease, box-shadow 0.3s ease;
  box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2); 
}

button:hover {
  cursor: pointer;
  background: #07c0f5;
  transform: translateY(-3px); 
  box-shadow: 0 6px 16px rgba(0, 255, 255, 0.4); 
}
h3{
margin-top:0px;
    color: #00ffd5;}
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
</style>
</head>
<body>
<form action="chDistrict.jsp" class="Login">
<center><h3>View by District</h3></center>
<label>Enter District Name to view Charging Stations :</label>
<input type="text" name="district" placeholder="District name here">
<center><button type="submit">View</button></center>
</form>
<%
Connection con=Dbconnection.connect();
String district=request.getParameter("district");
if(district != null ) {
try{
PreparedStatement pstmt=con.prepareStatement("select * from register where district=?");
pstmt.setString(1,district);
ResultSet rs=pstmt.executeQuery();
%>
<center>
<h2>All Details</h2>
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
</tr>
<% }
	}catch(Exception e){
		e.printStackTrace();
	}
}
%>
</table>
</center>
<%
    String role = request.getParameter("role");
 	String backUrl="index.jsp";

    if ("user".equals(role)) {
        backUrl = "viewDash.jsp";
    } else if ("station".equals(role)) {
        backUrl = "chDashboard.jsp";
    }
%>

<div class="log">
  <a href="<%=backUrl%>" class="back-btn">
    <img src="images/back.png" alt="Back" width="20" height="20">
    <span>Back</span>
  </a>
</div>	
</body>
</html>