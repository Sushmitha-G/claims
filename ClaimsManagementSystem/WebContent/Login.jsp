<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
                        pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>

</head>
<style>
body
{
background-repeat:no-repeat;
background-size:cover;
background-color:#d6e4ed;
}
</style>
<body background=".\claims.jpg">
                        <div style="text-align: center">
                                                <h1>Member Login</h1>
                        </div>
                        <br>
                        <form name="form" action="LoginController" method="post">
                                             
                                                <!-- Do not use table to format fields. As a good practice use CSS -->
                                                <table align="center">
                                                                        <tr>
                                                                                                <td>Member Id</td>
                                                                                                <td><input type="text" name="memberid" /></td>
                                                                        </tr>
                                                                        <tr>
                                                                                                <td>Password</td>
                                                                                                <td><input type="password" name="password" /></td>
                                                                        </tr>
                                                                        <tr>
                                                                                                <!-- refer to the video to understand request.getAttribute() -->
                                                                                                <td><span style="color: red">
                                                                                                <%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%>
                                                                                                </span></td>
                                                                        </tr>
                                                                        <tr>
                                                                                                <td></td>
                                                                                                <td><input type="submit" value="Login"></input><input
                                                                                                                        type="reset" value="Reset"></input></td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td colspan="2">Yet Not Registered!! <a href="MemberRegistration.jsp">Register Here</a></td>
                                                                        </tr>
                                                </table>
                        </form>

</body>
</html>
