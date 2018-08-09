<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<title>프로젝트 진행중 - WAP(We Are Professional)</title>
<link href="../css/bootstrap/bootstrap.min.css" rel="stylesheet">
<link href="../css/member/style.min.css" rel="stylesheet">
<link href="../css/header.css" rel="stylesheet">
<link href="../css/footer.css" rel="stylesheet">
<link href="../css/partner/aside.css" rel="stylesheet">
<link href="../css/partner/interestPro.css" rel="stylesheet">
<link href="../css/partner/partner-input-form.css" rel="stylesheet">

<!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
<!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
<!-- —[if lt IE 9] -->
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<!-- [endif] -->

</head>
<body>
	<!-- -------header 영역-------------------------------- -->
	<jsp:include page="../inc/header.jsp" />
	<!-- -------header 영역 끝------------------------------- -->

	<!-- -------page 영역-------------------------------- -->
	<div class="page">
		<div class="content-container">
			<!-- -------사이드바 영역-------------------------------- -->
			<aside class="aside">
				<h1>파트너스 사이드 바</h1>
				<div class="sidebar">
					<div class="user-name-tag">
						<h3 class="user-name-tag-heading">파트너스</h3>
						<a href="../partner/info/edit" class="profile-setting">기본 정보
								수정하기 ></a>
						<div class="user-name-body">
							<img src="../images/default_avatar.jpg" alt=""
								class="profile-img">
							<div class="username">${sessionScope.sessionId}</div>
							<div class="email">${email}</div>
						</div>
					</div>


					<div class="sidebar-nav">
						<ul>
							<li class="active"><a href="" style="color: #fff;">프로젝트
									진행 중</a></li>
						</ul>
					</div>
				</div>
			</aside>
			<!-- -------사이드바 영역 끝-------------------------------- -->
			<div class="content">
				<main> <!-- -------page-header 영역-------------------------------- -->
				<div class="content-header">
					<section>
						<h1>프로젝트 진행 중</h1>
						<p>현재 진행 중인 프로젝트를 확인할 수 있습니다.</p>
					</section>
				</div>
				<!-- -------page-header 영역 끝-------------------------------- --> <!-- -------page-main 영역-------------------------------- -->
				<div class="content-inner">
					<div class="process-guide-box" style="margin-bottom: 25px;">
						<img src="../images/guide-success.png" style="margin: 15px;">
						<div class="process-guide-up">
							<p class="process-guide-text" style="float: left">
								1. 현재 진행 중인 프로젝트 목록입니다.<br> 2. 프로젝트는 <strong>대금 결제
									후</strong>에 진행됩니다.<br> 3. WAP은 <strong>&lt;대금보호시스템&gt;</strong>을 통해
								프로젝트가 완료될 때까지 <strong>대금을 안전하게 보호</strong>합니다.<br> 4. 프로젝트
								진행에 대한 문의는 <b>고객센터</b>로 연락 부탁드립니다.<br> <span
									style="padding-right: 17px;"></span>고객센터: (02) 6925-4849 /
								help@wap.com
							</p>
						</div>
						<div style="clear: both;"></div>
					</div>
					<section class="interest-card interest-card-new"
						style="margin-bottom: 13px;">
						<a class="interest-add-icon"
							href="/partners/manage/interest/delete/37825/"
							title="'관심 프로젝트'에서 삭제하기"><i class="fa fa-heart"></i></a>
						<div class="card-left">
							<h4 class="card-title">
								<a href="">입점 형태의 남성 쇼핑몰 플랫폼 안드로이드 및 IOS 앱 구축</a>
							</h4>
							<p class="card-expectation-data">
								<span class="card-expectation-money"><i
									class="fa fa-krw icon-margin"></i>예상금액 <span
									class="card-expectation-money-content">30,000,000원</span></span> <span
									class="card-expectation-date"><i
									class="fa fa-clock-o icon-margin"></i>예상기간 <span
									class="card-expectation-date-content">150일</span></span>
							</p>
							<p class="card-category-data">
								<span class="card-main-category"><span
									class="card-category-title">개발 &gt;</span> <span
									class="card-category-content">애플리케이션</span></span> <span
									class="card-sub-category"><span
									class="card-category-title">위치</span> <span
									class="card-category-sub-content">전라북도 &gt; 전주시 완산구</span></span>
							</p>
						</div>
						<div class="card-right">
							<div class="card-timestamp">
								<img class="card-icon-image" src="../images/clock-closed.png"><span
									class="card-icon-content">마감 <strong>2주 전</strong></span>
							</div>
							<div class="card-applicant-count">
								<img class="card-icon-image" src="../images/proposal-user.png"><span
									class="card-icon-content">총 <strong>9명</strong> 지원
								</span>
							</div>
							<a class="btn btn-large btn-partners interest-card-button"
								href=""><img src="../images/has-proposal-default.png">프로젝트
								지원하기</a>
						</div>
					</section>


				</div>

				</main>
			</div>
		</div>
	</div>


	<!-- -------footer 영역-------------------------------- -->
	<jsp:include page="../inc/footer.jsp" />
</body>
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script src="js/bootstrap.min.js"></script>
</html>