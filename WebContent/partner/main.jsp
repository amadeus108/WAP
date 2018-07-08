<%@page import="com.wap.web.entity.Notice"%>
<%@page import="java.util.List"%>
<%@page import="com.wap.service.NoticeService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	NoticeService service = new NoticeService();
	List<Notice> list = service.getNoticeList();
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
	<div class="container">
		<div class="center-block">
			<div class="alert alert-success" role="alert">이것은 success 입니다.
				확인해 보세요.!</div>

			<div class="content">
				<div class="row">
					<div class="col-8">
						<div class="content-header">
							<section>
								<h3>마이WAP</h3>
								<div class="float-right">
									<a href="">처음 오셨나요? 이용방법을 확인하세요 > </a>
								</div>
							</section>
						</div>
					</div>

					<div class="col-4">
						<div class="content-inner">
							<form class="form-row">
								<h3>파트너스</h3>
								<div class="float-right">
									<a href="">기본 정보 수정하기 > </a>
								</div>
							</form>
							<ul class="list-unstyled">
								<li class="media"><img class="mr-3"
									src="../images/default_avatar.jpg" alt=""
									style="width: 50px; height: 50px;">
									<div class="media-body">
										<h5 class="mt-0 mb-1">아이디</h5>
										abcdef123@gmail.com
									</div></li>
							</ul>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-8">
						<div class="content-inner">
							<p class="font-weight-bold">뉴스센터</p>


							<table class="table table-sm">
								<thead>
									<tr>
										<th scope="col">제목</th>
										<th scope="col">시간</th>
									</tr>
								</thead>
								<tbody>
									<%
										for (Notice n : list) {
									%>
									<tr>
										<td><%=n.getTitle()%></td>
										<td><%=n.getReg_date() %></td>
									</tr>
									<%
										}
									%>
								</tbody>
							</table>
							<div class="float-right">
								<a href="">더 자세히 보기 > </a>
							</div>
						</div>
					</div>

					<div class="col-4">
						<div class="content-inner">
							<h3>WAP 히스토리</h3>
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
					</div>
				</div>


				<div class="row">
					<div class="col-8">
						<div class="content-inner">
							<h3>내 프로젝트</h3>
							<br>
							<h4>
								<a href="">관심 프로젝트</a>
							</h4>
							<table class="table table-sm">
								<thead>
									<tr>
										<th scope="col">프로젝트 제목</th>
										<th scope="col">예상금액</th>
										<th scope="col">예상기간</th>
										<th scope="col">마감일자</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">1</th>
										<td>Mark</td>
										<td>Otto</td>
										<td>@mdo</td>
									</tr>
									<tr>
										<th scope="row">2</th>
										<td>Jacob</td>
										<td>Thornton</td>
										<td>@fat</td>
									</tr>
									<tr>
										<th scope="row">3</th>
										<td colspan="2">Larry the Bird</td>
										<td>@twitter</td>
									</tr>
								</tbody>
							</table>
							<div class="float-right">
								<a href="">더 자세히 보기 > </a>
							</div>

							<br> <br>

							<form class="form-col">
								<h4>
									<a href="">지원 내역</a>
								</h4>
								<table class="table table-sm">
									<thead>
										<tr>
											<th scope="col">프로젝트 제목</th>
											<th scope="col">지원금액</th>
											<th scope="col">지원기간</th>
											<th scope="col">제출일자</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th scope="row">1</th>
											<td>Mark</td>
											<td>Otto</td>
											<td>@mdo</td>
										</tr>
										<tr>
											<th scope="row">2</th>
											<td>Jacob</td>
											<td>Thornton</td>
											<td>@fat</td>
										</tr>
										<tr>
											<th scope="row">3</th>
											<td colspan="2">Larry the Bird</td>
											<td>@twitter</td>
										</tr>
									</tbody>
								</table>

								<div class="float-right">
									<a href="">더 자세히 보기 > </a>
								</div>
							</form>
							<br> <br>

							<form class="form-col">
								<h4>
									<a href="">미팅 예정</a>
								</h4>
								<table class="table table-sm">
									<thead>
										<tr>
											<th scope="col">프로젝트 제목</th>
											<th scope="col">미팅 방식</th>
											<th scope="col">미팅 예정 실시</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th scope="row">1</th>
											<td>Mark</td>
											<td>Otto</td>

										</tr>
										<tr>
											<th scope="row">2</th>
											<td>Jacob</td>
											<td>Thornton</td>

										</tr>
										<tr>
											<th scope="row">3</th>
											<td colspan="2">Larry the Bird</td>
											<td>@twitter</td>
										</tr>
									</tbody>
								</table>
								<div class="float-right">
									<a href="">더 자세히 보기 > </a>
								</div>
							</form>
							<br> <br>

							<form class="form-col">
								<h4>
									<a href="">프로젝트 진행 중</a>
								</h4>
								<table class="table table-sm">
									<thead>
										<tr>
											<th scope="col">프로젝트 제목</th>
											<th scope="col">클라이언트</th>
											<th scope="col">금액</th>
											<th scope="col">기간</th>
											<th scope="col">남은기간</th>
											<th scope="col">도구</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th scope="row">1</th>
											<td>Mark</td>
											<td>Otto</td>
											<td>@mdo</td>
										</tr>
										<tr>
											<th scope="row">2</th>
											<td>Jacob</td>
											<td>Thornton</td>
											<td>@fat</td>
										</tr>
										<tr>
											<th scope="row">3</th>
											<td colspan="2">Larry the Bird</td>
											<td>@twitter</td>
										</tr>
									</tbody>
								</table>
								<div class="float-right">
									<a href="">더 자세히 보기 > </a>
								</div>
							</form>
						</div>
					</div>

					<div class="col-4">
						<div class="content-inner">
							<h3>새로운 소식</h3>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script src="js/bootstrap.min.js"></script>
</html>