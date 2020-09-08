<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>리스트로 매장찾기</title>

<!-- Bootstrap core CSS -->
<link
	href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath }/assets/css/common.css"
	rel="stylesheet">

</head>

<body class="bg-light">

	<!-- header -->

	<c:import url="/WEB-INF/views/include/main-header.jsp"></c:import>


	<!-- Page Content -->
	<!-- ================================여기 부분부터 내용이 달라집니다.================================ -->

	<div class="container">
		<div id="content-head" class="py-5 text-left">
			<!-- <img class="d-block mx-auto mb-4" src="./image/bootstrap-solid.svg" alt="" width="72" height="72"> -->
			<h2>매장찾기</h2>
			<div id="location">
				<ul class="list-inline">
					<li><a
						href="${pageContext.request.contextPath }/main/mapsearch">매장찾기</a></li>
					<li class="last"><a
						href="${pageContext.request.contextPath }/main/listsearch">리스트로
							찾기</a></li>
				</ul>
			</div>
			<!-- <p class="lead">Below is an example form built entirely with Bootstrap’s form controls. Each required form group has a validation state that can be triggered by attempting to submit the form without completing it.</p> -->
		</div>

		<!-- Category -->
		<div class="row">
			<div class="col-md-2 order-md-1 mb-4">
				<h4 class="d-flex justify-content-between align-items-center mb-3">
					<!-- <span class="text-muted">회원 정보</span> -->
					<!-- <span class="badge badge-secondary badge-pill">3</span> -->
				</h4>
				<ul class="list-group mb-3">
					<li
						class="list-group-item d-flex justify-content-between lh-condensed">
						<div>
							<h6 class="my-0">
								<a href="${pageContext.request.contextPath }/main/mapsearch">지도로
									찾기</a>
							</h6>
							<!-- <small class="text-muted">Brief description</small> -->
						</div>
					</li>
					<li
						class="list-group-item d-flex justify-content-between lh-condensed">
						<div>
							<h6 class="my-0">
								<a href="${pageContext.request.contextPath }/main/listsearch">리스트로
									찾기</a>
							</h6>
							<!-- <small class="text-muted">Brief description</small> -->
						</div>
					</li>
				</ul>
			</div>
			<!-- /. Category -->

			<div class="col-md-10 order-md-2">
				<div>

					<div class="row listSearch-body">

						<div class="listSearch-info">

							<ul class="list-unstyled">
								<li>매장명</li>
								<li id="infotitle"></li>
							</ul>

							<ul class="list-unstyled">
								<li>영업시간</li>
								<li>09:30 ~ 21:30</li>
							</ul>

							<ul class="list-unstyled">
								<li>전화번호</li>
								<li id="infonumber"></li>
							</ul>

							<ul class="list-unstyled">
								<li>주소</li>
								<li id="infoaddress"></li>
							</ul>

							<ul class="list-unstyled">
								<li>주차</li>
								<li>지상 1층 외 넓은 주차장 보유(매장에 있으신 시간에 한해 주차쿠폰 발급)</li>
							</ul>

						</div>
						<a href="" class="img-listSearch-location"> <img
							src="${pageContext.request.contextPath }/assets/image/shop04.jpg"
							class="img-responsive rounded img-listSearch"
							alt="Responsive image">
						</a>
					</div>
				</div>

				<table class="table table-sm table-hover text-center listSearch">
					<thead>
						<th scope="col">No.</th>
						<th scope="col">매장명</th>
						<th scope="col">매장 주소</th>
						<th scope="col">매장 번호</th>
					</thead>
					<c:forEach items="${sList}" var="shopvo">
						<tbody>

							<tr class="shopinfo" data-shoptitle="${shopvo.shopTitle}",
           						  data-shopaddress="${shopvo.shopAddress}"
								, data-shopnumber="${shopvo.shopNumber}">
								<td>${shopvo.shopNo}</td>
								<td><a href="">${shopvo.shopTitle}</a></td>
								<td>${shopvo.shopAddress}</td>
								<td>${shopvo.shopNumber}</td>
							</tr>

						</tbody>
					</c:forEach>
				</table>

			</div>
		</div>
	</div>

	<!-- //Page Content -->
	<!-- ================================여기까지가 내용이 달라지는 부분입니다.================================ -->

	<!-- Footer -->
	<footer class="bg-dark">
		<div class="container">
			<p class="m-0 text-left text-white">
				<a class="navbar-brand" href="#"><img
					src="${pageContext.request.contextPath }/assets/image/lettering-bright.png"></a><br>
				<br> <b>페타그램</b>&nbsp;&nbsp;&nbsp;서울특별시 서초구 서초대로 77길 13 401호<br>
				<b>대표이사</b> : 풀스택A팀&nbsp;&nbsp;&nbsp;<b>사업자등록번호</b> :
				000-00-00000&nbsp;&nbsp;&nbsp;<b>고객센터</b> :
				02-000-0000&nbsp;&nbsp;&nbsp;<b>이메일</b> : help@petagram.com
			</p>
		</div>
	</footer>
	<!-- /.Footer -->

	<!-- Bootstrap core JavaScript -->
	<script
		src="${pageContext.request.contextPath }/assets/bootstrap/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
<script type="text/javascript">
	$(".shopinfo").on("click", function() {

		console.log("테이블 클릭");

		var shoptitle = $(this).data("shoptitle");
		var shopaddress = $(this).data("shopaddress");
		var shopnumber = $(this).data("shopnumber");

		$("#infotitle").text(shoptitle);
		$("#infoaddress").text(shopaddress);
		$("#infonumber").text(shopnumber);

	})
</script>

</html>