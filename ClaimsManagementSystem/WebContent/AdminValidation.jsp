<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<style>
body
{
background-repeat:no-repeat;
background-size:cover;
background-color:#d6e4ed;
}
</style>
<body background=".\claims.jpg">
<html>
<script type="text/javascript">
function check()
{
var x=document.forms["frm"]["num1"].value;

if ((x==null || x==""))
{
alert("Sorry You have not entered any value");
return false;
} 
else if(x==12345)
{
return true;
}
else
{   alert("Invalid Admin Key");
       return false;
}

} 
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Validation</title>
</head>



<form name="frm" method="get" action="Registration1.jsp"
onsubmit="return check()">
<center><br>
<br>
<table><tr>
<td>
<font color="black" size=10px>Enter Security Key</font></td>
<td><input type="password" name="num1"></td></tr>

<tr><td></td><td><button type="submit">Confirm</button></td></tr>
</table>
</center>
</form>
</body>
</html>
