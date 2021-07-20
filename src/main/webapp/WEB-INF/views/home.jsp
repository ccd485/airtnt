<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AirTnT</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<!--basic-->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
	<link href='<c:url value='/resources/layout/styles/layout.css'/>' rel="stylesheet" type="text/css" media="all">
	<!--loginModal-->
	<link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="/resources/css/modal.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="/resources/script/check.js"></script>
	
	<!-- 카카오 주소검색을 불러오는 커스텀 파일 -->
	<script src="/resources/script/address-control.js"></script>
	<!-- JAVASCRIPTS -->
	<!-- <script src="layout/scripts/jquery.min.js"></script>
	<script src="layout/scripts/jquery.backtotop.js"></script>
	<script src="layout/scripts/jquery.mobilemenu.js"></script> -->
</head>
<body>
	<c:set var="isLogin" value="false"/>
	<c:if test="${not empty member_id && not empty member_name}"><c:set var="isLogin" value="true"/></c:if>
	
<div class="bgded overlay padtop" style="background-image:url('<c:url value='/resources/img/main3.jpg'/>');">
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <header id="header" class="hoc clear" style="padding-right: 10vh;">
    <div id="logo" class="fl_left"> 
      <!-- ################################################################################################ -->
      <h1><a href="index">AirTnT</a></h1>
      <!-- ################################################################################################ -->
    </div>
    <div>
    <nav id="mainav" class="fl_right" > 
      <!-- ################################################################################################ -->
      <ul class="clear">
        <li class="active">
        <c:if test="${isLogin}">
        	<c:if test="${sessionScope.member_mode.trim() == '1'}">
       			<a href="<c:url value='/guide_home'/>">호스트 되기</a>
       			<c:set var='isHostMode' value='false' scope='session'/>
        	</c:if>
        	<c:if test="${sessionScope.member_mode.trim() == '2'}">
        		<a href="<c:url value='/host/host_mode'/>">호스트 모드로 전환</a>
        		<c:set var='isHostMode' value='true' scope='session'/>
        	</c:if>
        </c:if>

        <c:if test="${!isLogin}">
       		<a href="<c:url value='/guide_home'/>">호스트 되기</a>
        </c:if>
        </li>
        <c:if test="${!isLogin}">
        <li><a class="drop" href="#">로그인 하기</a>
          <ul>
            <li><a id="login-button" href="#LoginModal" class="trigger-btn" data-toggle="modal">로그인</a></li>
            <li><a id="signUp-button" href="#SignUpModal" class="trigger-btn" data-toggle="modal">회원가입</a></li>
            <li><a href="help">도움말</a></li>
          </ul>
          </c:if>
        <c:if test="${isLogin}">
        <li><a class="drop" href="#">MyPages</a>
          <ul>
            <li><a href="tour">여행</a></li>
            <li><a href="wishList">위시리스트</a></li>
            <li><a href="myPage">계정</a></li>
            <li><a href="help">도움말</a></li>
            <li><a href="logout">로그아웃</a></li>
          </ul>
        </li>
        </c:if>
      </ul>
      <!-- ################################################################################################ -->
    </nav>
    </div>
  </header>
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <div id="pageintro" class="hoc clear d-flex justify-content-center" style="padding-top: 5vh; padding-bottom: 50vh;"> 
    <!-- ################################################################################################ -->
        <nav class="navbar navbar-light">
		  <div class="container-fluid">
		    <form class="d-flex" action="/property/search" method="get" onsubmit="setLocalTagsOnSubmit()">
		      <input type="hidden" name="pageNum" value="1">
              <input id="search" name="addressKey" class="form-control me-2" type="search" 
              placeholder="위치" value="${param.addressKey}"
              aria-label="Search" style="height: 50px; width: 300px; font-size: 20px">
              
              <input type="hidden" id="temp-search" name="tempAddressKey" value="">
              <input type="hidden" id="latitude" name="latitude" value="${latitude}">
              <input type="hidden" id="longitude" name="longitude" value="${longitude}">
              
              <ul id="auto-complete-area" class="dropdown-menu list-group" style="width: 40rem; font-size: 2rem;">
                <!-- 주소 자동완성 목록 -->
              </ul>
		      <input  class="btn btn-outline-primary" type="submit" value="검색"
		      style="background-color:#01546b; border: 0px;">
		    </form>
		  </div>
		</nav>
    <!-- ################################################################################################ -->
  </div>
  <!-- ################################################################################################ -->
</div>
<!-- End Top Background Image Wrapper -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <section id="services">
      <div class="sectiontitle">
        <span class="bold" style="font-size: 3vh">어디에서나, 여행은 살아보는 거야!</span>
      </div>
      <ul class="nospace group grid-3">
        <li class="one_third">
          <article><a href="/property/search"><i class="fas fa-bicycle"></i>
            <p class="bold fs-2">서울</p>
            <img style="width:300px; height:150px; object-fit:cover;" src="/resources/files/home/seoul.jpg" class="img-thumbnail" alt="...">
            </a>
          </article>
        </li>
        <li class="one_third">
          <article><a href="/property/search"><i class="fas fa-bus"></i>
            <p class="bold fs-2">부산</p>
            <img style="width:300px; height:150px; object-fit:cover;" src="/resources/files/home/busan.jpg" class="img-thumbnail" alt="...">
          	</a>
          </article>
        </li>
        <li class="one_third">
          <article><a href="/property/search"><i class="fas fa-car"></i>
            <p class="bold fs-2">대구</p>
            <img style="width:300px; height:150px; object-fit:cover;" src="/resources/files/home/daegu.jpg" class="img-thumbnail" alt="...">
          	</a>
          </article>
        </li>
      </ul>
    </section>
    <!-- ################################################################################################ -->
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row1">
  <section id="ctdetails" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <ul class="nospace clear">
      <li class="one_quarter first">
        <div class="block clear"><a href="#"><i class="fas fa-phone"></i></a> <span><strong>Give us a call:</strong> +00 (123) 456 7890</span></div>
      </li>
      <li class="one_quarter">
        <div class="block clear"><a href="#"><i class="fas fa-envelope"></i></a> <span><strong>Send us a mail:</strong> support@domain.com</span></div>
      </li>
      <li class="one_quarter">
        <div class="block clear"><a href="#"><i class="fas fa-clock"></i></a> <span><strong> Mon. - Sat.:</strong> 08.00am - 18.00pm</span></div>
      </li>
      <li class="one_quarter">
        <div class="block clear"><a href="#"><i class="fas fa-map-marker-alt"></i></a> <span><strong>Come visit us:</strong> Directions to <a href="#">our location</a></span></div>
      </li>
    </ul>
    <!-- ################################################################################################ -->
  </section>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- <div class="bgded overlay" style="background-image:url('images/demo/backgrounds/01.png');">
  <section class="hoc container clear"> 
    ################################################################################################
    <div class="sectiontitle">
      <p class="nospace font-xs">Nisi velit nec turpis nullam vitae</p>
      <h6 class="heading">Quam nunc ut elit nunc molestie</h6>
    </div>
    <article id="points" class="group">
      <div class="two_third first">
        <h6 class="heading">Sapien tempor placerat</h6>
        <p>Luctus mauris lectus elementum nulla ac consectetuer sapien leo et arcu sed tempus tempor orci vestibulum volutpat eleifend arcu nunc vitae lacus sit amet sem consequat ullamcorper vivamus quis risus ut turpis sagittis venenatis.</p>
        <p>Volutpat et aliquam sed magna duis nibh dui porttitor eu rhoncus ut convallis eu eros in condimentum placerat.</p>
        <ul class="nospace group">
          <li><span>1</span> Nulla bibendum in erat</li>
          <li><span>2</span> Enim interdum a aliquam</li>
          <li><span>3</span> Sed commodo bibendum justo</li>
          <li><span>4</span> Sed pretium elit sed</li>
          <li><span>5</span> Nisi aliquam dolor urna</li>
          <li><span>6</span> Interdum ut dignissim eget</li>
          <li><span>7</span> Sagittis eget eros integer</li>
          <li><span>8</span> Velit mi facilisis eget</li>
        </ul>
      </div>
      <div class="one_third last"><a class="imgover" href="#"><img src="images/demo/348x394.png" alt=""></a></div>
    </article>
    ################################################################################################
  </section>
</div> -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- <div class="wrapper row2">
  <section class="hoc container clear"> 
    ################################################################################################
    <div class="sectiontitle">
      <p class="nospace font-xs">Odio duis ut est quis nisl consequat</p>
      <h6 class="heading">Gravida donec non erat eget</h6>
    </div>
    <ul id="latest" class="nospace group sd-third">
      <li class="one_third first">
        <article>
          <figure><a class="imgover" href="#"><img src="images/demo/348x261.png" alt=""></a>
            <figcaption>
              <ul class="nospace meta clear">
                <li><i class="fas fa-user"></i> <a href="#">Admin</a></li>
                <li>
                  <time datetime="2045-04-06T08:15+00:00">06 Apr 2045</time>
                </li>
              </ul>
              <h6 class="heading"><a href="#">Elit pellentesque dapibus</a></h6>
            </figcaption>
          </figure>
          <p>Justo massa adipiscing a convallis ultricies luctus et dolor aliquam nulla aenean facilisis ullamcorper diam nunc pede nulla iaculis quis lacinia ac adipiscing.</p>
        </article>
      </li>
      <li class="one_third">
        <article>
          <figure><a class="imgover" href="#"><img src="images/demo/348x261.png" alt=""></a>
            <figcaption>
              <ul class="nospace meta clear">
                <li><i class="fas fa-user"></i> <a href="#">Admin</a></li>
                <li>
                  <time datetime="2045-04-05T08:15+00:00">05 Apr 2045</time>
                </li>
              </ul>
              <h6 class="heading"><a href="#">Quis ligula morbi quam</a></h6>
            </figcaption>
          </figure>
          <p>Semper mattis nulla cursus lorem ut gravida tempor massa massa porta libero at scelerisque et arcu nulla facilisi aenean fringilla imperdiet felis mauris.</p>
        </article>
      </li>
      <li class="one_third">
        <article>
          <figure><a class="imgover" href="#"><img src="images/demo/348x261.png" alt=""></a>
            <figcaption>
              <ul class="nospace meta clear">
                <li><i class="fas fa-user"></i> <a href="#">Admin</a></li>
                <li>
                  <time datetime="2045-04-04T08:15+00:00">04 Apr 2045</time>
                </li>
              </ul>
              <h6 class="heading"><a href="#">Hendrerit ligula eu diam</a></h6>
            </figcaption>
          </figure>
          <p>Ac lectus sed ultricies augue congue nibh donec convallis elementum leo nullam dignissim varius ante fusce pharetra sodales arcu sed rutrum ipsum a ipsum.</p>
        </article>
      </li>
    </ul>
    ################################################################################################
  </section>
</div> -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- <div class="wrapper row4">
  <footer id="footer" class="hoc clear"> 
    ################################################################################################
    <div class="one_quarter first">
      <h6 class="heading">Praesent id aliquam</h6>
      <p>Non tellus nec sapien lobortis lobortis mauris egestas massa ac cursus pellentesque leo risus convallis nulla et fringilla sapien magna sit amet magna aliquam tempus praesent sit amet neque sed lobortis nulla facilisi [<a href="#">&hellip;</a>]</p>
      <ul class="faico clear">
        <li><a class="faicon-facebook" href="#"><i class="fab fa-facebook"></i></a></li>
        <li><a class="faicon-google-plus" href="#"><i class="fab fa-google-plus-g"></i></a></li>
        <li><a class="faicon-linkedin" href="#"><i class="fab fa-linkedin"></i></a></li>
        <li><a class="faicon-twitter" href="#"><i class="fab fa-twitter"></i></a></li>
        <li><a class="faicon-vk" href="#"><i class="fab fa-vk"></i></a></li>
      </ul>
    </div>
    <div class="one_quarter">
      <h6 class="heading">Rutrum amet sodales</h6>
      <ul class="nospace linklist">
        <li><a href="#">Nulla tincidunt magna</a></li>
        <li><a href="#">Vel iaculis mollis mi</a></li>
        <li><a href="#">Lacus tincidunt diam ac</a></li>
        <li><a href="#">Varius purus justo pretium</a></li>
        <li><a href="#">Nunc proin tortor elit</a></li>
      </ul>
    </div>
    <div class="one_quarter">
      <h6 class="heading">At feugiat in diam</h6>
      <p class="nospace btmspace-15">In vestibulum dolor et augue fusce neque enim scelerisque at fermentum.</p>
      <form action="#" method="post">
        <fieldset>
          <legend>Newsletter:</legend>
          <input class="btmspace-15" type="text" value="" placeholder="Name">
          <input class="btmspace-15" type="text" value="" placeholder="Email">
          <button class="btn" type="submit" value="submit">Submit</button>
        </fieldset>
      </form>
    </div>
    <div class="one_quarter last">
      <h6 class="heading">Sed imperdiet pharetra</h6>
      <ul class="nospace linklist">
        <li>
          <article>
            <h6 class="nospace font-x1"><a href="#">Massa nam nulla augue</a></h6>
            <time class="font-xs block btmspace-10" datetime="2045-04-06">Friday, 6<sup>th</sup> April 2045</time>
            <p class="nospace">Faucibus nec lacinia quis ornare a eros pellentesque in orci vitae</p>
          </article>
        </li>
        <li>
          <article>
            <h6 class="nospace font-x1"><a href="#">Velit vehicula auctor</a></h6>
            <time class="font-xs block btmspace-10" datetime="2045-04-05">Thursday, 5<sup>th</sup> April 2045</time>
            <p class="nospace">Pellentesque pulvinar vestibulum bibendum blandit lectus pretium</p>
          </article>
        </li>
      </ul>
    </div>
    ################################################################################################
  </footer>
</div> -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- <div class="wrapper row5">
  <div id="copyright" class="hoc clear"> 
    ################################################################################################
    <p class="fl_left">Copyright &copy; 2018 - All Rights Reserved - <a href="#">Domain Name</a></p>
    <p class="fl_right">Template by <a target="_blank" href="https://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>
    ################################################################################################
  </div>
</div>
################################################################################################
################################################################################################
################################################################################################
<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a> -->

<!-- LoginModal-->
<div id="LoginModal" class="modal fade">
	<div class="modal-dialog modal-login">
		<div class="modal-content">
			<div class="modal-header">
				<div class="avatar">
				</div>				
				<h4 class="modal-title">AirTnT에 오신걸 환영합니다</h4>	
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			</div>
			<div class="modal-body">
				<form action="login" method="post">
					<div class="form-group">
						<c:if test="${empty value}">		
							<input type="text" class="form-control" name="id" placeholder="ID" required="required" value="${findId}">
						</c:if>
						<c:if test="${not empty value}">
							<input type="text" class="form-control" name="id" placeholder="ID" required="required" value="${value}">		
						</c:if>
					</div>
					<div class="form-group">
					<c:if test="${empty value}">	
						<input type="password" class="form-control" name="passwd" placeholder="Password" required="required" value="${findPw}">	
					</c:if>
					<c:if test="${not empty value}">
						<input type="password" class="form-control" name="passwd" placeholder="Password" required="required">
					</c:if>
					</div>        
					<div class="form-group">
						<button type="submit" class="btn btn-primary btn-lg btn-block login-btn">로그인</button>
					</div>
					<div class="form-group">
						<c:if test="${empty value}">			
							<input type="checkbox" name="saveId" aria-describedby="saveIdHelp">
						</c:if>	
						<c:if test="${not empty value}">
							<input type="checkbox" name="saveId" checked aria-describedby="saveIdHelp">
						</c:if>
						<div id="saveIdHelp" class="form-text">아이디기억하기</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<a href="#FindPassModal" data-toggle="modal" data-dismiss="modal" aria-hidden="true">비밀번호를 잊으셨나요?</a>
			</div>
		</div>
	</div>
</div>
<!-- SignUpModal-->
<div id="SignUpModal" class="modal fade">
	<div class="modal-dialog modal-lg modal-login ">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">회 원 가 입</h4>	
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			</div>
			<div class="modal-body">
				<form name="form" action="signUp" method="post" onsubmit="return checkAll()">
					<div class="form-group mb-3 col-sm-lg">
						    <label for="InputId" class="form-label">ID</label>
						    <input type="text" name="id" class="form-control" id="userId" aria-describedby="IdHelp">
						    <div id="IdHelp" class="form-text">아이디는 영문 대소문자와 숫자 4~20자리로 입력해야합니다</div>
					</div>
					<div class="form-group mb-3 col-sm-lg">
						    <label for="InputPass" class="form-label">비밀번호</label>
						    <input type="password" name="passwd" class="form-control" id="password1" aria-describedby="PassHelp">
						    <div id="PassHelp" class="form-text">비밀번호는 영문 대소문자와 숫자 4~20자리로 입력해야합니다</div>
					</div>
					<div class="form-group mb-3 col-sm-lg">
						    <label for="InputPass" class="form-label">비밀번호확인</label>
						    <input type="password" class="form-control" id="password2">
					</div>
					<div class="form-group mb-3 col-sm-lg">
						    <label for="InputName" class="form-label">이름</label>
						    <input type="text" name="name" class="form-control" id="name">
					</div>
					<div class="form-group mb-3 col-sm-lg">
						    <label for="InputEmail" class="form-label">이메일</label>
						    <input type="text" name="email" class="form-control" id="email" aria-describedby="EmailHelp">
						    <div id="EmailHelp" class="form-text">xxxxx@xxxxx.xxx</div>
					</div>
					<div class="form-group mb-3 col-lg">
						   <label for="InputBirth" class="form-label">생년월일</label>
						   <input type="text" name="birth" class="form-control" id="birth" aria-describedby="birthHelp" >
						   <div id="birthHelp" class="form-text">2000/00/00</div>
					</div>
				  	<div class="form-group mb-3 col-lg">
						    <label for="InputTel" class="form-label">핸드폰번호</label>
						    <input type="text" name="tel" class="form-control" id="tel" aria-describedby="TelHelp">
						    <div id="TelHelp" class="form-text">010-xxxx-xxxx</div>
				  	</div>
				  	<div class="form-group mb-3 col-lg">
						<label for="inputState" class="form-label">성별</label>
						    <select id="inputState" class="form-select form-select-lg" name="gender">
						       	<option selected value="1">남성</option>
						      	<option value="2">여성</option>
						    </select>
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-primary btn-lg btn-block login-btn" style="font-size: 15px">동의 및 가입하기</button>
					</div>
				</form>
			</div>
			<div class="modal-footer">
						<p>위의 동의 및 계속하기 버튼을 선택하면, 에어티앤티의 서비스 약관, 결제 서비스 약관, 개인정보 처리방침, 차별 금지 정책에 동의하는 것입니다.</p>
			</div>
		</div>
	</div>
</div>
<!-- FindPassModal-->
<div id="FindPassModal" class="modal fade">
	<div class="modal-dialog modal-lg modal-login ">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">비밀번호 찾기</h4>	
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			</div>
			<div class="modal-body">
				<form name="findPass" action="findPass" method="post" onsubmit="return FindPassCheck()">
					<div class="form-group mb-3 col-sm-lg">
						    <label for="InputId" class="form-label">ID</label>
						    <input type="text" name="id" class="form-control" id="Fid">
					</div>
					<div class="form-group mb-3 col-sm-lg">
						    <label for="InputPass" class="form-label">이름</label>
						    <input type="text" name="name" class="form-control" id="Fname">
					</div>
					<div class="form-group mb-3 col-sm-lg">
						    <label for="InputEmail" class="form-label">이메일</label>
						    <input type="text" name="email" class="form-control" id="Femail" aria-describedby="EmailHelp">
						    <div id="EmailHelp" class="form-text">가입 시 입력한 이메일주소</div>
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-primary btn-lg btn-block login-btn" style="font-size: 15px">전송</button>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<a href="#FindIdModal" data-toggle="modal" data-dismiss="modal" aria-hidden="true">설마...아이디도 잊으셨나요?</a>
			</div>
		</div>
	</div>
</div>  
<!-- FindIdModal-->
<div id="FindIdModal" class="modal fade">
	<div class="modal-dialog modal-lg modal-login ">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">아이디 찾기</h4>	
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			</div>
			<div class="modal-body">
				<form name="findId" action="findId" method="post" onsubmit="return FindIdCheck()">
					<div class="form-group mb-3 col-sm-lg">
						    <label for="InputPass" class="form-label">이름</label>
						    <input type="text" name="name" class="form-control" id="FIname">
					</div>
					<div class="form-group mb-3 col-sm-lg">
						    <label for="InputEmail" class="form-label">이메일</label>
						    <input type="text" name="email" class="form-control" id="FIemail" aria-describedby="EmailHelp">
						    <div id="EmailHelp" class="form-text">가입 시 입력한 이메일주소</div>
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-primary btn-lg btn-block login-btn" style="font-size: 15px">전송</button>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<a href="#SignUpModal" data-toggle="modal" data-dismiss="modal" aria-hidden="true">그냥 회원가입하기</a>
			</div>
		</div>
	</div>
</div>  
</body>
</html>