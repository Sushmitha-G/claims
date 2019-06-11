<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("claimID");
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

<h1>Claims to be processed</h1>
<table border="1">
<tr>
<td>Claim Id</td>
<td>Member Id</td>
<td>Claim Service Date</td>
<td>Claim Submission Date</td>
<td>Claim Amount</td>


</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from claimrequest";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("claimID") %></td>
<td><%=resultSet.getString("memberID") %></td>
<td><%=resultSet.getString("claimServiceDate") %></td>
<td><%=resultSet.getString("claimSubmissionDate") %></td>
<td><%=resultSet.getString("claimAmount") %></td>

</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<div style="text-align: left">
                                <a href="claimProcess.jsp">Claim Process</a>
                                <br>
                                <br>
                                <a href="Searchfield.html">Search Member Details</a>
                                <br>
                                <br>
                                <a href="LogoutController1">Logout</a>
                </div>
</body>
</html>


