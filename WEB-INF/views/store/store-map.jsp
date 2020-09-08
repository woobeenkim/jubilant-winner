<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>

  <title>매장 고객 (공지사항)</title>

  <!-- Bootstrap core CSS -->
  <link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom Common CSS -->
  <link href="${pageContext.request.contextPath}/assets/css/common.css" rel="stylesheet">


	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=55baf69ca87b3c6183422c4ba140bef0&libraries=services,clusterer"></script>

</head> 

<body class="bg-light">

 <!-- head -->
	<c:import url="/WEB-INF/views/include/store-header.jsp"></c:import>  
<!-- /head -->
  
    <!-- 컨텐츠 -->
    <div class="container">
      
      <!-- 컨텐츠 제목 : 지도 -->
      <div class="row mb-4">
        <div class="col-md-12"><h2>찾아오시는 길</h2></div>
      </div>
      <!-- /. 컨텐츠 제목 : 지도 -->

      <!-- 컨텐츠 내용 : 지도 -->
      <div class="row mb-5">
        <div class="col-md-12">
          <!-- api 대체할 div영역 -->
          <div class="border bg-white" style="height: 400px">
			<div class="row">
				<div id="map" style="width:100%;height:400px;"></div>
			</div>
          </div>
          <!-- /. api 대체할 div영역 -->
        </div>
      </div>
      <!-- /. 컨텐츠 내용 : 지도 -->

      <!-- 컨텐츠 제목 : 설명 -->
      <div class="row mb-4">
        <div class="col-md-12"><h2>설 명</h2></div>
      </div>
      <!-- /. 컨텐츠 제목 : 설명 -->

      <!-- 컨텐츠 내용 : 지도 -->
      <div class="row mb-5">
        <div class="col-md-12">
          <!-- api 대체할 div영역 -->
          	<textarea class="form-control" rows="15">${sMap.boardList[0].content }</textarea>
          <!-- /. api 대체할 div영역 -->
        </div>
      </div>
     
      <!-- /. 컨텐츠 내용 : 지도 -->
	  <c:if test="${sMap.shopVo.shopNo eq session.shopNo }">
	      <!-- 컨텐츠 제목 (관리자) -->
	      <div class="row mb-3 mt-5">
	        <div class="col-md-12">
	          <h2>등록</h2><hr>
	        </div>
	      </div>
	      <!-- /. 컨텐츠 제목 (관리자) -->
		  
	      <!-- 컨텐츠 내용 (관리자) -->
	      <div class="row">
	        <div class="col-md-12">
	         
	          <!-- 설명 입력 -->
	           <Form action="${pageContext.request.contextPath}/store/${session.shopDomain}/boardAdd" method="post">
		          <div class="row mb-3">
		            <div class="col-md-1 pt-3">
		              <h6><b>설 명</b></h6>
		            </div>
		            <div class="col-md-11">
		              <textarea class="form-control border" rows="10" placeholder="내용을 입력해주세요." name="content"></textarea>
		            </div>
		          </div>
		
		          <div class="row">
		          	<div class="col-md-1 pt-2"></div>
		        	<div class="col-md-7 form-group pt-2 mb-0"></div>
		         	<div class="col-md-2"><input type="hidden" value="${param.menuNo }" name="menuNo"></div>
		            <div class="col-md-2"><button class="btn btn-primary btn-sm btn-block" type="submit" role="button">등 록</button></div>
		          </div>
	          </Form>
	        </div>
	      </div>
      </c:if>
      <!-- /. 컨텐츠 내용 (관리자) -->

      <!-- 컨텐츠 마무리 -->
      <div class="row mb-2">
        <div class="col-md-12">
          <hr>
        </div>
      </div>
      <!-- /. 컨텐츠 마무리 -->

    <!-- /. 컨텐츠 -->
  </main>

<!-- footer -->
	<c:import url="/WEB-INF/views/include/store-footer.jsp"></c:import>  
<!-- /footer -->

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=55baf69ca87b3c6183422c4ba140bef0"></script>
<script>
var address = "<c:out value = '${sMap.shopVo.shopAddress}'/>";
var mapContainer = document.getElementById('map');
var mapOption = {
    center: new daum.maps.LatLng(37.498875, 127.026226),
    level: 9
};  

var map = new daum.maps.Map(mapContainer, mapOption); 

var geocoder = new daum.maps.services.Geocoder();
var listData = [
	address
];

listData.forEach(function(addr, index) {
    geocoder.addressSearch(addr, function(result, status) {
        if (status === daum.maps.services.Status.OK) {
            var coords = new daum.maps.LatLng(result[0].y, result[0].x);

            var marker = new daum.maps.Marker({
                map: map,
                position: coords
            });
            var infowindow = new daum.maps.InfoWindow({
                content: '<div style="width:150px;text-align:center;padding:6px 0;">' + listData[index] + '</div>',
                disableAutoPan: true
            });
            kakao.maps.event.addListener(marker, 'click', function() {
            	infowindow.open(map, marker);
            	console.log(result[0].address.address_name);
            });
        } 
    });
});

</script>
</body>

</html>
   