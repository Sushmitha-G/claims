package claim.controller;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import claim.Bean.LoginBean1;
import claim.DAO.LoginDAO1;

public class LoginController1 extends HttpServlet {

                public LoginController1() {
                }

                protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

                                

                                String adminid = request.getParameter("adminid");
                                String password = request.getParameter("password");

                                LoginBean1 loginBean = new LoginBean1(); 

                                loginBean.setAdminid(adminid); 
                                loginBean.setPassword(password);

                                LoginDAO1 loginDao = new LoginDAO1(); 
                                String userValidate = loginDao.authenticateUser(loginBean); 
                                if(userValidate.equals("SUCCESS")) 
                                {
                                                request.setAttribute("adminid", adminid); 
                                                request.getRequestDispatcher("/Home1.jsp").forward(request, response);
                                }
                                else
                                {
                                                request.setAttribute("errMessage", userValidate); 
                                                request.getRequestDispatcher("/login1.jsp").forward(request, response);
                                }
                }

}
