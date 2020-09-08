<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>

  <title>매장 등록</title>
  <!-- Bootstrap core JavaScript -->

  <!-- Custom styles for this template -->
  <link href="${pageContext.request.contextPath}/assets/css/common.css" rel="stylesheet">
  <!-- Bootstrap core JavaScript -->
  <script src="${pageContext.request.contextPath}/assets/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.bundle.min.js"></script>
    
  <script src="${pageContext.request.contextPath}/assets/js/main-aside.js"></script>
</head>

<body class="bg-light">


<!-- head -->
<c:import url="/WEB-INF/views/include/main-header.jsp"></c:import>  
<!-- /head -->


  <!-- Page Content -->
  <div class="container">
    <div id="content-head" class="py-5 text-left">
      <!-- <img class="d-block mx-auto mb-4" src="./image/bootstrap-solid.svg" alt="" width="72" height="72"> -->
      <h2>회원 정보</h2>
      <div id="location">
        <ul class="list-inline">
          <li>회원정보</li>
          <li class="last">매장 등록</li>
        </ul>
      </div>
      <!-- <p class="lead">Below is an example form built entirely with Bootstrap’s form controls. Each required form group has a validation state that can be triggered by attempting to submit the form without completing it.</p> -->
    </div>

	<!-- user-aside -->
	<c:import url="/WEB-INF/views/include/user-aside.jsp"></c:import>  
	<!-- /user-aside-->

      <div class="col-md-10 order-md-2">
        <h4 class="mb-3 center-block text-center"><img class="signinLogo mb-6" src="${pageContext.request.contextPath}/assets/image/lettering-dark.png" alt="Logo"
            width="200"><br>매장 등록</h4>

        <form id="storeAdd-center" class="needs-validation center-block" novalidate action="${pageContext.request.contextPath}/user/storeAdd" method="post" enctype="multipart/form-data">
          <div class="row">

            <div id="div-center" class="col-md-5 mb-3">
              <label for="shopDomain">매장 도메인</label>
              <input type="text" class="form-control" id="shopDomain" placeholder="사용 할 도메인 주소를 입력해 주세요." value=""
                required name="shopDomain" value="">
            </div>
            <div id="div-center" class="col-md-4 mb-3">
              <button id="btn-center" class="btn btn-primary btn-block col-md-4 btn-sm" type="button">중복확인</button>
              <div class="invalid-feedback">
                도메인을 입력해주세요.	
              </div>
            </div>

          </div>

          <div class="row">
            <div id="div-center" class="col-md-5 mb-3">
              <label for="shopName">매장 이름</label>
              <input type="text" class="form-control" id="shopName" placeholder="사용 할 매장 이름을 입력해 주세요." required name="shopTitle">
            </div>
            <div id="div-center" class="col-md-4 mb-3">
              <button id="btn-center" class="btn btn-primary btn-block col-md-4 btn-sm" type="button">중복확인</button>
              <div class="invalid-feedback">
                매장 이름을 입력해 주세요.
              </div>
            </div>
          </div>

          <div class="row">
            <div id="div-center" class="col-md-5 mb-3">
              <label for="shopInfo">매장 설명</label>
              <textarea class="form-control" rows="5" id="shopInfo" placeholder="매장 정보를 입력해 주세요." required name="shopDesc"></textarea>
              <div class="invalid-feedback">
                매장 정보를 입력해 주세요.
              </div>
            </div>
          </div>

          <div class="row">
            <div id="div-center" class="col-md-5 mb-3">
              <label for="shopTel">매장 번호</label>
              <input type="tel" class="form-control" id="shopTel" placeholder="매장의 번호를 입력해 주세요." required name="shopNumber">
              <div class="invalid-feedback">
                매장 번호를 입력해 주세요.
              </div>
            </div>
          </div>

          <div class="row">
            <div id="div-center" class="col-md-5 mb-3">
              <label for="shopAddr">매장 주소</label>
              <input type="address" class="form-control" id="shopAddr" placeholder="매장의 주소를 입력해 주세요." required name="shopAddress">
              <div class="invalid-feedback">
                매장 주소를 입력해 주세요.
              </div>
            </div>
          </div>

          <div class="row">
            <div id="div-center" class="col-md-5 mb-3">
              <label for="shopEmail">이메일</label>
              <input type="email" class="form-control" id="shopEmail" placeholder="매장의 이메일 주소를 입력해 주세요." required name="shopEmail">
              <div class="invalid-feedback">
                매장의 이메일 주소를 입력해 주세요.
              </div>
            </div>
          </div>

          <div class="row">
            <div id="div-center" class="col-md-5 mb-3">
              <label for="shopNum">사업자 번호</label>
              <input type="text" class="form-control" id="shopNum" placeholder="사업자 번호를 입력해 주세요." required name="shopAuth">
              <div class="invalid-feedback">
                사업자 번호를 입력해 주세요.
              </div>
            </div>
          </div>

          <hr class="mb-4">

          <img id="div-center" src="..." class="img-responsive" alt="메인이미지">
          <input id="div-center" id="main-image" type="file" name="file">

          <hr class="mb-4">

          <div class="form-row text-center">
            <div class="col-12">
              <button id="btn-submit" class="btn btn-primary col-md-2" type="submit">등록하기</button>
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