<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"/>
		<title>1.Request</title>
		<!-- 
			날짜 : 2022/02/08
			이름 : 김철학
			내용 : Jsp 내장객체 실습하기
		-->
	</head>
	<body>
		<h3>1.Request 내장객체</h3>
		
		<h4>로그인</h4>
		<form action="../proc/loginProc.jsp" method="post">
			<table border="1">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="uid"/></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="pass"/></td>
				</tr>
				<tr>
					<td colspan="2" align="right">
						<input type="submit" value="로그인"/>
					</td>
				</tr>
			</table>			
		</form>
		
		<h4>회원가입</h4>
		<form action="../proc/registerProc.jsp" method="post">
			<table border="1">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="uid"/></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="pass"/></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name"/></td>
				</tr>
				<tr>
					<td>성별</td>
					<td>
						<label><input type="radio" name="gender" value="1"/>남</label>
						<label><input type="radio" name="gender" value="2"/>여</label>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="right">
						<input type="submit" value="회원가입"/>
					</td>
				</tr>			
			</table>
		
		
		</form>
		
		
		
		
		
		
				
		
	</body>
</html>