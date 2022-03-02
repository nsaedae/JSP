package kr.co.farmstory1.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import kr.co.farmstory1.bean.TermsBean;
import kr.co.farmstory1.db.DBConfig;
import kr.co.farmstory1.db.Sql;

public class UserDao {
	// ΩÃ±€≈Ê ∞¥√º
	private static UserDao instance = new UserDao();
	
	public static UserDao getInstance() {
		return instance;
	}
	
	private UserDao() {}
	
	// ±‚∫ª CRUD
	public void insertUser() {}
	public TermsBean selectTerms() {
		
		TermsBean tb = new TermsBean();
		try {
			Connection conn = DBConfig.getInstance().getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(Sql.SELECT_TERMS);
			
			if(rs.next()){
				tb.setTerms(rs.getString(1));
				tb.setPrivacy(rs.getString(2));
			}
			conn.close();
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return tb;
	}
	public void selectUser() {}
	public void selectUsers() {}
	public void updateUser() {}
	public void deleteUser() {}
}
