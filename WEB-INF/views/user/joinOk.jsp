<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="signHtml">

<head>

  <title>회원가입 성공</title>

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
  <div class="container text-center">
    <form class="form-login" >
      <!-- Title -->
      <img class="mb-4" src="../../image/lettering-dark.png" alt="" width="200">

      <div class="checkbox mb-3 text-center divWelcome">
        <label><b>${userVo.userName} </b>님, 회원가입을 축하합니다.</label>
        <label>가입하신 아이디는 <b>${userVo.id }</b>입니다.</label>
      </div>

      <button class="btn btn-lg btn-primary btn-block btnSigninOk" type="button"  onclick="location.href='${pageContext.request.contextPath}/user/loginForm' ">로그인하기</button>
      <p class="mt-5 mb-3 text-muted">PENTAGRAM &copy; 2020</p>
    </form>
  </div>
  <!-- /.container -->



</body>

</html>
