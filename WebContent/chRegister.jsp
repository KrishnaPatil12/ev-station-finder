<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.sql.*" %>
    <%@ page import="com.charging.station.finder.Dbconnection" %>
     <%@ page import="com.charging.station.finder.GetSet" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Charging Station - Register</title>
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
      margin-top: 70px;
      background-color: #1a222d;
      padding: 20px 30px;
      font-size: 18px;
      border-radius: 13px;
      width: 90%;
      max-width: 600px;
    }

    h2 {
      margin-block-start: 0px;
      color: #00ffd5;
      margin-bottom: 25px;
      font-size: 28px;
    }

    .form-row {
      display: flex;
      align-items: center;
      margin-bottom: 15px;
    }

    .form-row label {
      display: flex;
      align-items: center;
      gap: 10px;
      flex: 0 0 240px;
      font-size: 16px;
    }

    .form-row input {
      flex: 1;
      padding: 10px 15px;
      border-radius: 10px;
      border: none;
      outline: none;
      background-color: #2c3e50;
      color: white;
      font-size: 14px;
    }

    .icon-label img {
      display: inline-block;
      vertical-align: middle;
    }

    button {
      display: flex;
      align-items: center;
      font-size: 14px;
      padding-inline: 25px;
      padding-block: 10px;
      border: none;
      background: #28748bad;
      border-radius: 25px;
      margin: 20px auto;
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
  <form action="chRegister.jsp" class="Login">
    <center><h2>Register Here</h2></center>

    <div class="form-row">
      <label class="icon-label"><img src="images/ev.png" width="30" height="30"> <span>Enter your Station Name:</span></label>
      <input type="text" name="stationName" placeholder="Station Name here">
    </div>

    <div class="form-row">
      <label class="icon-label"><img src="images/add.png" width="32" height="30"> <span>Enter your Address:</span></label>
      <input type="text" name="address" placeholder="Address here">
    </div>

    <div class="form-row">
      <label class="icon-label"><img src="images/longitude.png" width="30" height="30"> <span>Enter City:</span></label>
      <input type="text" name="city" placeholder="City here">
    </div>

    <div class="form-row">
      <label class="icon-label"><img src="images/new.png" width="30" height="30"> <span>Enter Taluka:</span></label>
      <input type="text" name="taluka" placeholder="Taluka here">
    </div>

    <div class="form-row">
      <label class="icon-label"><img src="images/dist.svg" width="30" height="30"> <span>Enter District:</span></label>
      <input type="text" name="district" placeholder="District here">
    </div>

    <div class="form-row">
      <label class="icon-label"><img src="images/time.png" width="30" height="30"> <span>Enter Open time:</span></label>
      <input type="text" name="openTime" placeholder="Opening time here">
    </div>

    <div class="form-row">
      <label class="icon-label"><img src="images/clock2.png" width="30" height="30"> <span>Enter Close time:</span></label>
      <input type="text" name="closeTime" placeholder="Closing time here">
    </div>

    <div class="form-row">
      <label class="icon-label"><img src="images/mob.png" width="30" height="30"> <span>Enter your contact no.:</span></label>
      <input type="text" name="contactNo" placeholder="Contact no. here">
    </div>

    <div class="form-row">
      <label class="icon-label"><img src="images/loc.png" width="30" height="30"> <span>Enter latitude of station:</span></label>
      <input type="text" name="latitude" placeholder="Latitude of station here">
    </div>

    <div class="form-row">
      <label class="icon-label"><img src="images/tal.png" width="30" height="30"> <span>Enter longitude of station:</span></label>
      <input type="text" name="longitude" placeholder="Longitude of station here">
    </div>

    <div class="form-row">
      <label class="icon-label"><img src="images/pass.png" width="30" height="30"> <span>Enter Password:</span></label>
      <input type="password" name="password" placeholder="Password here">
    </div>

    <div class="form-row">
      <label class="icon-label"><img src="images/power.png" width="30" height="30"> <span>Enter power available in station:</span></label>
      <input type="text" name="power" placeholder="Power here">
    </div>
</form>
<%
int id=0;
String stationName=request.getParameter("stationName");
String address=request.getParameter("address");
String city=request.getParameter("city");
String taluka=request.getParameter("taluka");
String district=request.getParameter("district");
String openTime=request.getParameter("openTime");
String closeTime=request.getParameter("closeTime");
String contactNo=request.getParameter("contactNo");
String lat=request.getParameter("latitude");
String lon=request.getParameter("longitude");
String password=request.getParameter("password");
String pow=request.getParameter("power");
String status="Pending";
if(lat!=null && lon!=null && pow!=null){
	Double latitude=Double.parseDouble(lat);
	Double longitude=Double.parseDouble(lon);
	int power=Integer.parseInt(pow);

Connection con=Dbconnection.connect();
try{
	PreparedStatement pstmt=con.prepareStatement("insert into register values (?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
	pstmt.setInt(1,id);
	pstmt.setString(2,stationName);   
	pstmt.setString(3,address); 
	pstmt.setString(4,city);
	pstmt.setString(5,taluka);
	pstmt.setString(6,district);        
	pstmt.setString(7,openTime);
	pstmt.setString(8,closeTime);
	pstmt.setString(9,contactNo);        
	pstmt.setDouble(10,latitude);
	pstmt.setDouble(11,longitude);
	pstmt.setString(12,password);     
	pstmt.setInt(13,power);
	pstmt.setString(14,status);
	int i=pstmt.executeUpdate();
	GetSet.setMobile(contactNo);
	GetSet.setPassword(password);
	if(i>0){
		out.println("Registered Successfully !!");
		response.sendRedirect("chDashboard.jsp");
	}
	else{
		out.println("Check details");
	}
}catch(Exception e){
	e.printStackTrace();
}


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