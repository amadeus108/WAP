<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<title>비밀번호 찾기 - WAP</title>

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
	<div class="content">
		<div class="content-header">
			<section>
				<h1>비밀번호 찾기</h1>
				<a>계정의 비밀번호를 잊으셨나요?</a>
			</section>
		</div>

		<div class="content-inner">
			<div class="row">
				<div class="col-sm-8">
					<form>
						<div class="form-group">
							<label for="exampleInputEmail1"><a style="color: red;">*</a>이메일</label>
							<input type="email" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp">
						</div>
						<button type="submit" class="btn btn-primary btn-lg btn-block">비밀번호 찾기</button>
					</form>
				</div>

				<div class="col-sm-4">
					<aside>
						<img id="find_pwd" src="../images/accounts_password_reset.png">
					</aside>
				</div>
			</div>
		</div>
	</div>
	<script>
	var finished_rendering = function() {
		console.log("finished rendering plugins");
		var spinner = document.getElementById("spinner");
		spinner.removeAttribute("style");
		spinner.removeChild(spinner.childNodes[0]);
	}
	FB.Event.subscribe('xfbml.render', finished_rendering);
</script>
</body>



<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script src="js/bootstrap.min.js"></script>
</html>