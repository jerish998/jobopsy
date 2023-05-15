package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DataBaseConnector {

	public Connection connect;

	public Connection Dbconnect() {
		String url = "jdbc:mysql://localhost:3306/jobopsy";
		String user = "root";
		String password = "qwer";
		try {
			Class.forName("com.mysql.jdbc.Driver");

		} catch (ClassNotFoundException e) {
			System.out.println(e);
		}

		try {
			connect = DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			System.out.println(e);
		}
		return connect;
	}

}
