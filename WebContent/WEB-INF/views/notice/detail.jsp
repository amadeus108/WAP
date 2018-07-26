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
<%-- 						<c:forEach var="n" items=${list }> --%>
							<a href="">${n.category }</a>
<%-- 						</c:forEach> --%>
					</div>
					<div>
						<h1 id="news-center-detail-title">
							${n.title}
<!-- 							[공지사항] 2018년 설 연휴 위시켓 휴무 안내 -->
						</h1>
						<div class="news-center-detail-writer">
							<ul>
								<li class="writer">WAP 관리자</li>
								<li class="regdate">${n.reg_date}</li>
							</ul>
						</div>
						<div class="news-detail-content">
							${n.content}
<!-- 							안녕하세요. 위시켓입니다.<br /> -->
<!-- 							항상 위시켓을 이용해주시는 클라이언트, 파트너님들께 감사의 말씀을 전하며,<br /> -->
<!-- 							2018년 설 연휴 위시켓 휴무 기간을 안내해 드립니다.<br /> -->
<!-- 							설 연휴 휴무기간: 2018.02.15 (목) ~ 2018.02.18 (일)<br /> -->
<!-- 							해당 기간 동안 문의사항은 고객센터 이메일(help@wishket.com)로 보내주시면<br /> -->
<!-- 							확인 후 영업일인 02월 19일에 빠르게 회신드리겠습니다.<br /> -->
<!-- 							행복하고 따뜻한 설 연휴 보내시길 바랍니다. 새해 복 많이 받으세요.<br /> -->
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