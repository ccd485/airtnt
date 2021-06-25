<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/top.jsp"%>
	<style>
	 #test_btn{ border-top-left-radius: 5px; border-bottom-left-radius: 5px; border-top-right-radius: 5px; border-bottom-right-radius: 5px; margin-right:-4px; } 
	 #test_btn2{ border-top-left-radius: 20px; border-bottom-left-radius: 20px; border-top-right-radius: 20px; border-bottom-right-radius: 20px; margin-right:0px; } 
	 #test_btn3{ border-top-left-radius: 20px; border-bottom-left-radius: 20px; border-top-right-radius: 20px; border-bottom-right-radius: 20px; margin-right:0px; border: 1px solid #000000; background-color: rgba(0,0,0,0); color: #000000; padding: 5px;} 
	 #btn_group button{ border: 1px solid #a4dcf3; background-color: rgba(0,0,0,0); color: #a4dcf3; padding: 5px; }
	 #btn_group button:hover{ color:white; background-color: skyblue; } 
	 </style>
	<div class="hoc clear " style="margin-left: 0px;">
		<div class="one_half" style="margin-top: 100px;">
			<div class="container-sm">
				<div id="btn_group" class="fl_left"> 
					<a href="javascript:history.back()">
						<button id="test_btn" style="font-size:larger;">◀</button>
					</a>
			    </div>
			    <div id="btn_group" class="fl_right">
					<a href="#UpdateWish" data-toggle="modal">
						<button id="test_btn" style="font-size:small; border: 0px;">수정하기</button>
					</a>
			    </div>
			</div>
				<div class="container-sm fl_left" style="margin-top: 30px;">
					<div class="bold" style="font-size: 3vh; margin-bottom:2vh;">50${wish_name}</div>
				    <div  id="btn_group" class="btn-group" role="group" aria-label="Basic outlined example">
						<a href="#Date" data-toggle="modal">
							<button id="test_btn2" style="font-size:20px; padding-left:15px; padding-right:15px;" type="button" class="btn btn-outline-primary">날짜</button>
						</a>
						<a href="#Guest" data-toggle="modal">
							<button id="test_btn2" style="font-size:20px; padding-left:15px; padding-right:15px;" type="button" class="btn btn-outline-primary">인원</button>
						</a>
					</div>
			<!-- 숙소리스트 부분 -->
				<!-- 위시리스트에 숙소가 없다면  -->
				<c:if test="${empty properties}">
					<div style="margin-top: 50px; margin-bottom: 50px;">
					<h2>저장된 항목 없음</h2><br>
					<h5>맘에 드는 게 있으면 하트 아이콘을 눌러 저장하세요. 다른 사람과의 여행을 계획하고 있다면 초대하세요. 함께 원하는 항목을 저장하고 투표할 수 있습니다.</h5>
					</div>
					<a href="숙소리스트">
						<button id="test_btn3" style="font-size:40px; padding-left:15px; padding-right:15px;" type="button" class="btn btn-outline-primary">둘러보기</button>
					</a>
				</c:if>
				<!-- 위시리스트에 숙소가 있다면  -->
				<%-- <c:if test="${not empty properties}">
					<ul class="nospace clear" >
			            <c:forEach var="property" items="${properties}">
			            <li style="height: 150px;">
			              <div class="one_third first" >
			                <a href="<c:url value='/guest/property-detail?propertyId=${property.id}'/>"><img src="/resources/room_img/room_ex.jpg" alt="" ></a>
			              </div>
			              <div class="two_third">
			                <h2><a href="<c:url value='/guest/property-detail?propertyId=${property.id}'/>">${property.name}</a></h2>
			                <h4>${property.propertyTypeName}/${property.subPropertyTypeName} ${property.roomTypeName}</h4>
			                <h4>${property.address}</h4>
			              </div>
			            </li>
			            <hr>
			            </c:forEach>
			          </ul>
			    </c:if> --%>
			    </div>
	    </div>
	</div>
<!-- NewWishModal-->
<div id="UpdateWish" class="modal fade">
	<div class="modal-dialog modal-login">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">수정</h4>	
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			</div>
			<div class="modal-body">
				<form action="updateWish" method="post">
					<input type="hidden" name="wish_id" value="${wish_id}">
					<div class="form-group">
							<input type="text" class="form-control" name="wish_name" placeholder="이름" required="required">
					</div>
					<!-- <div class="form-group">
							<select class="form-control" aria-label="Default select example" required="required" name="is_public">
							  <option value="0">전체공개</option>
							  <option value="1">비공개</option>
							</select>
					</div>   -->      
					<div class="form-group">
						<button type="submit" class="btn form-control">저장</button>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<a href="deleteWish">위시리스트 삭제하기</a>
			</div>
		</div>
	</div>
</div>
</body>
</html>