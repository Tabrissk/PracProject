<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
 <html lang="en">
 <head>   <meta charset="UTF-8">         <title>회원 수정AJax테스트 html</title>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <link rel="stylesheet" href="./CSS/projcss.css">
      <script src="./JavaScript/Member_javascript.js"></script>
      <%-- header에 
      String loginstatus = (String)session.getAttribute("loginstatus"); 
      String idcheck = (String)session.getAttribute("idcheck");
     String nameck = (String)session.getAttribute("nameck");
     가 있다
       --%>
  <script type="text/javascript"> 
  function totalupdatecheck()  {
	//국적이 뭔지. 공백으로 두지 않았는지를 for안의 if뒤에 else로 두고 alert을 설정
	     for(var i=0; i < memtable.nationalch.length ; i++){
	    if(memtable.nationalch[i].checked==true){
		alert(memtable.nationalch[i].value + " 이시네요. 확인해 주세요")
		}   }
	//비번 확인
	   var pass1 = memtable.passwd.value ;
	  var pass2 = memtable.passwdcheck.value ;
	   var passlen = memtable.passwd.value.length ;
	   
	  if((pass1 === pass2)&&(pass1!="") ) { 
	  alert("적합한 비밀번호이고 확인용 비밀번호와 서로 일치합니다.")
	  }
	  else if((pass1 === pass2)&&(passlen < 5)){
		   alert("일치하여도 비밀번호는 5자리 이상 입력해주세요.")
	  memtable.passwd.value =""; //초기화해서 비밀번호를 다시 입력할수 있게
	  memtable.passwd.focus() 
	  }
	  else 	  {
	   alert("비밀번호가 일치하지 않습니다. 다시 입력해주세요.")
	  memtable.passwdcheck.value =""; //초기화해서 비밀번호 확인을 다시 입력
	  memtable.passwdcheck.focus()
	    }
		
	//일반 전화 공백확인
	  var tel2str = memtable.telphone2.value 
	  var tel3str = memtable.telphone3.value

	  
	//휴대전화 공백
	  var cel3str = memtable.celphone3.value 
	  var cel4str = memtable.celphone4.value

	//이메일 공백으로

	  var emailstr = memtable.emailinput1.value

	//주소를 공백으로 두지 않았는지 1. 처음 우편번호 검색
	  var adrstr1 = memtable.addres1.value  
	  
	//주소를 공백으로 두지 않았는지 2. 추가 입력때
	    var adrstr3 = memtable.addres3.value

	  //하고싶은 말을 공백으로 두지 않았는지
	  var saystr=memtable.extresaying.value
	  
	  if((idtemp != '')&&(tempname != '')&&(pass1 != pass2) && (tel2str != '')&&(tel3str != '')&&(cel3str != '')&&(cel4str != '')&&(emailstr != '')&&(adrstr1 != '')&&(adrstr3 != '')&&(saystr !=''))
	  {
		  alert("불합격 뭔가 비어있거나  뭔가 문제가 있습니다.")
		  beforeinsert = 1;
	  }
	  else {
		  alert("문제가 없습니다.")
		   memtable.submit()
	  }
	}

  </script>
  
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

 </head>
 <body>
<%@ include file="./CSS/indexHeader.jsp"%>
  <%--  String idcheck = (String)session.getAttribute("idcheck"); 는 header에 있음 --%>
  <section>
  <div style="position:relative;"> <img src="./projImg/backimg_member2.jpg">  </div>
    <!--처음의 <div style="position:relative; left:350px;"> <img src="./projImg/backimg_member.jpg">  </div> 은
  "position:relative; left:350px;" 하니 옆으로 스크롤이 생기는거 같다  -->
 <table cellpadding="3" cellspacing="1" align="center" style="width:1300px;  position:relative; left:50px;">
 <form name="memtable" ACTION="memberupdatesql.jsp" METHOD=POST>

<tr><td class=namecolor>아이디 :(수정불가)</td> <td class=namecolor><%=(String)session.getAttribute("idcheck")%></td> </tr>
<tr><td class=namecolor>이름 :(수정불가)</td> <td class=namecolor><%=(String)session.getAttribute("nameck")%></td> </tr>
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
 <td class=namecolor> 비밀번호 : </td> <td class=tdstyle> <input type="password" name="passwd" size="25" maxlength="20" placeholder="비밀번호를 설정하세요"> 
 <!--  <button type="button" onClick="passwdvalidcheck()"> 적합여부</button> -->  |
 <input type="password" name="passwdcheck" size="25" maxlength="20" placeholder="비밀번호를 확인을 위해 다시 입력하세요">
  <!--   <button type="button" onClick="passwdinputcheck()">일치 확인</button> -->  </td></tr>

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
 <button type="button" class=jointestborder1 onClick="totalupdatecheck()"> ** 회원수정 완료 **</button> 
 <button type="reset" class=jointestborder2> ** 회원가입취소**</button></td> </tr>
 </form>
</table>
</section>

<%@ include file="./CSS/indexFooterwfloat1_index.jsp"%>

 </body>
</html>