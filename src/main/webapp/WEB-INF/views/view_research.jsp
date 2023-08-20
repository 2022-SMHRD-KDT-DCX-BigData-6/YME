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
<meta name="viewport" content="width=device-width, initial-scale=1.0">


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

<link href="./resources/css/fontawesome-all.min.css" rel="stylesheet">

<link href="./resources/css/tooplate-mini-finance.css" rel="stylesheet">

<script
	src="https://cdn.jsdelivr.net/npm/swiper@10.1.0/swiper-bundle.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/swiper@10.1.0/swiper-bundle.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="./resources/css/swiper-bundle.css">
<script src="./resources/js/swiper-bundle.min.js"></script>
<script src="./resources/js/swiper-bundle.min2.js"></script>
<script src="./resources/js/swiper-bundle.min3.js"></script>


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

	

		<div class="navbar-nav me-lg-2 ">
			<div class="nav-item text-nowrap d-flex align-items-center">
				<div class="dropdown ps-3">
					<a class="nav-link dropdown-toggle text-center" href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="false"
						id="navbarLightDropdownMenuLink"> <i class="bi-bell"></i> <span
						class="position-absolute start-100 translate-middle p-1 bg-danger border border-light rounded-circle">
							<span class="visually-hidden">New alerts</span>
					</span>
					</a>

					<ul
						class="dropdown-menu dropdown-menu-lg-end notifications-block-wrap bg-white shadow"
						aria-labelledby="navbarLightDropdownMenuLink">
						<small>Notifications</small>

						<li class="notifications-block border-bottom pb-2 mb-2"><a
							class="dropdown-item d-flex  align-items-center" href="#">
								<div class="notifications-icon-wrap bg-success">
									<i class="notifications-icon bi-check-circle-fill"></i>
								</div>

								<div>
									<span>Your account has been created successfuly.</span>

									<p>12 days ago</p>
								</div>
						</a></li>

						<li class="notifications-block border-bottom pb-2 mb-2"><a
							class="dropdown-item d-flex align-items-center" href="#">
								<div class="notifications-icon-wrap bg-info">
									<i class="notifications-icon bi-folder"></i>
								</div>

								<div>
									<span>Please check. We have sent a Daily report.</span>

									<p>10 days ago</p>
								</div>
						</a></li>

						<li class="notifications-block"><a
							class="dropdown-item d-flex align-items-center" href="#">
								<div class="notifications-icon-wrap bg-danger">
									<i class="notifications-icon bi-question-circle"></i>
								</div>

								<div>
									<span>Account verification failed.</span>

									<p>1 hour ago</p>
								</div>
						</a></li>
					</ul>
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
	</header>

	<form action="http://127.0.0.1/toResearch" method="get" id="frm">
		<div class="swiper-container"
			style="background: var(- -section-bg-color); min-height: calc(100vh - 65px);">
			<div id="prevButton" class="swiper-button-prev"></div>
			<div id="nextButton" class="swiper-button-next"></div>
			<div class="swiper-wrapper" style="align-items: flex-start;">
				<!-- 1 페이지 -->
				<div class="swiper-slide">
					<div class="progfx"
						style="width: 840px; margin: 0 auto; margin-top: 20px; margin-bottom: 15px; margin-top: 20px; margin-bottom: 15px;">
						<div class="progressContainer">
							<div class="total_counter"
								style="right: 0; top: -20px; font-size: 12px; line-height: 1.2; color: #ccc;">
								<span style="color: #666;">1</span> / 6
							</div>
							<progress max="100" class="progress animated"
								value="16.666666666666666666666666666667"
								style="width: 100%; margin: 0; height: 7px; overflow: hidden; vertical-align: top; border: none; border-radius: 30px; color: #ff5d20;" />
						</div>
					</div>
					<div
						class="custom-block custom-block-profile-front custom-block-profil	e text-center bg-white joinCase">
						<div class="content" style="margin: 0; width: 100%;">
							<div class="section">
								<div class="job-thumb1 d-flex"
									style="padding: 20px 25px 20px 25px; width: 80%; margin: 0 auto; flex-direction: column; margin-top: 25px; margin-bottom: 25px;">
									<input type="hidden" name="q1" id="pre_q1" value>
									<div
										style="font-weight: 700; font-size: 22px; line-height: 34px; padding: 0px 20px 20px 20px; text-align: center;">
										<span style="font-weight: 400; font-size: 20px;">Q1. 몸을
											쓰는 신체활동을 즐기는 편이다 </span>
									</div>
									<div class="options" style="display: flex; margin: 0 auto;">
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected1(this,'1')">
												매우<br>아니다
											</div>


										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected1(this,'2')">아니다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected1(this,'3')">그렇다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected1(this,'4')">
												매우<br>그렇다
											</div>

										</div>
									</div>
								</div>
								<div class="job-thumb1 d-flex"
									style="padding: 20px 25px 20px 25px; width: 80%; margin: 0 auto; flex-direction: column; margin-top: 25px; margin-bottom: 25px;">
									<input type="hidden" name="q2" id="pre_q2" value>
									<div
										style="font-weight: 700; font-size: 22px; line-height: 34px; padding: 0px 20px 20px 20px; text-align: center;">
										<span style="font-weight: 400; font-size: 20px;">Q2.
											공연/연극/뮤지컬 등을 즐겨 본다 </span>
									</div>
									<div class="options" style="display: flex; margin: 0 auto;">
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected1_2(this,'1')">
												매우<br>아니다
											</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected1_2(this,'2')">아니다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected1_2(this,'3')">그렇다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected1_2(this,'4')">
												매우<br>그렇다
											</div>

										</div>
									</div>
								</div>
								<div class="job-thumb1 d-flex"
									style="padding: 20px 25px 20px 25px; width: 80%; margin: 0 auto; flex-direction: column; margin-top: 25px; margin-bottom: 25px;">
									<input type="hidden" name="q3" id="pre_q3" value>
									<div
										style="font-weight: 700; font-size: 22px; line-height: 34px; padding: 0px 20px 20px 20px; text-align: center;">
										<span style="font-weight: 400; font-size: 20px;">Q3. 관심
											있는 학문이나 분야에 대한 공부 욕구가 높다 </span>
									</div>
									<div class="options" style="display: flex; margin: 0 auto;">
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected1_3(this,'1')">
												매우<br>아니다
											</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected1_3(this,'2')">아니다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected1_3(this,'3')">그렇다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected1_3(this,'4')">
												매우<br>그렇다
											</div>

										</div>
									</div>
								</div>
								<div class="job-thumb1 d-flex"
									style="padding: 20px 25px 20px 25px; width: 80%; margin: 0 auto; flex-direction: column; margin-top: 25px; margin-bottom: 25px;">
									<input type="hidden" name="q4" id="pre_q4" value>
									<div
										style="font-weight: 700; font-size: 22px; line-height: 34px; padding: 0px 20px 20px 20px; text-align: center;">
										<span style="font-weight: 400; font-size: 20px;">Q4.
											남들과는 다른 특별한 취미를 가지고 싶다 </span>
									</div>
									<div class="options" style="display: flex; margin: 0 auto;">
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected1_4(this,'1')">
												매우<br>아니다
											</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected1_4(this,'2')">아니다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected1_4(this,'3')">그렇다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected1_4(this,'4')">
												매우<br>그렇다
											</div>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- 2 페이지 -->

				<div class="swiper-slide">
					<div class="progfx"
						style="width: 840px; margin: 0 auto; margin-top: 20px; margin-bottom: 15px;">
						<div class="progressContainer">
							<div class="total_counter"
								style="right: 0; top: -20px; font-size: 12px; line-height: 1.2; color: #ccc;">
								<span style="color: #666;">2</span> / 6
							</div>
							<progress max="100" class="progress animated"
								value="33.333333333333333333333333333333"
								style="width: 100%; margin: 0; height: 7px; overflow: hidden; vertical-align: top; border: none; border-radius: 30px; color: #ff5d20;" />
						</div>
					</div>
					<div
						class="custom-block custom-block-profile-front custom-block-profil	e text-center bg-white joinCase">
						<div class="content" style="margin: 0; width: 100%;">
							<div class="section">
								<div class="job-thumb2 d-flex"
									style="padding: 20px 25px 20px 25px; width: 80%; margin: 0 auto; flex-direction: column; margin-top: 25px; margin-bottom: 25px;">
									<input type="hidden" name="q5" id="pre_q5" value>
									<div
										style="font-weight: 700; font-size: 22px; line-height: 34px; padding: 0px 20px 20px 20px; text-align: center;">
										<span style="font-weight: 400; font-size: 20px;">Q5. 내가
											좋아하는 장르/작품이 뚜렷하다 </span>
									</div>
									<div class="options" style="display: flex; margin: 0 auto;">
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected2_1(this,'1')">
												매우<br>아니다
											</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected2_1(this,'2')">아니다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected2_1(this,'3')">그렇다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected2_1(this,'4')">
												매우<br>그렇다
											</div>

										</div>
									</div>
								</div>
								<div class="job-thumb2 d-flex"
									style="padding: 20px 25px 20px 25px; width: 80%; margin: 0 auto; flex-direction: column; margin-top: 25px; margin-bottom: 25px;">
									<input type="hidden" name="q6" id="pre_q6" value>
									<div
										style="font-weight: 700; font-size: 22px; line-height: 34px; padding: 0px 20px 20px 20px; text-align: center;">
										<span style="font-weight: 400; font-size: 20px;">Q6.
											남에게 호의를 베풀거나 돕는 것을 좋아한다 </span>
									</div>
									<div class="options" style="display: flex; margin: 0 auto;">
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected2_2(this,'1')">
												매우<br>아니다
											</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected2_2(this,'2')">아니다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected2_2(this,'3')">그렇다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected2_2(this,'4')">
												매우<br>그렇다
											</div>

										</div>
									</div>
								</div>
								<div class="job-thumb2 d-flex"
									style="padding: 20px 25px 20px 25px; width: 80%; margin: 0 auto; flex-direction: column; margin-top: 25px; margin-bottom: 25px;">
									<input type="hidden" name="q7" id="pre_q7" value>
									<div
										style="font-weight: 700; font-size: 22px; line-height: 34px; padding: 0px 20px 20px 20px; text-align: center;">
										<span style="font-weight: 400; font-size: 20px;">Q7. 종교
											활동을 하고 있거나 종교에 대한 관심이 높다 </span>
									</div>
									<div class="options" style="display: flex; margin: 0 auto;">
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected2_3(this,'1')">
												매우<br>아니다
											</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected2_3(this,'2')">아니다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected2_3(this,'3')">그렇다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected2_3(this,'4')">
												매우<br>그렇다
											</div>

										</div>
									</div>
								</div>
								<div class="job-thumb2 d-flex"
									style="padding: 20px 25px 20px 25px; width: 80%; margin: 0 auto; flex-direction: column; margin-top: 25px; margin-bottom: 25px;">
									<input type="hidden" name="q8" id="pre_q8" value>
									<div
										style="font-weight: 700; font-size: 22px; line-height: 34px; padding: 0px 20px 20px 20px; text-align: center;">
										<span style="font-weight: 400; font-size: 20px;">Q8.
											나만의 사업 아이템을 구상하고 실현해보고 싶다 </span>
									</div>
									<div class="options" style="display: flex; margin: 0 auto;">
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected2_4(this,'1')">
												매우<br>아니다
											</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected2_4(this,'2')">아니다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected2_4(this,'3')">그렇다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected2_4(this,'4')">
												매우<br>그렇다
											</div>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>




				<!-- 3 페이지 -->
				<div class="swiper-slide">
					<div class="progfx"
						style="width: 840px; margin: 0 auto; margin-top: 20px; margin-bottom: 15px;">
						<div class="progressContainer">
							<div class="total_counter"
								style="right: 0; top: -20px; font-size: 12px; line-height: 1.2; color: #ccc;">
								<span style="color: #666;">3</span> / 6
							</div>
							<progress max="100" class="progress animated" value="50.0"
								style="width: 100%; margin: 0; height: 7px; overflow: hidden; vertical-align: top; border: none; border-radius: 30px; color: #ff5d20;" />
						</div>
					</div>
					<div
						class="custom-block custom-block-profile-front custom-block-profil	e text-center bg-white joinCase">
						<div class="content" style="margin: 0; width: 100%;">
							<div class="section">
								<div class="job-thumb3 d-flex"
									style="padding: 20px 25px 20px 25px; width: 80%; margin: 0 auto; flex-direction: column; margin-top: 25px; margin-bottom: 25px;">
									<input type="hidden" name="q9" id="pre_q9" value>
									<div
										style="font-weight: 700; font-size: 22px; line-height: 34px; padding: 0px 20px 20px 20px; text-align: center;">
										<span style="font-weight: 400; font-size: 20px;">Q9.
											스포츠 관련 경기 영상 시청을 좋아한다 </span>
									</div>
									<div class="options" style="display: flex; margin: 0 auto;">
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected3_1(this,'1')">
												매우<br>아니다
											</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected3_1(this,'2')">아니다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected3_1(this,'3')">그렇다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected3_1(this,'4')">
												매우<br>그렇다
											</div>

										</div>
									</div>
								</div>
								<div class="job-thumb3 d-flex"
									style="padding: 20px 25px 20px 25px; width: 80%; margin: 0 auto; flex-direction: column; margin-top: 25px; margin-bottom: 25px;">
									<input type="hidden" name="q10" id="pre_q10" value>
									<div
										style="font-weight: 700; font-size: 22px; line-height: 34px; padding: 0px 20px 20px 20px; text-align: center;">
										<span style="font-weight: 400; font-size: 20px;">Q10.
											내가 무대에 서보는 상상을 한번씩 해본다 </span>
									</div>
									<div class="options" style="display: flex; margin: 0 auto;">
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected3_2(this,'1')">
												매우<br>아니다
											</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected3_2(this,'2')">아니다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected3_2(this,'3')">그렇다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected3_2(this,'4')">
												매우<br>그렇다
											</div>

										</div>
									</div>
								</div>
								<div class="job-thumb3 d-flex"
									style="padding: 20px 25px 20px 25px; width: 80%; margin: 0 auto; flex-direction: column; margin-top: 25px; margin-bottom: 25px;">
									<input type="hidden" name="q11" id="pre_q11" value>
									<div
										style="font-weight: 700; font-size: 22px; line-height: 34px; padding: 0px 20px 20px 20px; text-align: center;">
										<span style="font-weight: 400; font-size: 20px;">Q11.
											새로운 것을 배우고 익히는 것이 너무 즐겁다 </span>
									</div>
									<div class="options" style="display: flex; margin: 0 auto;">
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected3_3(this,'1')">
												매우<br>아니다
											</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected3_3(this,'2')">아니다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected3_3(this,'3')">그렇다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected3_3(this,'4')">
												매우<br>그렇다
											</div>

										</div>
									</div>
								</div>
								<div class="job-thumb3 d-flex"
									style="padding: 20px 25px 20px 25px; width: 80%; margin: 0 auto; flex-direction: column; margin-top: 25px; margin-bottom: 25px;">
									<input type="hidden" name="q12" id="pre_q12" value>
									<div
										style="font-weight: 700; font-size: 22px; line-height: 34px; padding: 0px 20px 20px 20px; text-align: center;">
										<span style="font-weight: 400; font-size: 20px;">Q12.
											반복되는 일상에 시간을 보낼 수 있는 요소가 필요하다 </span>
									</div>
									<div class="options" style="display: flex; margin: 0 auto;">
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected3_4(this,'1')">
												매우<br>아니다
											</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected3_4(this,'2')">아니다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected3_4(this,'3')">그렇다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected3_4(this,'4')">
												매우<br>그렇다
											</div>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- 4 페이지 -->
				<div class="swiper-slide">
					<div class="progfx"
						style="width: 840px; margin: 0 auto; margin-top: 20px; margin-bottom: 15px;">
						<div class="progressContainer">
							<div class="total_counter"
								style="right: 0; top: -20px; font-size: 12px; line-height: 1.2; color: #ccc;">
								<span style="color: #666;">4</span> / 6
							</div>
							<progress max="100" class="progress animated"
								value="66.666666666666666666666666666667"
								style="width: 100%; margin: 0; height: 7px; overflow: hidden; vertical-align: top; border: none; border-radius: 30px; color: #ff5d20;" />
						</div>
					</div>
					<div
						class="custom-block custom-block-profile-front custom-block-profil	e text-center bg-white joinCase">
						<div class="content" style="margin: 0; width: 100%;">
							<div class="section">
								<div class="job-thumb4 d-flex"
									style="padding: 20px 25px 20px 25px; width: 80%; margin: 0 auto; flex-direction: column; margin-top: 25px; margin-bottom: 25px;">
									<input type="hidden" name="q13" id="pre_q13" value>
									<div
										style="font-weight: 700; font-size: 22px; line-height: 34px; padding: 0px 20px 20px 20px; text-align: center;">
										<span style="font-weight: 400; font-size: 20px;">Q13.
											창작활동을 하거나 해보고 싶다 </span>
									</div>
									<div class="options" style="display: flex; margin: 0 auto;">
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected4_1(this,'1')">
												매우<br>아니다
											</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected4_1(this,'2')">아니다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected4_1(this,'3')">그렇다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected4_1(this,'4')">
												매우<br>그렇다
											</div>

										</div>
									</div>
								</div>
								<div class="job-thumb4 d-flex"
									style="padding: 20px 25px 20px 25px; width: 80%; margin: 0 auto; flex-direction: column; margin-top: 25px; margin-bottom: 25px;">
									<input type="hidden" name="q14" id="pre_q14" value>
									<div
										style="font-weight: 700; font-size: 22px; line-height: 34px; padding: 0px 20px 20px 20px; text-align: center;">
										<span style="font-weight: 400; font-size: 20px;">Q14.
											평소 봉사활동에 대한 관심이 많은 편이다 </span>
									</div>
									<div class="options" style="display: flex; margin: 0 auto;">
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected4_2(this,'1')">
												매우<br>아니다
											</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected4_2(this,'2')">아니다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected4_2(this,'3')">그렇다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected4_2(this,'4')">
												매우<br>그렇다
											</div>

										</div>
									</div>
								</div>
								<div class="job-thumb4 d-flex"
									style="padding: 20px 25px 20px 25px; width: 80%; margin: 0 auto; flex-direction: column; margin-top: 25px; margin-bottom: 25px;">
									<input type="hidden" name="q15" id="pre_q15" value>
									<div
										style="font-weight: 700; font-size: 22px; line-height: 34px; padding: 0px 20px 20px 20px; text-align: center;">
										<span style="font-weight: 400; font-size: 20px;">Q15.
											혼자보다는 남들과 종교 활동을 해보고 싶다 </span>
									</div>
									<div class="options" style="display: flex; margin: 0 auto;">
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected4_3(this,'1')">
												매우<br>아니다
											</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected4_3(this,'2')">아니다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected4_3(this,'3')">그렇다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected4_3(this,'4')">
												매우<br>그렇다
											</div>

										</div>
									</div>
								</div>
								<div class="job-thumb4 d-flex"
									style="padding: 20px 25px 20px 25px; width: 80%; margin: 0 auto; flex-direction: column; margin-top: 25px; margin-bottom: 25px;">
									<input type="hidden" name="q16" id="pre_q16" value>
									<div
										style="font-weight: 700; font-size: 22px; line-height: 34px; padding: 0px 20px 20px 20px; text-align: center;">
										<span style="font-weight: 400; font-size: 20px;">Q16.
											취업보다는 창업에 더 관심이 많다 </span>
									</div>
									<div class="options" style="display: flex; margin: 0 auto;">
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected4_4(this,'1')">
												매우<br>아니다
											</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected4_4(this,'2')">아니다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected4_4(this,'3')">그렇다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected4_4(this,'4')">
												매우<br>그렇다
											</div>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- 5 페이지 -->
				<div class="swiper-slide">
					<div class="progfx"
						style="width: 840px; margin: 0 auto; margin-top: 20px; margin-bottom: 15px;">
						<div class="progressContainer">
							<div class="total_counter"
								style="right: 0; top: -20px; font-size: 12px; line-height: 1.2; color: #ccc;">
								<span style="color: #666;">5</span> / 6
							</div>
							<progress max="100" class="progress animated"
								value="83.333333333333333333333333333333"
								style="width: 100%; margin: 0; height: 7px; overflow: hidden; vertical-align: top; border: none; border-radius: 30px; color: #ff5d20;" />
						</div>
					</div>
					<div
						class="custom-block custom-block-profile-front custom-block-profil	e text-center bg-white joinCase">
						<div class="content" style="margin: 0; width: 100%;">
							<div class="section">
								<div class="job-thumb5 d-flex"
									style="padding: 20px 25px 20px 25px; width: 80%; margin: 0 auto; flex-direction: column; margin-top: 25px; margin-bottom: 25px;">
									<input type="hidden" name="q17" id="pre_q17" value>
									<div
										style="font-weight: 700; font-size: 22px; line-height: 34px; padding: 0px 20px 20px 20px; text-align: center;">
										<span style="font-weight: 400; font-size: 20px;">Q17.
											나는 운동을 하게 되면 승부욕이 많은 편이다 </span>
									</div>
									<div class="options" style="display: flex; margin: 0 auto;">
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected5_1(this,'1')">
												매우<br>아니다
											</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected5_1(this,'2')">아니다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected5_1(this,'3')">그렇다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected5_1(this,'4')">
												매우<br>그렇다
											</div>

										</div>
									</div>
								</div>
								<div class="job-thumb5 d-flex"
									style="padding: 20px 25px 20px 25px; width: 80%; margin: 0 auto; flex-direction: column; margin-top: 25px; margin-bottom: 25px;">
									<input type="hidden" name="q18" id="pre_q18" value>
									<div
										style="font-weight: 700; font-size: 22px; line-height: 34px; padding: 0px 20px 20px 20px; text-align: center;">
										<span style="font-weight: 400; font-size: 20px;">Q18.
											내가 본 작품들에 대해 리뷰를 쓰거나 해석하곤 한다 </span>
									</div>
									<div class="options" style="display: flex; margin: 0 auto;">
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected5_2(this,'1')">
												매우<br>아니다
											</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected5_2(this,'2')">아니다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected5_2(this,'3')">그렇다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected5_2(this,'4')">
												매우<br>그렇다
											</div>

										</div>
									</div>
								</div>
								<div class="job-thumb5 d-flex"
									style="padding: 20px 25px 20px 25px; width: 80%; margin: 0 auto; flex-direction: column; margin-top: 25px; margin-bottom: 25px;">
									<input type="hidden" name="q19" id="pre_q19" value>
									<div
										style="font-weight: 700; font-size: 22px; line-height: 34px; padding: 0px 20px 20px 20px; text-align: center;">
										<span style="font-weight: 400; font-size: 20px;">Q19.
											다큐멘터리나 교양 프로그램을 자주 시청한다 </span>
									</div>
									<div class="options" style="display: flex; margin: 0 auto;">
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected5_3(this,'1')">
												매우<br>아니다
											</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected5_3(this,'2')">아니다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected5_3(this,'3')">그렇다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected5_3(this,'4')">
												매우<br>그렇다
											</div>

										</div>
									</div>
								</div>
								<div class="job-thumb5 d-flex"
									style="padding: 20px 25px 20px 25px; width: 80%; margin: 0 auto; flex-direction: column; margin-top: 25px; margin-bottom: 25px;">
									<input type="hidden" name="q20" id="pre_q20" value>
									<div
										style="font-weight: 700; font-size: 22px; line-height: 34px; padding: 0px 20px 20px 20px; text-align: center;">
										<span style="font-weight: 400; font-size: 20px;">Q20.
											Youtube, SNS를 보면서 해보고 싶은 활동이 생겼다 </span>
									</div>
									<div class="options" style="display: flex; margin: 0 auto;">
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected5_4(this,'1')">
												매우<br>아니다
											</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected5_4(this,'2')">아니다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected5_4(this,'3')">그렇다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected5_4(this,'4')">
												매우<br>그렇다
											</div>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- 6 페이지 -->
				<div class="swiper-slide">
					<div class="progfx"
						style="width: 840px; margin: 0 auto; margin-top: 20px; margin-bottom: 15px;">
						<div class="progressContainer">
							<div class="total_counter"
								style="right: 0; top: -20px; font-size: 12px; line-height: 1.2; color: #ccc;">
								<span style="color: #666;">6</span> / 6
							</div>
							<progress max="100" class="progress animated" value="100"
								style="width: 100%; margin: 0; height: 7px; overflow: hidden; vertical-align: top; border: none; border-radius: 30px; color: #ff5d20;" />
						</div>
					</div>
					<div
						class="custom-block custom-block-profile-front custom-block-profil	e text-center bg-white joinCase">
						<div class="content" style="margin: 0; width: 100%;">
							<div class="section">
								<div class="job-thumb6 d-flex"
									style="padding: 20px 25px 20px 25px; width: 80%; margin: 0 auto; flex-direction: column; margin-top: 25px; margin-bottom: 25px;">
									<input type="hidden" name="q21" id="pre_q21" value>
									<div
										style="font-weight: 700; font-size: 22px; line-height: 34px; padding: 0px 20px 20px 20px; text-align: center;">
										<span style="font-weight: 400; font-size: 20px;">Q21.
											내가 만든 것들을 타인과 공유하거나 감상하고 싶다 </span>
									</div>
									<div class="options" style="display: flex; margin: 0 auto;">
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected6_1(this,'1')">
												매우<br>아니다
											</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected6_1(this,'2')">아니다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected6_1(this,'3')">그렇다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected6_1(this,'4')">
												매우<br>그렇다
											</div>

										</div>
									</div>
								</div>
								<div class="job-thumb6 d-flex"
									style="padding: 20px 25px 20px 25px; width: 80%; margin: 0 auto; flex-direction: column; margin-top: 25px; margin-bottom: 25px;">
									<input type="hidden" name="q22" id="pre_q22" value>
									<div
										style="font-weight: 700; font-size: 22px; line-height: 34px; padding: 0px 20px 20px 20px; text-align: center;">
										<span style="font-weight: 400; font-size: 20px;">Q22.
											정기적인 기부활동이나 후원을 꾸준히 하고 있다 </span>
									</div>
									<div class="options" style="display: flex; margin: 0 auto;">
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected6_2(this,'1')">
												매우<br>아니다
											</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected6_2(this,'2')">아니다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected6_2(this,'3')">그렇다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected6_2(this,'4')">
												매우<br>그렇다
											</div>

										</div>
									</div>
								</div>
								<div class="job-thumb6 d-flex"
									style="padding: 20px 25px 20px 25px; width: 80%; margin: 0 auto; flex-direction: column; margin-top: 25px; margin-bottom: 25px;">
									<input type="hidden" name="q23" id="pre_q23" value>
									<div
										style="font-weight: 700; font-size: 22px; line-height: 34px; padding: 0px 20px 20px 20px; text-align: center;">
										<span style="font-weight: 400; font-size: 20px;">Q23.
											신앙심을 가지는 것은 내 인생에서 아주 중요한 부분이다 </span>
									</div>
									<div class="options" style="display: flex; margin: 0 auto;">
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected6_3(this,'1')">
												매우<br>아니다
											</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected6_3(this,'2')">아니다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected6_3(this,'3')">그렇다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected6_3(this,'4')">
												매우<br>그렇다
											</div>

										</div>
									</div>
								</div>
								<div class="job-thumb6 d-flex"
									style="padding: 20px 25px 20px 25px; width: 80%; margin: 0 auto; flex-direction: column; margin-top: 25px; margin-bottom: 25px;">
									<input type="hidden" name="q24" id="pre_q24" value>
									<div
										style="font-weight: 700; font-size: 22px; line-height: 34px; padding: 0px 20px 20px 20px; text-align: center;">
										<span style="font-weight: 400; font-size: 20px;">Q24.
											기존의 시스템에 적응하기보다 나만의 시스템을 만들고 싶다 </span>
									</div>
									<div class="options" style="display: flex; margin: 0 auto;">
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected6_4(this,'1')">
												매우<br>아니다
											</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected6_4(this,'2')">아니다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected6_4(this,'3')">그렇다</div>

										</div>
										<div class="option"
											style="margin-right: 15px; margin-left: 15px;">
											<div class="research-icon"
												onclick="toggleSelected6_4(this,'4')">
												매우<br>그렇다
											</div>

										</div>
									</div>
								</div>
								
								<input type="hidden" name="id" id="id" value="${mvo.id}">
								<input type="hidden" name="univ" id="univ" value="${mvo.univ}">
								<input type="hidden" name="update" id="update" value="${update}">
							</div>
						</div>
						<div class="submit_btn" style="display: flex; position: relative;">
							<div class="footer_btn 1_a_btn btn_title none" id="nextButton"
								onclick="research()">제출</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</form>

	<!-- JAVASCRIPT FILES -->
	<script src="./resources/js/jquery.min.js"></script>
	<script src="./resources/js/bootstrap.bundle.min.js"></script>
	<script src="./resources/js/apexcharts.min.js"></script>
	<script src="./resources/js/custom.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

	<!-- 스와이프 스크립 -->
	<script>
		var swiper = new Swiper('.swiper-container', {
			slidesPerView : 1,
			spaceBetween : 10,
			allowTouchMove : false,
			navigation : {
				nextEl : '#nextButton',
				prevEl : '#prevButton',
			},
		});
	</script>

	<!-- 질문지 페이지1 -->
	<script>
		function toggleSelected1(obj, element) {
			var q1 = Number(element);
			console.log(q1);
			$('#pre_q1').val(q1);
			const iconParent = obj.closest('.job-thumb1');
			const selectedOption = iconParent
					.querySelector('.research-icon.selected');

			if (!obj.classList.contains('selected')) {
				if (selectedOption) {
					selectedOption.classList.remove('selected');
				}

				obj.classList.add('selected');

				const allQuestions = document.querySelectorAll('.job-thumb1');
				let allQuestionsAnswered = true;

				allQuestions.forEach(function(question) {
					if (!question.querySelector('.research-icon.selected')) {
						allQuestionsAnswered = false;
					}
				});

				if (allQuestionsAnswered) {
					swiper.slideNext();

					window.scrollTo(0, 0);
				}
			}
		}
	</script>

	<script>
		function toggleSelected1_2(obj, element) {
			var q1 = Number(element);
			console.log(q1);
			$('#pre_q2').val(q1);
			const iconParent = obj.closest('.job-thumb1');
			const selectedOption = iconParent
					.querySelector('.research-icon.selected');

			if (!obj.classList.contains('selected')) {
				if (selectedOption) {
					selectedOption.classList.remove('selected');
				}

				obj.classList.add('selected');

				const allQuestions = document.querySelectorAll('.job-thumb1');
				let allQuestionsAnswered = true;

				allQuestions.forEach(function(question) {
					if (!question.querySelector('.research-icon.selected')) {
						allQuestionsAnswered = false;
					}
				});

				if (allQuestionsAnswered) {
					swiper.slideNext();

					window.scrollTo(0, 0);
				}
			}
		}
	</script>

	<script>
		function toggleSelected1_3(obj, element) {
			var q1 = Number(element);
			console.log(q1);
			$('#pre_q3').val(q1);
			const iconParent = obj.closest('.job-thumb1');
			const selectedOption = iconParent
					.querySelector('.research-icon.selected');

			if (!obj.classList.contains('selected')) {
				if (selectedOption) {
					selectedOption.classList.remove('selected');
				}

				obj.classList.add('selected');

				const allQuestions = document.querySelectorAll('.job-thumb1');
				let allQuestionsAnswered = true;

				allQuestions.forEach(function(question) {
					if (!question.querySelector('.research-icon.selected')) {
						allQuestionsAnswered = false;
					}
				});

				if (allQuestionsAnswered) {
					swiper.slideNext();

					window.scrollTo(0, 0);
				}
			}
		}
	</script>

	<script>
		function toggleSelected1_4(obj, element) {
			var q1 = Number(element);
			console.log(q1);
			$('#pre_q4').val(q1);
			const iconParent = obj.closest('.job-thumb1');
			const selectedOption = iconParent
					.querySelector('.research-icon.selected');

			if (!obj.classList.contains('selected')) {
				if (selectedOption) {
					selectedOption.classList.remove('selected');
				}

				obj.classList.add('selected');

				const allQuestions = document.querySelectorAll('.job-thumb1');
				let allQuestionsAnswered = true;

				allQuestions.forEach(function(question) {
					if (!question.querySelector('.research-icon.selected')) {
						allQuestionsAnswered = false;
					}
				});

				if (allQuestionsAnswered) {
					swiper.slideNext();

					window.scrollTo(0, 0);
				}
			}
		}
	</script>


	<script>
		function toggleSelected2_1(obj, element) {
			var q1 = Number(element);
			console.log(q1);
			$('#pre_q5').val(q1);
			const iconParent = obj.closest('.job-thumb2');
			const selectedOption = iconParent
					.querySelector('.research-icon.selected');

			if (!obj.classList.contains('selected')) {
				if (selectedOption) {
					selectedOption.classList.remove('selected');
				}

				obj.classList.add('selected');

				const allQuestions = document.querySelectorAll('.job-thumb2');
				let allQuestionsAnswered = true;

				allQuestions.forEach(function(question) {
					if (!question.querySelector('.research-icon.selected')) {
						allQuestionsAnswered = false;
					}
				});

				if (allQuestionsAnswered) {
					swiper.slideNext();

					window.scrollTo(0, 0);
				}
			}
		}
	</script>

	<script>
		function toggleSelected2_2(obj, element) {
			var q1 = Number(element);
			console.log(q1);
			$('#pre_q6').val(q1);
			const iconParent = obj.closest('.job-thumb2');
			const selectedOption = iconParent
					.querySelector('.research-icon.selected');

			if (!obj.classList.contains('selected')) {
				if (selectedOption) {
					selectedOption.classList.remove('selected');
				}

				obj.classList.add('selected');

				const allQuestions = document.querySelectorAll('.job-thumb2');
				let allQuestionsAnswered = true;

				allQuestions.forEach(function(question) {
					if (!question.querySelector('.research-icon.selected')) {
						allQuestionsAnswered = false;
					}
				});

				if (allQuestionsAnswered) {
					swiper.slideNext();

					window.scrollTo(0, 0);
				}
			}
		}
	</script>

	<script>
		function toggleSelected2_3(obj, element) {
			var q1 = Number(element);
			console.log(q1);
			$('#pre_q7').val(q1);
			const iconParent = obj.closest('.job-thumb2');
			const selectedOption = iconParent
					.querySelector('.research-icon.selected');

			if (!obj.classList.contains('selected')) {
				if (selectedOption) {
					selectedOption.classList.remove('selected');
				}

				obj.classList.add('selected');

				const allQuestions = document.querySelectorAll('.job-thumb2');
				let allQuestionsAnswered = true;

				allQuestions.forEach(function(question) {
					if (!question.querySelector('.research-icon.selected')) {
						allQuestionsAnswered = false;
					}
				});

				if (allQuestionsAnswered) {
					swiper.slideNext();

					window.scrollTo(0, 0);
				}
			}
		}
	</script>

	<script>
		function toggleSelected2_4(obj, element) {
			var q1 = Number(element);
			console.log(q1);
			$('#pre_q8').val(q1);
			const iconParent = obj.closest('.job-thumb2');
			const selectedOption = iconParent
					.querySelector('.research-icon.selected');

			if (!obj.classList.contains('selected')) {
				if (selectedOption) {
					selectedOption.classList.remove('selected');
				}

				obj.classList.add('selected');

				const allQuestions = document.querySelectorAll('.job-thumb2');
				let allQuestionsAnswered = true;

				allQuestions.forEach(function(question) {
					if (!question.querySelector('.research-icon.selected')) {
						allQuestionsAnswered = false;
					}
				});

				if (allQuestionsAnswered) {
					swiper.slideNext();

					window.scrollTo(0, 0);
				}
			}
		}
	</script>

	<script>
		function toggleSelected3_1(obj, element) {
			var q1 = Number(element);
			console.log(q1);
			$('#pre_q9').val(q1);
			const iconParent = obj.closest('.job-thumb3');
			const selectedOption = iconParent
					.querySelector('.research-icon.selected');

			if (!obj.classList.contains('selected')) {
				if (selectedOption) {
					selectedOption.classList.remove('selected');
				}

				obj.classList.add('selected');

				const allQuestions = document.querySelectorAll('.job-thumb3');
				let allQuestionsAnswered = true;

				allQuestions.forEach(function(question) {
					if (!question.querySelector('.research-icon.selected')) {
						allQuestionsAnswered = false;
					}
				});

				if (allQuestionsAnswered) {
					swiper.slideNext();

					window.scrollTo(0, 0);
				}
			}
		}
	</script>

	<script>
		function toggleSelected3_2(obj, element) {
			var q1 = Number(element);
			console.log(q1);
			$('#pre_q10').val(q1);
			const iconParent = obj.closest('.job-thumb3');
			const selectedOption = iconParent
					.querySelector('.research-icon.selected');

			if (!obj.classList.contains('selected')) {
				if (selectedOption) {
					selectedOption.classList.remove('selected');
				}

				obj.classList.add('selected');

				const allQuestions = document.querySelectorAll('.job-thumb3');
				let allQuestionsAnswered = true;

				allQuestions.forEach(function(question) {
					if (!question.querySelector('.research-icon.selected')) {
						allQuestionsAnswered = false;
					}
				});

				if (allQuestionsAnswered) {
					swiper.slideNext();

					window.scrollTo(0, 0);
				}
			}
		}
	</script>
	<script>
		function toggleSelected3_3(obj, element) {
			var q1 = Number(element);
			console.log(q1);
			$('#pre_q11').val(q1);
			const iconParent = obj.closest('.job-thumb3');
			const selectedOption = iconParent
					.querySelector('.research-icon.selected');

			if (!obj.classList.contains('selected')) {
				if (selectedOption) {
					selectedOption.classList.remove('selected');
				}

				obj.classList.add('selected');

				const allQuestions = document.querySelectorAll('.job-thumb3');
				let allQuestionsAnswered = true;

				allQuestions.forEach(function(question) {
					if (!question.querySelector('.research-icon.selected')) {
						allQuestionsAnswered = false;
					}
				});

				if (allQuestionsAnswered) {
					swiper.slideNext();

					window.scrollTo(0, 0);
				}
			}
		}
	</script>
	<script>
		function toggleSelected3_4(obj, element) {
			var q1 = Number(element);
			console.log(q1);
			$('#pre_q12').val(q1);
			const iconParent = obj.closest('.job-thumb3');
			const selectedOption = iconParent
					.querySelector('.research-icon.selected');

			if (!obj.classList.contains('selected')) {
				if (selectedOption) {
					selectedOption.classList.remove('selected');
				}

				obj.classList.add('selected');

				const allQuestions = document.querySelectorAll('.job-thumb3');
				let allQuestionsAnswered = true;

				allQuestions.forEach(function(question) {
					if (!question.querySelector('.research-icon.selected')) {
						allQuestionsAnswered = false;
					}
				});

				if (allQuestionsAnswered) {
					swiper.slideNext();

					window.scrollTo(0, 0);
				}
			}
		}
	</script>


	<script>
		function toggleSelected4_1(obj, element) {
			var q1 = Number(element);
			console.log(q1);
			$('#pre_q13').val(q1);
			const iconParent = obj.closest('.job-thumb4');
			const selectedOption = iconParent
					.querySelector('.research-icon.selected');

			if (!obj.classList.contains('selected')) {
				if (selectedOption) {
					selectedOption.classList.remove('selected');
				}

				obj.classList.add('selected');

				const allQuestions = document.querySelectorAll('.job-thumb4');
				let allQuestionsAnswered = true;

				allQuestions.forEach(function(question) {
					if (!question.querySelector('.research-icon.selected')) {
						allQuestionsAnswered = false;
					}
				});

				if (allQuestionsAnswered) {
					swiper.slideNext();

					window.scrollTo(0, 0);
				}
			}
		}
	</script>

	<script>
		function toggleSelected4_2(obj, element) {
			var q1 = Number(element);
			console.log(q1);
			$('#pre_q14').val(q1);
			const iconParent = obj.closest('.job-thumb4');
			const selectedOption = iconParent
					.querySelector('.research-icon.selected');

			if (!obj.classList.contains('selected')) {
				if (selectedOption) {
					selectedOption.classList.remove('selected');
				}

				obj.classList.add('selected');

				const allQuestions = document.querySelectorAll('.job-thumb4');
				let allQuestionsAnswered = true;

				allQuestions.forEach(function(question) {
					if (!question.querySelector('.research-icon.selected')) {
						allQuestionsAnswered = false;
					}
				});

				if (allQuestionsAnswered) {
					swiper.slideNext();

					window.scrollTo(0, 0);
				}
			}
		}
	</script>
	<script>
		function toggleSelected4_3(obj, element) {
			var q1 = Number(element);
			console.log(q1);
			$('#pre_q15').val(q1);
			const iconParent = obj.closest('.job-thumb4');
			const selectedOption = iconParent
					.querySelector('.research-icon.selected');

			if (!obj.classList.contains('selected')) {
				if (selectedOption) {
					selectedOption.classList.remove('selected');
				}

				obj.classList.add('selected');

				const allQuestions = document.querySelectorAll('.job-thumb4');
				let allQuestionsAnswered = true;

				allQuestions.forEach(function(question) {
					if (!question.querySelector('.research-icon.selected')) {
						allQuestionsAnswered = false;
					}
				});

				if (allQuestionsAnswered) {
					swiper.slideNext();

					window.scrollTo(0, 0);
				}
			}
		}
	</script>
	<script>
		function toggleSelected4_4(obj, element) {
			var q1 = Number(element);
			console.log(q1);
			$('#pre_q16').val(q1);
			const iconParent = obj.closest('.job-thumb4');
			const selectedOption = iconParent
					.querySelector('.research-icon.selected');

			if (!obj.classList.contains('selected')) {
				if (selectedOption) {
					selectedOption.classList.remove('selected');
				}

				obj.classList.add('selected');

				const allQuestions = document.querySelectorAll('.job-thumb4');
				let allQuestionsAnswered = true;

				allQuestions.forEach(function(question) {
					if (!question.querySelector('.research-icon.selected')) {
						allQuestionsAnswered = false;
					}
				});

				if (allQuestionsAnswered) {
					swiper.slideNext();

					window.scrollTo(0, 0);
				}
			}
		}
	</script>


	<script>
		function toggleSelected5_1(obj, element) {
			var q1 = Number(element);
			console.log(q1);
			$('#pre_q17').val(q1);
			const iconParent = obj.closest('.job-thumb5');
			const selectedOption = iconParent
					.querySelector('.research-icon.selected');

			if (!obj.classList.contains('selected')) {
				if (selectedOption) {
					selectedOption.classList.remove('selected');
				}

				obj.classList.add('selected');

				const allQuestions = document.querySelectorAll('.job-thumb5');
				let allQuestionsAnswered = true;

				allQuestions.forEach(function(question) {
					if (!question.querySelector('.research-icon.selected')) {
						allQuestionsAnswered = false;
					}
				});

				if (allQuestionsAnswered) {
					swiper.slideNext();
					window.scrollTo(0, 0);
				}
			}
		}
	</script>

	<script>
		function toggleSelected5_2(obj, element) {
			var q1 = Number(element);
			console.log(q1);
			$('#pre_q18').val(q1);
			const iconParent = obj.closest('.job-thumb5');
			const selectedOption = iconParent
					.querySelector('.research-icon.selected');

			if (!obj.classList.contains('selected')) {
				if (selectedOption) {
					selectedOption.classList.remove('selected');
				}

				obj.classList.add('selected');

				const allQuestions = document.querySelectorAll('.job-thumb5');
				let allQuestionsAnswered = true;

				allQuestions.forEach(function(question) {
					if (!question.querySelector('.research-icon.selected')) {
						allQuestionsAnswered = false;
					}
				});

				if (allQuestionsAnswered) {
					swiper.slideNext();

					window.scrollTo(0, 0);
				}
			}
		}
	</script>
	<script>
		function toggleSelected5_3(obj, element) {
			var q1 = Number(element);
			console.log(q1);
			$('#pre_q19').val(q1);
			const iconParent = obj.closest('.job-thumb5');
			const selectedOption = iconParent
					.querySelector('.research-icon.selected');

			if (!obj.classList.contains('selected')) {
				if (selectedOption) {
					selectedOption.classList.remove('selected');
				}

				obj.classList.add('selected');

				const allQuestions = document.querySelectorAll('.job-thumb5');
				let allQuestionsAnswered = true;

				allQuestions.forEach(function(question) {
					if (!question.querySelector('.research-icon.selected')) {
						allQuestionsAnswered = false;
					}
				});

				if (allQuestionsAnswered) {
					swiper.slideNext();

					window.scrollTo(0, 0);
				}
			}
		}
	</script>
	<script>
		function toggleSelected5_4(obj, element) {
			var q1 = Number(element);
			console.log(q1);
			$('#pre_q20').val(q1);
			const iconParent = obj.closest('.job-thumb5');
			const selectedOption = iconParent
					.querySelector('.research-icon.selected');

			if (!obj.classList.contains('selected')) {
				if (selectedOption) {
					selectedOption.classList.remove('selected');
				}

				obj.classList.add('selected');

				const allQuestions = document.querySelectorAll('.job-thumb5');
				let allQuestionsAnswered = true;

				allQuestions.forEach(function(question) {
					if (!question.querySelector('.research-icon.selected')) {
						allQuestionsAnswered = false;
					}
				});

				if (allQuestionsAnswered) {
				
					swiper.slideNext();

					window.scrollTo(0, 0);
				}
			}
		}
	</script>


	<script>
		function toggleSelected6_1(obj, element) {
			var q1 = Number(element);
			console.log(q1);
			$('#pre_q21').val(q1);
			const iconParent = obj.closest('.job-thumb6');
			const selectedOption = iconParent
					.querySelector('.research-icon.selected');

			if (!obj.classList.contains('selected')) {
				if (selectedOption) {
					selectedOption.classList.remove('selected');
				}

				obj.classList.add('selected');

			}
		}
	</script>

	<script>
		function toggleSelected6_2(obj, element) {
			var q1 = Number(element);
			console.log(q1);
			$('#pre_q22').val(q1);
			const iconParent = obj.closest('.job-thumb6');
			const selectedOption = iconParent
					.querySelector('.research-icon.selected');

			if (!obj.classList.contains('selected')) {
				if (selectedOption) {
					selectedOption.classList.remove('selected');
				}

				obj.classList.add('selected');

			}
		}
	</script>
	<script>
		function toggleSelected6_3(obj, element) {
			var q1 = Number(element);
			console.log(q1);
			$('#pre_q23').val(q1);
			const iconParent = obj.closest('.job-thumb6');
			const selectedOption = iconParent
					.querySelector('.research-icon.selected');

			if (!obj.classList.contains('selected')) {
				if (selectedOption) {
					selectedOption.classList.remove('selected');
				}

				obj.classList.add('selected');

			}
		}
	</script>
	<script>
		function toggleSelected6_4(obj, element) {
			var q1 = Number(element);
			console.log(q1);
			$('#pre_q24').val(q1);
			const iconParent = obj.closest('.job-thumb6');
			const selectedOption = iconParent
					.querySelector('.research-icon.selected');

			if (!obj.classList.contains('selected')) {
				if (selectedOption) {
					selectedOption.classList.remove('selected');
				}

				obj.classList.add('selected');

			}
		}
	</script>

	<script type="text/javascript">
		function research() {
			alert("설문 완료");
			document.getElementById('frm').submit();
		}
	</script>
</body>
</html>