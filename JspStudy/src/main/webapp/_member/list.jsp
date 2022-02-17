<%@page import="java.util.ArrayList"%>
<%@page import="bean.MemberBean"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"/>
		<title>list</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<script>
			$(function(){
				
				$('button').click(function(){
					
					$.get('./proc/getList.jsp', function(data){
						
						for(let member of data){
							$('table').append('<tr/>');
							$('table tr:last-child').append('<td>'+member.uid+'</td>');
							$('table tr:last-child').append('<td>'+member.name+'</td>');
							$('table tr:last-child').append('<td>'+member.hp+'</td>');
							$('table tr:last-child').append('<td>'+member.pos+'</td>');
							$('table tr:last-child').append('<td>'+member.dep+'</td>');							
							$('table tr:last-child').append('<td>'+member.rdate.substring(2, 10)+'</td>');							
							$('table tr:last-child').append("<td><a href='#'>삭제</a></td>");							
						}
					});
				});
			});
		</script>
		
	</head>
	<body>
		<h3>직원목록</h3>
		<button>목록 불러오기</button>
		<a href="./register.jsp">직원등록</a>
		<table border="1">
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>휴대폰</th>
				<th>직급</th>
				<th>부서</th>
				<th>입사일</th>
				<th>삭제</th>
			</tr>
		</table>		
	</body>
</html>