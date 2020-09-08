<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="signHtml">

<head>
  <title>패타그램 - 매장개설완료</title>
  
  <!-- Custom styles for this template -->
  <link href="${pageContext.request.contextPath}/assets/css/common.css" rel="stylesheet">
  <!-- Bootstrap core JavaScript -->
  <script src="${pageContext.request.contextPath}/assets/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.bundle.min.js"></script>
    
</head>

<body class="signBody">

<!-- head -->
<c:import url="/WEB-INF/views/include/main-header.jsp"></c:import>  
<!-- /head -->

  
  <!-- Page Content -->
  <div class="container text-center">
    <form class="form-login">
      <!-- Title -->
      <img class="mb-4" src="${pageContext.request.contextPath}/assets/image/lettering-dark.png" alt="" width="200">

      <div class="checkbox mb-3 text-center divWelcome">
        <label><b>${session.userName }</b>님, 매장개설이 완료되었습니다.</label>
        <label><br>가입하신 매장의 도메인 주소는 <b>http://localhost:8088/dogshop/shop/${session.shopDomain }</b>입니다.</label>
      </div>

      <button class="btn btn-lg btn-primary btn-block btnSigninOk" type="button" onclick="location.href='${pageContext.request.contextPath}/store/${session.shopDomain }/main' ">매장으로 이동</button>
      <p class="mt-5 mb-3 text-muted">PENTAGRAM &copy; 2020</p>
    </form>
  </div>
  <!-- /.container -->

</body>

</html>
