<%@page import="DTO.SangpumDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%	request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> <title>상품 delete</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <link rel="stylesheet" href="./CSS/projcss.css">
   <script src="./js/modernizr.js"></script>
      <script src="../JavaScript/Member_javascript.js"></script>
 </head>

 <body>
 <%@ include file="./CSS/indexHeader.jsp"%>

   <div style="position: absolute; top: 300px; left: 400px; width: 900px; text-align:center;">
   
<table border="1">
 <form ACTION="sang.do?command=sangpumdelete" METHOD=POST>

<tr><td>코드</td> <td>삭제하고 싶은 데이터의 board1_NUM </td> <td><input type=text name=deleteboard1_NUM> </td>  </tr>
<tr> <td colspan=3 align="center"> 
<input type="submit" value="삭제시도">
<input type="button" value="취소 index로 돌아가기"  onClick="script: location.href='index.jsp'"> </td> </tr>
</form>
</table>

<a href="sang.do?command=sangpum">상품보기</a>
<br/>
<a href="ysangpum_beforeinsert.jsp">상품 입력하기(sql insert)</a>

<br>
<a href="ysangpum_update.jsp">상품 수정하기(sql update)</a>

<br>
<a href="ysangpum_delete.jsp">상품 삭제하기(sql delete)</a>
</div>
<%@ include file="./CSS/indexFooter_absolute.jsp"%>
   
   
</body>
</html>



