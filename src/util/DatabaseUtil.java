package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseUtil {
	
	public static Connection getConnection() {
			try {
				String dbURL = "jdbc:mysql://121.164.122.177:3306/user_db?characterEncoding=UTF-8&serverTimezone=UTC";
				/* "jdbc:mysql://localhost:3306/user_db?characterEncoding=UTF-8&serverTimezone=UTC"; */
				String dbID = "root";
				String dbPassword = "1234";
				
				Class.forName("com.mysql.jdbc.Driver");
				
				return DriverManager.getConnection(dbURL, dbID, dbPassword);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return null;
	}
}