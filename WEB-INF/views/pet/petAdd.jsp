<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<title>마이펫 등록</title>

<!-- Bootstrap core JavaScript -->

<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/assets/css/common.css"
	rel="stylesheet">
<!-- Bootstrap core JavaScript -->
<script
	src="${pageContext.request.contextPath}/assets/jquery/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.bundle.min.js"></script>

<script src="${pageContext.request.contextPath}/assets/js/main-aside.js"></script>

</head>

<body class="bg-light">

	<!-- head -->
	<c:import url="/WEB-INF/views/include/main-header.jsp"></c:import>
	<!-- /head -->



	<!-- Page Content -->
	<div class="container">
		<div id="content-head" class="py-5 text-left">
			<h2>마이펫</h2>
			<div id="location">
				<ul class="list-inline">
					<li>마이펫</li>
					<li class="last">마이펫 관리</li>
				</ul>
			</div>
		</div>

		<!-- Category -->
		<div class="row">
			<div class="col-md-2 order-md-1 mb-4">
				<h4 class="d-flex justify-content-between align-items-center mb-3">
				</h4>
				<ul class="list-group mb-3">
					<li
						class="list-group-item d-flex justify-content-between lh-condensed">
						<div>
							<h6 class="my-0">
								<a href="#">마이펫 관리</a>
							</h6>
						</div>
					</li>
					<li
						class="list-group-item d-flex justify-content-between lh-condensed">
						<div>
							<h6 class="my-0">
								<a href="#">자랑하기</a>
							</h6>
						</div>
					</li>

				</ul>
			</div>
			<!-- /. Category -->

			<div class="col-md-9 order-md-2">
				<h4 class="mb-3 text-center">마이펫 등록</h4>
				<form class="needs-validation"
					action="${pageContext.request.contextPath}/pet/add" method="post" enctype="multipart/form-data" novalidate>
					<div class="row">

						<div id="div-center" class="col-md-5 mb-3">
							<label for="petName">애견 이름</label> <input type="text" class="form-control" id="petName" placeholder="애견의 이름을 입력해 주세요." value="" required name="dogName">
						</div>

					</div>

					<div class="row">
						<div id="div-center" class="col-md-5 mb-3">
							<label for="petSort">종류</label> <input type="text" class="form-control" id="petSort" placeholder="애견의 종류를 입력해 주세요."
								required name="dogType">
						</div>
					</div>

					<div class="row">
						<div id="div-center" class="col-md-5 mb-3">
							<label for="petWeight">몸무게</label> <input type="number" class="form-control" id="petWeight" placeholder="애견의 몸무게를 입력해 주세요." required name="dogWeight">
							<div class="invalid-feedback">몸무게를 입력해 주세요.</div>
						</div>
					</div>

					<div class="row">
						<div id="div-center" class="col-md-5 mb-3">
							<label for="petAge">나이</label> <input type="num"
								class="form-control" id="petAge"
								placeholder="애견의 나이를 입력해 주세요. ex) n개월" required name="dogAge">
							<div class="invalid-feedback">애견의 나이를 입력해 주세요.</div>
						</div>
					</div>

					<div class="row">
						<div id="div-center" class="col-md-5 mb-3">
							<label for="petInfo">애견 정보</label>
							<textarea class="form-control" rows="5" id="petInfo"
								placeholder="애견의 정보를 입력해 주세요." required name="dogEtc"></textarea>
							<div class="invalid-feedback">애견의 정보를 입력해 주세요.</div>
						</div>
					</div>



					<hr class="mb-4">

					<img id="div-center" src="..." class="img-responsive" alt="프로필 사진">
					<input id="div-center" id="main-image" type="file" name="file">

					<hr class="mb-4">

					<div class="form-row text-center">
						<div class="col-12">
							<button id="btn-submit" class="btn btn-primary col-md-2"
								type="submit">등록하기</button>
						</div>
					</div>

				</form>
			</div>
		</div>
	</div>
	<!-- /. Page Content -->


	<!-- /.Footer -->
	<c:import url="/WEB-INF/views/include/main-footer.jsp"></c:import>
	<!-- /.Footer -->


</body>

</html>