<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
       pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Claim Process</title>

                        
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
              <h1>Claim Process</h1>
       </div>
       <br>
       <form action="ClaimProcessController" method="post">


              <table align="center">

                     <tr>
                           <td>Claim ID</td>
                           <td><input type="number" name="claimID" value="" required placeholder="ENTER CLAIM ID" /></td>
                     </tr>
                     <tr>
                           <td>Claim Processing Date</td>
                           <td><input type="date" name="claimProcessingDate" value="" required placeholder="ENTER CLAIM PROCESSING DATE"/></td>
                     </tr>
                     <tr>
                           <td>Claim Status</td>

                           <td><select  name="claimStatus" value="" required placeholder="ENTER CLAIM STATUS">
                                         
                                         <option >Approved</option>
                                         <option >Denied</option></td>
                           </select>
                     </tr>
                     
                     <tr>
                           <td>Approved Amount</td>
                           <td><input type="text" name="approvedAmount" value="" required placeholder="APPROVED AMOUNT"/></td>
                     </tr>
                     <tr>


                     </tr>
                     
                     <tr>
                           <td></td>
                           <td><input type="submit" value="Update"></input>
                     </tr>
              </table>
       </form>

</body>
</html>