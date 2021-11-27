package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dbcon.DBCon;
import model.*;

public class DAOClass {
	private static Connection con = null;
	private static PreparedStatement ps = null;
	private static ResultSet rs = null;
	private static DBCon dbCon = DBCon.getInstance();

	public static String insertUser(Users users) {
		String uname = users.getUname();
		String email = users.getEmail();
		String password = users.getPassword();
		String confirmpassword = users.getConfirmpassword();
		try {
			con = dbCon.getConnection();
			ps = con.prepareStatement("INSERT INTO users (uname, email, password, confirmpassword)VALUES(?,?,?,?)");
			ps.setString(1, uname);
			ps.setString(2, email);
			ps.setString(3, password);
			ps.setString(4, confirmpassword);
			int x = ps.executeUpdate();
			if (x > 0)
				return "success";

		} catch (SQLException e) {
			System.out.println(e.getMessage());

		}

		return "User Already Exists";

	}

	public static String loginUser(Users users) {
		String uname = users.getUname();
		String password = users.getPassword();
		try {
			con = dbCon.getConnection();
			ps = con.prepareStatement("SELECT * FROM users WHERE uname=? and password=?");
			ps.setString(1, uname);
			ps.setString(2, password);
			rs = ps.executeQuery();
			while (rs.next()) {
				return rs.getString("uname");
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());

		}

		return null;

	}

	public static String adminLogin(Admin admin) {
		String uname = admin.getUname();
		String password = admin.getPassword();
		try {
			con = dbCon.getConnection();
			ps = con.prepareStatement("SELECT * FROM admin WHERE uname=? and password=?");
			ps.setString(1, uname);
			ps.setString(2, password);
			rs = ps.executeQuery();
			while (rs.next()) {
				return "success";
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());

		}

		return null;

	}

	}
