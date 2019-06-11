package claim.DAO;
import java.sql.*;
import claim.Bean.RegisterBean1;
import claim.DAO.DBConnection;

public class RegisterDAO1 {
    public String authenticateUser(RegisterBean1 RegisterBean)
    {        
                                                                //String adminid=RegisterBean.getAdminid();
                    //String firstname=RegisterBean.getFirstname();
                    //String lastname=RegisterBean.getLastname();
                    //int age=RegisterBean.getAge();
                    //String gender= RegisterBean.getGender(); 
                    //String dob= RegisterBean.getDob();
                    //long contactnumber=RegisterBean.getContactnumber();
                    //long altcontactnumber=RegisterBean.getAltcontactnumber();
                   // String emailid = RegisterBean.getEmailid(); 
                   // String password = RegisterBean.getPassword();
                    Connection con = null;
                    PreparedStatement pstmt = null;
                    ResultSet resultSet = null;
                    
                    try
                    {
                                    con = DBConnection.createConnection(); 
                                    String sql="insert into admin1 (firstname,lastname,age,gender,dob,contactnumber,altcontactnumber,emailid,password)"+"values(?,?,?,?,?,?,?,?,?)";
                                    pstmt = con.prepareStatement(sql) ;
                                    
                                    //pstmt.setString(1, RegisterBean.getAdminid());
                                    pstmt.setString(1, RegisterBean.getFirstname());
                                    pstmt.setString(2, RegisterBean.getLastname());
                                    pstmt.setInt(3, RegisterBean.getAge());
                                    pstmt.setString(4, RegisterBean.getGender());
                                    pstmt.setString(5, RegisterBean.getDob());
                                    pstmt.setLong(6, RegisterBean.getContactnumber());
                                    pstmt.setLong(7, RegisterBean.getAltcontactnumber());
                                    pstmt.setString(8, RegisterBean.getEmailid());
                                    pstmt.setString(9, RegisterBean.getPassword());
                                    
                                    // execute insert SQL stetement
                                    pstmt.executeUpdate();
                                    return "SUCCESS"; 
                                                   
                                   
                    }
                                    catch(SQLException e)
                                    {
                                                    e.printStackTrace();
                                    }
                                    return "Invalid user credentials"; 
                    
    }
}

