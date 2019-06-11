<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <script>
                        function validate() {
                                                var adminid = document.form.adminid.value;
                                                var password = document.form.password.value;

                                                if (adminid == null || adminid == "") {
                                                                        alert("AdminId cannot be blank");
                                                                        return false;
                                                } else if (firstname == null || firstname == "") {
                                                                        alert("firstname cannot be blank");
                                                                        return false;
                                                }
                        }
</script>
        
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
      <form action="RegistrationController1" method="post"
      onsubmit="return validate()">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Register Here</th>
                    </tr>
                </thead>
                <body style="background-color:#87CEFA;">
                
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="firstname" value="" required placeholder="ENTER CANDIDATE NAME" /></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="lastname" value="" required placeholder="ENTER LAST NAME" /></td>
                    </tr>
                     <tr>
                        <td>Age</td>
                        <td><input type="number" name="age" value="" required placeholder="ENTER AGE"> </td>
                    </tr>
                     <tr>
                        <td>Gender</td>
                        <td><select name="gender" required placeholder="SELECT GENDER">
                        <option>Male</option>
                        <option>Female</option></td>
                        </select>
                    </tr>
                     <tr>
                        <td>DOB</td>
                        <td><input type="date" name="dob" value="" required placeholder="ENTER DOB" /></td>
                    </tr>
                    <tr>
                     <tr>
                        <td>Contact Number</td>
                        <td><input type="number" name="contactnumber" value="" required placeholder="ENTER CONTACT NUMBER"/></td>
                    </tr>
                     <tr>
                        <td>Alt ContactNumber</td>
                        <td><input type="number" name="altcontactnumber" value="" required placeholder="ENTER CONTACT NUMBER" /></td>
                    </tr>
                        <td>EmailId</td>
                        <td><input type="email" name="emailid" value="" required placeholder="ENTER EMAIL ID"/></td>
                    </tr>
                    
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" value="" required placeholder="ENTER PASSWORD" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Already registered!! <a href="login1.jsp">Login Here</a></td>
                    </tr>
                </body>
            </table>
            </center>
        </form>
    </body>
</html>
