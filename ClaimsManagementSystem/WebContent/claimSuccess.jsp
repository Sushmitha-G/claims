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
String id = request.getParameter("claimrequest");
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
String sql ="SELECT * FROM claimrequest WHERE claimID = (SELECT max(claimID) FROM claimrequest)";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><b>Claim Id:</b></td>
<td><%=resultSet.getString("claimID") %></td>
<% 
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</tr>
<br></br>
<em>Kindly Remember Your Claim Id.</em>

</body>
</html>
<br></br>
Please Logout Here <a href='LogoutController'>Logout</a>
</body>
