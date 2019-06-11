<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("memberid");
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
<h1>Member Details</h1>
<table border="1">
<tr>
<td>First Name</td>
<td>Last Name</td>
<td>Age</td>
<td>Gender</td>
<td>DOB</td>
<td>Contact Number</td>
<td>Alt Contact Number</td>
<td>EmailId</td>
 <td>Plan Code</td>
 <td>Coverage Start Date</td>
 <td>Coverage End Date</td>
 <td>Address Line1</td>
 <td>Address Line2</td>
 <td>City</td>
 <td>State</td>
 <td>ZipCode</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from member where memberid='"+id+"' ";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("firstname") %></td>
<td><%=resultSet.getString("lastname") %></td>
<td><%=resultSet.getInt("age") %></td>
<td><%=resultSet.getString("gender") %></td>
<td><%=resultSet.getString("dob") %></td>
<td><%=resultSet.getLong("contactnumber") %></td>
<td><%=resultSet.getLong("altcontactnumber") %></td>
<td><%=resultSet.getString("emailid") %></td>
<td><%=resultSet.getString("plancode") %></td>
<td><%=resultSet.getString("coveragestartdate") %></td>
<td><%=resultSet.getString("coverageenddate") %></td>
<td><%=resultSet.getString("addressline1") %></td>
<td><%=resultSet.getString("addressline2") %></td>
<td><%=resultSet.getString("city") %></td>
<td><%=resultSet.getString("state") %></td>
<td><%=resultSet.getLong("zipcode") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>