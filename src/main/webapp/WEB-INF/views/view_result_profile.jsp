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

<style>
.dropzone {
	border: 2px dashed #ccc;
	width: 300px;
	height: 300px;
	text-align: center;
	margin: 0 auto;
	cursor: pointer;
}

#image-input {
	padding-right: 60%
}

.input-group {
	padding-inline: 20%
}

.common_top_nav_header {
	text-align: center;
	padding: 15px;
	font-size: 18px;
	font-weight: 600;
	color: #565656;
	background: white;
	width: 100%;
	z-index: 98;
	top: 55px;
	border-bottom: 1px solid rgba(0, 0, 0, 0.08);
}
</style>
</head>
<body>

	<header class="navbar sticky-top flex-md-nowrap">
		<div class="col-md-3 col-lg-3 me-0 px-3 fs-6">
			<a class="navbar-brand" href="${cpath}/main.do"> <img
				src=".\resources\images\mainLogo.png" style="width: 10%;">&nbsp;10-Minutes
			</a>
		</div>

		<button class="navbar-toggler position-absolute d-md-none collapsed"
			type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu"
			aria-controls="sidebarMenu" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<form
			class="custom-form header-form ms-lg-3 ms-md-3 me-lg-auto me-md-auto order-2 order-lg-0 order-md-0"
			action="#" method="get" role="form">
			<input class="form-control" name="search" type="text"
				placeholder="Search" aria-label="Search">
		</form>

		<c:if test="${empty mvo}">
			<div class="dropdown px-3">
				<button type="button" onclick="loginPage()"
					style="color: white; background-color: #A8DADC; border: none">login</button>
			</div>
		</c:if>

		<c:if test="${!empty mvo}">
			<div class="navbar-nav me-lg-2">
				<div class="nav-item text-nowrap d-flex align-items-center">
					<div class="dropdown ps-3">
						<a class="nav-link dropdown-toggle text-center" href="#"
							role="button" data-bs-toggle="dropdown" aria-expanded="false"
							id="navbarLightDropdownMenuLink"> <i class="bi-bell"></i> 
								<span class="visually-hidden">New alerts</span>
						</a>

					</div>


						<div class="dropdown px-3">
						<a class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false">
							 <c:if test="${mc_vo eq 'x' }">
							 <img
							src="./resources/images/icons/i_noProfile.png"
							class="profile-image img-fluid" alt="">
							</c:if>
							<c:if test="${mc_vo ne 'x' }">
									<img src="./resources/images/animal_images/${mc_vo.ani_name}.png"
										class="profile-image img-fluid me-3" alt="">
								</c:if>
						</a>
						<ul class="dropdown-menu bg-white shadow">
							<li>
								<div class="dropdown-menu-profile-thumb d-flex">
								<c:if test="${mc_vo eq 'x' }">
									<img src="./resources/images/icons/i_noProfile.png"
										class="profile-image img-fluid me-3" alt="">
								</c:if>
								<c:if test="${mc_vo ne 'x' }">
									<img src="./resources/images/animal_images/${mc_vo.ani_name}.png"
										class="profile-image img-fluid me-3" alt="">
								</c:if>

									<div class="d-flex flex-column">
										<small>${mvo.nick}</small>
									</div>
								</div>
							</li>

							<li><a class="dropdown-item" href="${cpath}/myPage.do">
									<i class="bi-person me-2"></i> Profile
							</a></li>

							<li class="border-top mt-3 pt-2 mx-4"><a
								class="dropdown-item ms-0 me-0" href="${cpath }/logout.do"> <i
									class="bi-box-arrow-left me-2"></i> Logout
							</a></li>
						</ul>
					</div>
				</div>
			</div>
		</c:if>
	</header>
	<form action="${cpath }/main.do" method="post"
		id="frm">
		<div class="container-fluid">
			<div class="row" style="background-color: #ececec;">

				<div
					class="custom-block custom-block-profile-front custom-block-profil	e text-center bg-white joinCase"
					style="padding: 0;">

					<div class="common_top_nav_header">
						<div
							style="display: flex; justify-content: center; align-items: center;">
							<img onclick="goback()" src=".\resources\images\angle_right.svg"
								style="position: absolute; left: 0px;"> ${t_1}

						</div>
					</div>
					<div style="margin: 0 auto; max-width: 60%;">
					
						<img
							src="./resources/images/tendency_results/research_result_${t_1}.svg"
							alt="bias_result_1" style="width: 75%;">
					</div>
					<div class="submit_btn" style="display: flex; position: relative;">


						<div class="footer_btn 1_a_btn btn_title none" id="nextButton"
							onclick="research()">홈으로</div>


					</div>
				</div>

				<footer class="site-footer">
					<div class="container">
						<div class="row">

							<div class="col-lg-12 col-12">
								<p class="copyright-text">
									Copyright © Campus Social Life 2023 - Design: <a
										rel="sponsored" href="https://www.tooplate.com"
										target="_blank">Tooplate</a>
								</p>
							</div>

						</div>
					</div>
				</footer>

			</div>
		</div>
	</form>

	<!-- JAVASCRIPT FILES -->
	<script src="./resources/js/jquery.min.js"></script>
	<script src="./resources/js/bootstrap.bundle.min.js"></script>
	<script src="./resources/js/apexcharts.min.js"></script>
	<script src="./resources/js/custom.js"></script>
	<script type="text/javascript">
		function research() {

			console.log(document.getElementById('id'));
			document.getElementById('frm').submit();
		}
	</script>
<script type="text/javascript">
		function login() {
			
			var id = $('#id').val();
			var pw = $('#pw').val();
			
			if(id !=""&& pw !=""){
				document.getElementById('lfrm').submit();
			}else{
				
				alert("아이디 비밀번호를 확인해 주세요!");
			}
		}
	</script>

</body>
</html>