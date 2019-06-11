package claim.controller;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import claim.Bean.LoginBean;
import claim.DAO.LoginDAO;

public class LoginController extends HttpServlet {

                public LoginController() {
                }

                protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

                                

                                String memberid = request.getParameter("memberid");
                                String password = request.getParameter("password");

                                LoginBean loginBean = new LoginBean(); 

                                loginBean.setMemberid(memberid); 
                                loginBean.setPassword(password);

                                LoginDAO loginDao = new LoginDAO(); 
                                String userValidate = loginDao.authenticateUser(loginBean); 
                                if(userValidate.equals("SUCCESS")) 
                                {
                                                request.setAttribute("memberid", memberid); 
                                                request.getRequestDispatcher("/Home.jsp").forward(request, response);
                                }
                                else
                                {
                                                request.setAttribute("errMessage", userValidate); 
                                                request.getRequestDispatcher("/Login.jsp").forward(request, response);
                                }
                }

}

