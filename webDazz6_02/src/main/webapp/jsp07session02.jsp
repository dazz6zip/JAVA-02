<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp07session02(jsp)</title>
</head>
<body>
<h2>결과 보기</h2>
<% 
request.setCharacterEncoding("utf-8");

String movie = request.getParameter("movie");
String idkey = (String)session.getAttribute("idkey");

System.out.println("id : " + idkey );

if (idkey != null) {
%>
<b><%= idkey %></b> 님이 선택한 영화는 <b><%= movie %></b>입니다.<br/>
<div style="color: gray; font-size: 80%">세션 아이디 : <%= session.getId() %><br/>
세션 유효시간 : <%= session.getMaxInactiveInterval() %></div>
<%-- 세션 삭제는 session.invalidate() --%> 
<%
} else {
	out.println("세션 미설정");
}
%>
</body>
</html>