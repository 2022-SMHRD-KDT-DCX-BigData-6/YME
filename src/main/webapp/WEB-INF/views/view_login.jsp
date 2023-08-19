<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="description" content="">
<meta name="author" content="Tooplate">

<title>yme.com</title>

<!-- CSS FILES -->
<link rel="preconnect" href="https://fonts.googleapis.com">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link
	href="https://fonts.googleapis.com/css2?family=Unbounded:wght@300;400;700&display=swap"
	rel="stylesheet">

<link href="./resources/css/bootstrap.min.css" rel="stylesheet">

<link href="./resources/css/bootstrap-icons.css" rel="stylesheet">

<link href="./resources/css/apexcharts.css" rel="stylesheet">

<link href="./resources/css/tooplate-mini-finance.css" rel="stylesheet">
<style type="text/css">
#section01 {
	height: 100vh;
	background-size: 69%;
	background-repeat: no-repeat;
	background-position: center;
	position: relative;
}

#section01 .inner {
	max-width: 1300px;
	width: 90%;
	margin: 0 auto;
	height: 100vh;
	display: table;
}

#section01 .inner .inner02 {
	display: table-cell;
	vertical-align: middle;
}

#section01 .inner .inner02 .txt_box {
	display: flex;
	flex-direction: row;
	font-weight: 700;
	color: #3A3A3A;
	font-size: 80px;
	line-height: 95px;
	letter-spacing: -0.02em;
	margin-top: -150px;
	margin-bottom: 6px;
}

#section01 .inner .inner02 .txt_box span {
	color: #3A3A3A;
	font-size: 40px;
	line-height: 95px;
	display: block;
	font-weight: 500;
}

#section01 .inner .inner02 .txt_box2 {
	font-weight: 300;
	color: #777777;
	font-size: 32px;
	line-height: 38px;
	letter-spacing: -0.02em;
	margin-bottom: 55px;
}

#section01 .inner .inner02 .link_box {
	margin-top: 30px;
}

#section01 .inner .inner02 .link_box a:first-child {
	margin-right: 20px;
}

#section01 .inner .inner02 .link_box a img {
	width: 215px;
	height: 70px;
}

#section01 .login_box {
	position: absolute;
	right: 0;
	top: 0;
	height: 100vh;
	width: 370px;
	background: #fff;
	box-shadow: -1px -1px 15px rgba(0, 0, 0, 0.3);
	border-radius: 40px 0 0 40px;
	display: table;
}

#section01 .login_box .inner {
	display: table-cell;
	vertical-align: middle;
	text-align: center;
}

#section01 .login_box .inner .form {
	margin: 90px 40px 0 40px;
}

#section01 .login_box .inner .form img {
	width: 85px;
	height: 70px;
	position: relative;
	top: 15px;
	float: right;
}

#section01 .login_box .inner .form input {
	width: 290px;
	height: 50px;
	background: #F5F5F5;
	border-radius: 10px;
	border: none;
	outline: none;
	font-weight: 400;
	font-size: 15px;
	line-height: 18px;
	letter-spacing: -0.02em;
	padding: 0 15px;
	font-family: "Pretendard Variable", Pretendard, -apple-system,
		BlinkMacSystemFont, system-ui, Roboto, "Helvetica Neue", "Segoe UI",
		"Apple SD Gothic Neo", "Noto Sans KR", "Malgun Gothic",
		"Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", sans-serif;
	margin-bottom: 20px;
}

#section01 .login_box .inner .form input:placeholder {
	font-weight: 400;
	font-size: 15px;
	line-height: 18px;
	color: #8E8E8E;
	font-size: 15px;
	font-family: "Pretendard Variable", Pretendard, -apple-system,
		BlinkMacSystemFont, system-ui, Roboto, "Helvetica Neue", "Segoe UI",
		"Apple SD Gothic Neo", "Noto Sans KR", "Malgun Gothic",
		"Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", sans-serif;
}

#section01 .login_box .inner .form button {
	border: none;
	outline: none;
	background: #4CBCAF;
	width: 290px;
	height: 50px;
	border-radius: 10px;
	color: #FFFFFF;
	font-size: 15px;
	line-height: 18px;
	font-family: "Pretendard Variable", Pretendard, -apple-system,
		BlinkMacSystemFont, system-ui, Roboto, "Helvetica Neue", "Segoe UI",
		"Apple SD Gothic Neo", "Noto Sans KR", "Malgun Gothic",
		"Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", sans-serif;
}

#section01 .login_box .inner .etc_box {
	width: 290px;
	margin: 10px auto 0;
}

#section01 .login_box .inner .etc_box:after {
	content: "";
	display: block;
	float: none;
	clear: both;
}

#section01 .login_box .inner .etc_box .join {
	float: left;
}

#section01 .login_box .inner .etc_box .join a {
	color: #8E8E8E;
	font-size: 13px;
	font-weight: 300;
}

#section01 .login_box .inner .etc_box .find {
	float: right;
}

#section01 .login_box .inner .etc_box .find ul li {
	margin-left: 10px;
	display: inline-block;
	position: relative;
}

#section01 .login_box .inner .etc_box .find ul li a {
	color: #8E8E8E;
	font-size: 13px;
	font-weight: 300;
}

#section01 .login_box .inner .btn_box {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

#section01 .login_box .inner .btn_box .app_btn_1 {
	width: 290px;
	height: 50px;
	background: #FFFFFF;
	box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.15);
	border-radius: 5px;
	font-weight: 500;
	font-size: 15px;
	line-height: 18px;
	text-align: center;
	letter-spacing: -0.02em;
	color: #3A3A3A;
	padding: 16px 0;
	margin: 50px 0 10px 0;
}

#section01 .login_box .inner .btn_box .app_btn_2 {
	width: 290px;
	height: 50px;
	background: #A7E4DD;
	box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.15);
	border-radius: 5px;
	font-weight: 500;
	font-size: 15px;
	line-height: 18px;
	text-align: center;
	letter-spacing: -0.02em;
	color: #3A3A3A;
	padding: 16px 0;
}

#section01 .scroll {
	position: absolute;
	left: 50%;
	transform: translateX(-50%);
	bottom: 50px;
	animation: motion 0.6s linear 0.5s infinite alternate;
}

@
keyframes motion { 0% {
	bottom: 50px;
}
100
%
{
bottom
:
60px;
}
</style>
</head>
<body>
	<section id="section01" style="background-image: url('./resources/images/mainImage.jpg'); background-position: left 5vh bottom -10vh;">
		<div class="inner">
			<div class="inner02">
				<div class="txt_box" style="position: absolute; top: 180px;">
					<span>일단 모여,</span>&nbsp;10-Minutes
				</div>
				<div class="txt_box2" style="position: absolute; top: 140px;">모이고 싶은 대학생이라면 누구나</div>
			</div>
		</div>
		<div class="login_box">
			<div class="inner">
				<div class="logo_box">
					<img src=".\resources\images\mainLogo.png" style="width: 10%;">&nbsp;10-Minutes
				</div>
				<div class="form">
					<form action="${cpath}/login.do" id=frm method="post">
						<input class="login_input" id="id" name="id" type="text"
							onclick="$('#uid').focus()" autofocus=""
							placeholder="아이디를 입력해주세요." required=""> <input
							class="login_input" id="pw" name="pw" type="password"
							placeholder="비밀번호를 입력해주세요." required="">
						<button type="button" onclick="login()">로그인</button>
					</form>
				</div>
				<div class="btn_box">
					<div class="app_btn_1"
						onclick="no_login()">둘러보기</div>
					<div class="app_btn_2"
						onclick="join()">회원가입</div>
				</div>
			</div>
		</div>
	</section>
	<script src="./resources/js/jquery.min.js"></script>
	<script src="./resources/js/bootstrap.bundle.min.js"></script>
	<script src="./resources/js/apexcharts.min.js"></script>
	<script src="./resources/js/custom.js"></script>
	<script type="text/javascript">
		function join() {
			location.href = "${cpath}/registerPage.do";
		}
		
		function login(){
			var id = $('#id').val();
			var pw = $('#pw').val();
		
			$.ajax({
				url : "${cpath}/ajaxLogin.do",
				type : "post",
				data : {"id":id,"pw":pw},
				dataType: "json",
				success : function(data){
					if(data==1){
						document.getElementById("frm").submit();
					}else{
						alert("아이디 비밀번호를 확인하세요!");
					}
				},
				error : function(){
					alert("오류");
				}
			
				});	
		}
		
	</script>
	<script type="text/javascript">
		function no_login() {
			location.href = "${cpath}/main.do";
		}
	</script>

</body>
</html>