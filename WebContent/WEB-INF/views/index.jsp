<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>어서오세요. WAP 입니다.</title>
<link href="css/index.css" type="text/css" rel="stylesheet" />
<link href="css/header.css" type="text/css" rel="stylesheet" />
<link href="css/footer.css" type="text/css" rel="stylesheet" />
<script src="js/index.js"></script>

</head>
<body>
	<!-- header -->
	<header class="header">
	<div class="nav-main">
		<div class="container">
			<div class="nav-inner">
				<div id="logo">
					<a href="">WAP</a>
				</div>
				<ul class="navbar-left">
					<li><a href="">프로젝트 등록</a></li>
					<li><a href="project/list">프로젝트 찾기</a></li>
					<li><a href="">파트너스 목록</a></li>
					<li><a href="tutorial/ClientUse">이용방법</a></li>
				</ul>

				<span class="navbar-right">
					<span class="log-in"><a class="btn-login" href="/WAP/member/login" >로그인</a></span>
					<span class="sign-up"><a class="btn-signup" href="/WAP/member/signup">회원가입</a></span>
				</span>
			</div>
		</div>
	</div>
	</header>
	<!-- visual -->
		<section class="visual">
		<div class="swiper-container">
			<div class="visual-inner swiper">
				<p class="intro-top">앱 개발, 웹 디자인, 쇼핑몰 제작, 워드프레스 제작 등</p>
				<h1 class="intro-header">빠르고 안전한 아웃소싱 플랫폼</h1>
				<p class="intro-bottom">WAP의 새로운 아웃소싱을 시작해 보세요</p>
				<a class="project-add-btn" href="/WAP/member/login">무료로 프로젝트 등록하기</a>
			</div>
			<div class="visual-inner swiper">
				<p class="intro-top">당신이 원하는 클라이언트를 비교 선택</p>
				<h1 class="intro-header">당신의 가능성을 가치로! WAP</h1>
				<p class="intro-bottom">새로운 프로젝트를 찾아보세요.</p>
				<a class="project-add-btn" href="/WAP/member/signup">무료로 회원 가입하기</a>
			</div>
		</div>
		</section>
<!-- 		<section> -->
			<div class="move-cursor">
				<span class="left"><</span>
				<span class="right">></span>
			</div>
<!-- 		</section> -->
	<!--  main -->
	<div class="content">
		<!-- status -->
		<section class="status">
			<div class="status-inner">
				<div class="status-box">
					<p>등록된 프로젝트</p>
					<span>10</span>
					<span>개</span>
				</div>
				<div class="status-box">
					<p>프로젝트 등록금액</p>
					<span>10,000,000</span>
					<span>원</span>
				</div>
				<div class="status-box">
					<p>개발회사 & 프리랜서</p>
					<span>20</span>
					<span>명</span>
				</div>
			</div>
		</section>
		<!-- project list -->
		<section class="project-list">
			<div class="project-list-header">
				<p>등록된 프로젝트</p>
			</div>
			<div class="project-list-inner">

				<c:forEach var="list" items="${list}" begin="0" end="5">
					<div class="project-item">
						<h4>
							<a href="">${list.title}</a>
						</h4>
						<h5 class="project-element">
							<span>
								<img class="small-icon" src="images/krw-icon.png">
								<strong>
								<fmt:formatNumber pattern="###,###원" value="${list.cost}" />
								</strong>
								
							</span>
							<span>
								<img class="small-icon" src="images/calendar-icon.png">
								<strong>${list.period} 일</strong>
							</span>
							<span>
								<img class="small-icon" src="images/pencil-icon.png">
								<strong>${count} 명</strong>
							</span>
						</h5>
						<p class="project-content">
							${list.content}
						</p>
						<p class="project-skills">
							<span class="skills-tag">JAVA SCRIPT</span>
							<span class="skills-tag">HTML</span>
							<span class="skills-tag">JSP</span>
							 ...
						</p>
					</div>
				</c:forEach>

			</div>
		</section>
		<!-- wap process -->
		<section class="wap-process">
			<div class="wap-process-inner">
				<p>WAP 프로세스</p>
				<img src="images/process.png" />
				<div>
					<span>프로젝트 등록</span>
					<span>지원자 비교,선택</span>
					<span>미팅 및 계약</span>
					<span>프로젝트 진행</span>
					<span>프로젝트 완료</span>
				</div>
			</div>
		</section>
		<!-- sign up -->
		<section class="sign-up">
			<div class="sign-up-inner">
				<div>
					<span>프로젝트를 찾고 있는 프리랜서이신가요?</span>
					<a class="sign-up-btn" href="/WAP/member/signup">회원가입하기</a>
				</div>
			</div>
		</section>
		<!-- benefit -->
		<section class="benefit">
			<div class="benefit-header">빠르고 안전한 WAP</div>
			<div class="benefit-inner">
				<div class="benefit-item">
					<img class="small-img" src="images/benefit_first.png">
					<h3>무료로 더 쉽게 프로젝트를 등록</h3>
					<p>
						원하는 프로젝트를<br>
						쉽고 빠르게 진행할 수 있습니다.<br>
						수많은 WAP 파트너들에게<br>
						당신의 프로젝트를 소개해 보세요.
					</p>
				</div>
				<div class="benefit-item">
					<img class="small-img" src="images/benefit_second.png">
					<h3>실력있는 지원자를 한눈에 비교 선택</h3>
					<p>
						다양한 지원자들의 포트폴리오와<br>
						클라이언트의 평가를<br>
						비교할 수 있습니다.<br>
						위시켓의 전문가들을 만나보세요.
					</p>
				</div>
				<div class="benefit-item">
					<img class="small-img" src="images/benefit_third.png">
					<h3>안전한 거래를 위한 평가 시스템</h3>
					<p>
						클라이언트와 지원자 간의<br>
						상호 평가 시스템을 통해<br>
						프로젝트 진행에 앞서<br>
						신뢰도를 확인해보세요.
					</p>
				</div>
			</div>
		</section>
		<!-- project add -->
		<section class="project-add">
			<div class="project-add-inner">
				<span>지금 당신의 프로젝트를 등록해보세요.</span>
				<a class="project-add-btn" href="/WAP/member/login">프로젝트 등록하기</a>
			</div>
		</section>
	</div>
	<!-- footer -->
	<div id="footer">
		<div class="footer-container">
			<div class="footer-inner">
				<div class="info">
					<h1>WAP</h1>
					<ul>
						<li>(02) 6925-4849</li>
						<li>help@naver.com</li>
						<li>Kakao ID 친구추가: @wap</li>
						<li>고객센터 운영시간: 오전 10시부터 오후 6시까지(공휴일 제외)</li>
						<li>주식회사 WAP / 사업자등록번호: 209-81-57303 / 대표이사: 박우범</li>
						<li>서울특별시 강남구 테헤란로43길 18 SC빌딩 4층 (주) WAP</li>
					</ul>
				</div>
				<nav>
				<h1>이용방법</h1>
				<ul>
					<li><a href="">서비스 소개</a></li>
					<li><a href="tutorial/ClientUse">클라이언트 이용방법</a></li>
					<li><a href="">파트너스 이용방법</a></li>
					<li><a href="">신뢰와 안전</a></li>
					<li><a href="">이용요금</a></li>
					<li><a href="">자주 묻는 질문</a></li>
				</ul>
				</nav>
				<nav>
				<h1>뉴스센터</h1>
				<ul>
					<li><a href="newscenter/all">전체보기</a></li>
<!-- 					<li><a href="newscenter/notice" value="공지사항">공지사항</a></li> -->
<!-- 					<li><a href="newscenter/partner" value="파트너">파트너</a></li> -->
<!-- 					<li><a href="newscenter/wap" value="WAP 소식">WAP</a></li> -->
					<li><a href="newscenter/notice?p=${i}&f=${param.f}&q=${'공지사항'}">공지사항</a></li>
					<li><a href="newscenter/partner?p=${i}&f=${param.f}&q=${'파트너'}">파트너</a></li>
					<li><a href="newscenter/wap?p=${i}&f=${param.f}&q=${'WAP 소식'}">WAP</a></li>
				</ul>
				</nav>
				<nav>
				<h1>회사 이야기</h1>
				<ul>
					<li><a href="">회사소개</a></li>
					<li><a href="">이용약관</a></li>
					<li><a href="">개인정보 처리방침</a></li>
					<li><a href="">페이스북</a></li>
					<li><a href="">블로그</a></li>
				</ul>
				</nav>
			</div>
		</div>
	</div>
</body>
</html>