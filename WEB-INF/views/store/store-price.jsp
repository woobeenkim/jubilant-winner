<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>매장 고객 (가격표)</title>


  <!-- Bootstrap core CSS -->
  <link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom Common CSS -->
  <link href="${pageContext.request.contextPath}/assets/css/common.css" rel="stylesheet">

  <!-- Jquery Modal CSS -->
  <link href="${pageContext.request.contextPath}/assets/bootstarp/jquery/jquery.modal.css" rel="stylesheet">
  
  <!-- Bootstrap core JavaScript -->
  <script src="${pageContext.request.contextPath}/assets/bootstarp/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/bootstarp/js/common.js"></script>

</head> 

<body class="bg-light">

 <!-- head -->
	<c:import url="/WEB-INF/views/include/store-header.jsp"></c:import>  
<!-- /head -->
  
    <!-- 컨텐츠 -->
    <div class="container">
      
      <!-- 컨텐츠 제목 : 알림사항 -->
      <div class="row mb-3">
        <div class="col-md-12">
          <h2>알림사항</h2>
        </div>
      </div>
      <!-- /. 컨텐츠 제목 : 알림사항 -->

      <!-- 컨텐츠 내용 : 알림사항 -->
      <div class="row mb-5">
        <div class="col-md-12">

          <!-- 알림사항 -->
          <div class="row mb-3">
            <div class="col-md-12">
              <textarea class="form-control" rows="4">${sMap.boardList[0].content }</textarea>
            </div>
          </div>

        </div>
      </div>
      <!-- /. 컨텐츠 내용 : 알림사항 -->

      <!-- 컨텐츠 제목 : 가격표 -->
      <div class="row mb-3">
        <div class="col-md-12">
        </div>
      </div>
      <!-- /. 컨텐츠 제목 : 가격표 -->

      <!-- 컨텐츠 내용 : 가격표 -->
      <div class="row mb-5">
        <div class="col-md-12">
          <!-- 가격표 이미지뷰 -->
          <div class="row mb-3 px-3">
            <div class="col-md-11 priceImgWrap">
            	<c:if test="${sMap.boardList ne null }">
              		<img src="${pageContext.request.contextPath}/dogshop/${sMap.boardList[0].img}">
              	</c:if>
            </div>
          </div>
        </div>
      </div>
      <!-- /. 컨텐츠 내용 : 가격표 -->

	<c:if test="${sMap.shopVo.shopNo eq session.shopNo }">
	      <!-- 컨텐츠 제목 (관리자) -->
	      <div class="row mb-3 mt-4">
	        <div class="col-md-12">
	          <h2>등록</h2><hr>
	        </div>
	      </div>
	      <!-- /. 컨텐츠 제목 (관리자) -->
	
	      <!-- 컨텐츠 내용 (관리자) -->
	      <form action="${pageContext.request.contextPath}/store/${session.shopDomain}/boardAdd" method="post"  enctype="multipart/form-data">
		      <div class="row">
		        <div class="col-md-12">
		          <!-- 알림사항 입력 -->
		          <div class="row mb-3">
		            <div class="col-md-1">
		              <h6><b>알림사항</b></h6>
		            </div>
		            <div class="col-md-11">
		              <textarea class="form-control border" rows="5" name="content"></textarea>
		            </div>
		          </div>
		          <!-- 이미지 입력 -->
		          <div class="row">
		            <div class="col-md-1 pt-2">
		              <h6><b>가&nbsp;&nbsp;격&nbsp;&nbsp;표</b></h6>
		            </div>
		            <div class="col-md-7 form-group pt-2 mb-0">
		              <input type="file" class="form-control-file" id="exampleFormControlFile1" name="imgFile">
		            </div>
	            	<div class="col-md-2"><input type="hidden" value="${param.menuNo }" name="menuNo"></div>
		            <div class="col-md-2"><button class="btn btn-primary btn-sm btn-block" type="submit" role="button">등 록</button></div>
		          </div>
		        </div>
		      </div>
	      </form>
		  <!-- /. 컨텐츠 내용 (관리자) -->
	
	      <!-- 컨텐츠 마무리 -->
	      <div class="row mb-5">
	        <div class="col-md-12">
	          <hr>
	        </div>
	      </div>
	      <!-- /. 컨텐츠 마무리 -->
	</c:if>
    <!-- /. 컨텐츠 -->
  </main>

<!-- footer -->
	<c:import url="/WEB-INF/views/include/store-footer.jsp"></c:import>  
<!-- /footer -->
</body>

</html>
