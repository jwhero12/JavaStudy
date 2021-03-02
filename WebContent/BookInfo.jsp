<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest,com.oreilly.servlet.multipart.DefaultFileRenamePolicy,java.util.*,java.io.*" %> 
<%@ page import="java.sql.*" %> 
<!DOCTYPE html>
<html>
<head>
<style>
	table {width:60%;height: 100px;margin: auto;text-align: left;font-weight:bolder;}
	h1{background-color:lightgray; padding:20px; vertical-align:center; text-align:left;}
</style>
<meta charset="UTF-8">
<title>도서 정보</title>
</head>
<body>
   <jsp:include page="/top.jsp" flush="false"/>
   <h1>도서 정보</h1>
   <form action = "BookList.jsp" method="post"> 
   <%
   request.setCharacterEncoding("UTF-8");
   String name=request.getParameter("name");
   String code=request.getParameter("code");
   String price=request.getParameter("price");
   String human=request.getParameter("human");
   String publisher=request.getParameter("publisher");
   String date=request.getParameter("date");
   String page1=request.getParameter("page1");
   String inter=request.getParameter("inter");
   String bun=request.getParameter("bun");
   String count=request.getParameter("count");
   String books=request.getParameter("books");
   String realFolder = "";
   String fileName = "BookInfo.txt";
   String filePath=application.getRealPath("/WEB-INF/board/BookInfo.txt");
   FileWriter writer = new FileWriter(filePath);
	try{
		String str=name+"\n\n";
		str += inter+"\n\n";
		str += human+"|"+publisher+"|"+price;
		writer.write(str);
	} catch(IOException e){
		out.println("파일에 데이터를 저장할 수 없습니다.");
	} finally{
		writer.close();
	}
   int size = 1024 * 1024 * 10;
   String encType = "UTF-8";
   String savefile = "FileFolder";
   ServletContext scontext = getServletContext(); 
   realFolder = scontext.getRealPath(savefile);
   try{
   MultipartRequest multi = new MultipartRequest(request, realFolder, size, encType, new DefaultFileRenamePolicy());
   Enumeration<?> files = multi.getFileNames();
   String file1 = (String)files.nextElement();
   fileName = multi.getFilesystemName(file1);
   }catch(Exception e){
      e.printStackTrace();
   }
   String fullpath = realFolder + "\\" + fileName;
   
   %>
   <table cellpadding = "10px">
   <tr>
   <td colspan = "20">
   <img src="<%= fullpath %>" ></img>
   </td>
   <td colspan = "20">
   <h2><%=request.getParameter("name") %></h2>
   <%=inter %><br><br>
   	도서코드: <%=code %><br>
   	저자: <%=human %><br>
  	출판사 : <%=publisher %><br>
        출판일 : <%=date %><br>
        총 페이지 수 : <%=page1 %><br>
        재고 수 :<%=count %><br>
        분류 : <%=bun %><br>
        상태 : <%=books %><br>
        가격 : <%=price %><br><br>
    <input type="submit" value="도서목록">
    </td>
    </tr>
   </table>
   </form>
   <hr>
   <jsp:include page="/footer.jsp" flush="flase"/>
</body>
</html>