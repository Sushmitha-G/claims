<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
       pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Plan Codes</title>

                        
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
              <h1>Plan Codes</h1>
       </div>
       <br>
       <form action="PlanController" method="post">


              <table align="center">

                     <tr>
                           <td>Plan Code</td>
                           <td><input type="text" name="PlanCode" value="" required placeholder=""/></td>
                     </tr>
                     <tr>
                           <td>Plan Description</td>
                           <td><input type="text" name="PlanDescription" value="" required placeholder="" /></td>
                     </tr>
                     <tr>
                           <td>Coverage1</td>
                           <td><input type="text" name="Coverage1" value="" required placeholder=""/></td>
                     </tr>
                     
                     <tr>
                           <td>Coverage2</td>
                           <td><input type="text" name="Coverage2" value="" required placeholder="" /></td>
                     </tr>
                     <tr>
                           <td>Coverage3</td>
                           <td><input type="text" name="Coverage3" value="" required placeholder=""/></td>
                     </tr>
                     <tr>
                           <td>Coverage4</td>
                           <td><input type="text" name="Coverage4" value="" required placeholder=""/></td>
                     </tr>
                     <tr>
                           <td>Coverage5</td>
                           <td><input type="text" name="Coverage5" value="" required placeholder="" /></td>
                     </tr>
                     
                     <tr>
                           <td></td>
                           <td><input type="submit" value="Submit"></input>
                     </tr>
              </table>
       </form>

</body>
</html>

