package claim.DAO;
import java.sql.*;
import claim.Bean.ClaimBean;
import claim.DAO.DBConnection;


public class ClaimDAO {
       public String authenticateUser(ClaimBean claimBean)
    {           
                          

                    Connection con = null;
                    PreparedStatement statement = null;
                    ResultSet resultSet,rs1 = null;
                    Statement st=null;
                    
                    String sb1="";
                    
                    
                    try
                    {
                                    con = DBConnection.createConnection(); 
                                   st=con.createStatement();
                                   
                                   String sql1="select memberID from claimrequest";
                                    rs1=st.executeQuery(sql1);
                                    while(rs1.next()) {
                                       String s1=rs1.getString(1);
                                       
                                       char s2=s1.charAt(0);
                                       int i= Integer.parseInt(s1.substring(1));
                                       i=i+1;
                                       sb1="";
                                       sb1=sb1+s2+i;
                                       
                                                                        
                                     }
                                    
                                    
                                   String sql="insert into claimrequest(memberID,claimServiceDate,claimSubmissionDate,claimAmount) "
                                              + "values(?,?,?,?)";
                                    statement = con.prepareStatement(sql) ;
                                    
                                    
                                    statement.setString(1,sb1);
                                    
                                    statement.setString(2, claimBean.getClaimServiceDate());
                                    statement.setString(3, claimBean.getClaimSubmissionDate());
                                   
                                    statement.setInt(4, claimBean.getClaimAmount());
                                    
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

