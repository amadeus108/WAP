<%@page import="com.answeris.web.service.RootService"%>
<%@page import="com.answeris.web.entity.Notice"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	RootService service = new RootService();
	List<Notice> list = service.getNoticeList();
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

<link href="../css/style.css" type="text/css" rel="stylesheet" />
</head>
<body>
	<!-- header 영역 -->
	<header id="header">
		<div class="content-container">
			<h1>뉴렉처 온라인</h1>
			<!-- 제목 h1은 문서에서 한번만 와야한다 -->

			<h2>헤더</h2>

			<nav id="main-menu">
				<h3>메인 메뉴</h3>
				<ul>
					<li class="first"><a href="">학습가이드</a></li>
					<li><a href="">강좌선택</a></li>
					<li class="last"><a href="">AnswerIs</a></li>
				</ul>
			</nav>

			<!-- 입력폼 -->
			<nav id="search-form">
				<h1>강좌 검색 폼</h1>
				<form class="h1">
					<!-- <fieldset> -->
						<!-- 필드 지정 -->
						<!-- <legend>검색필드</legend> -->
						<!-- 필드명?필드이름? -->
						<label>과정검색</label>
						<!-- 어떤걸 검색할지 -->
						<input type="text" /> <input type="submit" value="검색" />
					<!-- </fieldset> -->
				</form>
			</nav>

			<div>
				<h3 id="a">회원메뉴</h3>
				<ul>
					<li>HOME</li>
					<li>로그인</li>
					<li>회원가입</li>
				</ul>
			</div>

			<div>
				<h3>고객센터메뉴</h3>
				<ul>
					<li>마이페이지</li>
					<li>고객센터</li>
				</ul>
			</div>
		</div>
	</header>
	<!-- visual 이미지 영역 -->
	<div id="visual"></div>
		<!-- body 영역 -->
		<div id="body">
			<div class="content-container">
				<!-- 클래스 이름을 여러개 쓸수 있다 -->
				<!-- aside 영역  -->
				<aside id="aside">
					<h2>고객센터</h2>
					<!-- 각 영역을 이끄는 제목은 h2 -->

					<div>
						<h3>고객센터메뉴</h3>
						<ul class="h1">
							<li>공지사항</li>
							<li>자주하는 질문</li>
							<li>수강문의</li>
							<li>이벤트</li>
						</ul>
					</div>

					<div>
						<h3>협력업체</h3>
						<ul>
							<li>노트펍스</li>
							<li>나무랩연구소</li>
							<li>한빛미디어</li>
							<li>에이콘아카데미</li>
							<li>쌍용교육센터</li>
						</ul>
					</div>
				</aside>
				<!-- main 영역 -->
				<main id="main">
				<h2>공지사항</h2>

				<div>
					<h3>경로</h3>
					<ol>
						<li>home</li>
						<li>고객센터</li>
						<li>공지사항</li>
					</ol>
				</div>

				<form>
					<input type="text" /> <input type="button" value="검색" />
				</form>

				<div>
					<h3>공지사항표</h3>
					<table border="1">
						<thead>
							<tr>
								<td>번호</td>
								<td>제목</td>
								<td>작성자</td>
								<td>작성일</td>
								<td>조회수</td>
							</tr>
						</thead>
						<tbody>
							<%
								for (Notice n : list) {
							%>
							<tr>
								<td><%=n.getId()%></td>
								<td><%=n.getTitle()%></td>
								<td><%=n.getWriterid()%></td>
								<td><%=n.getRegdate()%></td>
								<td><%=n.getHit()%></td>
							</tr>
							<%
								}
							%>
							<!-- 8   리눅스와 CSS3 강의가 오픈되었습니다.   newlec   2018-03-30   248
                     7   웹 퍼블리싱 HTML5 편이 완강 되었습니다.   newlec   2018-03-30   209
                     6   포인트 제도 알고 계신가요?   newlec   2018-03-21   233
                     5   점검시간 안내   newlec   2018-03-09   243
                     4   지원브라우저   newlec   2018-03-07   257
                     3   카드 결제 가능합니다.   newlec   2018-03-05   157
                     1   뉴렉처 시스템이 달라졌습니다.   newlec   2018-03-04   190
                     2   기존에 가입한 회원 정보는 더 이상 유효하지 않습니다.   newlec   2018-03-04   157 -->

						</tbody>
					</table>
				</div>

				<div>
					<h3>페이지 인덱스</h3>
					<div>1 / 1 pages</div>
				</div>

				<div>
					<h3>페이저</h3>
					<div>이전</div>
					<ul>
						<li>1</li>
						<li>2</li>
						<li>3</li>
						<li>4</li>
						<li>5</li>
					</ul>
					<div>다음</div>
				</div>
				</main>
			</div>
		</div>
	
	<!-- footer 영역 -->
	<footer id="footer"></footer>
</body>
</html>