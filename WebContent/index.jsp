<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EV - Charging Station Finder</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat&family=Poppins:ital,wght@0,
100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
<style>
body{
background: #1f2b37;
color: white;
font-family:"Poppins","Montserrat","Seoge UI";
   }
nav{
display:flex;
justify-content: space-between;
align-items:center;
gap:3px;
padding:4px;
margin:4px;
background-color:#161d24;
}
ul{
display:flex;
gap:34px;
list-style:none;}
a{
text-decoration:none;
color:white;
}
.Header{
font-size:26px;
font-weight:bold;
font-family:"Montserrat";
position: relative;
display: inline-block;
}
.Header img {
      display: block;
    }
    .text {
      position: absolute;
     top: 45%;
    left: 158%;
    transform: translate(-50%, -50%);
    }
    
    .container{
    display:flex;
    padding:10px;
    margin-top:15px;
    }
    .content{
    font-size:26px;
    padding:14px;
    width:700px;
   
    }

    .dash img {
     height: 400px; 
      width:auto;
       border-radius: 18px;
      object-fit: cover; 
    }
    .tagline{
    font-size:24px;}
    .cards{
 position: absolute;
    bottom:25px;
    left: 80px;
    display: flex;
    justify-content: space-around;
    align-items: center;}
 .feature-cards {
  display: flex;
gap:12px;
}

.card {
  background-color: #161d24;
  border-radius: 16px;
  padding: 30px 20px;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
  transition: transform 0.3s ease, box-shadow 0.3s ease;
  width: 100%;
  max-width: 300px;
}
    .card:hover {
  transform: translateY(-10px);
  box-shadow: 0 8px 24px rgba(0, 255, 255, 0.5);
}
.login-menu li {
  padding: 15px 25px;
  border-radius: 12px;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.login-menu li:hover {
  transform: translateY(-8px);
 box-shadow: 0 4px 12px rgba(0, 255, 255, 0.4);
 
}
button{
font-family:"Poppins";
border:none;
color:white;
font-size:18px;
  background-color: #161d24;
  padding:15px 25px;
  border-radius:10px;
  display:flex;
 margin-left:28px;
   box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

button:hover {
  transform: translateY(-10px);
 box-shadow: 0 8px 12px rgba(0, 255, 255, 0.4);
 
}
</style>
</head>
<body>	
<nav>
<div class="Header">
<img src="images/ev1.jpg">
<div class="text">Connect</div>

</div>
<div class="login-menu">
<ul>
<li><a href="Alogin.jsp">Admin Login</a></li>
<li><a href="chLogin.jsp">Charging Station Login</a></li>
<li><a href="Ulogin.jsp">User Login</a></li>
</ul>
</div>
</nav>
<div class="container">

<div class="dash">
<img src="car.gif" width="400px"   alt="Car">


</div>
<div class="content">
<h2>Re-charge your EV anytime, anywhere</h2>
<p class="tagline">Fast, Reliable, and Convenient Charging Solutions for Your Electric Vehicle</p>
<a href="viewDash.jsp"><button>Find Station</button></a>
</div>
</div>
<div class="cards">

<div class="feature-cards">
    <div class="card">
      <h3>24/7 Charging</h3>
      <p>Charge your vehicle anytime, anywhere.</p>
    </div>
    <div class="card">
      <h3>Fast Charging</h3>
      <p>Reduce wait times with high-speed chargers.</p>
    </div>
    <div class="card">
      <h3>Station Locator</h3>
      <p>Find the nearest EV station in seconds.</p>
    </div>
    <div class="card">
      <h3>Secure Payments</h3>
      <p>Pay quickly and securely with multiple options.</p>
    </div>
  </div>
 
 </div> 
</body>
</html>
