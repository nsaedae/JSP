<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
	<!-- 
		날짜 : 2022/03/07
		이름 : 김철학
		내용 : JSTL 실습하기
		
		JSTL(Java Standards Tag Library)
		 - JSP에서 자주 사용하는 기능을 태그로 정의한 라이브러리
		 - MVC 개발에서 EL과 함께 기본 JSP 문법으로 사용
	-->
	<meta charset="UTF-8">
	<title>2.JSTL</title>
</head>
<body>
	<h3>2.JSTL(Java Standards Tag Library) 실습</h3>
	
	<h4>스크립트릿 방식</h4>
	<%
		// 변수 생성과 출력
		String str = "hello";
		out.print("<p>str : "+str+"</p>");
		
		// 조건문
		int num1 = 1;
		int num2 = 2;
		int num3 = 3;
		
		if(num1 < num2){
			out.print("<p>num1은 num2보다 작다.</p>");
		}
		
		if(num1 > num2){
			out.print("<p>num1은 num2보다 크다.</p>");
		}else{
			out.print("<p>num1은 num2보다 작다.</p>");
		}
		
		if(num1 > num2){
			out.print("<p>num1은 num2보다 크다.</p>");
		}else if(num2 > num3){
			out.print("<p>num2는 num3보다 크다.</p>");
		}else{
			out.print("<p>num3이 가장 크다.</p>");
		}
		
	%>
	
	
	<h4>JSTL 방식</h4>
	
	<!-- 변수 생성과 출력 -->
	<c:set var="str" value="hello"/>
	<p>str : ${str}</p>
	
	<!-- 조건문 -->
	<c:set var="num1" value="1"/>
	<c:set var="num2" value="2"/>
	<c:set var="num3" value="3"/>
	
	<c:if test="${num1 lt num2}">
		<p>num1은 num2보다 작다.</p>
	</c:if>
	
	<c:choose>
		<c:when test="${num1 gt num2}">
			<p>num1은 num2보다 크다.</p>
		</c:when>
		<c:otherwise>
			<p>num1은 num2보다 작다.</p>
		</c:otherwise>
	</c:choose>
	
	
	
	
	
</body>
</html>