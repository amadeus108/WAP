<%@page import="com.wap.web.entity.Notice"%>
<%@page import="com.wap.web.entity.Project"%>
<%@page import="java.util.List"%>
<%@page import="com.wap.service.NoticeService"%>
<%@page import="com.wap.partner.service.InterestedProjectService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	int pageNo = 1;
	String pageNo_ = request.getParameter("p");

	if (pageNo_ != null && !pageNo_.equals("")) {
		pageNo = Integer.parseInt(pageNo_);
	}

	NoticeService service = new NoticeService();
	List<Notice> list = service.getNoticeList(pageNo);
	
	InterestedProjectService ipService = new InterestedProjectService();
	List<Project> ipList = ipService.getIPList();
	
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<title>마이WAP - WAP(We Are Professional)</title>

<!-- 부트스트랩 -->
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/style.min.css" rel="stylesheet">

<!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
<!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
<!-- —[if lt IE 9] -->
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<!-- [endif] -->

</head>
<body>
	<!-- -------header 영역-------------------------------- -->
	<header class="header">
		<nav class="nav-main">
			<div class="container"></div>
		</nav>
		<div id="sub-header"></div>
	</header>
	<!-- -------header 영역 끝------------------------------- -->

	<!-- -------page 영역-------------------------------- -->
	<div class="page">
		<div class="content-container">

			<!-- -------main 영역-------------------------------- -->
			<div class="content">
				<main class="content">
				<div class="content-inner">
					<section>
						<h1 id="head-title-name">마이WAP</h1>
						<div class="float-right">
							<a href="" id="main-link">처음 오셨나요? 이용방법을 확인하세요 > </a>
						</div>
					</section>
				</div>




				<!-- ----------News Center Area--------- -->
				<div class="content-inner">
					<div style="float: right;">
						<nav aria-label="Page navigation example">
							<ul class="pagination justify-content-end">
								<li class="page-item"><a class="page-link" href="#"><</a></li>
								<li class="page-item"><a class="page-link" href="#">></a></li>
							</ul>
						</nav>
					</div>

					<p class="font-weight-bold" id="title-name">뉴스센터</p>
					<section id="newcenter-table">
						<h1>뉴스센터</h1>
						<table>
							<thead>
								<tr>
									<th class="title">제목</th>
									<th class="reg-date">시간</th>
								</tr>
							</thead>
							<tbody>
								<%
									for (Notice n : list) {
								%>
								<tr>
									<td class="title"><a href="detail.jsp?id=<%=n.getId()%>"><%=n.getTitle()%></a></td>
									<td class="reg-date"><%=n.getReg_date()%></td>
								</tr>
								<%
									}
								%>
							</tbody>
						</table>
					</section>
					<div class="float-right">
						<a href="" id="more">더 자세히 보기 > </a>
					</div>
				</div>
				<!-- ----------News Center Area End--------- -->

				<div class="content-inner">
					<p class="font-weight-bold" id="title-name">내 프로젝트</p>


					<!-- ----------Interested Project Area--------- -->
					<p class="font-weight-bold">
						<a href="" id="title-link">관심 프로젝트</a>
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
								<%
									for (Notice n : list) {
								%>
								<tr>
									<td class="title"><a href="detail.jsp?id=<%=n.getId()%>"><%=n.getTitle()%></a></td>
									<td class="cost"><%=n.getReg_date()%></td>
									<td class="period"><%=n.getReg_date()%></td>
									<td class="end-date"><%=n.getReg_date()%></td>
									<td class="heart"><a href=""><img src="../images/heart.png"></a></td>
								</tr>
								<%
									}
								%>
							</tbody>
						</table>
					</section>
					<div class="float-right">
						<a href="" id="more">더 자세히 보기 > </a>
					</div>
					<!-- ----------Interested Project Area End--------- -->

					<br> <br>



					<form class="form-col">
						<p class="font-weight-bold">
							<a href="" id="title-link">지원 내역</a>
						</p>
						<table class="table table-sm">
							<thead>
								<tr>
									<th scope="col" id="table-col-name">프로젝트 제목</th>
									<th scope="col" id="table-col-name">지원금액</th>
									<th scope="col" id="table-col-name">지원기간</th>
									<th scope="col" id="table-col-name">제출일자</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row" id="table-col-name">1</th>
									<td>Mark</td>
									<td>Otto</td>
									<td>@mdo</td>
								</tr>
								<tr>
									<th scope="row" id="table-col-name">2</th>
									<td>Jacob</td>
									<td>Thornton</td>
									<td>@fat</td>
								</tr>
								<tr>
									<th scope="row" id="table-col-name">3</th>
									<td colspan="2">Larry the Bird</td>
									<td>@twitter</td>
								</tr>
							</tbody>
						</table>

						<div class="float-right">
							<a href="" id="more">더 자세히 보기 > </a>
						</div>
					</form>
					<br> <br>

					<form class="form-col">
						<p class="font-weight-bold">
							<a href="" id="title-link">미팅 예정</a>
						</p>
						<table class="table table-sm">
							<thead>
								<tr>
									<th scope="col" id="table-col-name">프로젝트 제목</th>
									<th scope="col" id="table-col-name">미팅 방식</th>
									<th scope="col" id="table-col-name">미팅 예정 실시</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row" id="table-col-name">1</th>
									<td>Mark</td>
									<td>Otto</td>

								</tr>
								<tr>
									<th scope="row" id="table-col-name">2</th>
									<td>Jacob</td>
									<td>Thornton</td>

								</tr>
								<tr>
									<th scope="row" id="table-col-name">3</th>
									<td colspan="2">Larry the Bird</td>
									<td>@twitter</td>
								</tr>
							</tbody>
						</table>
						<div class="float-right">
							<a href="" id="more">더 자세히 보기 > </a>
						</div>
					</form>
					<br> <br>

					<form class="form-col">
						<p class="font-weight-bold">
							<a href="" id="title-link">프로젝트 진행 중</a>
						</p>
						<table class="table table-sm">
							<thead>
								<tr>
									<th scope="col" id="table-col-name">프로젝트 제목</th>
									<th scope="col" id="table-col-name">클라이언트</th>
									<th scope="col" id="table-col-name">금액</th>
									<th scope="col" id="table-col-name">기간</th>
									<th scope="col" id="table-col-name">남은기간</th>
									<th scope="col" id="table-col-name">도구</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row" id="table-col-name">1</th>
									<td>Mark</td>
									<td>Otto</td>
									<td>@mdo</td>
								</tr>
								<tr>
									<th scope="row" id="table-col-name">2</th>
									<td>Jacob</td>
									<td>Thornton</td>
									<td>@fat</td>
								</tr>
								<tr>
									<th scope="row" id="table-col-name">3</th>
									<td colspan="2">Larry the Bird</td>
									<td>@twitter</td>
								</tr>
							</tbody>
						</table>
						<div class="float-right">
							<a href="" id="more">더 자세히 보기 > </a>
						</div>
					</form>
				</div>
				</main>
			</div>
			<!-- -------main 영역 끝-------------------------------- -->


			<!-- -------사이드바 영역-------------------------------- -->
			<aside class="aside">
				<h1>파트너스 사이드 바</h1>
				<ul class="sidebar">
					<li>
						<div class="content-inner">
							<form class="form-row">
								<p class="font-weight-bold" id="title-name">파트너스</p>
							</form>
							<ul class="list-unstyled">
								<li class="media"><img class="mr-3"
									src="../images/default_avatar.jpg" alt="" id="profile-img">
									<div class="media-body">
										<h5 class="mt-0 mb-1">아이디</h5>
										abcdef123@gmail.com
									</div></li>
							</ul>

							<a href="" id="main-link">기본 정보 수정하기 > </a>

						</div>
					</li>
					<li>

						<div class="content-inner">
							<p class="font-weight-bold" id="title-name">WAP 히스토리</p>
							<ul class="list-group">
								<li
									class="list-group-item d-flex justify-content-between align-items-center">
									지원한 프로젝트 <span class="badge badge-primary badge-pill">14</span>
								</li>
								<li
									class="list-group-item d-flex justify-content-between align-items-center">
									계약한 프로젝트<span class="badge badge-primary badge-pill">2</span>
								</li>
								<li
									class="list-group-item d-flex justify-content-between align-items-center">
									완료한 프로젝트<span class="badge badge-primary badge-pill">1</span>
								</li>
							</ul>

						</div>

					</li>
					<li>
						<div class="content-inner">
							<p class="font-weight-bold" id="title-name">새로운 소식</p>
						</div>
					</li>
				</ul>
			</aside>
			<!-- -------사이드바 영역 끝-------------------------------- -->
		</div>
	</div>
</body>
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script src="js/bootstrap.min.js"></script>
</html>