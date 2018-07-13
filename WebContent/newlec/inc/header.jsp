<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String ctx=request.getContextPath();

%>
<header id="header">
		<div class="content-container">
			<h1>
				<img alt="뉴렉처 온라인" src="<%=ctx %>/images/logo.png" />
			</h1>
			<!-- 제목 h1은 문서에서 한번만 와야한다 -->
			<section id="head">
				<h1>헤더</h1>
				<nav id="main-menu">
					<h1>메인 메뉴</h1>
					<ul>
						<li class="first"><a href="">학습가이드</a></li>
						<li><a href="">강좌선택</a></li>
						<li class="last"><a href="">AnswerIs</a></li>
					</ul>
				</nav>
				<!-- 입력폼 -->
				<nav id="search-form">
					<h1>강좌 검색 폼</h1>
					<form class="h1">
						<!-- <fieldset> -->
						<!-- 필드 지정 -->
						<!-- <legend>검색필드</legend> -->
						<!-- 필드명?필드이름? -->
						<label>과정검색</label>
						<!-- 어떤걸 검색할지 -->
						<input type="text" /> <input type="submit" value="검색" />
						<!-- </fieldset> -->
					</form>
				</nav>

				<nav id="member-menu">
					<h1>회원메뉴</h1>
					<ul>
						<li><a href="">HOME</a></li>
						<li><a href="">로그인</a></li>
						<li><a href="">회원가입</a></li>
					</ul>
				</nav>
				<nav id="client-menu">
					<h1>고객센터메뉴</h1>
					<ul>
						<li><a href="">마이페이지</a></li>
						<li><a href="">고객센터</a></li>
					</ul>
				</nav>

			</section>
		</div>
	</header>
</body>
</html>