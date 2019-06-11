<style>
body
{
background-repeat:no-repeat;
background-size:cover;
background-color:#d6e4ed;
}
</style>
<body background=".\claims.jpg">
<h2 style="color: green;"> Registration completed Successfully.</h2> 


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("adminid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "claims";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<body>

<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="SELECT * FROM admin1 WHERE adminid = (SELECT max(adminid) FROM admin1)";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><b>Admin Id:</b></td>
<td><%=resultSet.getString("adminid") %></td>
<% 
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</tr>
<br></br>
<em>Kindly Remember Your Admin Id.</em>

</body>
</html>
<br></br>
Please Login Here <a href='login1.jsp'> Go to Login</a>
</body>


