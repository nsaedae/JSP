<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"/>
		<title>Insert title here</title>
	</head>
	<body>
		<h3>Employee 등록</h3>
		<a href="#">직원목록</a>
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" /></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" /></td>
			</tr>
			<tr>
				<td>성별</td>
				<td>
					<label><input type="radio" name="gender" value="1"/>남</label>
					<label><input type="radio" name="gender" value="2"/>여</label>
				</td>
			</tr>
			<tr>
				<td>휴대폰</td>
				<td><input type="text" /></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" /></td>
			</tr>
			<tr>
				<td>직급</td>
				<td>
					<select name="addr">
						<option>사원</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>부서</td>
				<td>
					<select name="addr">
						<option>영업1부</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="right">
					<input type="submit" value="등록하기"/>
				</td>
			</tr>
		
		</table>
		
	</body>
</html>