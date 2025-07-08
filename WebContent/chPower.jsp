<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.sql.*" %>
    <%@ page import="com.charging.station.finder.Dbconnection" %>
     <%@ page import="com.charging.station.finder.GetSet" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat&family=Poppins:ital,wght@0,
100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
<title>Charging Station - Power</title>
<style>
body{
background: #1f2b37;
color: white;
font-family:"Poppins","Montserrat","Seoge UI";
  display: flex;
	  height:90vh;
	  justify-content: center;
	  align-items: center;
	  font-size:16px;
   }
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
<form action="chPower.jsp" class="Login">
<center><h2>Update Power Consumption</h2></center>
<%
String mob=GetSet.getMobile();
String pass=GetSet.getPassword();
if(mob!=null && pass!=null){
	Connection con=Dbconnection.connect();
	try{
	PreparedStatement pstmt=con.prepareStatement("Select power from register where mobile=? and password=?");
	pstmt.setString(1,mob);
	pstmt.setString(2,pass);
	ResultSet rs=pstmt.executeQuery();
	while(rs.next()){

%>
<div>Total Power : <%= rs.getInt("power") %></div>

<%

}
	}catch(Exception e){
		e.printStackTrace();
	}
}



%>

<br>
<label>Enter power remaining :</label><br><br>
<input type="number" name="power"><br><br>
<center><button type="submit">Update</button></center><br>


<%
String pow=request.getParameter("power");
if(pow!=null){
	Connection con=Dbconnection.connect();
	int power=Integer.parseInt(pow);
	try{
		PreparedStatement pstmt=con.prepareStatement("update register set power=? where mobile=? and password=?");
		pstmt.setInt(1,power);
		pstmt.setString(2,mob);
		pstmt.setString(3,pass);
		int i=pstmt.executeUpdate();
		if(i>0){
			out.println("Updated Successfully !!");
		}
	}catch(Exception e){
		e.printStackTrace();
	}

}

%>

</form>
<div class="log">
  <a href="chDashboard.jsp" class="back-btn">
    <img src="images/back.png" alt="Back" width="20" height="20">
    <span>Back</span>
  </a>
</div>	
</body>
</html>