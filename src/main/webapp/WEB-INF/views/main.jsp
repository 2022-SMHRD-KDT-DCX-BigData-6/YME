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

        <link href="https://fonts.googleapis.com/css2?family=Unbounded:wght@300;400;700&display=swap" rel="stylesheet">

        <link href="./resources/css/bootstrap.min.css" rel="stylesheet">

        <link href="./resources/css/bootstrap-icons.css" rel="stylesheet">

        <link href="./resources/css/apexcharts.css" rel="stylesheet">

        <link href="./resources/css/tooplate-mini-finance.css" rel="stylesheet">
</head>
<body>
        <header class="navbar sticky-top flex-md-nowrap">
            <div class="col-md-3 col-lg-3 me-0 px-3 fs-6">
                <a class="navbar-brand" href="index.html">
                    <i class="bi-box"></i>
                    Mini Finance
                </a>
            </div>

            <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <form class="custom-form header-form ms-lg-3 ms-md-3 me-lg-auto me-md-auto order-2 order-lg-0 order-md-0" action="#" method="get" role="form">
                <input class="form-control" name="search" type="text" placeholder="Search" aria-label="Search">
            </form>

            <div class="navbar-nav me-lg-2">
                <div class="nav-item text-nowrap d-flex align-items-center">
                    <div class="dropdown ps-3">
                        <a class="nav-link dropdown-toggle text-center" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" id="navbarLightDropdownMenuLink">
                            <i class="bi-bell"></i>
                            <span class="position-absolute start-100 translate-middle p-1 bg-danger border border-light rounded-circle">
                                <span class="visually-hidden">New alerts</span>
                            </span>
                        </a>

                        <ul class="dropdown-menu dropdown-menu-lg-end notifications-block-wrap bg-white shadow" aria-labelledby="navbarLightDropdownMenuLink">
                            <small>Notifications</small>

                            <li class="notifications-block border-bottom pb-2 mb-2">
                                <a class="dropdown-item d-flex  align-items-center" href="#">
                                    <div class="notifications-icon-wrap bg-success">
                                        <i class="notifications-icon bi-check-circle-fill"></i>
                                    </div>

                                    <div>
                                        <span>Your account has been created successfuly.</span>

                                        <p>12 days ago</p>
                                    </div>
                                </a>
                            </li>

                            <li class="notifications-block border-bottom pb-2 mb-2">
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="notifications-icon-wrap bg-info">
                                        <i class="notifications-icon bi-folder"></i>
                                    </div>

                                    <div>
                                        <span>Please check. We have sent a Daily report.</span>

                                        <p>10 days ago</p>
                                    </div>
                                </a>
                            </li>

                            <li class="notifications-block">
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="notifications-icon-wrap bg-danger">
                                        <i class="notifications-icon bi-question-circle"></i>
                                    </div>

                                    <div>
                                        <span>Account verification failed.</span>

                                        <p>1 hour ago</p>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>

                    <div class="dropdown ps-1">
                        <a class="nav-link dropdown-toggle text-center" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="bi-three-dots-vertical"></i>
                        </a>

                        <div class="dropdown-menu dropdown-menu-social bg-white shadow">
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-4 col-md-4 col-4">
                                        <a class="dropdown-item text-center" href="#">
                                            <img src="./resources/images/social/search.png" class="profile-image img-fluid" alt="">
                                            <span class="d-block">Google</span>
                                        </a>
                                    </div>

                                    <div class="col-lg-4 col-md-4 col-4">
                                        <a class="dropdown-item text-center" href="#">
                                            <img src="./resources/images/social/spotify.png" class="profile-image img-fluid" alt="">
                                            <span class="d-block">Spotify</span>
                                        </a>
                                    </div>

                                    <div class="col-lg-4 col-md-4 col-4">
                                        <a class="dropdown-item text-center" href="#">
                                            <img src="./resources/images/social/telegram.png" class="profile-image img-fluid" alt="">
                                            <span class="d-block">Telegram</span>
                                        </a>
                                    </div>

                                    <div class="col-lg-4 col-md-4 col-4">
                                        <a class="dropdown-item text-center" href="#">
                                            <img src="./resources/images/social/snapchat.png" class="profile-image img-fluid" alt="">
                                            <span class="d-block">Snapchat</span>
                                        </a>
                                    </div>

                                    <div class="col-lg-4 col-md-4 col-4">
                                        <a class="dropdown-item text-center" href="#">
                                            <img src="./resources/images/social/tiktok.png" class="profile-image img-fluid" alt="">
                                            <span class="d-block">Tiktok</span>
                                        </a>
                                    </div>

                                    <div class="col-lg-4 col-md-4 col-4">
                                        <a class="dropdown-item text-center" href="#">
                                            <img src="./resources/images/social/youtube.png" class="profile-image img-fluid" alt="">
                                            <span class="d-block">Youtube</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="dropdown px-3">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <img src="./resources/images/medium-shot-happy-man-smiling.jpg" class="profile-image img-fluid" alt="">
                        </a>
                        <ul class="dropdown-menu bg-white shadow">
                            <li>
                                <div class="dropdown-menu-profile-thumb d-flex">
                                    <img src="./resources/images/medium-shot-happy-man-smiling.jpg" class="profile-image img-fluid me-3" alt="">

                                    <div class="d-flex flex-column">
                                        <small>Thomas</small>
                                        <a href="#">thomas@site.com</a>
                                    </div>
                                </div>
                            </li>

                            <li>
                                <a class="dropdown-item" href="profile.html">
                                    <i class="bi-person me-2"></i>
                                    Profile
                                </a>
                            </li>

                            <li>
                                <a class="dropdown-item" href="setting.html">
                                    <i class="bi-gear me-2"></i>
                                    Settings
                                </a>
                            </li>

                            <li>
                                <a class="dropdown-item" href="help-center.html">
                                    <i class="bi-question-circle me-2"></i>
                                    Help
                                </a>
                            </li>

                            <li class="border-top mt-3 pt-2 mx-4">
                                <a class="dropdown-item ms-0 me-0" href="#">
                                    <i class="bi-box-arrow-left me-2"></i>
                                    Logout
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </header>

        <div class="container-fluid">
            <div class="row">
                <nav id="sidebarMenu" class="col-md-3 col-lg-3 d-md-block sidebar collapse">
                    <div class="position-sticky py-4 px-3 sidebar-sticky">
                        <ul class="nav flex-column h-100">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="index.html">
                                    <i class="bi-house-fill me-2"></i>
                                    Overview
                                </a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="wallet.html">
                                    <i class="bi-wallet me-2"></i>
                                    My Wallet
                                </a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="profile.html">
                                    <i class="bi-person me-2"></i>
                                    Profile
                                </a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="setting.html">
                                    <i class="bi-gear me-2"></i>
                                    Settings
                                </a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="help-center.html">
                                    <i class="bi-question-circle me-2"></i>
                                    Help Center
                                </a>
                            </li>

                            <li class="nav-item featured-box mt-lg-5 mt-4 mb-4">
                                <img src="./resources/images/credit-card.png" class="img-fluid" alt="">

                                <a class="btn custom-btn" href="#">Upgrade</a>
                            </li>

                            <li class="nav-item border-top mt-auto pt-2">
                                <a class="nav-link" href="#">
                                    <i class="bi-box-arrow-left me-2"></i>
                                    Logout
                                </a>
                            </li>
                        </ul>
                    </div>
                </nav>

                <main class="main-wrapper col-md-9 ms-sm-auto py-4 col-lg-9 px-md-4 border-start">
                    <div class="title-group mb-3">
                        <h1 class="h2 mb-0">Overview</h1>

                        <small class="text-muted">Hello Thomas, welcome back!</small>
                    </div>

                    <div class="row my-4">
                        <div class="col-lg-7 col-12">
                            <div class="custom-block custom-block-balance">
                                <small>Your Balance</small>

                                <h2 class="mt-2 mb-3">$254,800</h2>

                                <div class="custom-block-numbers d-flex align-items-center">
                                    <span>****</span>
                                    <span>****</span>
                                    <span>****</span>
                                    <p>2560</p>
                                </div>

                                <div class="d-flex">
                                    <div>
                                        <small>Valid Date</small>
                                        <p>12/2028</p>
                                    </div>

                                    <div class="ms-auto">
                                        <small>Card Holder</small>
                                        <p>Thomas</p>
                                    </div>
                                </div>
                            </div>

                            <div class="custom-block bg-white">
                                <h5 class="mb-4">History</h5>

                                <div id="pie-chart"></div>
                            </div>

                            <div class="custom-block bg-white">
                                <div id="chart"></div>
                            </div>

                            <div class="custom-block custom-block-exchange">
                                <h5 class="mb-4">Exchange Rate</h5>

                                <div class="d-flex align-items-center border-bottom pb-3 mb-3">
                                    <div class="d-flex align-items-center">
                                        <img src="./resources/images/flag/united-states.png" class="exchange-image img-fluid" alt="">

                                        <div>
                                            <p>USD</p>
                                            <h6>1 US Dollar</h6>
                                        </div>
                                    </div>

                                    <div class="ms-auto me-4">
                                        <small>Sell</small>
                                        <h6>1.0931</h6>
                                    </div>

                                    <div>
                                        <small>Buy</small>
                                        <h6>1.0821</h6>
                                    </div>
                                </div>

                                <div class="d-flex align-items-center border-bottom pb-3 mb-3">
                                    <div class="d-flex align-items-center">
                                        <img src="./resources/images/flag/singapore.png" class="exchange-image img-fluid" alt="">

                                        <div>
                                            <p>SGD</p>
                                            <h6>1 Singapore Dollar</h6>
                                        </div>
                                    </div>

                                    <div class="ms-auto me-4">
                                        <small>Sell</small>
                                        <h6>0.6901</h6>
                                    </div>

                                    <div>
                                        <small>Buy</small>
                                        <h6>0.6201</h6>
                                    </div>
                                </div>

                                <div class="d-flex align-items-center border-bottom pb-3 mb-3">
                                    <div class="d-flex align-items-center">
                                        <img src="./resources/images/flag/united-kingdom.png" class="exchange-image img-fluid" alt="">

                                        <div>
                                            <p>GPD</p>
                                            <h6>1 British Pound</h6>
                                        </div>
                                    </div>

                                    <div class="ms-auto me-4">
                                        <small>Sell</small>
                                        <h6>1.1520</h6>
                                    </div>

                                    <div>
                                        <small>Buy</small>
                                        <h6>1.1412</h6>
                                    </div>
                                </div>

                                <div class="d-flex align-items-center border-bottom pb-3 mb-3">
                                    <div class="d-flex align-items-center">
                                        <img src="./resources/images/flag/australia.png" class="exchange-image img-fluid" alt="">

                                        <div>
                                            <p>AUD</p>
                                            <h6>1 Australian Dollar</h6>
                                        </div>
                                    </div>

                                    <div class="ms-auto me-4">
                                        <small>Sell</small>
                                        <h6>0.6110</h6>
                                    </div>

                                    <div>
                                        <small>Buy</small>
                                        <h6>0.5110</h6>
                                    </div>
                                </div>

                                <div class="d-flex align-items-center">
                                    <div class="d-flex align-items-center">
                                        <img src="./resources/images/flag/european-union.png" class="exchange-image img-fluid" alt="">

                                        <div>
                                            <p>EUR</p>
                                            <h6>1 Euro</h6>
                                        </div>
                                    </div>

                                    <div class="ms-auto me-4">
                                        <small>Sell</small>
                                        <h6>1.1020</h6>
                                    </div>

                                    <div>
                                        <small>Buy</small>
                                        <h6>1.1010</h6>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-5 col-12">
                            <div class="custom-block custom-block-profile-front custom-block-profile text-center bg-white">
                                <div class="custom-block-profile-image-wrap mb-4">
                                    <img src="./resources/images/medium-shot-happy-man-smiling.jpg" class="custom-block-profile-image img-fluid" alt="">

                                    <a href="setting.html" class="bi-pencil-square custom-block-edit-icon"></a>
                                </div>

                                <p class="d-flex flex-wrap mb-2">
                                    <strong>Name:</strong>

                                    <span>Thomas Edison</span>
                                </p>

                                <p class="d-flex flex-wrap mb-2">
                                    <strong>Email:</strong>
                                    
                                    <a href="#">
                                        thomas@site.com
                                    </a>
                                </p>

                                <p class="d-flex flex-wrap mb-0">
                                    <strong>Phone:</strong>

                                    <a href="#">
                                        (60) 12 345 6789
                                    </a>
                                </p>
                            </div>

                            <div class="custom-block custom-block-bottom d-flex flex-wrap">
                                <div class="custom-block-bottom-item">
                                    <a href="#" class="d-flex flex-column">
                                        <i class="custom-block-icon bi-wallet"></i>

                                        <small>Top up</small>
                                    </a>
                                </div>

                                <div class="custom-block-bottom-item">
                                    <a href="#" class="d-flex flex-column">
                                        <i class="custom-block-icon bi-upc-scan"></i>

                                        <small>Scan & Pay</small>
                                    </a>
                                </div>

                                <div class="custom-block-bottom-item">
                                    <a href="#" class="d-flex flex-column">
                                        <i class="custom-block-icon bi-send"></i>

                                        <small>Send</small>
                                    </a>
                                </div>

                                <div class="custom-block-bottom-item">
                                    <a href="#" class="d-flex flex-column">
                                        <i class="custom-block-icon bi-arrow-down"></i>

                                        <small>Request</small>
                                    </a>
                                </div>
                            </div>

                            <div class="custom-block custom-block-transations">
                                <h5 class="mb-4">Recent Transations</h5>

                                <div class="d-flex flex-wrap align-items-center mb-4">
                                    <div class="d-flex align-items-center">
                                        <img src="./resources/images/profile/senior-man-white-sweater-eyeglasses.jpg" class="profile-image img-fluid" alt="">

                                        <div>
                                            <p>
                                                <a href="transation-detail.html">Daniel Jones</a>
                                            </p>

                                            <small class="text-muted">C2C Transfer</small>
                                        </div>
                                    </div>

                                    <div class="ms-auto">
                                        <small>05/12/2023</small>
                                        <strong class="d-block text-danger"><span class="me-1">-</span> $250</strong>
                                    </div>
                                </div>

                                <div class="d-flex flex-wrap align-items-center mb-4">
                                    <div class="d-flex align-items-center">
                                        <img src="./resources/images/profile/young-beautiful-woman-pink-warm-sweater.jpg" class="profile-image img-fluid" alt="">

                                        <div>
                                            <p>
                                                <a href="transation-detail.html">Public Bank</a>
                                            </p>

                                            <small class="text-muted">Mobile Reload</small>
                                        </div>
                                    </div>

                                    <div class="ms-auto">
                                        <small>22/8/2023</small>
                                        <strong class="d-block text-success"><span class="me-1">+</span> $280</strong>
                                    </div>
                                </div>

                                <div class="d-flex flex-wrap align-items-center">
                                    <div class="d-flex align-items-center">
                                        <img src="./resources/images/profile/young-woman-with-round-glasses-yellow-sweater.jpg" class="profile-image img-fluid" alt="">

                                        <div>
                                            <p><a href="transation-detail.html">Store</a></p>

                                            <small class="text-muted">Payment Received</small>
                                        </div>
                                    </div>

                                    <div class="ms-auto">
                                        <small>22/8/2023</small>
                                        <strong class="d-block text-success"><span class="me-1">+</span> $280</strong>
                                    </div>
                                </div>

                                <div class="border-top pt-4 mt-4 text-center">
                                    <a class="btn custom-btn" href="wallet.html">
                                        View all transations
                                        <i class="bi-arrow-up-right-circle-fill ms-2"></i>
                                    </a>
                                </div>
                            </div>

                            <div class="custom-block primary-bg">
                                <h5 class="text-white mb-4">Send Money</h5>

                                <a href="#">
                                    <img src="./resources/images/profile/young-woman-with-round-glasses-yellow-sweater.jpg" class="profile-image img-fluid" alt="">
                                </a>

                                <a href="#">
                                    <img src="./resources/images/profile/young-beautiful-woman-pink-warm-sweater.jpg" class="profile-image img-fluid" alt="">
                                </a>

                                <a href="#">
                                    <img src="./resources/images/profile/senior-man-white-sweater-eyeglasses.jpg" class="profile-image img-fluid" alt="">
                                </a>

                                <div class="profile-rounded">
                                    <a href="#">
                                        <i class="profile-rounded-icon bi-plus"></i>
                                    </a>
                                </div>
                            </div>

                        </div>
                    </div>

                    <footer class="site-footer">
                        <div class="container">
                            <div class="row">
                                
                                <div class="col-lg-12 col-12">
                                    <p class="copyright-text">Copyright © Mini Finance 2048 
                                    - Design: <a rel="sponsored" href="https://www.tooplate.com" target="_blank">Tooplate</a></p>
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

        <script type="text/javascript">
            var options = {
              series: [13, 43, 22],
              chart: {
              width: 380,
              type: 'pie',
            },
            labels: ['Balance', 'Expense', 'Credit Loan',],
            responsive: [{
              breakpoint: 480,
              options: {
                chart: {
                  width: 200
                },
                legend: {
                  position: 'bottom'
                }
              }
            }]
            };

            var chart = new ApexCharts(document.querySelector("#pie-chart"), options);
            chart.render();
        </script>

        <script type="text/javascript">
            var options = {
              series: [{
              name: 'Income',
              data: [44, 55, 57, 56, 61, 58, 63, 60, 66]
            }, {
              name: 'Expense',
              data: [76, 85, 101, 98, 87, 105, 91, 114, 94]
            }, {
              name: 'Transfer',
              data: [35, 41, 36, 26, 45, 48, 52, 53, 41]
            }],
              chart: {
              type: 'bar',
              height: 350
            },
            plotOptions: {
              bar: {
                horizontal: false,
                columnWidth: '55%',
                endingShape: 'rounded'
              },
            },
            dataLabels: {
              enabled: false
            },
            stroke: {
              show: true,
              width: 2,
              colors: ['transparent']
            },
            xaxis: {
              categories: ['Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct'],
            },
            yaxis: {
              title: {
                text: '$ (thousands)'
              }
            },
            fill: {
              opacity: 1
            },
            tooltip: {
              y: {
                formatter: function (val) {
                  return "$ " + val + " thousands"
                }
              }
            }
            };

            var chart = new ApexCharts(document.querySelector("#chart"), options);
            chart.render();
        </script>

    </body>
</html>