package kr.co.board1.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import kr.co.board1.db.DBConfig;
import kr.co.board1.db.Sql;

public class UserDao {

	private static UserDao instance = new UserDao();
	
	public static UserDao getInstance() {
		return instance;
	}
	
	private UserDao() {}
	
	// 기본 CRUD 메서드
	public void insertUser() {}
	
	public int selectUserCount(String uid) {
		
		int count = 0;
		
		try {
			Connection conn = DBConfig.getInstance().getConnection();
			PreparedStatement psmt = conn.prepareStatement(Sql.SELECT_USER_COUNT);
			psmt.setString(1, uid);
			
			ResultSet rs = psmt.executeQuery();
			if(rs.next()) {
				count = rs.getInt(1);
			}			
			conn.close();
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return count;
	}
	
	public void selectUser() {}
	public void selectUsers() {}
	public void updateUser() {}
	public void deleteUser() {}
	
	
	
}
