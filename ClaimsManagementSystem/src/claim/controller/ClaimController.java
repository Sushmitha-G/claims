package claim.controller;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

import claim.Bean.ClaimBean;
import claim.DAO.ClaimDAO;

public class ClaimController extends HttpServlet {


                                                                public ClaimController() {
                }

                protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

                                
                                PrintWriter out = response.getWriter();
                                String claimServiceDate = request.getParameter("claimServiceDate"); 
                             String claimSubmissionDate= request.getParameter("claimSubmissionDate");
                            
                            
                            int claimAmount=Integer.parseInt(request.getParameter("claimAmount"));
                            

                               


                           
                               
                                ClaimBean claimBean = new ClaimBean(); 
                                
                                claimBean.setClaimServiceDate(claimServiceDate);
                                claimBean.setClaimSubmissionDate(claimSubmissionDate);
                                
                                ;
                                claimBean.setClaimAmount(claimAmount);
                               
                                

                                ClaimDAO claimDao = new ClaimDAO(); 
                                claimDao.authenticateUser(claimBean);
                                if( claimServiceDate.isEmpty() || claimSubmissionDate.isEmpty() || claimAmount==0)
                                    
                                    
                                {
                                RequestDispatcher req=request.getRequestDispatcher("claimError.jsp");
                                req.forward(request, response);
                                }
                         else
                         {
                                RequestDispatcher req=request.getRequestDispatcher("claimSuccess.jsp");
                                req.forward(request, response); 
                         }
                                  

                           
                               
                }


}

