package claim.DAO;

import java.sql.*;
import claim.Bean.LoginBean1;
import claim.DAO.DBConnection;
public class LoginDAO1 {
                public String authenticateUser(LoginBean1 loginBean)
                {
                                String adminid = loginBean.getAdminid(); //Keeping user entered values in temporary variables.
                                String password = loginBean.getPassword();
                                Connection con = null;
                                Statement statement = null;
                                ResultSet resultSet = null;
                                String adminIdDB = "";
                                String passwordDB = "";
                                try
                                {
                                                con = DBConnection.createConnection(); 
                                                statement = con.createStatement(); 
                                                resultSet = statement.executeQuery("select adminid,password from admin1"); 
                                                while(resultSet.next()) 
                                                {
                                                                adminIdDB = resultSet.getString("adminid"); 
                                                                passwordDB = resultSet.getString("password");
                                                                if(adminid.equals(adminIdDB) && password.equals(passwordDB))
                                                                {
                                                                                return "SUCCESS"; 
                                                                }
                                                }
                                }
                                                catch(SQLException e)
                                                {
                                                                e.printStackTrace();
                                                }
                                                return "Invalid user credentials"; 
                                
                }
}
