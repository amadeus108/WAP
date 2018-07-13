<%@page import="com.answeris.web.service.RootService"%>
<%@page import="com.answeris.web.entity.Notice"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	int pageNo = 1;
	String field = "title";
	String query = "";

	String pageNo_ = request.getParameter("p");
	String field_ = request.getParameter("f");
	String query_ = request.getParameter("q");

	/* http://localhost:port/wap? */
	/* http://localhost:port/wap?a=&b= */
	/* http://localhost:port/wap?a=1&b=3 */

	if (pageNo_ != null && !pageNo_.equals("")) {
		pageNo = Integer.parseInt(pageNo_);
	}
	if (field_ != null && !field_.equals("")) {
		field = field_;
	}
	if (query_ != null && !query_.equals("")) {
		query = query_;
	}

	RootService service = new RootService();
	/* List<Notice> list = service.getNoticeList(pageNo); */

	List<Notice> list = service.getNoticeList(field, query, pageNo);
	int count = service.getNoticeCount(field, query);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--  h1, h3 {
	color: blue;
}

h1.li {
	color: green;
}

#a {
	color: aqua;
}

h1[class="h1"] {
	
}

/* #h2 {color :green;}  //작을 수록 우선순위가 높음
   h1{color:orange};
   .h1{color:red};
 */-->

<!-- <link href="../../css/style.css" type="text/css" rel="stylesheet" /> -->
<!-- <link href="../../css/newlec-header.css" type="text/css"
	rel="stylesheet" /> -->
<!-- <link href="../../css/newlec-aside.css" type="text/css" rel="stylesheet" /> -->

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
	integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
	crossorigin="anonymous"></script>
</head>
<body>
	<!-- header 영역 -->
	<jsp:include page="../inc/header.jsp" />

	<!-- visual 이미지 영역 -->
	<div id="visual">
		<div class="content-container"></div>
	</div>
	<!-- body 영역 -->
	<div id="body">
		<div class="content-container">

			<!-- aside 영역  -->
			<jsp:include page="../customer/inc/aside.jsp" />

			<!-- main 영역 -->
			<main id="main">
			<h1 class="main title">공지사항</h1>
			<div id="breadcrumb">
				<h1>경로</h1>
				<ol>
					<li>home</li>
					<li>고객센터</li>
					<li>공지사항</li>
				</ol>
			</div>

			<section>
				<h1>공지사항 검색폼</h1>
				<!-- action 디폴트는 본인 자신을 가리킴, 메소드는 get -->
				<form method="get">
					<select name="f">
						<option value="title">제목</option>
						<option value="content">내용</option>

					</select> <input type="text" name="q" placeholder="검색어를 입력하세요"
						value="<%=query%>" /> <input type="submit" value="검색" />
				</form>
			</section>

			<section id="notice-table">
				<div>
					<h1>공지사항표</h1>
					<table class="table table-dark">
						<thead>
							<tr>
								<td class="col-sm">번호</td>
								<td class="title">제목</td>
								<td class="col-md">작성자</td>
								<td class="col-md">작성일</td>
								<td class="col-sm">조회수</td>
							</tr>
						</thead>
						<tbody>
							<%
								for (Notice n : list) {
							%>
							<tr>
								<td class="id"><%=n.getId()%></td>
								<td class="title"><a href="detail.jsp?id=<%=n.getId()%>"><%=n.getTitle()%></a></td>
								<td class="writer-id"><%=n.getWriterid()%></td>
								<td class="reg-date"><%=n.getRegdate()%></td>
								<td class="hit"><%=n.getHit()%></td>
							</tr>
							<%
								}
							%>
						</tbody>
					</table>
				</div>
			</section>

			<div>
				<h3>페이지 인덱스</h3>
				<div>1 / 1 pages</div>
			</div>

			<div>
				<h3>페이저</h3>
				<div>이전</div>
				<ul>
					<%
						for (int i = 1; i <= 5; i++) {
					%>
					<li><a href="?p=<%=i%>&f=<%=field%>&q=<%=query%>"><%=i%></a></li>
					<%
						}
					%>
				</ul>
				<div>다음</div>
			</div>
			</main>
		</div>
	</div>

	<!-- footer 영역 -->
	<jsp:include page="../inc/footer.jsp" />
</body>
</html>