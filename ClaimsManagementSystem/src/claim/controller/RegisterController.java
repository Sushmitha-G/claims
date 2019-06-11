package claim.controller;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import claim.DAO.RegisterDAO;
import claim.Bean.RegisterBean;


public class RegisterController extends HttpServlet {

                public RegisterController() {
                }

                protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                	String firstname=request.getParameter("firstname");
                    String lastname=request.getParameter("lastname");
                    int age=Integer.parseInt(request.getParameter("age"));
                    String gender=request.getParameter("gender");
                    String dob=request.getParameter("dob");
                    long contactnumber=Long.parseLong(request.getParameter("contactnumber"));
                    long altcontactnumber=Long.parseLong(request.getParameter("altcontactnumber"));
                    String emailid=request.getParameter("emailid");
                    String password=request.getParameter("password");
                    String plancode=request.getParameter("plancode");
                    String coveragestartdate=request.getParameter("coveragestartdate");
                    String coverageenddate=request.getParameter("coverageenddate");
                    String addressline1=request.getParameter("addressline1");
                    String addressline2=request.getParameter("addressline2");
                    String city=request.getParameter("city");
                    String state=request.getParameter("state");
                    long zipcode=Long.parseLong(request.getParameter("zipcode"));
                   
                

                   RegisterBean bean=new RegisterBean();
                   
                   bean.setFirstname(firstname);
                   bean.setLastname(lastname);
                   bean.setAge(age);
                   bean.setGender(gender);
                   bean.setDob(dob);
                   bean.setContactnumber(contactnumber);
                   bean.setAltcontactnumber(altcontactnumber);
                   bean.setEmailid(emailid);
                   bean.setPassword(password);
                   bean.setPlancode(plancode);
                   bean.setCoveragestartdate(coveragestartdate);
                   bean.setCoverageenddate(coverageenddate);
                   bean.setAddressline1(addressline1);
                   bean.setAddressline2(addressline2);
                   bean.setCity(city);
                   bean.setState(state);
                   bean.setZipcode(zipcode);
                   RegisterDAO dao= new RegisterDAO();
                   String userRegistered=dao.authenticateUser(bean);
                  if(firstname.isEmpty() || lastname.isEmpty() ||  age==0|| dob.isEmpty() || contactnumber==0 || altcontactnumber==0 || 
                           emailid.isEmpty() || password.isEmpty()||plancode.isEmpty()||coveragestartdate.isEmpty()||coverageenddate.isEmpty()
                           ||addressline1.isEmpty()||addressline2.isEmpty()||city.isEmpty()||state.isEmpty() || zipcode==0)
              {
                 RequestDispatcher req=request.getRequestDispatcher("Error.jsp");
                 req.forward(request, response);
              }
               
               else
               {
                 RequestDispatcher req=request.getRequestDispatcher("Success.jsp");
                 req.forward(request, response); 
               }
                                
                }

}

