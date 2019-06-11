package claim.DAO;

import java.sql.*;
import claim.Bean.ClaimProcess;
import claim.DAO.DBConnection;


public class ClaimProcessDAO {
       public String authenticateUser(ClaimProcess claimprocess)
    {           
                          

                    
                    Connection con = null;
                    PreparedStatement statement = null;
                    ResultSet resultSet= null;
                    
                    
                    
                    
                   
                    try
                    {
                                    con = DBConnection.createConnection(); 
                                    String sql="insert into claimprocess(claimID,claimProcessingDate,claimStatus,approvedAmount) "
                                              + "values(?,?,?,?)";
                                    statement = con.prepareStatement(sql) ;
                                    
                                    
                                   
                                    statement.setInt(1, claimprocess.getClaimID());
                                    statement.setString(2, claimprocess.getClaimProcessingDate());
                                    
                                   statement.setString(3, claimprocess.getClaimStatus());
                                    
                                    statement.setInt(4, claimprocess.getApprovedAmount());
                                    statement .executeUpdate();
                                    return "SUCCESS"; 
                    }

                                    catch(SQLException e)
                                    {
                                                    e.printStackTrace();
                                    }
                                    return "Invalid user credentials"; 
                    
    }

}