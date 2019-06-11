<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
       pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Claim Request</title>

                        
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
              <h1>Claim Request</h1>
       </div>
       <br>
       <form action="ClaimController" method="post">


              <table align="center">

                     <tr>
                           <td>Claim Service Date</td>
                           <td><input type="date" name="claimServiceDate" value="" required placeholder=""/></td>
                     </tr>
                     <tr>
                           <td>Claim Submission Date</td>
                           <td><input type="date" name="claimSubmissionDate" value="" required placeholder=""/></td>
                     </tr>
                    
                    
                     <tr>
                           <td>Claim Amount</td>
                           <td><input type="text" name="claimAmount" value="" required placeholder=""/></td>
                     </tr>
                     
                     
                     
                     <tr>
                           <td></td>
                           <td><input type="submit" value="Submit" /></td>
                           
                     </tr>
              </table>
       </form>

</body>
</html>

