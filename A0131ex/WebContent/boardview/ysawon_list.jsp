<%@page import="DTO.SawonDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%	request.setCharacterEncoding("utf-8");%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 list</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <link rel="stylesheet" href="./CSS/projcss.css">
   <script src="./js/modernizr.js"></script>
      <script src="../JavaScript/Member_javascript.js"></script>
 </head>

 <body>
 <%@ include file="../CSS/indexHeader.jsp"%>

   <div style="position: absolute; top: 300px; left: 400px; width: 900px; text-align:center;">
   
<table border="1">
<tr><td>board1_NUM</td><td>board1_NAME</td><td>board1_PASS</td><td>board1_SUBJECT</td> <td>board1_CONTENT</td> </tr>

<%
	ArrayList<SawonDto> list = (ArrayList<SawonDto>)request.getAttribute("data");
	for(SawonDto dto : list){
%>
	<tr>
		<td><%=dto.getBoard2Num()%></td>
		<td><%=dto.getBoard2Name()%></td>
		<td><%=dto.getBoard2Pass()%></td>
		<td><%=dto.getBoard2Subject()%></td>
		<td><%=dto.getBoard2Content()%></td>
	</tr>

<%		
	}
%>
</table>
<br>

<a href="sang.do?command=sawonlist">게시글보기</a>
<br/>


</div>
<%@ include file="../CSS/indexFooter_absolute.jsp"%>
   
</body>
</html>



