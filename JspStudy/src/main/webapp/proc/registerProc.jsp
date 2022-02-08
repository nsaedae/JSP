<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"/>
		<title>registerProc</title>
	</head>
	<body>
		<h3>회원가입 데이터 수신</h3>
		<%
			request.setCharacterEncoding("utf-8");
		
			String uid = request.getParameter("uid");		
			String pass = request.getParameter("pass");		
			String name = request.getParameter("name");		
			String gender = request.getParameter("gender");		
		
		%>
		<p>
			아이디 : <%= uid %><br/>
			비밀번호 : <%= pass %><br/>			
			이름 : <%= name %><br/>			
			성별 : <%= gender %><br/>			
		</p>
		
		<a href="../Sub3/1.Request.jsp">뒤로가기</a>	
	</body>
</html>