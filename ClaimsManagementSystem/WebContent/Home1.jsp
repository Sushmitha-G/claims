<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
                pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home page</title>
</head>
<style>
body
{
background-repeat:no-repeat;
background-size:cover;
background-color:#d6e4ed;
}
</style>
<body background=".\claims.jpg">                <center>
                                <h2>Claims Management System</h2>
                </center>
                Welcome!...
                <%=request.getAttribute("adminid").toString().toUpperCase()%>
                <br>
                <br>
                <a href="claimDetails.jsp">Claims to be processed</a>
                <br>
                <br>
                <a href="planCodes.jsp"> Plan Codes</a>
                
                
</body>
</html>
