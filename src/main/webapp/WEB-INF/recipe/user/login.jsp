<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>

	<h1>로그인 페이지</h1>
	<form action="/auth/login" method="post">
			<label for="id">아이디 :</label>
		<input id="id"type="text" name="username"><br>
		<label for="pw">비밀번호 :</label>
		<input id="pw"type="password" name="password"><br>
		<input type="submit" value="로그인">
	</form>
	

<%@ include file="../layout/footer.jsp" %>
