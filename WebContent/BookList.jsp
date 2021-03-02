<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest,com.oreilly.servlet.multipart.DefaultFileRenamePolicy,java.util.*,java.io.*" %> 
<%@ page import="java.sql.*" %> 
<!DOCTYPE html>
<html>
<head>
<style>
	h1{background-color:lightgray; padding:20px; vertical-align:center; text-align:left;}
	form{text-align:left;}
</style>
<meta charset="UTF-8">
<title>도서 목록</title>
</head>
<body>
   <jsp:include page="/top.jsp" flush="false"/>
   <h1>도서 목록</h1>
   <form action = "BookInsertForm.jsp" method="get">
   <%
	String real=application.getRealPath("/WEB-INF/board/BookInfo.txt");
	
	BufferedReader br=new BufferedReader(new FileReader(real));
	
	while (true){
		String str=br.readLine();
		if(str==null)
			break;
		out.println(str+"<br>");
	}
	br.close();
	%>
	</form>
	<hr>
	<jsp:include page="/footer.jsp" flush="flase"/>
</body>
</html>