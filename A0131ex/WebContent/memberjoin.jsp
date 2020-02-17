﻿<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
 <html lang="en">
 <head>   <meta charset="UTF-8"> 
        <title>회원가입 AJax테스트 html</title>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <link rel="stylesheet" href="./CSS/projcss.css">
      <script src="./JavaScript/Member_javascript.js"></script>
      
  <script type="text/javascript"> 
  $(document).ready(function(){
	  $("#btt11").click(function(){
		testAjax();
	  });	  
  });
  function testAjax(){
	  alert("성공1");
	  $.ajax({
			type:"post",
			url: "./idoverlapajax.jsp",
			data: {
				abidlog: $('#idaj11').val(),
			},
			success: whenSuccess,
			error: whenError 
		  });	  
	  
  }
  
  function whenSuccess(resdata){ 
	 alert(resdata);
  $("#ajaxReturn2").html(resdata);
  }
  
  function whenError(){
	  alert("Error");
  }
  //////////////////
  </script>
  
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

 </head>
 <body>
 <%@ include file="./CSS/indexHeader.jsp"%>
   
  <section>
  <div style="position:relative;"> <img src="./projImg/backimg_member2.jpg">  </div>
    <!--처음의 <div style="position:relative; left:350px;"> <img src="./projImg/backimg_member.jpg">  </div> 은
  "position:relative; left:350px;" 하니 옆으로 스크롤이 생기는거 같다  -->
 <table cellpadding="3" cellspacing="1" align="center" style="width:1300px;  position:relative; left:50px;">
 <form name="memtable" ACTION="memberjoinsql.jsp" METHOD=POST>

<tr>
  <td class=namecolor>이름 :</td> <td class=tdstyle><input type="text" maxlength="20" placeholder="이름을 입력하세요" name="nameck">

  <!--    <button type="button" onClick="namechck()" >이름확인 </button>  -->  
  </td></tr>
  <tr>
   <td class=namecolor>국적 :</td> <td class=tdstyle>
  국적 <input type = "radio" name="nationalch" value="Citizen" checked>내국인
<input type = "radio" name="nationalch" value="Foreigner">외국인 
<!-- <button type="button" onClick="nationchck()" >국적확인  </button> -->
  </td></tr>
    
<td class=namecolor>성별 :  </td> <td class=tdstyle>
<input type="radio" name="selectsex" checked value="man" checked>남성
 <input type="radio" name="selectsex" value="woman">여성 </td></tr>

  <tr>
  <td class=namecolor>아이디 :</td> <td class=tdstyle><input type="text" size="20" maxlength="13" name="idcheck" id="idaj11" placeholder="아이디를 입력하세요">  
 <!--  <button type="button" onClick="idcheckf()" > 아이디 입력 확인 </button>  --> 
  <!--   <button type="button" onClick="idoverlapf()" > 아이디 중복 확인 </button>  --> 
    <input type="button" id="btt11" value="아이디 ajax로 중복확인"></td>  </tr> 
  
 <!-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% -->
    <tr><td class=namecolor>
   중복 체크 결과</td>
    <td class=tdstyle id="ajaxReturn2">  결과창  </td></tr>
 <!-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% -->
 
   <tr>
 <td class=namecolor> 비밀번호 : </td> <td class=tdstyle> <input type="password" name="passwd" size="25" maxlength="20" placeholder="비밀번호를 설정하세요"> 
 <!--  <button type="button" onClick="passwdvalidcheck()"> 적합여부</button> -->  |
 <input type="password" name="passwdcheck" size="25" maxlength="20" placeholder="비밀번호를 확인을 위해 다시 입력하세요">
  <!--   <button type="button" onClick="passwdinputcheck()">일치 확인</button> -->  </td></tr>

  <tr>
 <td class=namecolor> 생년월일:  </td> <td class=tdstyle> <select name="bdyear">  <option value="2010">2010</option>
<option value="2009">2009</option> <option value="2008">2008</option> <option value="2007">2007</option> <option value="2006">2006</option> <option value="2005">2005</option>
<option value="2004">2004</option> <option value="2003">2003</option> <option value="2002">2002</option> <option value="2001">2001</option> <option value="2000">2000</option>
<option value="1999">1999</option> <option value="1998">1998</option> <option value="1997">1997</option> <option value="1996">1996</option> <option value="1995">1995</option>
<option value="1994">1994</option> <option value="1993">1993</option> <option value="1992">1992</option> <option value="1991">1991</option> <option value="1990">1990</option>
<option value="1989">1989</option> <option value="1988">1988</option> <option value="1987">1987</option> <option value="1986">1986</option> <option value="1985">1985</option>
<option value="1984">1984</option> <option value="1983">1983</option> <option value="1982">1982</option> <option value="1981">1981</option> <option value="1980">1980</option>
		  </select>년
		  <select name="bdmonth">  <option value="1">1</option>
          <option value="2">2</option>            <option value="3">3</option>            <option value="4">4</option>
          <option value="5">5</option>          <option value="6">6</option>          <option value="7">7</option>
          <option value="8">8</option>          <option value="9">9</option>          <option value="10">10</option>
          <option value="11">11</option>          <option value="12">12</option>     </select>월		  
		  <select name="bdday">  <option value="1">1</option>
          <option value="2">2</option>            <option value="3">3</option>            <option value="4">4</option>
          <option value="5">5</option>          <option value="6">6</option>          <option value="7">7</option>
          <option value="8">8</option>          <option value="9">9</option>          <option value="10">10</option>
          <option value="11">11</option>          <option value="12">12</option>          <option value="13">13</option>
          <option value="14">14</option>          <option value="15">15</option>          <option value="16">16</option>
          <option value="17">17</option>          <option value="18">18</option>          <option value="19">19</option>
          <option value="20">20</option>          <option value="21">21</option>          <option value="22">22</option>
          <option value="23">23</option>          <option value="24">24</option>          <option value="25">25</option>
          <option value="26">26</option>          <option value="27">27</option>          <option value="28">28</option>
          <option value="29">29</option>          <option value="30">30</option>          <option value="31">31</option>
		  </select>일 </td></tr>


    <tr>
 <td class=namecolor> 일반전화 :  </td> <td class=tdstyle>  <select name="telphone1"><option value="02"> 02</option>
<option value="080"> 080</option>
<option value="070"> 070</option>  </select> -<input type="text" style="width:80px" name="telphone2" >-<input type="text" style="width:80px" name="telphone3" ></td></tr>
   <tr>
 <td class=namecolor> 휴대전화 :  </td> <td class=tdstyle>   이동통신회사 <select style="width:60px" name="celphone1">
<option value="KT"> KT</option>
<option value="SKT"> SKT</option>
<option value="LGU"> LGU</option>
<option value="others">알뜰폰회사</option></select>
번호 <select name="celphone2">
<option value="010"> 010</option>
<option value="011"> 011</option>
<option value="016"> 016</option> </select>-<input type="text" style="width:80px" name="celphone3">-<input type="text" style="width:80px" name="celphone4"></td></tr>
  <tr>
 <td class=namecolor>  가입경로 :  </td> <td class=tdstyle> <input type="checkbox" name="joinreason1" value="searching">검색
  <input type="checkbox" name="joinreason2" value="suggestion">지인추천
  <input type="checkbox" name="joinreason3" value="advertise">포털 홍보 
  <!--  <button type="button" onclick="suggestinch()"> 추천알림창</button> -->
  </td> </tr>

   <tr>
 <td class=namecolor>   이메일 :  </td> <td class=tdstyle>  <input type="text" name="emailinput1"> @ 
 <!--</td> <td> 여기에 넣으니 그냥 옆칸으로 이동해서 생기고 공백칸도 만들어짐-->
  <select name="emailinput2">
<option value="non"> 선택</option>
<option value="naver.com"> naver.com</option>
<option value="hanmail.net"> hanmail.net</option>
<option value="gmail.com"> gmail.com</option> </select></td> </tr>
 <!-- 다음 api 주소 넣기 시작-->
   <tr>
 <td rowspan=4 class=namecolor> 주소입력 : </td> <td class=tdstyle>
  <input type="text" id="sample6_postcode" placeholder="우편번호" name="addres1" size="20">
<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br> </td></tr>

 <tr>  <td class=tdstyle> <input type="text" id="sample6_address" placeholder="주소" name="addres2" size="30"><br> </td> </tr>

   <tr> <td class=tdstyle>  <input type="text" id="sample6_detailAddress" placeholder="상세주소" name="addres3" size="30"> </td> </tr>

 <tr> <td class=tdstyle> <input type="text" id="sample6_extraAddress" placeholder="참고항목" name="addres4" size="30"> </td> </tr>
 <!-- 다음 api 주소 넣기 시작-->
   <tr>
 <td class=namecolor> 가입전 하고싶은말: </td> <td class=tdstyle>  <textarea rows="5" cols="80" class=introduce_box name="extresaying"></textarea>  </td> </tr>

 <tr>  <td colspan=2 align="center">  
 <button type="button" class=jointestborder2  onClick="totalcheck()">가입전 확인</button>
 <button type="button" class=jointestborder1 onClick="totalfinalcheck()"> ** 회원가입 완료 **</button> 
 <button type="reset" class=jointestborder2> ** 회원가입취소**</button></td> </tr>
 </form>
</table>
</section>

<%@ include file="./CSS/indexFooterwfloat1_index.jsp"%>

 </body>
</html>