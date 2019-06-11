<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String PlanCode = request.getParameter("PlanCode");
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
<style>
body
{
background-repeat:no-repeat;
background-size:cover;
background-color:#d6e4ed;
}
</style>
<body background=".\claims.jpg">

<h1>Plan Details</h1>
<table border="1">
<tr>
<td>Plan Code</td>
<td>Plan Description</td>
<td>Coverage 1</td>
<td>Coverage 2</td>
<td>Coverage 3</td>
<td>Coverage 4</td>
<td>Coverage 5</td>


</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from plan";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("PlanCode") %></td>
<td><%=resultSet.getString("PlanDescription") %></td>
<td><%=resultSet.getString("Coverage1") %></td>
<td><%=resultSet.getString("Coverage2") %></td>
<td><%=resultSet.getString("Coverage3") %></td>
<td><%=resultSet.getString("Coverage4") %></td>
<td><%=resultSet.getString("Coverage5") %></td>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<div style="text-align: left">
<br>
<br>

                                <a href="LogoutController">Logout</a>
                </div>
</body>
</html>