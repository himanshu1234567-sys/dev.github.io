package controller;


import java.io.IOException;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		ServletContext context = getServletContext();
		String uname = (String) context.getAttribute("uname");
		session.setAttribute("uname", uname);

	}

}
