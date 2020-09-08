<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="signHtml">

<head>

<title>회원가입 폼</title>

  <!-- Custom styles for this template -->
  <link href="${pageContext.request.contextPath}/assets/css/common.css" rel="stylesheet">
  <!-- Bootstrap core JavaScript -->
  <script src="${pageContext.request.contextPath}/assets/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.bundle.min.js"></script>
    
<!-- head -->
<c:import url="/WEB-INF/views/include/main-header.jsp"></c:import>

</head>

<body class="signBody">

	<!-- Page Content -->

	<div id="joinForm-center" class="container">
		<div class="row">
			<div class="col-md-12 order-md-2">

				<div class="mb-3 text-center">
					<img class="signinLogo mb-6 " src="${pageContext.request.contextPath}/assets/image/lettering-dark.png"
						alt="Logo" width="200">
				</div>
				<form id="form-bottom" class="center-block form-signin" action="${pageContext.request.contextPath}/user/join" method="POST">
					<div class="row">

						<div id="div-center" class="col-md-4 mb-3">
							<label for="userId">아이디</label> <input type="text"
								class="form-control" id="userId" placeholder="아이디를 입력해 주세요."
								value="" required autofocus name="id">
							<!-- <p class="txtDanger txtDanger dangerIdOk text-left">사용가능한 아이디입니다.</p> -->
						</div>
						<div id="div-center" class="col-md-4 mb-3">
							<button id="btn-joinForm"
								class="btn btn-primary btn-block col-md-4 btn-sm" type="button"
								aria-required="true">중복확인</button>
							<div class="invalid-feedback">아이디를 입력해 주세요.</div>
						</div>

					</div>

					<div class="row">
						<div id="div-center" class="col-md-4 mb-3">
							<label for="userPassword">비밀번호</label> <input type="password"
								class="form-control" id="userPassword"
								placeholder="비밀번호를 입력해 주세요." required name="password">
							<!-- <p class="txtDanger txtDanger dangerPwReNo text-left">비밀번호가 일치하지 않습니다.</p> -->
							<div class="invalid-feedback">비밀번호를 입력해 주세요.</div>
						</div>
					</div>

					<div class="row">
						<div id="div-center" class="col-md-4 mb-3">
							<label for="name">이름</label> <input type="text"
								class="form-control" id="name" placeholder="이름을 입력해 주세요."
								required name="userName">
							<!-- <p class="txtDanger txtDanger dangerNameNo text-left">필수 정보입니다.</p> -->
							<div class="invalid-feedback">이름을 입력해 주세요.</div>
						</div>
					</div>

					<div class="row">
						<div id="div-center" class="col-md-4 mb-3">
							<label for="userHp">핸드폰 번호</label> <input type="tel"
								class="form-control" id="userHp" placeholder="핸드폰 번호를 입력해 주세요."
								required name="phoneNo">
							<!-- <p class="txtDanger txtDanger dangerNameNo text-left">필수 정보입니다.</p> -->
							<div class="invalid-feedback">핸드폰 번호를 입력해 주세요.</div>
						</div>
					</div>

					<div class="checkbox" id="join-checkbox">
						<label> <input type="checkbox" value=y required>&nbsp&nbsp&nbsp약관에
							동의해 주세요.
						</label>
					</div>

					<hr class="mb-4">

					<div class="form-row text-center">
						<div class="col-12">
							<button id="btn-submit" class="btn btn-primary col-md-2"
								type="submit">회원가입</button>
						</div>
					</div>

				</form>
			</div>

		</div>

	</div>
	<!-- /.container -->
	
	
</body> 


</html>