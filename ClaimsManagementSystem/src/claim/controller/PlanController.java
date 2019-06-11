package claim.controller;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

import claim.Bean.PlanBean;
import claim.DAO.PlanDAO;

public class PlanController extends HttpServlet {


                                                                public PlanController() {
                }

                protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

                                
                                PrintWriter out = response.getWriter();
                                String PlanCode = request.getParameter("PlanCode"); 
                             String PlanDescription= request.getParameter("PlanDescription");
                            String Coverage1 =request.getParameter("Coverage1");
                            String Coverage2 =request.getParameter("Coverage2");
                            String Coverage3 =request.getParameter("Coverage3");
                            String Coverage4 =request.getParameter("Coverage4");
                            String Coverage5 =request.getParameter("Coverage5");
                            
                                

                            PlanBean bean=new PlanBean();
                            
                             bean.setPlanCode(PlanCode);
                             bean.setPlanDescription(PlanDescription);
                             bean.setCoverage1(Coverage1);
                             bean.setCoverage2(Coverage2);
                             bean.setCoverage3(Coverage3);
                             bean.setCoverage4(Coverage4);
                             bean.setCoverage5(Coverage5);
                            
                              PlanDAO daoObj= new PlanDAO();
                              daoObj.authenticateUser(bean);
                              if(PlanCode.isEmpty() || PlanDescription.isEmpty() || 
                                      Coverage1.isEmpty() || Coverage2.isEmpty() || 
                                      Coverage3.isEmpty() || Coverage4.isEmpty() || Coverage5.isEmpty())
                         {
                         RequestDispatcher req=request.getRequestDispatcher("planError.jsp");
                         req.forward(request, response);
                         }
                  else
                  {
                         RequestDispatcher req=request.getRequestDispatcher("planSuccess.jsp");
                         req.forward(request, response); 
                  }
                           
                            
                                          
                          }



}
