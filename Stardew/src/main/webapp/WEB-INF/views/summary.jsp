<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>ABC solution</title>
		<link rel="stylesheet" href="<c:url value="/resources/vendors/mdi/css/materialdesignicons.min.css" />" >
		<link rel="stylesheet" href="<c:url value="/resources/vendors/owl.carousel/css/owl.carousel.css" />" >
		<link rel="stylesheet" href="<c:url value="/resources/vendors/owl.carousel/css/owl.theme.default.min.css" />" >
		<link rel="stylesheet" href="<c:url value="/resources/vendors/aos/css/aos.css" />" >
		<link rel="stylesheet" href="<c:url value="/resources/vendors/jquery-flipster/css/jquery.flipster.css" />" >
		<link rel="stylesheet" href="<c:url value="/resources/css/style.css" />" >
		<link rel="shortcut icon" href="<c:url value="/resources/images/logo_icon.png" />"  />
		<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.5.1/chart.min.js"></script>
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="50">
		<div id="mobile-menu-overlay"></div>
		<nav class="navbar navbar-expand-lg fixed-top">
			<div class="container">
				<a class="navbar-brand" href="mainIndex.do"><img src="<c:url value="/resources/images/white_logo.png" />" alt="ABCsolution"></a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"><i class="mdi mdi-menu"> </i></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarTogglerDemo01">
					<div class="d-lg-none d-flex justify-content-between px-4 py-3 align-items-center">
						<img src="<c:url value="/resources/images/mobile_logo.png"/>"  class="logo-mobile-menu" alt="ABCsolution">
						<a href="<c:url value="javascript:;"/>" class="close-menu"><i class="mdi mdi-close"></i></a>
					</div>
					<ul class="navbar-nav ml-auto align-items-center">
						<li class="nav-item active">
							<a class="nav-link" href="mainIndex.do">Home<span class="sr-only">(current)</span></a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="mainIndex.do">제품 및 솔루션</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="mainIndex.do">고객지원</a>
						</li>
						<li class="nav-item">
							<a class="nav-link btn btn-success" href="login.do">로그아웃</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>
		<!-- 로그인 하면 뜨는 보조메뉴 뜨게 만들어야 함 -->
		<nav class="navbar navbar-expand-lg fixed-second">
			<div class="container nav-second">
				<ul class="navbar-nav ml-auto align-items-center">
					<li class="nav-item">
						<a class="nav-link" href="summary.do?mb_id=${info.mb_id}" style="color: #ffd900;">AI 학습모델 현황</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="myDevices.do?mb_id=${info.mb_id}">나의 선별기 관리</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="streaming.do?mb_id=${info.mb_id}">실시간 판별영상</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="data.do?mb_id=${info.mb_id}">나의 데이터관리</a>
					</li>
				</ul>
			</div>
		</nav>
		<div class="page-body-wrapper">
			<section id="empty" class="empty">
				<div class="empty"></div>
			</section>
			<section class="our-projects" id="projects">
                <div class="container">
                    <div class="row mb-5">
                        <div class="col-sm-12">
                            <div class="d-sm-flex justify-content-between align-items-center mb-2">
                                <h4 class="font-weight-medium text-dark ">2021.11.09 분류 요약(전일 기준)</h4>
                                <div><a href="data.do?mb_id=${info.mb_id}" class="btn btn-outline-primary">분류결과 자세히보기</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 summary-chart-left" data-aos="fade-up">
                            <canvas id="minichart1"></canvas>
                        </div>
                        <div class="col-sm-6 summary-chart-right" data-aos="fade-up">
							<div class="aiSolution">
								<h5>ABC solution</h5>
								<hr/>
								<br/>
								<p>현재 AI 학습모델 버전은 <strong>ABCSolution 2021:10</strong>버전 입니다.</p>
								<p>${info.mb_id}님의 구입 버전은 ABCSolution 2021:10 버전입니다.</p>
								<p>개선사항 | 선별기에서 실시간으로 분류한 결과를 저장한 사진을 볼 수 있는<br/> 클라우드를 업데이트 했습니다. </p>
							</div>
							<div class="myDeviceControl">
								<h5>나의 선별기</h5>
								<hr/>
								<table style="font-size: 20px;">
									<tr>
										<td>현재 나의 선별기<br/><strong class="strong-summary">4개</strong> 작동중</td>
										<td>현재 나의 관리 품종은<br/><strong class="strong-summary">Fuji</strong > 와 <strong class="strong-summary">양광</strong> 과 <strong class="strong-summary">황금사과</strong><br/>입니다.</td>
									</tr>
								</table>
								<!-- <div class="col-sm-6" style="text-align: center;"><p>현재 나의 선별기<br/><strong>4개</strong> 작동중</p></div>
								<div class="col-sm-6" style="text-align: center;"><p>현재 나의 관리 품종<br/><strong>Fuji</strong><strong>양광</strong><strong>황금사과</strong>입니다.</p></div> -->
							</div>
                        </div>
                        <!-- hiddenDataTable테이블은 보이지 않지만 값을 자바스크립트에 가져오기 위해 만들어 놓음 -->
						<div class="">
							<table class="hiddenDataTable">
								<tr class="table-label">
									<td>품종</td>
									<td>분류결과</td>
									<td>카운트</td>
								</tr>
								<c:forEach var="cvo" items="${applelistJy}">
								<tr class="table-result">
									<td>${cvo.fruit_kind}</td>
									<td>${cvo.cl_result}</td>
									<td class="listItem">${cvo.cnt}</td>
								</tr>
								</c:forEach>
								<!-- <tr class="table-result">
									<td>정상</td>
									<td class="listItem">300</td>
								</tr>
								<tr class="table-result">
									<td>열과</td>
									<td class="listItem">330</td>
								</tr>
								<tr class="table-result">
									<td>흑점</td>
									<td class="listItem">333</td>
								</tr> -->
							</table>
						</div><!-- 테이블 영역 끄읕! -->
						
					</div>
                </div>
            </section>
		</div>
		<footer class="footer">
			<div class="footer-top">
				<div class="container">
					<div class="row">
						<div class="col-sm-6">
							<address>
								<p>광주광역시 남구 송암로 60</p>
								<p class="mb-4">스마트인재개발원</p>
								<div class="d-flex align-items-center">
									<p class="mr-4 mb-0">010-1234-5678</p>
									<a href="#" class="footer-link">stardewvillage@mymail.com</a>
								</div>
							</address>
							<div class="social-icons">
								<h6 class="footer-title font-weight-bold">
									Social Share
								</h6>
								<div class="d-flex">
									<a href="#"><i class="mdi mdi-github-circle"></i></a>
									<a href="#"><i class="mdi mdi-facebook-box"></i></a>
									<a href="#"><i class="mdi mdi-twitter"></i></a>
									<a href="#"><i class="mdi mdi-dribbble"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="footer-bottom">
				<div class="container">
					<div class="d-flex justify-content-between align-items-center">
						<div class="d-flex align-items-center">
							<img src="<c:url value="/resources/images/white_logo.png"/>" alt="logo" class="mr-3"></br>
							<p class="mb-0 text-small pt-1">© 2019-2020 <a href="https://www.bootstrapdash.com" class="text-white" target="_blank">BootstrapDash</a>. All rights reserved.</p>
            
							<p class="mb-0 text-small pt-1 pl-4">Distributed By: <a href="https://www.themewagon.com" class="text-white" target="_blank">Themewagon</a></p>
						</div>
           
						<div>
							<div class="d-flex">
								<a href="#" class="text-small text-white mx-2 footer-link">Privacy Policy </a>          
								<a href="#" class="text-small text-white mx-2 footer-link">Customer Support </a>
								<a href="#" class="text-small text-white mx-2 footer-link">Careers Guide</a>
							</div>
						</div>
					</div>

				</div>
			</div>
		</footer>
		<script src="<c:url value="/resources/vendors/base/vendor.bundle.base.js" />" ></script>
		<script src="<c:url value="/resources/vendors/owl.carousel/js/owl.carousel.js" />" ></script>
		<script src="<c:url value="/resources/vendors/aos/js/aos.js" />" ></script>
		<script src="<c:url value="/resources/vendors/jquery-flipster/js/jquery.flipster.min.js" />" ></script>
		<script src="<c:url value="/resources/js/template.js" />" ></script>
		<script src="<c:url value="/resources/js/chart.js" />" ></script>
</body>
</html>