<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원가입 페이지</h1>
	<form action="/auth/insertuser" method="post">
		<label for="id">아이디 :</label>
		<input id="id"type="text" name="username"><br>
		<span>정규식검사에 따른 체크포인트 표시박스</span><br>
		<label for="pw">비밀번호 :</label>
		<input id="pw"type="password" name="password"><br>
		<span>정규식검사에 따른 체크포인트 표시박스</span><br>
		<label for="nickname">닉네임 :</label>
		<input id="nickname"type="text" name="nickname"><br>
		<span>정규식검사에 따른 체크포인트 표시박스</span><br>
		<label for="client-name">성함 :</label>
		<input id="client-name"type="text" name="clientname"><br>
		<label for="tel">연락처 :</label>
		<input id="tel"type="text" name="clientname"><br>
		<label for="address">주소 :</label>
		<input id="address" type="text" name="clientname"><br>
		
		<input type="submit" value="가입">



	
	</form>
</body>
</html>