<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
 <html lang="en">
 <head>   <meta charset="UTF-8">         <title>회원 수정AJax테스트 html</title>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <link rel="stylesheet" href="./CSS/projcss.css">
      <script src="./JavaScript/Member_javascript.js"></script>

 </head>
 <body>
 <%@ include file="./CSS/indexHeader.jsp"%>

   <section>
   <div style="position: absolute; top: 300px; left: 400px; width: 900px; text-align:center;">

<h3> 회원 정보가 수정 되었습니다.   </h3>
<br>
<a href="index.jsp" style="text-"> index페이지로 돌아가기 </a>
</div>
</section>
<%@ include file="./CSS/indexFooter_absolute.jsp"%>


 </body>
</html>