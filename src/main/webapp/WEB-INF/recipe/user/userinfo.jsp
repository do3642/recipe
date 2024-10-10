<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<title>요리연구소 회원정보</title>
<link rel="stylesheet" href="/css/main.css">
<link rel="stylesheet" href="/css/userinfo.css">

<%@ include file="../layout/nav.jsp" %>

	<section>
		<article>
			<form>
				<label for="id">아이디</label><br>
				<input id="id"type="text" name="username" value="${sessionScope.principal.username}"disabled><br>
				<label for="pw">비밀번호</label><br>
				<input id="pw"type="password" name="password" value="${sessionScope.principal.password}"><br>
				<label for="nickname">닉네임</label><br>
				<input id="nickname"type="text" name="nickname" value="${sessionScope.principal.nickname}"><br>
				<label for="client-name">성함</label><br>
				<input id="client-name"type="text" name="clientname" value="${sessionScope.principal.clientname}" disabled><br>
				<label for="tel">연락처</label><br>
				<input id="tel"type="text" name="tel" value="${sessionScope.principal.tel}"><br>
				<label for="address">주소</label><br>
				<input id="address" type="text" name="address" value="${sessionScope.principal.address}"><br>
				<p class="point"><span>포인트</span><span>1000 p</span></p>
				<button class="change-btn">내정보 수정</button>
			</form>
			<div class="alert-box">
				<p>정말 수정하시겠습니까?</p>
				<div class="alert-button">
					<button>네</button><button>아니요</button>
				</div>
			</div>
		</article>
	</section>

<div class="none-click"></div>
<script src="/js/userinfo.js"></script>
<%@ include file="../layout/footer.jsp" %>
