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
<title>프로젝트 보기 - WAP(We Are Professional)</title>

<!-- 부트스트랩 -->
<link href="../css/bootstrap/bootstrap.min.css" rel="stylesheet">
<link href="../css/member/style.min.css" rel="stylesheet">
<link href="../css/header.css" rel="stylesheet">
<link href="../css/footer.css" rel="stylesheet">
<link href="../css/project/view.css" rel="stylesheet">

<!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
<!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
<!-- —[if lt IE 9] -->
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<!-- [endif] -->
<script src="../js/project/view.js"></script>

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
				<div class="content-inner">
					<p class="back">
						<a href="/project/"><i class="fa fa-arrow-circle-o-left"></i>
							프로젝트 찾기로 돌아가기</a>
					</p>
				</div>

				<c:forEach var="p" items="${project}">
					<div class="content-inner">
						<div class="header-text project-detail-header">
							<span>${p.title}</span> <span
								class="label label-sm label-partners-availability possible pull-right">마감
								1주 1일 전</span>
						</div>
						<div class="project-detail-category">
							개발 &gt; 애플리케이션 <span class="applicant-count pull-right"><img
								src="../images/proposal.png" style="margin-right: 5px;">총
								<span class="applicant-num">0명</span> 지원</span>
						</div>
						<div class="summary">
							<div class="project-detail-basic-info">
								<div class="budget">
									<i class="fa fa-krw"></i> <span class="title">예상금액</span>
									<fmt:formatNumber pattern="###,###원" value="${p.cost}" />
								</div>
								<div class="term">
									<i class="fa fa-clock-o"></i> <span class="title">예상기간</span>
									${p.period}일
								</div>
								<div class="deadline">
									<i class="fa fa-pencil"></i> <span class="title">모집마감</span>
									<fmt:formatDate pattern="yyyy년 MM월 dd일" value="${p.end_date}" />
								</div>
							</div>
							<div class="project-detail-meta-info">
								<div class="project-data-box">
									<div class="title one">기획 상태</div>
									<div class="data d-one">${p.plan_statue}</div>
									<div class="title two">매니징 경험</div>
									<div class="data d-two">${p.exp}</div>
									<div class="title three">등록 일자</div>
									<div class="data d-three">
										<fmt:formatDate pattern="yyyy년 MM월 dd일" value="${p.pro_date}" />
									</div>
								</div>
								<div class="project-data-box bottom-box">
									<div class="title one">예상 시작일</div>
									<div class="data d-one">
										<fmt:formatDate pattern="yyyy년 MM월 dd일"
											value="${p.start_date}" />
									</div>
									<div class="title two">미팅 방식</div>
									<div class="data d-two">오프라인 미팅</div>
									<div class="title three">위치</div>
									<div class="data d-three">${p.addr_name}&gt;
										${p.sec_addr_name}</div>
								</div>
							</div>
							<div class="project-desc">
								<div class="project-desc-title">프로젝트 내용</div>
								<p></p>
								<p></p>
								<p>
									<strong>&lt;프로젝트 진행 방식&gt;</strong>
								</p>
								<br>
								<p>
									시작 시점에 미팅을 요청드립니다. <br>업무 진행간 필요한 커뮤니케이션은 온라인을 통해 진행하고자
									합니다. <br>필요 시 오프라인 미팅을 요청드릴 수 있습니다.
								</p>
								<br>
								<p>
									<strong>&lt;프로젝트의 현재 상황&gt;</strong>
								</p>
								<br>
								<p>스토리보드 준비되어 있습니다.</p>
								<br>
								<p>
									요구 사항을 개발하기 위해 필요한 기 개발된 erp의 DB ERD는 제공 가능하며, <br>기획단에서
									참여했던 인력이 간단한 가이드 역할 정도는 해드릴 수 있습니다만, <br>당사 내부의 개발인력이 부재중인
									관계로 구현에 필요한 정보가 있을경우, <br>기존에 개발되어 있는 코드를 직접 분석해서 요구기능을
									개발해야 합니다.
								</p>
								<br>
								<p>개발 범위에 해당하는 스토리보드는 프로젝트 내용 최하단에 첨부하였습니다.</p>
								<br>
								<p>
									<strong>&lt;상세한 업무 내용&gt;</strong>
								</p>
								<br>
								<p>
									필요 요소 : <br>- 디자인 및 퍼블리싱 <br>- 하이브리드 앱 개발( 안드로이드/iOS
									)<br>- 서버 연동 개발( DB 제공 / 기존 소스 검토 필요 )<br>- 앱 마켓 등록(
									android, ios )
								</p>
								<br>
								<p>개발 환경 : MSSQL / PHP Codeigniter / FreeTDS / Linux Server</p>
								<br>
								<p>
									당사에서 기존에 개발된 erp는 피트니스센터 운영시스템입니다. <br>그리고, 이 erp와 연동되어
									트레이너와 회원이 사용하는 앱이 있습니다.
								</p>
								<br>
								<p>회원이 회원용 앱에서 식단을 사진을 찍어서 등록을 하면, 트레이너가 그 회원이 등록한 식단을 보고
									조언을 해 줄 수 있는 구조를 만들려고 합니다. 기존에 트레이너가 사용중인 앱에는 회원을 관리하는 기능은 있으나,
									회원이 등록한 식단을 볼 수 있는 기능은 없습니다.</p>
								<br>
								<p>
									그래서 현재 트레이너가 사용중인 회원관리 앱과는 별도로, <br>첨부 스토리보드와 같이 담당하는 회원의
									식단기록을 조회할 수 있는 앱을 개발하여 제공하고자 합니다.
								</p>
								<br>
								<p>
									요구되는 개발 결과물: <br>- 별첨 스토리보드에 준하는 안드로이드, iOS용 웹앱 (하이브리드앱)
								</p>
								<br>
								<p>
									<strong>&lt;참고자료 / 유의사항&gt;</strong>
								</p>
								<br>
								<p>
									스토리보드는 아래 별첨 자료를 참고 바랍니다.<br>- 스토리보드(PDF) : <a
										href="https://www.wishket.com/w/KKz6trsLFr">https://www.wishket.com/w/KKz6trsLFr</a>
								</p>
								<p></p>
								<p></p>
							</div>

							<div class="project-skills-tag-detail-viewbox"
								style="margin-bottom: -8px;">
								<div class="skills-tag-title">관련 기술</div>
								<span class="skills-tag">Photoshop</span> <span
									class="skills-tag">Android</span> <span class="skills-tag">PHP</span>
								<span class="skills-tag">CSS</span> <span class="skills-tag">iOS</span>
								<span class="skills-tag">HTML</span> <span class="skills-tag">MSSQL</span>
								<span class="skills-tag">hybridapp</span> <span
									class="skills-tag">CodeIgniter</span> <span class="skills-tag">FreeTDS</span>
							</div>
						</div>
					</div>
				</c:forEach> </main>
			</div>
			<!-- -------main 영역 끝-------------------------------- -->


			<!-- -------사이드바 영역-------------------------------- -->
			<aside class="aside">

				<c:forEach var="p" items="${project}">
					<ul class="sidebar">
						<li>
							<div class="content-inner" style="width: 230px;">
								<div class="project-action-btn-group" style="">
									<a
										class="btn btn-large btn-partners btn-project-application btn-block"
										id="apply-btn"><img
										src="../images/has-proposal-default.png">프로젝트 지원하기</a>
									<hr>
									<a
										class="btn btn-large btn-project-application btn-black btn-block"
										href="view?project_id=${p.id}&partner_id=${sessionScope.sessionId}"
										onclick="toggle_interest(this);" style="margin-bottom: 0;"><i
										class="fa fa-heart" style="margin-right: 7px;"></i><span
										id="interest_action_text">관심 프로젝트 추가하기</span></a>
								</div>
							</div>
						</li>
					</ul>
				</c:forEach>
			</aside>
		</div>
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