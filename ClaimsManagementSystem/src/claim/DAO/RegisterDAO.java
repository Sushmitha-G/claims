package claim.DAO;
import java.sql.*;
import claim.Bean.RegisterBean;
import claim.DAO.DBConnection;

public class RegisterDAO {
    public String authenticateUser(RegisterBean cms)
    {   
                    
    	Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet resultSet,rs1 = null;
        Statement st=null;
        String sb1="";
                    try
                    {
                                    con = DBConnection.createConnection(); 
                                    st=con.createStatement();
                                    String sql1="select memberid from member";
                                    rs1=st.executeQuery(sql1);
                                    while(rs1.next()) {
                                       String s1=rs1.getString(1);
                                       
                                       char s2=s1.charAt(0);
                                       int i= Integer.parseInt(s1.substring(1));
                                       i=i+1;
                                       sb1="";
                                       sb1=sb1+s2+i;
                                    }
                                    String sql="insert into member(memberid,firstname,lastname,age,gender,dob,contactnumber,altcontactnumber,emailid,password,plancode,coveragestartdate,coverageenddate,addressline1,addressline2,city,state,zipcode)"+"values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                                    pstmt = con.prepareStatement(sql) ;
                                    pstmt.setString(1,sb1);
                                    pstmt.setString(2, cms.getFirstname());
                                    pstmt.setString(3, cms.getLastname());
                                    pstmt.setInt(4, cms.getAge());
                                    pstmt.setString(5, cms.getGender());
                                    pstmt.setString(6, cms.getDob());
                                    pstmt.setLong(7, cms.getContactnumber());
                                    pstmt.setLong(8, cms.getAltcontactnumber());
                                    pstmt.setString(9, cms.getEmailid());
                                    pstmt.setString(10, cms.getPassword());
                                    pstmt.setString(11, cms.getPlancode());
                                    pstmt.setString(12, cms.getCoveragestartdate());
                                    pstmt.setString(13, cms.getCoverageenddate());
                                    pstmt.setString(14, cms.getAddressline1());
                                    pstmt.setString(15, cms.getAddressline2());
                                    pstmt.setString(16, cms.getCity());
                                    pstmt.setString(17, cms.getState());
                                    pstmt.setLong(18, cms.getZipcode());
                                    
                                    
                                   // execute insert SQL statement
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
