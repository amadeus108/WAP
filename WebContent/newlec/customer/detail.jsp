<%@page import="com.answeris.web.service.RootService"%>
<%@page import="com.answeris.web.entity.Notice"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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

<link href="../../css/style.css" type="text/css" rel="stylesheet" />
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
			</main>
		</div>
	</div>

	<!-- footer 영역 -->
	<jsp:include page="../inc/footer.jsp" />
</body>
</html>