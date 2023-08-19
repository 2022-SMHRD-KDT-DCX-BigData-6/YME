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

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="">

<link
	href="https://fonts.googleapis.com/css2?family=Unbounded:wght@300;400;700&amp;display=swap"
	rel="stylesheet">

<link href="./resources/css/bootstrap.min.css" rel="stylesheet">

<link href="./resources/css/bootstrap-icons.css" rel="stylesheet">

<link href="./resources/css/apexcharts.css" rel="stylesheet">

<link href="./resources/css/tooplate-mini-finance.css" rel="stylesheet">
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
						<form id="lfrm" action="${cpath}/login.do" method="post">
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
							data-bs-toggle="dropdown" aria-expanded="false"> <img
							src="./resources/images/medium-shot-happy-man-smiling.jpg"
							class="profile-image img-fluid" alt="">
						</a>
						<ul class="dropdown-menu bg-white shadow">
							<li>
								<div class="dropdown-menu-profile-thumb d-flex">
									<img src="./resources/images/medium-shot-happy-man-smiling.jpg"
										class="profile-image img-fluid me-3" alt="">

									<div class="d-flex flex-column">
										<small>Thomas</small> <a href="#">thomas@site.com</a>
									</div>
								</div>
							</li>

							<li><a class="dropdown-item" href="${cpath }/mypage.do">
									<i class="bi-person me-2"></i> Profile
							</a></li>

							<li><a class="dropdown-item" href="setting.html"> <i
									class="bi-gear me-2"></i> Settings
							</a></li>

							<li><a class="dropdown-item" href="help-center.html"> <i
									class="bi-question-circle me-2"></i> Help
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
				class="col-md-3 col-lg-3 d-md-block sidebar collapse">
				<div class="position-sticky py-4 px-3 sidebar-sticky">
					<ul class="nav flex-column h-100">
						<li class="nav-item"><a class="nav-link"
							aria-current="page" href="${cpath}/main.do"> <i
								class="bi-house-fill me-2"></i> 메인
						</a></li>

						<li class="nav-item"><a class="nav-link" href="${cpath }/circle_search.do">
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
							<li class="nav-item"><a class="nav-link active "
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
				class="main-wrapper col-md-9 ms-sm-auto py-4 col-lg-9 px-md-4 border-start">

				<div class="row my-4" style="margin-top: 0px;">

					<div class="col-lg-5 col-12" style="width: 100%;">
						<!-- 동물 선택 -->
						<div
							class="custom-block custom-block-profile-front custom-block-profile text-center bg-white">
							<div class="title-group mb-3" style="text-align: left;">
								<h1 class="h5 mb-0">내가 좋아하는 동물상 선택</h1>
								<small class="text-muted" id="target_animal_text">맘에 드는 동물상 친구를을 골라 주세요!</small>
								<div id="result1"></div>
							</div>
							<div
								class="custom-block custom-block-bottom flex-wrap animalCard"
								style="margin-bottom: 0px; justify-content: space-around; padding: 0px;">

								<!-- 1열 -->

								<div style="display: flex; justify-content: center;">
									<div class="nav-item featured-box animal"
										onclick="animalSelected(this)"
										id = "강아지"
										style="background-color: white; width: 20%; text-align: left; margin: 0 auto; margin-top: 10px; margin-bottom: 10px;">
										<div class="rank_title"
											style="color: #F8C86C; font-size: 28px;">
											<span style="border-bottom: 3px solid; color: #F8C86C;">강아지</span>
										</div>
										<div style="display: flex; flex-direction: column;">
											<div class="rank_uname"
												style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">귀여운 눈코입에 동글동글한 얼굴형</div>
											<div
												style="display: flex; flex-direction: row; align-items: center;">
											</div>
										</div>
										<div class="image-wrapper">
											<img src="./resources/images/animal_images/강아지.png"
												class="img-fluid" alt="" style="width: auto;">
										</div>
									</div>
									<div class="nav-item featured-box animal"
										onclick="animalSelected(this)"
											id = "고양이"
										style="background-color: white; width: 20%; text-align: left; margin: 0 auto; margin-top: 10px; margin-bottom: 10px;">
										<div class="rank_title"
											style="color: #ACC9DA; font-size: 28px;">
											<span style="border-bottom: 3px solid; color: #ACC9DA;">고양이</span>
										</div>
										<div style="display: flex; flex-direction: column;">
											<div class="rank_uname"
												style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">얇은 입술에 눈꼬리가 살짝 올라간 도도한 얼굴형</div>
											<div
												style="display: flex; flex-direction: row; align-items: center;">
											</div>
										</div>
										<div class="image-wrapper">
											<img src="./resources/images/animal_images/고양이.png"
												class="img-fluid" alt="" style="width: auto;">
										</div>
									</div>
									<div class="nav-item featured-box animal"
										onclick="animalSelected(this)"
											id = "꼬부기"
										style="background-color: white; width: 20%; text-align: left; margin: 0 auto; margin-top: 10px; margin-bottom: 10px;">
										<div class="rank_title"
											style="color: #DCA26C; font-size: 28px;">
											<span style="border-bottom: 3px solid; color: #DCA26C;">꼬부기</span>
										</div>
										<div style="display: flex; flex-direction: column;">
											<div class="rank_uname"
												style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">커다란 눈, 웃을 때 길게 늘어나는 입꼬리에 동글동글한 얼굴형</div>
											<div
												style="display: flex; flex-direction: row; align-items: center;">
											</div>
										</div>
										<div class="image-wrapper">
											<img src="./resources/images/animal_images/꼬부기.png"
												class="img-fluid" alt="" style="width: auto;">
										</div>
									</div>
									<div class="nav-item featured-box animal"
										onclick="animalSelected(this)"
											id = "늑대"
										style="background-color: white; width: 20%; text-align: left; margin: 0 auto; margin-top: 10px; margin-bottom: 10px;">
										<div class="rank_title"
											style="color: #F8C86C; font-size: 28px;">
											<span style="border-bottom: 3px solid; color: #F8C86C;">늑대</span>
										</div>
										<div style="display: flex; flex-direction: column;">
											<div class="rank_uname"
												style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">강아지보다 성숙하고 이목구비가 깊은 서구적인 얼굴형</div>
											<div
												style="display: flex; flex-direction: row; align-items: center;">
											</div>
										</div>
										<div class="image-wrapper">
											<img src="./resources/images/animal_images/늑대.png"
												class="img-fluid" alt="" style="width: auto;">
										</div>
									</div>
								</div>
								<!-- 2열 -->
								<div style="display: flex; justify-content: center;">
									<div class="nav-item featured-box animal"
										onclick="animalSelected(this)"
											id = "말"
										style="background-color: white; width: 20%; text-align: left; margin: 0 auto; margin-top: 10px; margin-bottom: 10px;">
										<div class="rank_title"
											style="color: #ACC9DA; font-size: 28px;">
											<span style="border-bottom: 3px solid; color: #ACC9DA;">말</span>
										</div>
										<div style="display: flex; flex-direction: column;">
											<div class="rank_uname"
												style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">성숙하고 강한 인상의 얼굴형</div>
											<div
												style="display: flex; flex-direction: row; align-items: center;">
											</div>
										</div>
										<div class="image-wrapper">
											<img src="./resources/images/animal_images/말.png"
												class="img-fluid" alt="" style="width: auto;">
										</div>
									</div>
									<div class="nav-item featured-box animal"
										onclick="animalSelected(this)"
											id = "물고기"
										style="background-color: white; width: 20%; text-align: left; margin: 0 auto; margin-top: 10px; margin-bottom: 10px;">
										<div class="rank_title"
											style="color: #DCA26C; font-size: 28px;">
											<span style="border-bottom: 3px solid; color: #DCA26C;">물고기</span>
										</div>
										<div style="display: flex; flex-direction: column;">
											<div class="rank_uname"
												style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">예쁘고 큰눈에 이목구비가 돋보이는 얼굴형</div>
											<div
												style="display: flex; flex-direction: row; align-items: center;">
											</div>
										</div>
										<div class="image-wrapper">
											<img src="./resources/images/animal_images/물고기.png"
												class="img-fluid" alt="" style="width: auto;">
										</div>
									</div>
									<div class="nav-item featured-box animal"
										onclick="animalSelected(this)"
											id = "쥐"
										style="background-color: white; width: 20%; text-align: left; margin: 0 auto; margin-top: 10px; margin-bottom: 10px;">
										<div class="rank_title"
											style="color: #DCA26C; font-size: 28px;">
											<span style="border-bottom: 3px solid; color: #DCA26C;">쥐</span>
										</div>
										<div style="display: flex; flex-direction: column;">
											<div class="rank_uname"
												style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">크지 않은 눈에 카리스마 있는 샤프한 얼굴형</div>
											<div
												style="display: flex; flex-direction: row; align-items: center;">
											</div>
										</div>
										<div class="image-wrapper">
											<img src="./resources/images/animal_images/쥐.png"
												class="img-fluid" alt="" style="width: auto;">
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-5 col-12" style="width: 100%;">
						<!-- mbti 선택 -->
						<div
							class="custom-block custom-block-profile-front custom-block-profile text-center bg-white mbtiDiv"
							style="display: none;">
							<div class="title-group mb-3" style="text-align: left;">
								<h1 class="h5 mb-0">최고 궁합 MBTI</h1>
								<small class="text-muted" id="target_mbti_text">${mvo.nick}님의 ${mvo.mbti}와 궁합이 가장 좋은 mbti를 추천해드립니다^^</small>

								
							</div>
							<div class="custom-block custom-block-bottom flex-wrap mbtiCard"
								style="margin-bottom: 0px; justify-content: space-around; padding: 0px; display: flex;">
								
								<c:if test="${mvo.mbti == 'INFP'}">
								<div class="nav-item featured-box mt-lg-5 mt-4 mb-4"
									onclick="mbtiSelected(this)"
									id="ENTJ"
									style="background-color: white; width: 30%; text-align: left;">
								
									<div class="rank_title"
										style="color: #F8C86C; font-size: 28px;">
										<span style="border-bottom: 3px solid; color: #F8C86C;">ENTJ</span>
									</div>
									<div style="display: flex; flex-direction: column;">
										<div class="rank_uname"
											style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">완전히 새로운 관점에서 사물을 볼 수 있도록 돕고 감정을 처리하도록 도와 줄거에요.
										</div>
										
										
										<div
											style="display: flex; flex-direction: row; align-items: center;">
										</div>
									</div>
									<div class="image-wrapper">
										<img src="./resources/images/mbti_character/ENTJ.png"
											class="img-fluid" alt="" style="width: auto;">
									</div>
								</div>
										

								<div class="nav-item featured-box mt-lg-5 mt-4 mb-4"
									onclick="mbtiSelected(this)"
										id="ENFJ"
									style="background-color: white; width: 30%; text-align: left;">
									<div class="rank_title"
										style="color: #ACC9DA; font-size: 28px;">
										<span style="border-bottom: 3px solid; color: #ACC9DA;">ENFJ</span>
									</div>
									<div style="display: flex; flex-direction: column;">
										<div class="rank_uname"
											style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">긴장을 풀고 필요할 때 휴식을 취하도록 도울 수 있어요.</div>
										<div
											style="display: flex; flex-direction: row; align-items: center;">
										</div>
									</div>
									<div class="image-wrapper">
										<img src="./resources/images/mbti_character/ENFJ.png"
											class="img-fluid" alt="" style="width: auto;">
									</div>
								</div>
								</c:if>
								<c:if test="${mvo.mbti == 'ENFP'}">
								<div class="nav-item featured-box mt-lg-5 mt-4 mb-4"
									onclick="mbtiSelected(this)"
										id="INTJ"
									style="background-color: white; width: 30%; text-align: left;">
								
									<div class="rank_title"
										style="color: #F8C86C; font-size: 28px;">
										<span style="border-bottom: 3px solid; color: #F8C86C;">INTJ</span>
									</div>
									<div style="display: flex; flex-direction: column;">
										<div class="rank_uname"
											style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">안전지대에서 벗어나 새로운 것을 시도하도록 격려해 줄거에요.
										</div>
										
										
										<div
											style="display: flex; flex-direction: row; align-items: center;">
										</div>
									</div>
									<div class="image-wrapper">
										<img src="./resources/images/mbti_character/INTJ.png"
											class="img-fluid" alt="" style="width: auto;">
									</div>
								</div>
										

								<div class="nav-item featured-box mt-lg-5 mt-4 mb-4"
									onclick="mbtiSelected(this)"
										id="INFJ"
									style="background-color: white; width: 30%; text-align: left;">
									<div class="rank_title"
										style="color: #ACC9DA; font-size: 28px;">
										<span style="border-bottom: 3px solid; color: #ACC9DA;">INFJ</span>
									</div>
									<div style="display: flex; flex-direction: column;">
										<div class="rank_uname"
											style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">긴장을 풀고 즐겁게 지낼 수 있도록 해줄거에요.</div>
										<div
											style="display: flex; flex-direction: row; align-items: center;">
										</div>
									</div>
									<div class="image-wrapper">
										<img src="./resources/images/mbti_character/INFJ.png"
											class="img-fluid" alt="" style="width: auto;">
									</div>
								</div>
								</c:if>
								<c:if test="${mvo.mbti == 'INFJ'}">
								<div class="nav-item featured-box mt-lg-5 mt-4 mb-4"
									onclick="mbtiSelected(this)"
										id="ENTP"
									style="background-color: white; width: 30%; text-align: left;">
								
									<div class="rank_title"
										style="color: #F8C86C; font-size: 28px;">
										<span style="border-bottom: 3px solid; color: #F8C86C;">ENTP</span>
									</div>
									<div style="display: flex; flex-direction: column;">
										<div class="rank_uname"
											style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">껍데기를 깨부수어 다양한 경험을 하고 성장하게 도와줄게요.
										</div>
										
										
										<div
											style="display: flex; flex-direction: row; align-items: center;">
										</div>
									</div>
									<div class="image-wrapper">
										<img src="./resources/images/mbti_character/ENTP.png"
											class="img-fluid" alt="" style="width: auto;">
									</div>
								</div>
										

								<div class="nav-item featured-box mt-lg-5 mt-4 mb-4"
									onclick="mbtiSelected(this)"
										id="ENFP"
									style="background-color: white; width: 30%; text-align: left;">
									<div class="rank_title"
										style="color: #ACC9DA; font-size: 28px;">
										<span style="border-bottom: 3px solid; color: #ACC9DA;">ENFP</span>
									</div>
									<div style="display: flex; flex-direction: column;">
										<div class="rank_uname"
											style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">긍정적이고 개방적인 모습에 끌리게 됩답니다.</div>
										<div
											style="display: flex; flex-direction: row; align-items: center;">
										</div>
									</div>
									<div class="image-wrapper">
										<img src="./resources/images/mbti_character/ENFP.png"
											class="img-fluid" alt="" style="width: auto;">
									</div>
								</div>
								</c:if>
								<c:if test="${mvo.mbti == 'ENFJ'}">
								<div class="nav-item featured-box mt-lg-5 mt-4 mb-4"
									onclick="mbtiSelected(this)"
										id="INTP"
									style="background-color: white; width: 30%; text-align: left;">
								
									<div class="rank_title"
										style="color: #F8C86C; font-size: 28px;">
										<span style="border-bottom: 3px solid; color: #F8C86C;">INTP</span>
									</div>
									<div style="display: flex; flex-direction: column;">
										<div class="rank_uname"
											style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">감정과 접촉하도록 도울 수 있어요.
										</div>
										
										
										<div
											style="display: flex; flex-direction: row; align-items: center;">
										</div>
									</div>
									<div class="image-wrapper">
										<img src="./resources/images/mbti_character/INTP.png"
											class="img-fluid" alt="" style="width: auto;">
									</div>
								</div>
										

								<div class="nav-item featured-box mt-lg-5 mt-4 mb-4"
									onclick="mbtiSelected(this)"
										id="INFP"
									style="background-color: white; width: 30%; text-align: left;">
									<div class="rank_title"
										style="color: #ACC9DA; font-size: 28px;">
										<span style="border-bottom: 3px solid; color: #ACC9DA;">INFP</span>
									</div>
									<div style="display: flex; flex-direction: column;">
										<div class="rank_uname"
											style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">주변 세계와 연결되도록 도와 줄거에요.</div>
										<div
											style="display: flex; flex-direction: row; align-items: center;">
										</div>
									</div>
									<div class="image-wrapper">
										<img src="./resources/images/mbti_character/INFP.png"
											class="img-fluid" alt="" style="width: auto;">
									</div>
								</div>
								</c:if>
								<c:if test="${mvo.mbti == 'INTJ'}">
								<div class="nav-item featured-box mt-lg-5 mt-4 mb-4"
									onclick="mbtiSelected(this)"
										id="ENFP"
									style="background-color: white; width: 30%; text-align: left;">
								
									<div class="rank_title"
										style="color: #F8C86C; font-size: 28px;">
										<span style="border-bottom: 3px solid; color: #F8C86C;">ENFP</span>
									</div>
									<div style="display: flex; flex-direction: column;">
										<div class="rank_uname"
											style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">큰 비전을 구체적인 계획으로 전환하도록 도울 수 있어요.
										</div>
										
										
										<div
											style="display: flex; flex-direction: row; align-items: center;">
										</div>
									</div>
									<div class="image-wrapper">
										<img src="./resources/images/mbti_character/ENFP.png"
											class="img-fluid" alt="" style="width: auto;">
									</div>
								</div>
										

								<div class="nav-item featured-box mt-lg-5 mt-4 mb-4"
									onclick="mbtiSelected(this)"
										id="ENTP"
									style="background-color: white; width: 30%; text-align: left;">
									<div class="rank_title"
										style="color: #ACC9DA; font-size: 28px;">
										<span style="border-bottom: 3px solid; color: #ACC9DA;">ENTP</span>
									</div>
									<div style="display: flex; flex-direction: column;">
										<div class="rank_uname"
											style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">관심을 유지하고 처리 방법을 정확히 알 수 있어요.</div>
										<div
											style="display: flex; flex-direction: row; align-items: center;">
										</div>
									</div>
									<div class="image-wrapper">
										<img src="./resources/images/mbti_character/ENTP.png"
											class="img-fluid" alt="" style="width: auto;">
									</div>
								</div>
								</c:if>
								<c:if test="${mvo.mbti == 'ENTJ'}">
								<div class="nav-item featured-box mt-lg-5 mt-4 mb-4"
									onclick="mbtiSelected(this)"
										id="INFP"
									style="background-color: white; width: 30%; text-align: left;">
								
									<div class="rank_title"
										style="color: #F8C86C; font-size: 28px;">
										<span style="border-bottom: 3px solid; color: #F8C86C;">INFP</span>
									</div>
									<div style="display: flex; flex-direction: column;">
										<div class="rank_uname"
											style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">창의적인 아이디어를 현실로 만들기 위한 계획을 세우는 데 도움을 줄 수 있어요.
										</div>
										
										
										<div
											style="display: flex; flex-direction: row; align-items: center;">
										</div>
									</div>
									<div class="image-wrapper">
										<img src="./resources/images/mbti_character/INFP.png"
											class="img-fluid" alt="" style="width: auto;">
									</div>
								</div>
										

								<div class="nav-item featured-box mt-lg-5 mt-4 mb-4"
									onclick="mbtiSelected(this)"
										id="INTP"
									style="background-color: white; width: 30%; text-align: left;">
									<div class="rank_title"
										style="color: #ACC9DA; font-size: 28px;">
										<span style="border-bottom: 3px solid; color: #ACC9DA;">INTP</span>
									</div>
									<div style="display: flex; flex-direction: column;">
										<div class="rank_uname"
											style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">자신의 잠재력을 깨닫고 더 체계적으로 되도록 도울 수 있어요.</div>
										<div
											style="display: flex; flex-direction: row; align-items: center;">
										</div>
									</div>
									<div class="image-wrapper">
										<img src="./resources/images/mbti_character/INTP.png"
											class="img-fluid" alt="" style="width: auto;">
									</div>
								</div>
								</c:if>
								<c:if test="${mvo.mbti == 'INTP'}">
								<div class="nav-item featured-box mt-lg-5 mt-4 mb-4"
									onclick="mbtiSelected(this)"
										id="ENFJ"
									style="background-color: white; width: 30%; text-align: left;">
								
									<div class="rank_title"
										style="color: #F8C86C; font-size: 28px;">
										<span style="border-bottom: 3px solid; color: #F8C86C;">ENFJ</span>
									</div>
									<div style="display: flex; flex-direction: column;">
										<div class="rank_uname"
											style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">사물을 다른 관점에서 볼 수 있도록 도와줍답니다.
										</div>
										
										
										<div
											style="display: flex; flex-direction: row; align-items: center;">
										</div>
									</div>
									<div class="image-wrapper">
										<img src="./resources/images/mbti_character/ENFJ.png"
											class="img-fluid" alt="" style="width: auto;">
									</div>
								</div>
										

								<div class="nav-item featured-box mt-lg-5 mt-4 mb-4"
									onclick="mbtiSelected(this)"
										id="ENTJ"
									style="background-color: white; width: 30%; text-align: left;">
									<div class="rank_title"
										style="color: #ACC9DA; font-size: 28px;">
										<span style="border-bottom: 3px solid; color: #ACC9DA;">ENTJ</span>
									</div>
									<div style="display: flex; flex-direction: column;">
										<div class="rank_uname"
											style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">도전할 수 있는 창의적이면서도 논리적인 관점을 제공해 줄거에요.</div>
										<div
											style="display: flex; flex-direction: row; align-items: center;">
										</div>
									</div>
									<div class="image-wrapper">
										<img src="./resources/images/mbti_character/ENTJ.png"
											class="img-fluid" alt="" style="width: auto;">
									</div>
								</div>
								</c:if>
								<c:if test="${mvo.mbti == 'ENTP'}">
								<div class="nav-item featured-box mt-lg-5 mt-4 mb-4"
									onclick="mbtiSelected(this)"
										id="INFJ"
									style="background-color: white; width: 30%; text-align: left;">
								
									<div class="rank_title"
										style="color: #F8C86C; font-size: 28px;">
										<span style="border-bottom: 3px solid; color: #F8C86C;">INFJ</span>
									</div>
									<div style="display: flex; flex-direction: column;">
										<div class="rank_uname"
											style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">안락한 영역 밖으로 밀어내어 성장하도록 도와줄거에요.
										</div>
										
										
										<div
											style="display: flex; flex-direction: row; align-items: center;">
										</div>
									</div>
									<div class="image-wrapper">
										<img src="./resources/images/mbti_character/INFJ.png"
											class="img-fluid" alt="" style="width: auto;">
									</div>
								</div>
										

								<div class="nav-item featured-box mt-lg-5 mt-4 mb-4"
									onclick="mbtiSelected(this)"
										id="INTJ"
									style="background-color: white; width: 30%; text-align: left;">
									<div class="rank_title"
										style="color: #ACC9DA; font-size: 28px;">
										<span style="border-bottom: 3px solid; color: #ACC9DA;">INTJ</span>
									</div>
									<div style="display: flex; flex-direction: column;">
										<div class="rank_uname"
											style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">새로운 개념을 소개하고 아이디어를 위한 완벽한 공명판!</div>
										<div
											style="display: flex; flex-direction: row; align-items: center;">
										</div>
									</div>
									<div class="image-wrapper">
										<img src="./resources/images/mbti_character/INTJ.png"
											class="img-fluid" alt="" style="width: auto;">
									</div>
								</div>
								</c:if>
								<c:if test="${mvo.mbti == 'ISFP'}">
								<div class="nav-item featured-box mt-lg-5 mt-4 mb-4"
									onclick="mbtiSelected(this)"
										id="ESTJ"
									style="background-color: white; width: 30%; text-align: left;">
								
									<div class="rank_title"
										style="color: #F8C86C; font-size: 28px;">
										<span style="border-bottom: 3px solid; color: #F8C86C;">ESTJ</span>
									</div>
									<div style="display: flex; flex-direction: column;">
										<div class="rank_uname"
											style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">긴장을 풀고 항상 모든 것을 미리 계획할 필요가 없다는 것을 깨닫도록 도울 수 있어요.
										</div>
										
										
										<div
											style="display: flex; flex-direction: row; align-items: center;">
										</div>
									</div>
									<div class="image-wrapper">
										<img src="./resources/images/mbti_character/ESTJ.png"
											class="img-fluid" alt="" style="width: auto;">
									</div>
								</div>
										

								<div class="nav-item featured-box mt-lg-5 mt-4 mb-4"
									onclick="mbtiSelected(this)"
										id="ESFJ"
									style="background-color: white; width: 30%; text-align: left;">
									<div class="rank_title"
										style="color: #ACC9DA; font-size: 28px;">
										<span style="border-bottom: 3px solid; color: #ACC9DA;">ESFJ</span>
									</div>
									<div style="display: flex; flex-direction: column;">
										<div class="rank_uname"
											style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">덜 경직되도록 돕고 삶에 자발성을 가져올거에요.</div>
										<div
											style="display: flex; flex-direction: row; align-items: center;">
										</div>
									</div>
									<div class="image-wrapper">
										<img src="./resources/images/mbti_character/ESFJ.png"
											class="img-fluid" alt="" style="width: auto;">
									</div>
								</div>
								</c:if>
								<c:if test="${mvo.mbti == 'ESFP'}">
								<div class="nav-item featured-box mt-lg-5 mt-4 mb-4"
									onclick="mbtiSelected(this)"
										id="ISTJ"
									style="background-color: white; width: 30%; text-align: left;">
								
									<div class="rank_title"
										style="color: #F8C86C; font-size: 28px;">
										<span style="border-bottom: 3px solid; color: #F8C86C;">ISTJ</span>
									</div>
									<div style="display: flex; flex-direction: column;">
										<div class="rank_uname"
											style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">감정을 표현하는 데 도움이 될 수 있어요.
										</div>
										
										
										<div
											style="display: flex; flex-direction: row; align-items: center;">
										</div>
									</div>
									<div class="image-wrapper">
										<img src="./resources/images/mbti_character/ISTJ.png"
											class="img-fluid" alt="" style="width: auto;">
									</div>
								</div>
										

								<div class="nav-item featured-box mt-lg-5 mt-4 mb-4"
									onclick="mbtiSelected(this)"
										id="ISFJ"
									style="background-color: white; width: 30%; text-align: left;">
									<div class="rank_title"
										style="color: #ACC9DA; font-size: 28px;">
										<span style="border-bottom: 3px solid; color: #ACC9DA;">ISFJ</span>
									</div>
									<div style="display: flex; flex-direction: column;">
										<div class="rank_uname"
											style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">새로운 것을 시도하고 안전지대에서 벗어나도록 격려해 줄거에요.</div>
										<div
											style="display: flex; flex-direction: row; align-items: center;">
										</div>
									</div>
									<div class="image-wrapper">
										<img src="./resources/images/mbti_character/ISFJ.png"
											class="img-fluid" alt="" style="width: auto;">
									</div>
								</div>
								</c:if>
								<c:if test="${mvo.mbti == 'ISTP'}">
								<div class="nav-item featured-box mt-lg-5 mt-4 mb-4"
									onclick="mbtiSelected(this)"
										id="ESFJ"
									style="background-color: white; width: 30%; text-align: left;">
								
									<div class="rank_title"
										style="color: #F8C86C; font-size: 28px;">
										<span style="border-bottom: 3px solid; color: #F8C86C;">ESFJ</span>
									</div>
									<div style="display: flex; flex-direction: column;">
										<div class="rank_uname"
											style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">삶을 즐기기 위해 항상 친구와 가족 주위에 있을 필요는 없다는 사실을 알려줄거에요.
										</div>
										
										
										<div
											style="display: flex; flex-direction: row; align-items: center;">
										</div>
									</div>
									<div class="image-wrapper">
										<img src="./resources/images/mbti_character/ESFJ.png"
											class="img-fluid" alt="" style="width: auto;">
									</div>
								</div>
										

								<div class="nav-item featured-box mt-lg-5 mt-4 mb-4"
									onclick="mbtiSelected(this)"
										id="ESTJ"
									style="background-color: white; width: 30%; text-align: left;">
									<div class="rank_title"
										style="color: #ACC9DA; font-size: 28px;">
										<span style="border-bottom: 3px solid; color: #ACC9DA;">ESTJ</span>
									</div>
									<div style="display: flex; flex-direction: column;">
										<div class="rank_uname"
											style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">항상 고도로 조직화되고 모든 작은 세부 사항을 계획해야 하는 필요성을 배울수 있을거에요.</div>
										<div
											style="display: flex; flex-direction: row; align-items: center;">
										</div>
									</div>
									<div class="image-wrapper">
										<img src="./resources/images/mbti_character/ESTJ.png"
											class="img-fluid" alt="" style="width: auto;">
									</div>
								</div>
								</c:if>
								<c:if test="${mvo.mbti == 'ESTP'}">
								<div class="nav-item featured-box mt-lg-5 mt-4 mb-4"
									onclick="mbtiSelected(this)"
										id="ISFJ"
									style="background-color: white; width: 30%; text-align: left;">
								
									<div class="rank_title"
										style="color: #F8C86C; font-size: 28px;">
										<span style="border-bottom: 3px solid; color: #F8C86C;">ISFJ</span>
									</div>
									<div style="display: flex; flex-direction: column;">
										<div class="rank_uname"
											style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">관계에 흥분과 열정을 가져다 줄거에요.
										</div>
										
										
										<div
											style="display: flex; flex-direction: row; align-items: center;">
										</div>
									</div>
									<div class="image-wrapper">
										<img src="./resources/images/mbti_character/ISFJ.png"
											class="img-fluid" alt="" style="width: auto;">
									</div>
								</div>
										

								<div class="nav-item featured-box mt-lg-5 mt-4 mb-4"
									onclick="mbtiSelected(this)"
										id="ISTJ"
									style="background-color: white; width: 30%; text-align: left;">
									<div class="rank_title"
										style="color: #ACC9DA; font-size: 28px;">
										<span style="border-bottom: 3px solid; color: #ACC9DA;">ISTJ</span>
									</div>
									<div style="display: flex; flex-direction: column;">
										<div class="rank_uname"
											style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">새로운 것을 시도하고 안전지대를 벗어나도록 격려해줄거에요.</div>
										<div
											style="display: flex; flex-direction: row; align-items: center;">
										</div>
									</div>
									<div class="image-wrapper">
										<img src="./resources/images/mbti_character/ISTJ.png"
											class="img-fluid" alt="" style="width: auto;">
									</div>
								</div>
								</c:if>
								<c:if test="${mvo.mbti == 'ISFJ'}">
								<div class="nav-item featured-box mt-lg-5 mt-4 mb-4"
									onclick="mbtiSelected(this)"
										id="ESTP"
									style="background-color: white; width: 30%; text-align: left;">
								
									<div class="rank_title"
										style="color: #F8C86C; font-size: 28px;">
										<span style="border-bottom: 3px solid; color: #F8C86C;">ESTP</span>
									</div>
									<div style="display: flex; flex-direction: column;">
										<div class="rank_uname"
											style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">현실적이면서도 현실의 안과 밖을 모두 살필 수 있는 유형이기 때문에 긍정적 시너지를 볼수 있어요.
										</div>
										
										
										<div
											style="display: flex; flex-direction: row; align-items: center;">
										</div>
									</div>
									<div class="image-wrapper">
										<img src="./resources/images/mbti_character/ESTP.png"
											class="img-fluid" alt="" style="width: auto;">
									</div>
								</div>
										

								<div class="nav-item featured-box mt-lg-5 mt-4 mb-4"
									onclick="mbtiSelected(this)"
										id="ESFP"
									style="background-color: white; width: 30%; text-align: left;">
									<div class="rank_title"
										style="color: #ACC9DA; font-size: 28px;">
										<span style="border-bottom: 3px solid; color: #ACC9DA;">ESFP</span>
									</div>
									<div style="display: flex; flex-direction: column;">
										<div class="rank_uname"
											style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">밝고 긍정적인 분위기를 만들어 어려움을 해결하고 긴장을 풀어줄거에요.</div>
										<div
											style="display: flex; flex-direction: row; align-items: center;">
										</div>
									</div>
									<div class="image-wrapper">
										<img src="./resources/images/mbti_character/ESFP.png"
											class="img-fluid" alt="" style="width: auto;">
									</div>
								</div>
								</c:if>
								<c:if test="${mvo.mbti == 'ESFJ'}">
								<div class="nav-item featured-box mt-lg-5 mt-4 mb-4"
									onclick="mbtiSelected(this)"
										id="ISTP"
									style="background-color: white; width: 30%; text-align: left;">
								
									<div class="rank_title"
										style="color: #F8C86C; font-size: 28px;">
										<span style="border-bottom: 3px solid; color: #F8C86C;">ISTP</span>
									</div>
									<div style="display: flex; flex-direction: column;">
										<div class="rank_uname"
											style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">사회적인 의미에서 안락한 영역에서 벗어나도록 격려해줄거에요.
										</div>
										
										
										<div
											style="display: flex; flex-direction: row; align-items: center;">
										</div>
									</div>
									<div class="image-wrapper">
										<img src="./resources/images/mbti_character/ISTP.png"
											class="img-fluid" alt="" style="width: auto;">
									</div>
								</div>
										

								<div class="nav-item featured-box mt-lg-5 mt-4 mb-4"
									onclick="mbtiSelected(this)"
										id="ISFP"
									style="background-color: white; width: 30%; text-align: left;">
									<div class="rank_title"
										style="color: #ACC9DA; font-size: 28px;">
										<span style="border-bottom: 3px solid; color: #ACC9DA;">ISFP</span>
									</div>
									<div style="display: flex; flex-direction: column;">
										<div class="rank_uname"
											style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">창의적인 생각을 구체적인 계획으로 전환하도록 도와줄 수 있어요.</div>
										<div
											style="display: flex; flex-direction: row; align-items: center;">
										</div>
									</div>
									<div class="image-wrapper">
										<img src="./resources/images/mbti_character/ISFP.png"
											class="img-fluid" alt="" style="width: auto;">
									</div>
								</div>
								</c:if>
								<c:if test="${mvo.mbti == 'ISTJ'}">
								<div class="nav-item featured-box mt-lg-5 mt-4 mb-4"
									onclick="mbtiSelected(this)"
										id="ESTP"
									style="background-color: white; width: 30%; text-align: left;">
								
									<div class="rank_title"
										style="color: #F8C86C; font-size: 28px;">
										<span style="border-bottom: 3px solid; color: #F8C86C;">ESTP</span>
									</div>
									<div style="display: flex; flex-direction: column;">
										<div class="rank_uname"
											style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">삶을 좀 더 가볍게 받아들일 수 있도록 도와줄거에요.
										</div>
										
										
										<div
											style="display: flex; flex-direction: row; align-items: center;">
										</div>
									</div>
									<div class="image-wrapper">
										<img src="./resources/images/mbti_character/ESTP.png"
											class="img-fluid" alt="" style="width: auto;">
									</div>
								</div>
										

								<div class="nav-item featured-box mt-lg-5 mt-4 mb-4"
									onclick="mbtiSelected(this)"
										id="ESFP"
									style="background-color: white; width: 30%; text-align: left;">
									<div class="rank_title"
										style="color: #ACC9DA; font-size: 28px;">
										<span style="border-bottom: 3px solid; color: #ACC9DA;">ESFP</span>
									</div>
									<div style="display: flex; flex-direction: column;">
										<div class="rank_uname"
											style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">가치관과 접근방식이 매우 비슷해서 나를 잘 이해해 줄수 있어요.</div>
										<div
											style="display: flex; flex-direction: row; align-items: center;">
										</div>
									</div>
									<div class="image-wrapper">
										<img src="./resources/images/mbti_character/ESFP.png"
											class="img-fluid" alt="" style="width: auto;">
									</div>
								</div>
								</c:if>
								<c:if test="${mvo.mbti == 'ESTJ'}">
								<div class="nav-item featured-box mt-lg-5 mt-4 mb-4"
									onclick="mbtiSelected(this)"
										id="ISFP"
									style="background-color: white; width: 30%; text-align: left;">
								
									<div class="rank_title"
										style="color: #F8C86C; font-size: 28px;">
										<span style="border-bottom: 3px solid; color: #F8C86C;">ISFP</span>
									</div>
									<div style="display: flex; flex-direction: column;">
										<div class="rank_uname"
											style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">집중하고 잠재력을 발휘하도록 도와줄거에요.
										</div>
										
										
										<div
											style="display: flex; flex-direction: row; align-items: center;">
										</div>
									</div>
									<div class="image-wrapper">
										<img src="./resources/images/mbti_character/ISFP.png"
											class="img-fluid" alt="" style="width: auto;">
									</div>
								</div>
										

								<div class="nav-item featured-box mt-lg-5 mt-4 mb-4"
									onclick="mbtiSelected(this)"
										id="ISTP"
									style="background-color: white; width: 30%; text-align: left;">
									<div class="rank_title"
										style="color: #ACC9DA; font-size: 28px;">
										<span style="border-bottom: 3px solid; color: #ACC9DA;">ISTP</span>
									</div>
									<div style="display: flex; flex-direction: column;">
										<div class="rank_uname"
											style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">궤도를 유지하고 목표를 달성하도록 도와줄 수 있어요.</div>
										<div
											style="display: flex; flex-direction: row; align-items: center;">
										</div>
									</div>
									<div class="image-wrapper">
										<img src="./resources/images/mbti_character/ISTP.png"
											class="img-fluid" alt="" style="width: auto;">
									</div>
								</div>
								</c:if>
								
							</div>
						</div>
					</div>

					<div class="col-lg-5 col-12" style="width: 100%;">
						<div
							class="custom-block custom-block-profile-front custom-block-profile text-center bg-white friendDiv"
							style="display: none;">
							
							
							<!-- 추천 친구 리스트 삽입 위치 -->
							<div class="row align-items-center" id="test">



							</div>



							<div class="col-lg-12 col-12">
								<nav aria-label="Page navigation example">
									<ul class="pagination justify-content-center mt-5">
										<li class="page-item"><a class="page-link" href="#"
											aria-label="Previous"> <span aria-hidden="true">Prev</span>
										</a></li>

										<li class="page-item active" aria-current="page"><a
											class="page-link" href="#">1</a></li>

										<li class="page-item"><a class="page-link" href="#">2</a>
										</li>

										<li class="page-item"><a class="page-link" href="#">3</a>
										</li>

										<li class="page-item"><a class="page-link" href="#">4</a>
										</li>

										<li class="page-item"><a class="page-link" href="#">5</a>
										</li>

										<li class="page-item"><a class="page-link" href="#"
											aria-label="Next"> <span aria-hidden="true">Next</span>
										</a></li>
									</ul>
								</nav>
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
				
				</div>

		</main>

	</div>
	</div>

	
		<input type="hidden" id="ani_name_save" name="ani_name_save" value="">
	
	<!-- JAVASCRIPT FILES -->
	<script src="./resources/js/jquery.min.js"></script>
	<script src="./resources/js/bootstrap.bundle.min.js"></script>
	<script src="./resources/js/apexcharts.min.js"></script>
	<script src="./resources/js/custom.js"></script>


	<!-- 동물 선택 -->
	<script>
		
		// 각 동물 선택 요소에 대한 클릭 이벤트 처리
		function animalSelected(element) {
			// 동물카드 숨김
			console.log(element.id)
			var target_animal_text = document.getElementById("target_animal_text");
			var animalname = element.id
			var animalCardDivs = document.querySelectorAll('.animalCard');
			target_animal_text.textContent = "${mvo.nick}님이 선택하신 동물상은 "+ animalname +"상 입니다.";
			
			animalCardDivs.forEach(function(div) {
				div.style.display = 'none';
			});
			// mbti div 보임
			var mbtiDivs = document.querySelectorAll('.mbtiDiv');
			mbtiDivs.forEach(function(div) {
				div.style.display = '';
				
	        // JavaScript를 사용하여 hidden 필드의 값을 설정
	        var ani_name_save = document.getElementById("ani_name_save");
	        var newValue = animalname; // 원하는 값으로 변경
	        ani_name_save.value = newValue;
	        
	      
			
			
				
			});
		}
	
	<!-- mbti 선택 -->
	
		// 요소에 대한 클릭 이벤트 처리
		function mbtiSelected(element) {
			// mbti card 숨김
			
			var mbtiCardDivs = document.querySelectorAll('.mbtiCard');
			var select_mbti = element.id
			
			target_mbti_text.textContent = ""+ select_mbti +"를 선택하셨습니다.";
			
			var f_ani_name = document.getElementById("ani_name_save").value;
			
			$.ajax({
				
				url: "${cpath}/setMBTIData.do",
				method: "POST",
				data: {value1: select_mbti, value2: f_ani_name},
				success: function(result){
				console.log(result);

				$("#test").html(result);
				
				
				
				},
				error : function(){ alert("error");}
			});
			
			mbtiCardDivs.forEach(function(div) {
				div.style.display = 'none';
			});
			// friend div 보임
			var friendDivDivs = document.querySelectorAll('.friendDiv');
			friendDivDivs.forEach(function(div) {
				div.style.display = '';
			});
			
		}
	</script>
	
	<!-- friend 선택 -->
	<script>
        // 요소에 대한 클릭 이벤트 처리
        function friendSelected(element) {
            // Find the clicked friend card
            var friendCard = element.closest('.friendCard');
            
            // Find the corresponding friendMeet element using index
            var friendMeet1 = friendCard.querySelector('.friendMeet1');
            
            // Toggle the friendMeet's display between 'none' and 'flex'
            if (friendMeet1) {
                friendMeet1.style.display = (friendMeet1.style.display === 'none') ? 'flex' : 'none';
            }

            // Find the corresponding friendMeet element using index
            var friendMeet2 = friendCard.querySelector('.friendMeet2');
            
            // Toggle the friendMeet's display between 'none' and 'flex'
            if (friendMeet2) {
                friendMeet2.style.display = (friendMeet2.style.display === 'none') ? 'flex' : 'none';
            }
        }
    </script>
<!--             var friendMeetDivs = friendCard.querySelectorAll('.friendMeet'); -->

</body>
<whale-quicksearch translate="no"></whale-quicksearch>
</html>