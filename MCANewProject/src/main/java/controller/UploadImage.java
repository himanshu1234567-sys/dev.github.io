package controller;


import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dbcon.DBCon;

@WebServlet("/ProfileServlet")
@MultipartConfig(maxFileSize = 16177216)

public class UploadImage extends HttpServlet {
private static final long serialVersionUID = 1L;
	private Connection con = null;
	private PreparedStatement ps = null;
	private DBCon dbCon = DBCon.getInstance();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int result = 0;
		String uname = request.getParameter("uname");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String confirmpassword = request.getParameter("confirmpassword");
		Part part = request.getPart("image");
		if (part != null) {

			try {
				con = dbCon.getConnection();
				ps = con.prepareStatement(
						"UPDATE users SET uname=?,password=?,confirmpassword=?,image=? WHERE email=?");
				InputStream is = part.getInputStream();
				ps.setString(1, uname);
				ps.setString(2, password);
				ps.setString(3, confirmpassword);
				ps.setBlob(4, is);
				ps.setString(5, email);
				result = ps.executeUpdate();
			} catch (SQLException e) {
				System.out.println(e.getMessage());
			} finally {
				if (con != null) {
					try {
						con.close();
					} catch (Exception e2) {
						// TODO: handle exception
					}
				}

			}

		}

		if (result > 0)
			response.sendRedirect("newprofile.jsp");
		response.sendRedirect("error.jsp");
	}
}
