package kr.co.board2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import kr.co.board2.db.DBConfig;
import kr.co.board2.db.Sql;
import kr.co.board2.vo.TermsVo;
import kr.co.board2.vo.UserVo;

public class UserDao {

	private static UserDao instance = new UserDao();
	
	public static UserDao getInstance() {
		return instance;
	}
		
	private UserDao() {}
	
	// ±âº» CRUD
	public void insertUser(UserVo vo) {
		try{
			Connection conn = DBConfig.getInstance().getConnection();
			PreparedStatement psmt = conn.prepareStatement(Sql.INSERT_USER);
			psmt.setString(1, vo.getUid());
			psmt.setString(2, vo.getPass());
			psmt.setString(3, vo.getName());
			psmt.setString(4, vo.getNick());
			psmt.setString(5, vo.getEmail());
			psmt.setString(6, vo.getHp());
			psmt.setString(7, vo.getZip());
			psmt.setString(8, vo.getAddr1());
			psmt.setString(9, vo.getAddr2());
			psmt.setString(10, vo.getRegip());
			psmt.executeUpdate();
			conn.close();
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public TermsVo selectTerms() {
		
		TermsVo vo = new TermsVo();
		
		try {
			Connection conn= DBConfig.getInstance().getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(Sql.SELECT_TERMS);
			if(rs.next()) {
				vo.setTerms(rs.getString(1));
				vo.setPrivacy(rs.getString(2));
			}
			conn.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
	
	public void selectUser() {}
	public void selectUsers() {}
	public void updateUser() {}
	public void deleteUser() {}
	
}
