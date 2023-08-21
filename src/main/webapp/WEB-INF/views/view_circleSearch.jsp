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
.col-lg-4 {
	width: 50%;
}
.custom-form button[type="submit"]:hover {
  background: #1D3557;
  color: white;
}
.custom-form button[type="submit"]:focus {
  background: #1D3557;
  color: white;
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

		

		<c:if test="${empty mvo}">
			<div class="dropdown px-3">
				<a class="nav-link dropdown-toggle" href="#" role="button"
					data-bs-toggle="dropdown" aria-expanded="false"
					style="width: 115px; font-style: italic">Login/Join</a>

				<ul class="dropdown-menu bg-white shadow show"
					data-bs-popper="static">
					<div style="margin: 0 10px 0 10px;">
						<form id="lfrm" action="${cpath }/login.do" method="post">
							<div class="form-floating mb-3">
								<input type="text" class="form-control" name="id" id="id"
									placeholder="ID"
									style="border-color: #A8DADC; border-style: solid;"><label
									for="id">ID</label>
							</div>
							<div class="form-floating mb-3">
								<input type="password" class=" form-control" name="pw" id="pw"
									placeholder="Password"
									style="border-color: #A8DADC; border-style: solid;"> <label
									for="pw">Password</label>
							</div>
					</div>
					<li class="border-top mt-3 pt-2"><button type="button"
							class="dropdown-item ms-0 me-0" onclick="login()">
							<i class="bi-box-arrow-right me-2"></i> 로그인
						</button>
						</form>
						<button type="button" class="dropdown-item ms-0 me-0"
							onclick="joinPage()">
							<i class="bi-box-arrow-right me-2"></i> 회원가입
						</button></li>

				</ul>
			</div>
		</c:if>

		<!-- 회원 로그인바 -->
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

	<div class="container-fluid">
		<div class="row">
			<nav id="sidebarMenu"
				class="col-md-3 col-lg-2 d-md-block sidebar collapse">
				<div class="position-sticky py-4 px-3 sidebar-sticky">
					<ul class="nav flex-column h-100">
						<li class="nav-item"><a class="nav-link "
							aria-current="page" href="${cpath}/main.do"> <i
								class="bi-house-fill me-2"></i> 메인
						</a></li>

						<li class="nav-item"><a class="nav-link active" href="${cpath }/circle_search.do">
								<i class="bi-wallet me-2"></i> 동아리 찾기
						</a></li>
						<c:if test="${!empty mvo}">
						<li class="nav-item"><a class="nav-link" href="javascript:void(0);" onclick="my_circle()">
								<i class="bi-person me-2"></i> 내 동아리</a>
								<ul style="display: none" id="my_circle">
									<li class="nav-item" style="list-style-type: none">
									<a class="nav-link" href="${cpath}/myCircle.do?circle_at=${mvo.circle_at}">${mvo.circle_at}</a>
									</li>
								</ul>
						</li>
						</c:if>
						<c:if test="${!empty mvo}">
							<li class="nav-item"><a class="nav-link"
								href="${cpath}/researchPage.do"> <i class="bi-person me-2"></i>
									성향분석하기
							</a></li>
						</c:if>
						<c:if test="${empty mvo}">
							<li class="nav-item"><a class="nav-link"
								href="javascript:void(0);" onclick="alert('로그인후 이용가능합니다');return false;"> <i class="bi-person me-2"></i>
									성향분석하기
							</a></li>
						</c:if>
						<c:if test="${!empty mvo}">
							<li class="nav-item"><a class="nav-link"
								href="${cpath}/make_profile.do"> <i class="bi-person me-2"></i>
									동물 프로필 만들기
							</a></li>
						</c:if>
						<c:if test="${empty mvo}">
							<li class="nav-item"><a class="nav-link"
								href="javascript:void(0);" onclick="alert('로그인후 이용가능합니다');return false;"> <i class="bi-person me-2"></i>
									동물 프로필 만들기
							</a></li>
						</c:if>
						<c:if test="${!empty mvo}">
						<li class="nav-item"><a class="nav-link" href="${cpath }/myPage.do">
								<i class="bi-gear me-2"></i> 내 정보
						</a></li>
						</c:if>

						<c:if test="${!empty mvo}">
							<li class="nav-item border-top mt-auto pt-2"><a
								class="nav-link" href="${cpath}/logout.do"> <i
									class="bi-box-arrow-left me-2"></i> Logout
							</a></li>
						</c:if>
					</ul>
				</div>
			</nav>

			<main
				class="main-wrapper col-md-9 ms-sm-auto py-4 col-lg-10 px-md-4 border-start">

				<div class="row my-4" style="margin-top: 0px;">
					<div class="col-lg-5 col-12" style="width: 100%;">
						<div
							class="custom-block text-center bg-white banner"
							style="padding: 0; margin: 0 auto; width: 80%; margin-bottom: 12px;">
							<img src="./resources/images/banner/preference.png"
								class="d-block w-100" alt="..."
								onclick="location.href='${cpath}/researchPage.do'">

						</div>
						<div class="col-lg-7 col-12"
							style="margin: 0 auto; margin-bottom: 30px; width: 80%;">
							<form class="custom-form hero-form" action="#" method="get"
								role="form">
								<h3 class="text-white mb-3">동아리를 찾아봐요</h3>


								<div class="row">
									<div>
										<div>
											<div class="col-12">
												<div class="input-group">
													<span class="input-group-text" id="basic-addon1"><i
														class="bi-person custom-icon"></i></span> <input type="text"
														name="#" id="clubName" class="form-control" placeholder="동아리 이름">
												</div>
											</div>

											<div class="col-12">
												<div class="input-group">
													<span class="input-group-text" id="basic-addon1"><i
														class="bi-geo-alt custom-icon"></i></span> <input type="text"
														name="#" id="schoolName" class="form-control" placeholder="학교이름">
												</div>
											</div>

										</div>
										<div class="col-lg-12 col-12">
											<button type="submit" class="form-control">동아리 찾기</button>
										</div>
									</div>
								</div>


							</form>
						</div>
						<div
							class="custom-block custom-block-profile-front custom-block-profile text-center bg-white"
							style="padding-bottom: 0; width: 80%; margin: 0 auto; display: none;">
							<div class="row align-items-center" >
										<!-- 추천 친구 리스트 삽입 위치 -->
								<div class="row align-items-center" style="max-width: 103%; width: 103%; min-width: 103%" id="test">
									
	
								</div>

							</div>

						</div>
					</div>
				</div>

				<footer class="site-footer">
					<div class="container">
						<div class="row">

							<div class="col-lg-12 col-12">
								<p class="copyright-text">
									Copyright © Mini Finance 2048 - Design: <a rel="sponsored"
										href="https://www.tooplate.com" target="_blank">Tooplate</a>
								</p>
							</div>

						</div>
					</div>
				</footer>
			</main>

		</div>
	</div>

	<!-- JAVASCRIPT FILES -->
	<script src="./resources/js/jquery.min.js"></script>
	<script src="./resources/js/bootstrap.bundle.min.js"></script>
	<script src="./resources/js/apexcharts.min.js"></script>
	<script src="./resources/js/custom.js"></script>
	<!-- 동아리 검색 -->
	<script>
		document
				.querySelector('.hero-form')
				.addEventListener(
						'submit',
						function(event) {
							event.preventDefault(); // Prevent the form from submitting

							// Assuming the required fields have IDs or names, replace "#" with the actual IDs or names
							var clubName = document
									.querySelector('#clubName').value;
							var schoolName = document
									.querySelector('#schoolName').value;

							// Check if the required fields are not empty
							if (clubName.trim() == ''
								&& schoolName.trim() == '') {
								alert("동아리 이름, 학교이름 둘 중 하나 이상 입력하세요.");
								
							}else if(clubName.trim() !== ''
								&& schoolName.trim() !== '') {
								alert("동아리 이름, 학교이름 둘 중 하나만 입력하세요.");
							}else{
								var customBlock = document
								.querySelector('.custom-block-profile-front');
								customBlock.style.display = 'flex';
								
								if(schoolName !== ''){
									$.ajax({
										
										url: "${cpath}/setCircleData.do",
										method: "POST",
										data: {value1: schoolName},
										success: function(result){

										$("#test").html(result);
										
										
										
										},
										error : function(){ alert("error");}
									});
									
								} else{
									$.ajax({
										
										url: "${cpath}/setCircleData.do",
										method: "POST",
										data: {value2: clubName},
										success: function(result){

										$("#test").html(result);
										
										
										
										},
										error : function(){ alert("error");}
									});
									
								}
							}
							
							
						});
	</script>
		<script type="text/javascript">
	 function my_circle(){
		 var con = document.getElementById("my_circle")
		 if(con.style.display == "none"){
		 $('#my_circle').css("display","block");
			 
		 }else{
			 $('#my_circle').css("display","none");
		 }
	 }
	</script>
	
	<script type="text/javascript">
		function login() {
			
			var id = $('#id').val();
			var pw = $('#pw').val();
			
			if(id !=""&& pw !=""){
				$.ajax({
					url : "${cpath}/ajaxLogin.do",
					type : "post",
					data : {"id":id,"pw":pw},
					dataType: "json",
					success : function(data){
						 if(data==1){
							document.getElementById('lfrm').submit();
						}else{
							alert("아이디 비밀번호를 확인하세요!");
						} 
					},
					error : function(){
						alert("오류");
					}
				
					});	
				
			}else{
				
				alert("아이디 비밀번호를 확인해 주세요!");
			}
		}
	</script>
	<script type="text/javascript">
		function joinPage() {
			location.href = "${cpath}/registerPage.do";
		}
	</script>
	
	
</body>
</html>