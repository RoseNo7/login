package user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import util.DatabaseUtil;

public class UserDAO {
		
	public int login(String userID, String userPassword) {
		String sql = "select user_pw from user where user_id = ?";
		
		try {
			Connection conn = DatabaseUtil.getConnection();
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userID);
			
			ResultSet rs = pstmt.executeQuery();
			
			if (rs.next()) {
				if (rs.getString(1).equals(userPassword)) {
					return 1;
				}
			}
			return 0;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return -2;
	}
	
	
	
	
}
