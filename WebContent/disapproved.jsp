<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
          <%@ page import="java.sql.*" %>
    <%@ page import="com.charging.station.finder.Dbconnection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Disapprove</title>
</head>
<body>
<%
int id=Integer.parseInt(request.getParameter("id"));
Connection con=Dbconnection.connect();
PreparedStatement pstmt=con.prepareStatement("update register set status=? where id=?");
pstmt.setString(1,"Disapproved");
pstmt.setInt(2,id);
int i=pstmt.executeUpdate();
if(i>0){
	response.sendRedirect("Adisapproved.jsp");
}
%>
</body>
</html>