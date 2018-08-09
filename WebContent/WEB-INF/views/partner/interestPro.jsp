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
<title>관심 프로젝트 - WAP(We Are Professional)</title>
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
							<li class="active"><a href="" style="color: #fff;">관심
									프로젝트</a></li>
						</ul>
					</div>
				</div>
			</aside>
			<!-- -------사이드바 영역 끝-------------------------------- -->
			<div class="content">
				<main> <!-- -------page-header 영역-------------------------------- -->
				<div class="content-header">
					<section>
						<h1>관심 프로젝트</h1>
						<p>관심 프로젝트로 추가한 프로젝트를 확인할 수 있습니다.</p>
					</section>
				</div>
				<!-- -------page-header 영역 끝-------------------------------- --> <!-- -------page-main 영역-------------------------------- -->
				<div class="content-inner">
				<div class="process-guide-box" style="margin-bottom: 25px;">
						<img src="../images/guide-success.png"
							style="margin: 15px;">
						<div class="process-guide-up">
							<p style="float: left">
							1. 관심 프로젝트로 추가한 프로젝트 목록입니다.<br> 2. 지원 완료한 프로젝트의 경우, 목록에서 지원
							내역으로 이동됩니다.<br> 3. 프로젝트 모집이 마감된 경우, 목록에서 자동으로 삭제됩니다.<br>
							4. <strong>[프로젝트 지원하기]</strong> 버튼을 클릭하여 해당 프로젝트에 지원할 수 있습니다.
						</p>
						</div>
						<div style="clear: both;"></div>
					</div>
						<c:forEach var="i" items="${interestedProject}">
					<section class="interest-card interest-card-new"
						style="margin-bottom: 13px;">
						<a class="interest-add-icon"
							href="/partners/manage/interest/delete/37825/"
							title="'관심 프로젝트'에서 삭제하기"><i class="fa fa-heart"></i></a>
						<div class="card-left">
							<h4 class="card-title">
								<a
									href="../project/view?id=${i.id}">${i.title}</a>
							</h4>
							<p class="card-expectation-data">
								<span class="card-expectation-money"><i
									class="fa fa-krw icon-margin"></i>예상금액 <span
									class="card-expectation-money-content"><fmt:formatNumber pattern="###,###원"
												value="${i.cost}" /></span></span> <span
									class="card-expectation-date"><i
									class="fa fa-clock-o icon-margin"></i>예상기간 <span
									class="card-expectation-date-content">${i.period}일</span></span>
							</p>
							<p class="card-category-data">
								<span class="card-main-category"><span
									class="card-category-title">${i.cate_name} &gt;</span> <span
									class="card-category-content">${i.sub_cate_name}</span></span> <span
									class="card-sub-category"><span
									class="card-category-title">위치</span> <span
									class="card-category-sub-content">${i.addr_name} &gt; ${i.sec_addr_name}</span></span>
							</p>
						</div>
						<div class="card-right">
							<div class="card-timestamp">
								<img class="card-icon-image" src="../images/clock-closed.png"><span
									class="card-icon-content">마감 <strong>2주 전</strong></span>
							</div>
							<div class="card-applicant-count">
								<img class="card-icon-image" src="../images/proposal-user.png"><span
									class="card-icon-content">총 <strong>${i.count}명</strong> 지원
								</span>
							</div>
							<a class="btn btn-large btn-partners interest-card-button"
								href=""><img
								src="../images/has-proposal-default.png">프로젝트 지원하기</a>
						</div>
					</section>
					</c:forEach>


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