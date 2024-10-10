<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<title>요리연구소 로그인</title>
<link rel="stylesheet" href="/css/userinfo.css">
<link rel="stylesheet" href="/css/login.css">

<%@ include file="../layout/nav.jsp" %>

	<section>
		<article>
			<h1>로그인</h1>
			<form action="/auth/login" method="post">
					<label for="id">아이디</label><br>
				<input id="id"type="text" name="username"><br>
				<label for="pw">비밀번호</label><br>
				<input id="pw"type="password" name="password"><br>
				<input class="login-btn" type="submit" value="로그인">
			</form>
		</article>
	</section>
	
<%@ include file="../layout/footer.jsp" %>