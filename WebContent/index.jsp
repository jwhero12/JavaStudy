<%@ page import="java.io.*,java.util.Date,java.text.SimpleDateFormat" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
	h1{background-color:lightgray; padding:100px; vertical-align:middle; text-align:center;}
	h3{text-align:center;}
</style>
<meta charset="UTF-8">
<title>웹 쇼핑몰 페이지</title>
</head>
<body>
	<table width="100%" border="1" cellpadding="0" cellspacing="0">
	<tr><jsp:include page="/top.jsp" flush="false"/></tr>
	<tr><h1>도서 웹 쇼핑몰에 오신 것을 환영합니다.</h1></tr>
	<tr><h3>Welcome to Web Market!</h3></tr>
	<tr>
		<%request.setCharacterEncoding("utf-8"); 
		  Date Time=new Date();
		  SimpleDateFormat simple=new SimpleDateFormat("현재 접속 시간: yyyy년 MM월 dd일 hh:mm:ss");
		%>
		<div style="text-align:center">
		<%=simple.format(Time) %>
		</div>
	</tr>
	<br>
	</table>
	<jsp:include page="/footer.jsp" flush="flase"/>
</body>
</html>