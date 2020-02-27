<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="DTO.*" %>
<%@page import="DAO.*" %>
 <html lang="en">
 <head>   <meta charset="UTF-8">     <title>mypage 회원정보 수정 페이지</title>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <link rel="stylesheet" href="./CSS/projcss.css">
  <link rel="stylesheet" href="./CSS/bootstrap.min.css">
      <script src="./JavaScript/Member_javascript.js"></script>
      
  <script type="text/javascript"> 
  function memberupdatef() {
		if(confirm("수정 하시겠습니까?")) {
		document.location = 'memberupdateform.jsp?' 
	} }
  </script>

 </head>
 <body>
 <%@ include file="./CSS/indexHeader.jsp" %>

     <%-- header에 이미 있음  String idcheck = (String)session.getAttribute("idcheck");
     String nameck = (String)session.getAttribute("nameck"); --%>
  <section>

   <div style="position:relative; left: 200px; top: 20px; width:70%; margin-right:0;" > 
  <h2> mypage 회원정보 수정 버튼 </h2>
			<input type="button" value="회원 수정하기" onClick="memberupdatef()"
				class="btn btn-primary">

		</div>

</section>

<%@ include file="./CSS/indexFooter_absolute.jsp"%>

 </body>
</html>