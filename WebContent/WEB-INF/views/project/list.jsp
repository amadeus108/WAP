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
<title>프로젝트 찾기 - WAP(We Are Professional)</title>

<link href="../css/project/tutorial.css" type="text/css"
	rel="stylesheet" />
<link href="../css/header.css" type="text/css" rel="stylesheet" />
<link href="../css/footer.css" type="text/css" rel="stylesheet" />
<link href="../css/partner/interestPro.css" rel="stylesheet">
<link href="../css/bootstrap/bootstrap.min.css" rel="stylesheet">
<link href="../css/member/style.min.css" rel="stylesheet">
<link href="../css/partner/partner-input-form.css" rel="stylesheet">
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
</head>

<body>
	<!-- -------header 영역-------------------------------- -->
	<jsp:include page="../inc/header.jsp" />
	<!-- -------header 영역 끝------------------------------- -->

	<!-- -------page 영역-------------------------------- -->
	<div class="page">
		<div class="content-container">
			<!-- -------사이드바 영역-------------------------------- -->
			<ul>
				<li>
					<div class="project-list-sort-box">
						<div class="sort-box-title">프로젝트 정렬</div>
						<div class="left-box">
							<div class="sort-button" id="sort-1"
								onclick="setSortFilterValue(this)">금액 높은 순</div>
							<div class="sort-button" id="sort-1"
								onclick="setSortFilterValue(this)">금액 낮은 순</div>
						</div>
						<div class="right-box">
							<div class="sort-button" id="sort-1"
								onclick="setSortFilterValue(this)">최신 등록 순</div>
							<div class="sort-button" id="sort-1"
								onclick="setSortFilterValue(this)">마감 임박 순</div>
						</div>
					</div>
				</li>

				<li>
					<div class="project-list-category-box">
						<div class="category-box-title">프로젝트 카테고리</div>
						<div class="category-selecter both">
							<input id="dev" name="dev" type="checkbox"> <label
								for="dev">개발</label>

							<ul class="child-list">
								<li><input id="dev-1" name="dev" type="checkbox"> <label
									for="dev-1">웹</label></li>

								<li><input id="dev-2" name="dev" type="checkbox"> <label
									for="dev-2">애플리케이션</label></li>

								<li><input id="dev-3" name="dev" type="checkbox"> <label
									for="dev-3">워드프레스</label></li>

								<li><input id="dev-4" name="dev" type="checkbox"> <label
									for="dev-4">퍼블리싱</label></li>

								<li><input id="dev-5" name="dev" type="checkbox"> <label
									for="dev-5">일반 소프트웨어</label></li>

								<li><input id="dev-6" name="dev" type="checkbox"> <label
									for="dev-6">커머스, 쇼핑몰</label></li>

								<li><input id="dev-7" name="dev" type="checkbox"> <label
									for="dev-7">게임</label></li>

								<li><input id="dev-8" name="dev" type="checkbox"> <label
									for="dev-8">임베디드</label></li>

								<li><input id="dev-9" name="dev" type="checkbox"> <label
									for="dev-9">기타</label></li>

							</ul>

							<ul class="design-category-list">
								<input id="design" name="design" type="checkbox">
								<label for="design">디자인</label>

								<ul class="child-list">
									<li><input id="design-1" name="design" type="checkbox">
										<label for="design-1">웹</label></li>

									<li><input id="design-2" name="design" type="checkbox">
										<label for="design-2">애플리케이션</label></li>

									<li><input id="design-3" name="design" type="checkbox">
										<label for="design-3">제품</label></li>

									<li><input id="design-4" name="design" type="checkbox">
										<label for="design-4">프레젠테이션</label></li>

									<li><input id="design-5" name="design" type="checkbox">
										<label for="design-5">인쇄물</label></li>

									<li><input id="design-6" name="design" type="checkbox">
										<label for="design-6">커머스, 쇼핑몰</label></li>

									<li><input id="design-7" name="design" type="checkbox">
										<label for="design-7">로고</label></li>

									<li><input id="design-8" name="design" type="checkbox">
										<label for="design-8">그래픽</label></li>

									<li><input id="design-9" name="design" type="checkbox">
										<label for="design-9">영상</label></li>

									<li><input id="design-10" name="design" type="checkbox">
										<label for="design-10">게임</label></li>

									<li><input id="design-11" name="design" type="checkbox">
										<label for="design-11">기타</label></li>

								</ul>

							</ul>

						</div>

					</div>
				</li>
			</ul>
			<!-- -------사이드바 영역 끝-------------------------------- -->
			<div class="content">
				<main> <!-- -------page-header 영역-------------------------------- -->
				<div class="content-header">
					<section>
						<h1>프로젝트 찾기</h1>
						<p>656개의 프로젝트가 있습니다.</p>
					</section>
				</div>
				<!-- -------page-header 영역 끝-------------------------------- --> <!-- -------page-main 영역-------------------------------- -->
				<div class="content-inner">
					<c:forEach var="i" items="${project}">
						<section class="interest-card interest-card-new"
							style="margin-bottom: 13px;">
							<a class="interest-add-icon"
								href="/partners/manage/interest/delete/37825/"
								title="'관심 프로젝트'에서 삭제하기"><i class="fa fa-heart"></i></a>
							<div class="card-left">
								<h4 class="card-title">
									<a href="../project/view?id=${i.id}">${i.title}</a>
								</h4>
								<p class="card-expectation-data">
									<span class="card-expectation-money"><i
										class="fa fa-krw icon-margin"></i>예상금액 <span
										class="card-expectation-money-content"><fmt:formatNumber
												pattern="###,###원" value="${i.cost}" /></span></span> <span
										class="card-expectation-date"><i
										class="fa fa-clock-o icon-margin"></i>예상기간 <span
										class="card-expectation-date-content">${i.period}일</span></span>
								</p>
								<small>${i.content}</small>
								<p class="card-category-data">
									<span class="card-main-category"><span
										class="card-category-title">${i.cate_name} &gt;</span> <span
										class="card-category-content">${i.sub_cate_name}</span></span> <span
										class="card-sub-category"><span
										class="card-category-title">위치</span> <span
										class="card-category-sub-content">${i.addr_name} &gt;
											${i.sec_addr_name}</span></span>
								</p>
							</div>
							<div class="card-right">
								<div class="card-timestamp">
									<img class="card-icon-image" src="../images/clock-closed.png"><span
										class="card-icon-content">마감 <strong>2주 전</strong></span>
								</div>
								<div class="card-applicant-count">
									<img class="card-icon-image" src="../images/proposal-user.png"><span
										class="card-icon-content">총 <strong>4명</strong> 지원
									</span>
								</div>
								<a class="btn btn-large btn-partners interest-card-button"
									href=""><img src="../images/has-proposal-default.png">프로젝트
									지원하기</a>
							</div>
						</section>
					</c:forEach>


				</div>

				</main>
			</div>
		</div>
	</div>


	<!-- footer 시작 -->
	<jsp:include page="../inc/footer.jsp" />
	<!-- footer 종료 -->
</body>
</html>