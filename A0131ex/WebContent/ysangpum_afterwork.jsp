<%@page import="DTO.SangpumDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%	request.setCharacterEncoding("utf-8");%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> <title>작업 완료 페이지</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <link rel="stylesheet" href="./CSS/projcss.css">
   <script src="./js/modernizr.js"></script>
      <script src="../JavaScript/Member_javascript.js"></script>
 </head>

 <body>
 <%@ include file="./CSS/indexHeader.jsp"%>

   <div style="position: absolute; top: 300px; left: 400px; width: 900px; text-align:center;">
   

<h3> 작업을 완료 했습니다. </h3>
<br>

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



