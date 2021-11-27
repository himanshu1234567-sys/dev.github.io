package controller;


import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.DAOClass;
import model.Users;

public class RegisterServlets extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		       RequestDispatcher dispatcher;
			response.setContentType("text/html");
			try {
				String uname = request.getParameter("uname");
				String email = request.getParameter("email");
				String password = request.getParameter("password");
				String confirmpassword = request.getParameter("confirmpassword");
				
               if(password.equals(confirmpassword)) {
            	 Users users = new Users(uname, email, password, confirmpassword);
   				String res = DAOClass.insertUser(users);
               
   				if (res.equals("success")) {
   					dispatcher = request.getRequestDispatcher("login.jsp");
   					dispatcher.forward(request, response);
       				} else {
       					dispatcher = request.getRequestDispatcher("error.jsp");
       					dispatcher.include(request, response);
   						}
               }
               else {
            	    System.out.println("password does not match");
               }

			} catch (Exception e) {
				System.out.println(e.getMessage());

			}

		}


	}


