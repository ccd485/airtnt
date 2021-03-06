<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

<!--
Template Name: Nekmit
Author: <a href="https://www.os-templates.com/">OS Templates</a>
Author URI: https://www.os-templates.com/
Copyright: OS-Templates.com
Licence: Free to use under our free template licence terms
Licence URI: https://www.os-templates.com/template-terms
-->
<html lang="">
<c:if test="${empty property}">
	<script type="text/javascript">
		alert("요청이 만료되었습니다.");
		location.href = "/";
	</script>
</c:if>
<!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->
<head>
<title>숙소/상세보기(숙소명:${property.name})</title>
<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="/resources/layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<script type="text/javascript">
function setTotalPrice(){
	var checkInDateStr = document.getElementById("check_in_date").value;
	var checkOutDateStr = document.getElementById("check_out_date").value;
	var guestCount = document.getElementById("guest_count").value;
	//console.log(checkInDateStr);
	//console.log(checkOutDateStr);
	if(checkInDateStr == "" || checkOutDateStr == ""){
		return 0;
	}
	var checkInDate = new Date(checkInDateStr);
	var checkOutDate = new Date(checkOutDateStr);
	//console.log(checkInDate);
	//console.log(checkOutDate);
	
	var diff = checkOutDate - checkInDate;
	//console.log(diff);
	var dayCount = diff / (24*60*60*1000);
	//console.log(dayCount);
	var totalPrice = guestCount * dayCount * ${property.price};
	const totalPriceStr = new Intl.NumberFormat('ko-KR', {style: 'currency',currency: 'KRW', minimumFractionDigits: 2}).format(totalPrice);
	
	document.getElementById("total_price").value = totalPrice;
	document.getElementById("price_disp").innerHTML = totalPriceStr;
	
	return totalPrice;
}
</script>
</head>
<body id="top">

<jsp:include page="/WEB-INF/views/top.jsp"/>

<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- Top Background Image Wrapper -->
<!-- <div class="bgded overlay padtop" style="background-image:url('../images/demo/backgrounds/01.png');"> 
  ################################################################################################
  ################################################################################################
  ################################################################################################
  <header id="header" class="hoc clear">
    <div id="logo" class="fl_left"> 
      ################################################################################################
      <h1><a href="/">Nekmit</a></h1>
      ################################################################################################
    </div>
    <nav id="mainav" class="fl_right"> 
      ################################################################################################
      <ul class="clear">
        <li><a href="../index.html">Home</a></li>
        <li class="active"><a class="drop" href="#">Pages</a>
          <ul>
            <li><a href="gallery.html">Gallery</a></li>
            <li class="active"><a href="full-width.html">Full Width</a></li>
            <li><a href="sidebar-left.html">Sidebar Left</a></li>
            <li><a href="sidebar-right.html">Sidebar Right</a></li>
            <li><a href="basic-grid.html">Basic Grid</a></li>
            <li><a href="font-icons.html">Font Icons</a></li>
          </ul>
        </li>
        <li><a class="drop" href="#">Dropdown</a>
          <ul>
            <li><a href="#">Level 2</a></li>
            <li><a class="drop" href="#">Level 2 + Drop</a>
              <ul>
                <li><a href="#">Level 3</a></li>
                <li><a href="#">Level 3</a></li>
                <li><a href="#">Level 3</a></li>
              </ul>
            </li>
            <li><a href="#">Level 2</a></li>
          </ul>
        </li>
        <li><a href="#">Link Text</a></li>
        <li><a href="#">Link Text</a></li>
        <li><a href="#">Link Text</a></li>
      </ul>
      ################################################################################################
    </nav>
  </header>
  ################################################################################################
  ################################################################################################
  ################################################################################################
  <div id="breadcrumb" class="hoc clear"> 
    ################################################################################################
    <ul>
      <li><a href="#">Home</a></li>
      <li><a href="#">Lorem</a></li>
      <li><a href="#">Ipsum</a></li>
      <li><a href="#">Dolor</a></li>
    </ul>
    ################################################################################################
  </div>
  ################################################################################################
</div> -->
<!-- End Top Background Image Wrapper -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- <div class="wrapper row1">
  <section id="ctdetails" class="hoc clear"> 
    ################################################################################################
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
    ################################################################################################
  </section>
</div> -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
       <!-- 숙소 상세정보 나열 구역 -->
       <div class="content" style="font-size: 20px">
         <div>
         <!-- 
	       상세정보에서 넘어오는 예약정보
	       host id, guest id, day count, guest count, total price,
	       checkin date, checkout date
	      -->
         <form action="/property/booking-pay" method="post">
           <input type="hidden" name="propertyId" value="${property.id}">
           <input type="hidden" name="hostId" value="${booking.hostId}">
           <input type="hidden" name="guestId" value="${booking.guestId}">
           <input type="hidden" name="dayCount" value="${booking.dayCount}">
           <input type="hidden" name="totalPrice" value="${booking.totalPrice}">
           <table border="1">
             <tr style="font-size: 30px">
               <td>결제정보<td>
             </tr>
             <tr style="font-size: 20px">
               <td>
               <div class="one_third first">
                 <img
                   <c:if test='${not empty property.images}'>
                     src="${property.images.get(0).path}"
                   </c:if>
                 alt="" style="width: 100% /9">
               </div>
               <div class="one_third">
                 <ul>
                   <li>숙소명 : ${property.name}</li>
                   <li>주소 : ${property.address}</li>
                   <li>숙소 유형 : ${property.propertyType.name}/${property.subPropertyType.name}</li>
                   <li>방 유형 : ${property.roomType.name}</li>
                 </ul>
               </div>
               <div class="one_third">
                 <ul>
                   <li>체크인 : <input type="date" name="checkInDate" value="${booking.checkInDate}" readonly></li>
                   <li>체크아웃 : <input type="date" name="checkOutDate" value="${booking.checkOutDate}" readonly></li>
                   <li>숙박기간 : ${booking.dayCount}박</li>
                   <li>인원 : <input type="number" name="guestCount" value="${booking.guestCount}" readonly style="width: 100px"></li>
                 </ul>
                 
               </div>
               </td>
             </tr>
             <tr style="font-size: 40px">
               <td style="padding-left: 30px">
                 <label>결제금액</label>
                 <p>
                   ₩${property.price} × ${booking.dayCount}박 × ${booking.guestCount}명<br>
                   총액 <font color="blue">₩${booking.totalPrice}</font>
                 </p>
               </td>
             </tr>
           </table>
           
           <div>
             <input class="btn btn-primary" type="submit" value="예약하기" style="width: 200px; height: 60px; font-size: 30px">
	         <a href="javascript:history.back()" class="btn btn-danger" role="button"
	         style="width: 200px; height: 60px; font-size: 30px">취소</a>
           </div>
           </form>
         </div>
         
      <!-- <div class="scrollable">
        <table>
          <thead>
            <tr>
              <th>Header 1</th>
              <th>Header 2</th>
              <th>Header 3</th>
              <th>Header 4</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><a href="#">Value 1</a></td>
              <td>Value 2</td>
              <td>Value 3</td>
              <td>Value 4</td>
            </tr>
            <tr>
              <td>Value 5</td>
              <td>Value 6</td>
              <td>Value 7</td>
              <td><a href="#">Value 8</a></td>
            </tr>
            <tr>
              <td>Value 9</td>
              <td>Value 10</td>
              <td>Value 11</td>
              <td>Value 12</td>
            </tr>
            <tr>
              <td>Value 13</td>
              <td><a href="#">Value 14</a></td>
              <td>Value 15</td>
              <td>Value 16</td>
            </tr>
          </tbody>
        </table>
      </div> -->
<!--       <div id="comments">
        <h2>Comments</h2>
        <ul>
          <li>
            <article>
              <header>
                <figure class="avatar"><img src="../images/demo/avatar.png" alt=""></figure>
                <address>
                By <a href="#">A Name</a>
                </address>
                <time datetime="2045-04-06T08:15+00:00">Friday, 6<sup>th</sup> April 2045 @08:15:00</time>
              </header>
              <div class="comcont">
                <p>This is an example of a comment made on a post. You can either edit the comment, delete the comment or reply to the comment. Use this as a place to respond to the post or to share what you are thinking.</p>
              </div>
            </article>
          </li>
          <li>
            <article>
              <header>
                <figure class="avatar"><img src="../images/demo/avatar.png" alt=""></figure>
                <address>
                By <a href="#">A Name</a>
                </address>
                <time datetime="2045-04-06T08:15+00:00">Friday, 6<sup>th</sup> April 2045 @08:15:00</time>
              </header>
              <div class="comcont">
                <p>This is an example of a comment made on a post. You can either edit the comment, delete the comment or reply to the comment. Use this as a place to respond to the post or to share what you are thinking.</p>
              </div>
            </article>
          </li>
          <li>
            <article>
              <header>
                <figure class="avatar"><img src="../images/demo/avatar.png" alt=""></figure>
                <address>
                By <a href="#">A Name</a>
                </address>
                <time datetime="2045-04-06T08:15+00:00">Friday, 6<sup>th</sup> April 2045 @08:15:00</time>
              </header>
              <div class="comcont">
                <p>This is an example of a comment made on a post. You can either edit the comment, delete the comment or reply to the comment. Use this as a place to respond to the post or to share what you are thinking.</p>
              </div>
            </article>
          </li>
        </ul>
        <h2>Write A Comment</h2>
        <form action="#" method="post">
          <div class="one_third first">
            <label for="name">Name <span>*</span></label>
            <input type="text" name="name" id="name" value="" size="22" required>
          </div>
          <div class="one_third">
            <label for="email">Mail <span>*</span></label>
            <input type="email" name="email" id="email" value="" size="22" required>
          </div>
          <div class="one_third">
            <label for="url">Website</label>
            <input type="url" name="url" id="url" value="" size="22">
          </div>
          <div class="block clear">
            <label for="comment">Your Comment</label>
            <textarea name="comment" id="comment" cols="25" rows="10"></textarea>
          </div>
          <div>
            <input type="submit" name="submit" value="Submit Form">
            &nbsp;
            <input type="reset" name="reset" value="Reset Form">
          </div>
        </form>
      </div> -->
      <!-- ################################################################################################ -->
    </div>
    <!-- ################################################################################################ -->
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>

<c:import url="/WEB-INF/views/bottom.jsp"/>

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
</div> -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<!-- <script src="/resources/layout/scripts/jquery.min.js"></script> -->
<script src="/resources/layout/scripts/jquery.backtotop.js"></script>
<!-- <script src="/resources/layout/scripts/jquery.mobilemenu.js"></script> -->
</body>
</html>