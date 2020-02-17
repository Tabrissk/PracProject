<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!doctype html>
<html lang="en">  <head>  <title>로그아웃 db연습 </title> <head>   <meta charset="UTF-8"> 
        <title>1215~회원가입 2-표위에 그림 넣고 그냥 두기</title>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <link rel="stylesheet" href="./CSS/projcss.css">
   <script src="./js/modernizr.js"></script>
      <script src="./JavaScript/Member_javascript.js"></script>
 </head>
 <body>

  <%@ include file="./CSS/indexHeader.jsp"%>
  <!--  -->
    <section>
	   <div style="position:absolute; top:370px; left:350px;">
 <h2>로그아웃 완료. 안녕히 가세요 </h2>
 <%
  session.invalidate();
 %>
<a href="index.jsp"> 첫 페이지로 돌아가기 </a> <br>
<a href="memberlogin.jsp"> 로그인 페이지로 돌아가기 </a>

</div>
</section>

  <%@ include file="./CSS/indexFooter_absolute_px.jsp"%>
   
 </body>
</html>