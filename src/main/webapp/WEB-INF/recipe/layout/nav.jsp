<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
  	<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  	<!-- include summernote css/js -->
	<link href="https://cdn.jsdelivr.net/npm/summernote@0.9.0/dist/summernote.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/summernote@0.9.0/dist/summernote.min.js"></script>
	
	<!-- 구글폰트  -->
  	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
	
	<!-- 네비css  -->
	<link rel="stylesheet" href="/css/nav.css">
</head>
<body>
  <main>
  <header>
	<nav>
		<div class="logo">
			<a href="/"><img src="/img/logo.png" alt=""></a>
			<h1><a href="/">요리연구소</a></h1>
		</div>
		<c:if test="${sessionScope.principal == null }">
			<div class="account">
				<a href="/auth/login">로그인</a>
				<div class="user-interface">
					<a href="/auth/insertuser">회원가입 |</a>
					<a href="/auth/insertuser">아이디찾기 |</a>
					<a href="/auth/insertuser">비밀번호 찾기</a>
				</div>
			</div>
		</c:if>
		<c:if test="${sessionScope.principal != null }">
			<div class="account">
				<div class="user-name">${sessionScope.principal.nickname}님 환영합니다.</div>
				<div class="user-interface">
					<a href="/auth/userinfo">내정보 |</a>
					<a href="/auth/logout">로그아웃 |</a>
					<a href="/post">게시물 작성</a>
				</div>
			</div>
		</c:if>
	</nav>
  </header>