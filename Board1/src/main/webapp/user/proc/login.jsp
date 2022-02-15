<%@page import="kr.co.board1.bean.UserBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 전송 데이터 수신
	request.setCharacterEncoding("utf-8");
	String uid  = request.getParameter("uid");
	String pass = request.getParameter("pass");
	
	
	// 데이터베이스 처리
	String host = "jdbc:mysql://chhak.or.kr:3306/test";
	String user = "test";
	String pw   = "1234";
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection(host, user, pw);
		
		String sql = "SELECT * FROM `Board_user` WHERE `uid`=? AND `pass`=PASSWORD(?);";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, uid);
		psmt.setString(2, pass);
		
		ResultSet rs = psmt.executeQuery();
		
		if(rs.next()){
			// 일치하는 회원이 있으면
			UserBean ub = new UserBean();
			ub.setUid(rs.getString(1));
			ub.setPass(rs.getString(2));
			ub.setName(rs.getString(3));
			ub.setNick(rs.getString(4));
			ub.setEmail(rs.getString(5));
			ub.setHp(rs.getString(6));
			ub.setGrade(rs.getInt(7));
			ub.setZip(rs.getString(8));
			ub.setAddr1(rs.getString(9));
			ub.setAddr2(rs.getString(10));
			ub.setRegip(rs.getString(11));
			ub.setRdate(rs.getString(12));
			
			// 세션 처리
			session.setAttribute("sessUser", ub);
			
			// 리다이렉트
			response.sendRedirect("/Board1/list.jsp");
						
		}else{
			// 일치하는 회원이 없으면
			response.sendRedirect("/Board1/user/login.jsp?success=100");
		}
		
		conn.close();
		
	}catch(Exception e){
		e.printStackTrace();
	}
%>