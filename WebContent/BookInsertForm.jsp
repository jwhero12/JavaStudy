<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <style>
	h1{background-color:lightgray; padding:20px; vertical-align:center; text-align:left;}
	table{text-align:left;}
	td{font-weight:bolder;}
	div{clear:left;}
</style>
<meta charset="UTF-8">
<title>도서 정보 입력</title>
</head>
<body>
	<jsp:include page="/top.jsp" flush="false"/>
   <h1>도서 등록</h1>
   <form action = "BookInfo.jsp" method="post">
   <table width="400" height="100" cellpadding="10px">
   <tr><td>도서코드</td><td><input type="text" name="code" ></td></tr>
   <tr><td>도서명</td><td><input type="text" name="name"></td></tr>
   <tr><td>가격 </td><td><input type="text" name="price" ></td></tr>
   <tr><td>저자</td> <td><input type="text" name="human"></td></tr>
   <tr><td>출판사 </td><td><input type="text" name="publisher" ></td></tr>
   <tr><td>출판일 </td><td><input type="text" name="date"></td></tr>
   <tr><td>총 페이지 수 </td><td><input type="text" name="page1"></td></tr>
   <tr><td>상세 정보</td><td><textarea rows="5" cols="22" name="inter" onclick="if(this.value=='100자 이상 적어주세요.'){this.value=''}">100자 이상 적어주세요.</textarea></td></tr>
   <tr><td>분류</td><td><input type="text" name="bun"></td></tr>
   <tr><td>재고 수</td><td><input type="text" name="count"></td></tr>
   <tr><td>상태 </td> 
   <td>
      <input type="radio" name="books" value="신규도서" checked>신규도서
      <input type="radio" name="books" value="중고도서" >중고도서
      <input type="radio" name="books" value="e-book" >e-book
   </td>
   </tr>
   <tr><td>이미지</td>
   <td><input type="file" name="fileName"></td></tr>
   </table>
   <br>
   <div class="button">
   <input type="submit" value="등록">
   </div>
   </form>
   <hr>
   <jsp:include page="/footer.jsp" flush="flase"/>
</body>
</html>