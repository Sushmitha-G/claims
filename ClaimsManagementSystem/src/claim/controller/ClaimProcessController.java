package claim.controller;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

import claim.Bean.ClaimProcess;
import claim.DAO.ClaimProcessDAO;


public class ClaimProcessController extends HttpServlet {


                                                                public ClaimProcessController() {
                }

                protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

                                
                                PrintWriter out = response.getWriter();
                                 
                            int claimID=Integer.parseInt(request.getParameter("claimID"));
                            String claimProcessingDate =request.getParameter("claimProcessingDate");
                            String claimStatus =request.getParameter("claimStatus");
                            int approvedAmount=Integer.parseInt(request.getParameter("approvedAmount"));

                               


                                
                                ClaimProcess claimprocess = new ClaimProcess(); 
                                
                                claimprocess.setClaimID(claimID);
                                claimprocess.setClaimProcessingDate(claimProcessingDate);
                                claimprocess.setClaimStatus(claimStatus);
                                
                                claimprocess.setApprovedAmount(approvedAmount);
                                
                                

                                ClaimProcessDAO daoObj= new ClaimProcessDAO();
                                daoObj.authenticateUser(claimprocess);
                                if(claimID==0 || claimProcessingDate.isEmpty())
                                        
                                        
                           {
                           RequestDispatcher req=request.getRequestDispatcher("processError.jsp");
                           req.forward(request, response);
                           }
                    else
                    {
                           RequestDispatcher req=request.getRequestDispatcher("processSuccess.jsp");
                           req.forward(request, response); 
                    }
                             
                           
                               
                }


}
