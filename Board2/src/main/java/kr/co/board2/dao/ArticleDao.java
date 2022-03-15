package kr.co.board2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import kr.co.board2.db.DBConfig;
import kr.co.board2.db.Sql;
import kr.co.board2.vo.ArticleVo;

public class ArticleDao {

	private static ArticleDao instance = new ArticleDao();
	public static ArticleDao getInstance() {
		return instance;
	}
	private ArticleDao() {}
	
	// ±âº» CRUD
	public int insertArticle(ArticleVo vo) {
		
		try {
			Connection conn = DBConfig.getInstance().getConnection();
			PreparedStatement psmt = conn.prepareStatement(Sql.INSERT_ARTICLE);
			psmt.setString(1, vo.getTitle());
			psmt.setString(2, vo.getContent());
			psmt.setInt(3, vo.getFile());
			psmt.setString(4, vo.getUid());
			psmt.setString(5, vo.getRegip());
			psmt.executeUpdate();
			
			conn.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return selectMaxNo();
	}
	
	public void insertFile(int parent, String oName, String nName) {
		try {
			Connection conn = DBConfig.getInstance().getConnection();
			PreparedStatement psmt = conn.prepareStatement(Sql.INSERT_FILE);
			psmt.setInt(1, parent);
			psmt.setString(2, oName);
			psmt.setString(3, nName);
			psmt.executeUpdate();
			conn.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int selectMaxNo() {
		
		int no = 0;
		
		try {
			Connection conn = DBConfig.getInstance().getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(Sql.SELECT_MAX_NO);
			
			if(rs.next()) {
				no = rs.getInt(1);
			}
			
			conn.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return no;
	}
	
	public void selectArticle() {}
	
	public void selectArticles() {}
	
	public void updateArticle() {}
	
	public void deleteArticle() {}
			
	
}
