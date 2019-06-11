package claim.controller;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import claim.DAO.RegisterDAO1;
import claim.Bean.RegisterBean1;


public class RegistrationController1 extends HttpServlet {
private static final long serialVersionUID=1l;
                public RegistrationController1() {
                }

                protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

                              //String adminid=request.getParameter("adminid");            
                    String firstname=request.getParameter("firstname");
                    String lastname=request.getParameter("lastname");
                    int age=Integer.parseInt(request.getParameter("age"));
                    String gender=request.getParameter("gender");
                    String dob=request.getParameter("dob");
                    long contactnumber=Long.parseLong(request.getParameter("contactnumber"));
                    long altcontactnumber=Long.parseLong(request.getParameter("altcontactnumber"));
                    String emailid=request.getParameter("emailid");
                    String password=request.getParameter("password");
                    
                   RegisterBean1 bean=new RegisterBean1();
                  // bean.setAdminid(adminid);
                   bean.setFirstname(firstname);
                   bean.setLastname(lastname);
                   bean.setAge(age);
                   bean.setGender(gender);
                   bean.setDob(dob);
                   bean.setContactnumber(contactnumber);
                   bean.setAltcontactnumber(altcontactnumber);
                   bean.setEmailid(emailid);
                   bean.setPassword(password);
                    RegisterDAO1 daoObj= new RegisterDAO1();
                    String userRegistered=daoObj.authenticateUser(bean);
                    if(firstname.isEmpty() || lastname.isEmpty() || age==0 || 
                            gender.isEmpty() || dob.isEmpty() || contactnumber ==0|| altcontactnumber ==0||
                            emailid.isEmpty() || password.isEmpty())
               {
               RequestDispatcher req=request.getRequestDispatcher("Error1.jsp");
               req.forward(request, response);
               }
        else
        {
               RequestDispatcher req=request.getRequestDispatcher("Success1.jsp");
               req.forward(request, response); 
        }
                    
                    /*if(userRegistered.equals("SUCCESS"))
                                              {
                              response.sendRedirect("login.jsp");
                                              }
                    else
                    {
                              //response.sendRedirect("registration.jsp");
                              
                              request.setAttribute("errMessage",userRegistered);
                              request.getRequestDispatcher("Registration.jsp").forward(request, response);
                    }*/
                  
                                
                }

                                                                

}

