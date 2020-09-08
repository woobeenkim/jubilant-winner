<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html>

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>매장 애견용품</title>

  <!-- Bootstrap core CSS -->
  <link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom Common CSS -->
  <link href="${pageContext.request.contextPath}/assets/css/common.css" rel="stylesheet">

  <!-- Bootstrap core JavaScript -->
  <script src="${pageContext.request.contextPath}/assets/bootstrap/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>

</head> 

<body class="bg-light">

  <!-- head -->
	<c:import url="/WEB-INF/views/include/store-header.jsp"></c:import>  
<!-- /head -->
  
    <!-- 컨텐츠 -->
    <div class="container">
      <header class="py-1 mt-4">
        <h4 class="display-5">Pet Supplies</h4>
        	<c:if test="${sMap.shopVo.shopNo == session.shopNo }">
              	<button type="button" class="btn btn-link" data-toggle="modal" data-target=".productAdd">사진 추가</button>
        	</c:if>
        <hr class="mb-1">
      </header>

      <div class="mt-5">
         <div class="row petSupplies-img2">
        	<c:forEach var ="i" begin="1" end="${fn:length(sMap.boardList)}">
		          <!-- 사진 들어갈 곳 -->
		          <div class="col-md-4 pr-0">
		            <figure class="snip1273 pointer-cursor">
		             <img src="${pageContext.request.contextPath}/dogshop/${sMap.boardList[fn:length(sMap.boardList)-i].img}">
		              <figcaption>
		                <!-- 상품 삭제 버튼 -->
		                <div class="pt-0">
		                  <button type="button" class="close main-modal-icon rounded-circle" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		                </div>
		                <!-- //상품 삭제 버튼 -->
		                <h5 class="mt-5">${sMap.shopVo.shopTitle }</h5>
		                <p class="mt-5 pt-4">${sMap.shopVo.shopTitle }</p>                    
		              </figcaption>
		           </figure>
		          </div>
	       </c:forEach>
	     </div>
      </div>

    </div>
    <!-- 상품이미지 추가 모달 -->
      <form action="${pageContext.request.contextPath}/store/${session.shopDomain}/boardAdd" method="post"  enctype="multipart/form-data">
	    <div class="modal fade productAdd" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
	      <div class="modal-dialog modal-sm">
	        <div class="modal-content">
	          <div class="modal-header">
	            <h4 class="modal-title" id="myModalLabel">상품추가</h4>
	            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	          </div>
	          <div class="modal-body text-left">
	            <!-- <img src="#" class="product-img" alt="상품이미지"> -->
	            <input type="file" name="imgFile">
	          </div>
	          <div class="modal-footer">
	            <button type="submit" class="btn btn-primary btn-sm">추가</button>
	            <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">취소</button>
	          </div>
	          <input type="hidden" value="${param.menuNo }" name="menuNo">
	        </div>
	      </div>
	    </div>
    </form>
    <!-- ================================여기까지가 내용이 달라지는 부분입니다.================================ -->
    <!-- /. 컨텐츠 -->

  </main>
  <!-- /. main -->



<!-- footer -->
	<c:import url="/WEB-INF/views/include/store-footer.jsp"></c:import>  
<!-- /footer -->


</body>

</html>