package claim.DAO;

import java.sql.*;
import claim.Bean.LoginBean;
import claim.DAO.DBConnection;
public class LoginDAO {
                public String authenticateUser(LoginBean loginBean)
                {
                                String memberid = loginBean.getMemberid(); //Keeping user entered values in temporary variables.
                                String password = loginBean.getPassword();
                                Connection con = null;
                                Statement statement = null;
                                ResultSet resultSet = null;
                                String memberIdDB = "";
                                String passwordDB = "";
                                try
                                {
                                                con = DBConnection.createConnection(); 
                                                statement = con.createStatement(); 
                                                resultSet = statement.executeQuery("select memberid,password from member"); 
                                                while(resultSet.next()) 
                                                {
                                                                memberIdDB = resultSet.getString("memberid"); 
                                                                passwordDB = resultSet.getString("password");
                                                                if(memberid.equals(memberIdDB) && password.equals(passwordDB))
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

