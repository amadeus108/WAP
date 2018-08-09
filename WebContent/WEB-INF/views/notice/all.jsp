<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>뉴스센터</title>
<link href="../css/notice.css" type="text/css" rel="stylesheet" />
<link href="../css/header.css" type="text/css" rel="stylesheet" />
<link href="../css/footer.css" type="text/css" rel="stylesheet" />
</head>
<body>
	<!-- header -->
	<jsp:include page="../inc/header.jsp" />

	<!-- main -->
	<div class="page">
		<div class="content">
			<div class="content-header">
				<section class="header-text">
				<h1>뉴스센터</h1>
				<p>WAP의 새로운 소식을 확인할 수 있습니다.</p>
				</section>
			</div>
			<div class="content-inner">
				<div id="news-center">
					<ul id="news-center-tabs">
						<li class="all active"><a href="all">전체보기</a></li>
						<li class="notice"><a href="notice?p=${i}&f=${param.f}&q=${'공지사항'}">공지사항</a></li>
						<li class="partner"><a href="partner?p=${i}&f=${param.f}&q=${'파트너'}">파트너</a></li>
						<li class="wap"><a href="wap?p=${i}&f=${param.f}&q=${'WAP 소식'}">WAP</a></li>
					</ul>
				</div>

				<div id="news-center-search">
					<form method="get">
						<input type="text" name="q" value="${query}"/> 
						<input type="submit" value="검색" />
					</form>
				</div>

				<section id="news-center-table">
				<h1>뉴스센터 테이블</h1>
				<table>
					<thead>
						<tr>
							<th class="id">번호</th>
							<th class="tabs">구분</th>
							<th class="title">제목</th>
							<th class="reg-date">등록일</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="n" items="${list}" begin="0" end="4">
							<tr>
								<td class="id">${n.id}</td>
								<td class="tabs">${n.category}</td>
								<td class="title"><a href="detail?id=${n.id }">${n.title }</a></td>
								<td class="reg-date">${n.reg_date }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				</section>

				<section id="paging">
				<h1>페이징</h1>
				<nav>
				<ul>
					<c:if test="${not empty param.p }">
						<c:set var="page" value="${param.p}" />
					</c:if>
					<c:set var="calc" value="${Math.ceil((page+1)/5)}" />
					
					<c:set var="startNum" value="${(calc-1)*5+1}" />
					<c:set var="startNum" value="${fn:replace(startNum, '.0', '')}" />

					<c:set var="lastNum" value="${Math.ceil(count/5)}" />
					<c:set var="lastNum" value="${lastNum - (lastNum % 1) }" />
					<c:set var="lastNum" value="${fn:replace(lastNum, '.0', '')}" />

					<c:if test="${lastNum <= startNum+4 }">
						<c:set var="lastNum" value="${lastNum}" />
					</c:if>
					<li><a href="?p=${startNum}&f=${param.f}&q=${param.q}"><<</a></li>
 					<c:forEach var="i" begin="${startNum}" end="${lastNum}">
						<li><a href="?p=${i}&f=${param.f}&q=${param.q}">${i}</a></li>
 					</c:forEach>
					<li><a href="?p=${lastNum}&f=${param.f}&q=${param.q}">>></a></li>
				</ul>
				</nav> </section>
			</div>
		</div>
	</div>

	<!-- footer -->
	<jsp:include page="../inc/footer.jsp" />

</body>
</html>