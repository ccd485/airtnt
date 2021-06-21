<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AirTnT</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href='<c:url value='/resources/layout/styles/layout.css'/>' rel="stylesheet" type="text/css" media="all">
</head>
<body>
<div class="bgded overlay padtop" style="background-image:url('<c:url value='/resources/img/main3.jpg'/>');">
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <header id="header" class="hoc clear">
    <div id="logo" class="fl_left"> 
      <!-- ################################################################################################ -->
      <h1><a href="index">AirTnT</a></h1>
      <!-- ################################################################################################ -->
    </div>
    <nav id="mainav" class="fl_right"> 
      <!-- ################################################################################################ -->
    	<a class="btn" href="<c:url value='host/room_type'/>">시작하기</a>
      <!-- ################################################################################################ -->
    </nav>
  </header>
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <div id="pageintro" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <article>
      <h3 class="heading">공간을 나누고 <br>새로운 세상을 얻다</h3>
      <p>에어티앤티의 호스트가 되면 남는 공간을 활용해 부수입을 올리고 진짜 하고 싶은 일에 매진할 수 있습니다.</p>
      <footer>
        <ul class="nospace inline pushright">
        	<li><a class="btn" href="<c:url value='host/room_type'/>">시작하기</a></li>
        </ul>
      </footer>
    </article>
    <!-- ################################################################################################ -->
  </div>
  <!-- ################################################################################################ -->
</div>
<!-- End Top Background Image Wrapper -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->

<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <section id="services">
      <div class="sectiontitle">
        <p class="nospace font-xs"> 에어티앤티에서 호스팅 하기</p>
        <h6 class="heading">기초적인 호스팅 방법을 확인해 보세요</h6>
      </div>
      <ul class="nospace group grid-3">
        <li class="one_third">
          <article><a href="<c:url value='host/hosting_context_get_started'/>"><i class="fas fa-spray-can"></i></a>
            <h6 class="heading">호스팅의 기초</h6>
            <p>숙소 등록부터 게스트 맞이를 위한 숙소 준비 방법까지, 호스팅 시작 방법을 확인해 보세요.</p>
            <footer><a href="<c:url value='host/hosting_context_get_started'/>">더보기 &raquo;</a></footer>
          </article>
        </li>
        <li class="one_third">
          <article><a href="<c:url value='host/hosting_context_basic'/>"><i class="fas fa-user-secret"></i></a>
            <h6 class="heading">에어비앤비 호스팅의 기본</h6>
            <p>남는 공간이 있다면 누구나 에어비앤비 호스트가 될 수 있습니다. 호스팅 시작 방법을 알아보세요.</p>
            <footer><a href="<c:url value='host/hosting_context_basic'/>">더보기 &raquo;</a></footer>
          </article>
        </li>
        <li class="one_third">
          <article><a href="<c:url value='host/hosting_context_confidence'/>"><i class="fas fa-couch"></i></a>
            <h6 class="heading">자신 있게 호스팅을 시작하는 방법</h6>
            <p>에어비앤비 호스트 커뮤니티를 통해 호스팅 관련 도움과 베테랑 호스트의 조언을 얻고 유용한 도구에 대해 배워보세요.</p>
            <footer><a href="<c:url value='host/hosting_context_confidence'/>">더보기 &raquo;</a></footer>
          </article>
        </li>
      </ul>
    </section>
    <!-- ################################################################################################ -->
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>
<div class="wrapper row4">
	<%@include file="../../bottom.jsp" %>
</div>
<div class="wrapper row5">
  <div id="copyright" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <p class="fl_left">Copyright &copy; 2018 - All Rights Reserved - <a href="#">Domain Name</a></p>
    <p class="fl_right">Template by <a target="_blank" href="https://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>