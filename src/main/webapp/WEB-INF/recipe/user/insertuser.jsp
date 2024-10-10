<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<title>요리연구소 회원정보</title>
<link rel="stylesheet" href="/css/insertUser.css">

<%@ include file="../layout/nav.jsp" %>

	<section>
			<article>
				<h1>회원가입</h1>
					<form action="/auth/insertuser" method="post">
						<label for="id">아이디</label><br>
						<input id="id"type="text" name="username"><br>
						<span></span><br>
						<label for="pw">비밀번호</label><br>
						<input id="pw"type="password" name="password"><br>
						<span></span><br>
						<label for="nickname">닉네임</label><br>
						<input id="nickname"type="text" name="nickname"><br>
						<span></span><br>
						<label for="client-name">성함</label><br>
						<input id="client-name"type="text" name="clientname"><br>
						<label for="tel">연락처</label><br>
						<input id="tel"type="text" name="tel"><br>
						<label for="address">주소</label><br>
						<input id="address" type="text" name="address"><br>
						
						<input class="insert-btn" type="submit" value="가입" disabled>
				</form>
			</article>
	</section>
	
<script src="/js/insertuser.js"></script>
<%@ include file="../layout/footer.jsp" %>