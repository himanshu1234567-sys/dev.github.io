package dbcon;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBCon {
	private static Connection con = null;
	public static DBCon dbCon = null;
	private static final String URL = "jdbc:mysql://localhost:3306/survive'skit";

	private DBCon() {
	}

	public static DBCon getInstance() {
		if (dbCon == null) {
			synchronized (DBCon.class) {
				if (dbCon == null) {
					dbCon = new DBCon();
				}
			}
		}

		return dbCon;

	}

	public Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(URL, "root", "");

		} catch (SQLException | ClassNotFoundException e) {
			System.out.println(e.getMessage());
		}

		return con;

	}

}
