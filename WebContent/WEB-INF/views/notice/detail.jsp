<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>뉴스센터 detail</title>
<link href="../css/notice-detail.css" type="text/css" rel="stylesheet" />
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
				<a href="all">뉴스센터 목록으로 돌아가기</a>
			</div>
			<div class="content-inner">
				<section class="news-center-detail">
					<div class="news-center-detail-category">
						<a href="notice?p=${i}&f=${param.f}&q=${n.category}">${n.category}</a>
<%-- 						<a href="notice?category=${n.category}">${n.category }</a> --%>
					</div>
					<div>
						<h1 id="news-center-detail-title">
							${n.title}
						</h1>
						<div class="news-center-detail-writer">
							<ul>
								<li class="writer">WAP 관리자</li>
								<li class="regdate">${n.reg_date}</li>
							</ul>
						</div>
						<div class="news-detail-content">
							${n.content}
						</div>
						<div class="news-center-detail-writer">
							<ul>
								<li class="writer">WAP 관리자</li>
								<li class="regdate">${n.reg_date}</li>
							</ul>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
	
<!-- footer -->
	<jsp:include page="../inc/footer.jsp" />

</body>
</html>