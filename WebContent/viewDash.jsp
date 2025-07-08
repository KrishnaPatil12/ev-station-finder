<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat&family=Poppins:ital,wght@0,
100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View - dashboard</title>
 <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      background-color: #1e2a36;
      font-family: 'Segoe UI', sans-serif;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .card {
      background-color: #121b25;
      border-radius: 20px;
      padding: 40px 30px;
      box-shadow: 0 8px 24px rgba(0, 0, 0, 0.4);
      width: 340px;
      text-align: center;
    }

    .card h2 {
      color: #00ffd5;
      margin-bottom: 25px;
      font-size: 26px;
    }

    .card a {
      display: block;
      text-decoration: none;
      color: white;
      background-color: #3378c4;
      padding: 12px 25px;
      margin: 15px 0;
      border-radius: 25px;
      font-size: 16px;
      transition: transform 0.3s ease, box-shadow 0.3s ease, background-color 0.3s ease;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
    }

    .card a:hover {
      background-color: #07c0f5;
      transform: translateY(-3px);
      box-shadow: 0 6px 16px rgba(0, 255, 255, 0.4);
      cursor: pointer;
    }
        .log {
  position: fixed;
  bottom: 30px;
  right: 30px;
}

.logout-btn {
  display: flex;
  align-items: center;
  gap: 10px;
  background-color: #131e27;
  color: #00f3ff;
  text-decoration: none;
  padding: 12px 20px;
  border-radius: 12px;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.logout-btn:hover {
  transform: translateY(-6px);
  box-shadow: 0 4px 12px rgba(0, 255, 255, 0.4);
}

.logout-btn img {
  display: inline-block;
 }
  </style>
</head>
<body>
<div class="card">
<h2>User controls</h2>
<a href="chCity.jsp?role=user">View By City</a>
<a href="chTaluka.jsp?role=user">View By Taluka</a>
<a href="chDistrict.jsp?role=user">View By District</a>
</div>
<div class="log">
  <a href="index.jsp" class="logout-btn">
    <img src="images/out.png" width="24" height="24" alt="Logout Icon" />
    <span>Log Out</span>
  </a>
</div>
</body>
</html>