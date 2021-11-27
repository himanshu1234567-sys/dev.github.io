package controller;


import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import dao.DAOClass;
import model.*;
public class LoginServlets extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub PrintWriter pw = response.getWriter();
		//PrintWriter pw = response.getWriter();
		response.setContentType("text/html");
		RequestDispatcher dispatcher;
		HttpSession session;
		try {
			String uname = request.getParameter("uname");

			String password = request.getParameter("password");
			//String remember =request.getParameter("remember");
			//boolean status = Boolean.parseBoolean(remember);
			Users users = new Users(uname, password);
			Admin admin = new Admin(uname,password);
 			String res = DAOClass.loginUser(users);
 			ServletContext context = getServletContext();
 			
			if(DAOClass.adminLogin(admin)!=null) {
				
				 session =request.getSession(false);
					session.setAttribute("uname", uname);
					session.setMaxInactiveInterval(3*60);
					context.setAttribute("uname",uname);
					 dispatcher = request.getRequestDispatcher("admin.jsp");
					dispatcher.forward(request, response);
			
			}
			
			else if (DAOClass.loginUser(users)!=null) {

		 session =request.getSession(false);
			session.setAttribute("uname", res);
			session.setMaxInactiveInterval(3*60);
			 dispatcher = request.getRequestDispatcher("welcome.jsp");
			dispatcher.forward(request, response);
			
			
			}
			else {
				// pw.println(res);
				 dispatcher = request.getRequestDispatcher("error.jsp");
					dispatcher.include(request, response);
				
				
			}
			

		} catch (Exception e) {
			System.out.println(e.getMessage());

		}

	}
}
