<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Member Registration</title>
        
<script>
function validate() {
var firstname= document.form.firstname.value;
var lastname = document.form.lastname.value;
var age= document.form.age.value;
var gender= document.form.gender.value;
var dob= document.form.dob.value;
var contactnumber= document.form.contactnumber.value;
var altcontactnumber= document.form.altcontactnumber.value;
var emailid= document.form.emailid.value;
var password= document.form.password.value;
var plancode= document.form.plancode.value;
var coveragestartdate= document.form.coveragestartdate.value;
var coverageenddate= document.form.coverageenddate.value;
var coverageaddressline1= document.form.addressline1.value;
var coverageaddressline2= document.form.addressline2.value;
var city= document.form.city.value;
var state= document.form.state.value;
var zipcode= document.form.zipcode.value;
var message="";
var f=false;

if (firstname==null || firstname == "") {
       f=true;
message+="--Enter First Name\n";
document.form.firstname.focus();
}
if (lastname == null || lastname== "") {
//alert("Password cannot be blank");
f=true;
message+="--Enter Last Name\n";
document.form.lastname.focus();
}

if (age == null || age == "") {
       //alert("Last Name cannot be blank");
       f=true;
       message+="--Enter Age\n";
       document.form.age.focus();
}
if (form.gender.selectedIndex==0) {
    //alert("First Name cannot be blank");
    f=true;
    message+="--Select Gender\n";
    document.form.gender.focus();
}
if (dob == null || dob== "") {
       //alert("First Name cannot be blank");
       f=true;
       message+="--Enter DOB\n";
       document.form.dob.focus();
}


if (contactnumber == null || contactnumber == "") {
       //alert("First Name cannot be blank");
       f=true;
       message+="--Enter Contact Number\n";
       document.form.contactnumber.focus();
}
if (altcontactnumber == null || altcontactnumber == "") {
    //alert("First Name cannot be blank");
    f=true;
    message+="--Enter Alt Contact Number\n";
    document.form.altcontactnumber.focus();
}

if (emailid == null || emailid == "") {
       //alert("First Name cannot be blank");
       f=true;
       message+="--Enter Email ID\n";
       document.form.altcontactnumber.focus();
}
if (password == null || password == "") {
    //alert("First Name cannot be blank");
    f=true;
    message+="--Enter Password\n";
    document.form.password.focus();
}
if (plancode == null || plancode == "") {
    //alert("First Name cannot be blank");
    f=true;
    message+="--Enter Plan Code\n";
    document.form.plancode.focus();
}
if (coveragestartdate == null || coveragestartdate == "") {
    //alert("First Name cannot be blank");
    f=true;
    message+="--Enter Coverage Start Date\n";
    document.form.FirstName.focus();
}
if (coverageenddate == null || coverageenddate == "") {
    //alert("First Name cannot be blank");
    f=true;
    message+="--Enter Coverage End Date\n";
    document.form.FirstName.focus();
}
if (addressline1 == null || addressline1 == "") {
    //alert("First Name cannot be blank");
    f=true;
    message+="--Enter Address Line1\n";
    document.form.FirstName.focus();
}
if (addressline2 == null || addressline2 == "") {
    //alert("First Name cannot be blank");
    f=true;
    message+="--Enter Address Line2\n";
    document.form.FirstName.focus();
}


if (city == null || city == "") {
       //alert("First Name cannot be blank");
       f=true;
       message+="--Enter City\n";
       document.form.FirstName.focus();
}
if (state == null || state == "") {
       //alert("First Name cannot be blank");
       f=true;
       message+="--Enter State\n";
       document.form.FirstName.focus();
}
if (zipcode == null || zipcode == "") {
    //alert("First Name cannot be blank");
    f=true;
    message+="--Enter Zip Code\n";
    document.form.FirstName.focus();
}

if(f)
       {
       alert(message);
       return false;
       }
       return true;
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
<div style="text-align: center"></div>
      <form action="RegisterController" method="post"
      onsubmit="return validate()">
            
            <table border="1" width="30%" cellpadding="5" align="center">
                <thead>
                    <tr>
                        <th colspan="2">Register Here</th>
                     </tr>
                </thead>
                
                <tr>
                        <td>First Name</td>
                        <td><input type="text" name="firstname" pattern="(?=.*[a-z])(?=.*[A-Z]).{1,20}" required placeholder="ENTER CANDIDATE NAME"></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="lastname" required placeholder="ENTER LAST NAME"/></td>
                    </tr>
                     <tr>
                        <td>Age</td>
                        <td><input type="number" name="age" pattern="[-+]?[0-9]*[.,]?[0-9]+" minlength="1" maxlength="2" required placeholder="ENTER AGE"></td>
                    </tr>
                     <tr>
                           <td>Gender</td>
                           <td><select name="gender" required placeholder="SELECT GENDER">
                                         <option value="select">Select</option>
                                         <option value="Male">Male</option>
                                         <option value="Female">Female</option>
                           </select>
                           </td>
                     </tr>
                     
                     <tr>
                        <td>DOB</td>
                        <td><input type="date" name="dob" value="" required placeholder="ENTER DOB"/></td>
                    </tr>
                    <tr>
                     <tr>
                        <td>Contact Number</td>
                        <td><input type="text" name="contactnumber" pattern="[-+]?[0-9]*[.,]?[0-9]+" minlength="10" maxlength="12" required placeholder="ENTER CONTACT NUMBER"/></td>
                    </tr>
                     <tr>
                        <td>Alt Contact Number</td>
                        <td><input type="text" name="altcontactnumber" pattern="[-+]?[0-9]*[.,]?[0-9]+" minlength="10" maxlength="12" required placeholder="ENTER CONTACT NUMBER"/></td>
                    </tr>
                        <td>EmailId</td>
                        <td><input type="email" name="emailid" value="" required placeholder="ENTER EMAIL ID" /></td>
                    </tr>
                    
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" value="" required placeholder="ENTER PASSWORD"/></td>
                    </tr>
                    <tr>
                        <td>Plan Code</td>
                        <td><input type="text" name="plancode" value="" required placeholder="ENTER PLAN CODE"/></td>
                    </tr>
                    <tr>
                        <td>Coverage Start Date</td>
                        <td><input type="date" name="coveragestartdate" value="" required placeholder="ENTER COVERAGESTARTDATE "/></td>
                    </tr>
                    <tr>
                        <td>Coverage End Date</td>
                        <td><input type="date" name="coverageenddate" value="" required placeholder="ENTER COVERAGEENDDATE "/></td>
                    </tr>
                    <tr>
                        <td>Address Line1</td>
                        <td><input type="text" name="addressline1" value=""required placeholder="ENTER ADDRESS" /></td>
                    </tr>
                    <tr>
                        <td>Address Line2</td>
                        <td><input type="text" name="addressline2" value="" required placeholder="ENTER ADDRESS" /></td>
                    </tr>
                    <tr>
                        <td>City</td>
                        <td><input type="text" name="city" value="" required placeholder="ENTER CITY " /></td>
                    </tr>
                    <tr>
                        <td>State</td>
                        <td><input type="text" name="state" value="" required placeholder="ENTER STATE"/></td>
                    </tr>
                    <tr>
                        <td>Zipcode</td>
                        <td><input type="text" name="zipcode" value="" required placeholder="ENTER PINCODE"/></td>
                    </tr>
                    <tr>
                    
                        <td><input type="submit" value="submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr><tr>
                        <td colspan="2">Already registered!! <a href="Login.jsp">Login Here</a></td>
                    </tr>
               
            </table>
            
        </form>
    </body>
</html>