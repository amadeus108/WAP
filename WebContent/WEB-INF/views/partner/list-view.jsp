<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<title>파트너스 보기 - WAP(We Are Professional)</title>

<!-- 부트스트랩 -->
<link href="../css/bootstrap/bootstrap.min.css" rel="stylesheet">
<link href="../css/member/style.min.css" rel="stylesheet">
<link href="../css/header.css" rel="stylesheet">
<link href="../css/footer.css" rel="stylesheet">

<!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
<!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
<!-- —[if lt IE 9] -->
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<!-- [endif] -->
<script src="../js/partner/main.js"></script>

</head>
<body>
	<!-- -------header 영역-------------------------------- -->
	<jsp:include page="../inc/header.jsp" />
	<!-- -------header 영역 끝------------------------------- -->

	<!-- -------page 영역-------------------------------- -->
	<div class="page">
		<div class="content-container">

			<!-- -------main 영역-------------------------------- -->
			<div class="content">
				<main>
				<div class="content-header">
					<section>
						<h1>마이WAP</h1>
						<div class="float-right">
							<a href="../tutorial/ClientUse" id="main-link">처음 오셨나요? 이용방법을
								확인하세요 > </a>
						</div>
					</section>
				</div>




				<!-- ----------News Center Area--------- -->
				<div class="content-inner">
					<div style="float: right;">
						<div class="page-count">
							<span style="font-weight: bold; color: #333;">1</span> / <span
								style="font-weight: bold; color: #666;">9</span>
						</div>
						<div class="notice-button-box">
							<a href=""><img alt=""
								src="../images/newscenter-btn-left.jpg"
								class="notice-button-box-left"></a> <a href=""><img alt=""
								src="../images/newscenter-btn-right.jpg"
								class="notice-button-box-right"></a>
						</div>
					</div>


					<p class="font-weight-bold" id="title-name">뉴스센터</p>
					<section id="newcenter-table">
						<h1>뉴스센터</h1>
						<table>
							<tbody>
								<c:forEach var="n" items="${notice}">
									<tr>
										<td class="title"><a href="detail?id=${n.id}">${n.title}</a></td>
										<td class="reg-date"><fmt:formatDate pattern="yyyy.MM.dd"
												value="${n.reg_date}" /></td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
					</section>
					<div class="float-right">
						<a href="../notice/all" id="more">더 자세히 보기 > </a>
					</div>
				</div>
				<!-- ----------News Center Area End--------- -->

				<div class="content-inner">
					<p class="font-weight-bold" id="title-name">내 프로젝트</p>


					<!-- ----------Interested Project Area--------- -->
					<p class="font-weight-bold">
						<a href="mypage/favor-list.jsp" id="title-link">관심 프로젝트</a>
					</p>
					<section id="interested-project-table">
						<h1>관심 프로젝트</h1>
						<table>
							<thead>
								<tr>
									<th class="title">프로젝트 제목</th>
									<th class="cost">예상금액</th>
									<th class="period">예상기간</th>
									<th class="end-date">마감일자</th>
									<th class="heart"></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="i" items="${interestedProject}">
									<tr>
										<td class="title"><a id="interested-project">${i.title}</a></td>
										<td class="cost"><fmt:formatNumber pattern="###,###원"
												value="${i.cost}" /></td>
										<td class="period">${i.period}일</td>
										<td class="end-date"><fmt:formatDate
												pattern="yyyy년 MM월 dd일" value="${i.end_date}" /></td>
										<td class="heart"><a
											href="favor?id=${sessionScope.sessionId}"><img
												src="../images/heart.png" title="'관심 프로젝트'에서 삭제하기"></a></td>
									</tr>
								</c:forEach>
								<tr>
									<td><div class="box">${i.content}</div></td>
								</tr>
							</tbody>
						</table>
					</section>
					<div class="float-right">
						<a href="interestedproject" id="more">더 자세히 보기 > </a>
					</div>
					<!-- ----------Interested Project Area End--------- -->

					<br> <br>


					<!-- ----------Apply Project Area--------- -->
					<p class="font-weight-bold">
						<a href="" id="title-link">지원 내역</a>
					</p>
					<section id="apply-project-table">
						<h1>지원 내역</h1>
						<table>
							<thead>
								<tr>
									<th class="title">프로젝트 제목</th>
									<th class="cost">지원금액</th>
									<th class="period">지원기간</th>
									<th class="end-date">제출일자</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="a" items="${applyProject}">
									<tr>
										<td class="title"><a href="detail">${a.title}</a></td>
										<td class="cost"><fmt:formatNumber pattern="###,###원"
												value="${a.apply_cost}" /></td>
										<td class="period">${a.apply_period}일</td>
										<td class="end-date"><fmt:formatDate
												pattern="yyyy년 MM월 dd일" value="${a.apply_date}" /></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</section>
					<div class="float-right">
						<a href="applyproject" id="more">더 자세히 보기 > </a>
					</div>
					<!-- ----------Apply Project Area End--------- -->

					<br> <br>
					<!-- ----------continuing Project Area--------- -->
					<p class="font-weight-bold">
						<a href="" id="title-link">프로젝트 진행 중</a>
					</p>
					<section id="continuing-project-table">
						<h1>프로젝트 진행 중</h1>
						<table>
							<thead>
								<tr>
									<th class="title">프로젝트 제목</th>
									<th class="insert-id">클라이언트</th>
									<th class="cost">금액</th>
									<th class="period">기간</th>
									<th class="deadline">남은기간</th>
									<th class="skill">도구</th>
								</tr>
							</thead>
							<tbody>

								<tr>
									<td class="title">프로젝트 진행 내역이 없습니다.</td>
								</tr>

							</tbody>
						</table>
					</section>
					<div class="float-right">
						<a href="continuingproject" id="more">더 자세히 보기 > </a>
					</div>
					<!-- ----------continuing Project Area End--------- -->
				</div>
				</main>
			</div>
			<!-- -------main 영역 끝-------------------------------- -->


			<!-- -------사이드바 영역-------------------------------- -->
			<aside class="aside">
				<h1>파트너스 사이드 바</h1>
				<ul class="sidebar">
					<li>
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
					<!-- </li>
					<li> -->
						<div class="partner-history">
							<h1>WAP 히스토리</h1>
							<div class="partner-history-body">
								<table class="table-responsive">
									<tbody>
										<tr>
											<th>지원한 프로젝트</th>
											<td>0 <span class="append-unit">건</span></td>
										</tr>
										<tr>
											<th>계약한 프로젝트</th>
											<td>0 <span class="append-unit">건</span></td>
										</tr>
										<tr>
											<th>완료한 프로젝트</th>
											<td>0 <span class="append-unit">건</span></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					<!-- </li>


					<li> -->
						<div class="activity">
							<h1 class="activity-heading">새로운 소식</h1>
							<div class="activity-body">
								<ul class="activity-unit-list">
									<li class="empty-activity-unit">새로운 소식이 없습니다.</li>
								</ul>
							</div>
						</div>
					</li>
				</ul>
			</aside>
			<!-- -------사이드바 영역 끝-------------------------------- -->
		</div>
	</div>
	<jsp:include page="../inc/footer.jsp" />
</body>
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script src="js/bootstrap.min.js"></script>
</html>