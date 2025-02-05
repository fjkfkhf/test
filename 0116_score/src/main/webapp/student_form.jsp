<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css">
<script>
function check_insert() {
	// 학번이 공백인지 확인
	if(document.frm_insert.id.value == "" ){
		alert("학번을 입력해주세요");
		frm_insert.id.focus();
		return false;
	}
	if(   document.frm_insert.korean.value == "")	// 문자 확인
	{
		alert("국어 점수를 정확하게 입력해주세요");
		frm_insert.korean.focus();
		return false;
	}
	if(   document.frm_insert.math.value == "")	// 문자 확인
	{
		alert("수학 점수를 정확하게 입력해주세요");
		frm_insert.math.focus();
		return false;
	}
	if(   document.frm_insert.english.value == "")	// 문자 확인
	{
		alert("영어 점수를 정확하게 입력해주세요");
		frm_insert.english.focus();
		return false;
	}
	if(   document.frm_insert.history.value == "")	// 문자 확인
	{
		alert("역사 점수를 정확하게 입력해주세요");
		frm_insert.history.focus();
		return false;
	}
	alert("학생 점수 등록이 완료 되었습니다.");
	return true;
}
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <header><jsp:include page="header.jsp"></jsp:include></header>
	 <nav><jsp:include page="nav.jsp"></jsp:include></nav>
	 <section>
	  	<h3> 학생 성적 등록 </h3>
<form name="frm_insert" action="action.jsp" method="post">
<table border=1>
	<tr>
		<td> 학번  </td>
		<td> <input type="text" name="id"> </td>
	</tr>
	<tr>
		<td> 국어  </td>
		<td> <input type="text" name="korean"> </td>
	</tr>
	<tr>
		<td> 수학 </td>
		<td> <input type="text" name="math"> </td>
	</tr>
	<tr>
		<td> 영어 </td>
		<td> <input type="text" name="english"> </td>
	</tr>
	<tr>
		<td> 역사 </td>
		<td> <input type="text" name="history"> </td>
	</tr>
	<tr>
		<td colspan="2" align="center"> 
			<input type="submit" value="등 록" onclick="check_insert()">
			
		</td>
	</tr>	
</table>
</form>
	 </section>
	 <footer><jsp:include page="footer.jsp"></jsp:include></footer>
</body>
</html>