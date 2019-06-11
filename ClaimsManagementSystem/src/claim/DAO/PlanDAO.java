package claim.DAO;

import java.sql.*;

import claim.Bean.PlanBean;
import claim.DAO.DBConnection;

public class PlanDAO {
    public String authenticateUser(PlanBean pb)
    {   
                    
    	Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet resultSet = null;
        
                    try
                    {
                                    con = DBConnection.createConnection(); 
                                    String sql="insert into plan (PlanCode,PlanDescription,Coverage1,Coverage2,Coverage3,Coverage4,Coverage5)"+"values(?,?,?,?,?,?,?)";
                                    pstmt = con.prepareStatement(sql) ;
                                    
                                    pstmt.setString(1, pb.getPlanCode());
                                    pstmt.setString(2, pb.getPlanDescription());
                                    pstmt.setString(3, pb.getCoverage1());
                                    pstmt.setString(4, pb.getCoverage2());
                                    pstmt.setString(5, pb.getCoverage3());
                                    pstmt.setString(6, pb.getCoverage4());
                                    pstmt.setString(7, pb.getCoverage5());
                                    
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

