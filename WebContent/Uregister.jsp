<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="java.sql.*" %>
    <%@ page import="com.charging.station.finder.Dbconnection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User - Register</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat&family=Poppins:ital,wght@0,
100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
<style>
    body {
      background: #1f2b37;
      color: white;
      font-family: "Poppins", "Montserrat", "Segoe UI";
      display: flex;
      height: 90vh;
      justify-content: center;
      align-items: center;
      font-size: 16px;
      margin: 0;
    }
    .Login {
      background-color: #1a222d;
      padding: 25px 30px;
      font-size: 18px;
      border-radius: 10px;
      width: 90%;
      max-width: 400px;
    }
    label {
      display: block;
      margin-top: 20px;
      margin-bottom: 8px;
      font-weight: 500;
    }
    input {
      display: block;
      padding: 12px;
      border-radius: 10px;
      border: none;
      outline: none;
      background-color: #3a47548a;
      color: white;
      width:360px;
      font-size: 16px;
      margin-bottom: 10px;
    }
    button {
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 14px;
      padding: 10px 25px;
      border: none;
      background: #28748bad;
      border-radius: 25px;
      margin: 20px auto 20px;
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
    margin-top:0px;
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
  
.icon-label {
  display: flex;
  align-items: center;
  gap: 10px;
  margin-top: 20px;
  font-weight: 500;
}
.icon-label img {
  display: inline-block;
  vertical-align: middle;
}

</style>
</head>
<body>
<form action="Uregister.jsp" class="Login">
<center><h2>Register Here</h2></center>
<label class="icon-label">
  <img src="images/user.png" width="30" height="30">
  <span>Enter your Name :</span>
</label>
<input type="text" name="name" placeholder="name here">

<label class="icon-label">
  <img src="images/gmail.png" width="30" height="30">
  <span>Enter your Email :</span>
</label>
<input type="text" name="email" placeholder="email here">

<label class="icon-label">
  <img src="images/mob.png" width="30" height="30">
  <span>Enter your Mobile No  :</span>
</label>
<input type="text" name="mob" placeholder="mobile no here">

<label class="icon-label">
  <img src="images/pass.png" width="30" height="30">
  <span>Enter your Password  :</span>
</label>
<input type="password" name="pass" placeholder="password here">

<label class="icon-label">
  <img src="images/longitude.png" width="30" height="30">
  <span>Enter your City  :</span>
</label>
<input type="text" name="city" placeholder="city here">

<button type="submit">Register</button>
</form>
<%
int id=0;
String name=request.getParameter("name");
String email=request.getParameter("email");
String mob=request.getParameter("mob");
String pass=request.getParameter("pass");
String city=request.getParameter("city");
Connection con=Dbconnection.connect();
try{

	PreparedStatement pstmt=con.prepareStatement("insert into user values (?,?,?,?,?,?)");
	pstmt.setInt(1,id);
	pstmt.setString(2,name);
	pstmt.setString(3,email);
	pstmt.setString(4,mob);
	pstmt.setString(5,pass);
	pstmt.setString(6,city);
	int i=pstmt.executeUpdate();
	if(i>0){
		response.sendRedirect("viewDash.jsp");
	}
	
}catch(Exception e){
	e.printStackTrace();
}
%>
<div class="log">
  <a href="index.jsp" class="back-btn">
    <img src="images/back.png" alt="Back" width="20" height="20">
    <span>Back</span>
  </a>
</div>
</body>
</html>