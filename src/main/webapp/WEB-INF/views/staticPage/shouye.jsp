<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>美丽频道</title>
<link href="${ctx}/static/style/index.css" rel="stylesheet"
	type="text/css" />
<link href="${ctx}/static/style/nav.css" rel="stylesheet"
	type="text/css" />
<!--[if IE 6]>
<script src="js/DD_belatedPNG_0.0.8a.js"></script>
<script>
DD_belatedPNG.fix('#logo,.navBar,#top1,#top2,#top3,#top4,.nav_icon1,.nav_icon2,.nav_icon3,.nav_icon4,.shade,input,.pre,.next');
</script>
<![endif]-->
</head>

<body>
	<!--头部-->
	<div class="headerBar">
		<div class="header comWidth">
			<div class="fl">
				<a href="${ctx}/test"> <img
					src="${ctx}/static/images/header/logo.png" alt="logo" id="logo" />
				</a>
				<div class="rightArea fr">
					<div class="topBar">
						<ul>
							<li id="top1"><a href="${ctx}/register/preRegisterByPhone">注册</a></li>
							<li id="top2"><a href="${ctx}/login/preLogin">登录</a></li>
							<li id="top3"><a href="#">我的频道</a></li>
							<li id="top4"><a
								href="${ctx}/applySellerIn/preApplySellerIn">申请商家入驻</a></li>
						</ul>
					</div>	
					<div class="navBar">
						<ul>
							<li class="nav_icon1"><a href="${ctx}/mainPage/shouye">首页</a></li>
							<li class="nav_icon2"><a href="${ctx}/mainPage/meirong">美容</a></li>
							<li class="nav_icon3"><a href="#">美发</a></li>
							<li class="nav_icon4"><a href="#">美甲</a></li>
						</ul>
					</div>
					<div id="search">
						<input type="text" id="search_ipt" /> <input type="button"
							id="search_btn" />
					</div>

				</div>
			</div>
		</div>
		<div id="headersd">
			<img src="${ctx}/static/images/header/headersd1.jpg" alt="阴影" />
		</div>
		<!--头部end-->
	</div>
	<!--主体-->
	<div id="main">
		<div style="float: left">
			<img src="${ctx}/static/images/shadow/shadow1.jpg" alt="阴影" />
		</div>
		<div style="float: right">
			<img src="${ctx}/static/images/shadow/shadow2.jpg" alt="阴影" />
		</div>

		<div id="container">
			<div class="bannerbox">
				<div id="focus">
					<ul>
						<li id="bnr1"><a href="#" target="_blank"> <img
								src="${ctx}/static/images/banner/banner1.png" alt="" /></a></li>
						<li id="bnr2"><a href="#" target="_blank"> <img
								src="${ctx}/static/images/banner/banner2.png" alt="" /></a></li>
						<li id="bnr3"><a href="#" target="_blank"> <img
								src="${ctx}/static/images/banner/banner3.png" alt="" /></a></li>
						<li id="bnr4"><a href="#" target="_blank"> <img
								src="${ctx}/static/images/banner/banner4.png" alt="" /></a></li>
					</ul>
					<input id="btn_rong" type="button" alt="美容" /> <input id="btn_fa"
						type="button" alt="美发" /> <input id="btn_jia" type="button"
						alt="美甲" />
				</div>
			</div>
			<img id="sidebar" src="${ctx}/static/images/index/sidebar.png"
				alt="公告" />


			<!--美容-->
			<img id="rong_t" src="${ctx}/static/images/index/rong_t.png"
				alt="美容头部" />
			<div id="meirong">
				<div style="float: left">
					<img src="${ctx}/static/images/shadow/boxsd_l.png" alt="阴影" />
				</div>
				<div class="shop shop1">
					<a href="#" target="_blank">
						<img src="${ctx}/static/images/index/shop1.png" alt="商店" />
					</a>
					<img class="shade" src="${ctx}/static/images/index/shade.png" alt="遮罩" />
				</div>
				<div class="shop shop2">
					<a href="#" target="_blank"><img
						src="${ctx}/static/images/index/shop2.png" alt="商店" /></a><img
						class="shade" src="${ctx}/static/images/index/shade.png" alt="遮罩" />
				</div>
				<div class="shop shop3">
					<a href="#" target="_blank"><img
						src="${ctx}/static/images/index/shop3.png" alt="商店" /></a><img
						class="shade" src="${ctx}/static/images/index/shade.png" alt="遮罩" />
				</div>
				<div class="shop shop4">
					<a href="#" target="_blank"><img
						src="${ctx}/static/images/index/shop4.png" alt="商店" /></a><img
						class="shade" src="${ctx}/static/images/index/shade.png" alt="遮罩" />
				</div>
				<div class="shop shop5">
					<a href="#" target="_blank"><img
						src="${ctx}/static/images/index/shop5.png" alt="商店" /></a><img
						class="shade" src="${ctx}/static/images/index/shade.png" alt="遮罩" />
				</div>
				<div class="shop shop6">
					<a href="#" target="_blank"><img
						src="${ctx}/static/images/index/shop6.png" alt="商店" /></a><img
						class="shade" src="${ctx}/static/images/index/shade.png" alt="遮罩" />
				</div>
				<div class="shop shop7">
					<a href="#" target="_blank"><img
						src="${ctx}/static/images/index/shop7.png" alt="商店" /></a><img
						class="shade" src="${ctx}/static/images/index/shade.png" alt="遮罩" />
				</div>
				<div class="shop shop8">
					<a href="#" target="_blank"><img
						src="${ctx}/static/images/index/shop8.png" alt="商店" /></a><img
						class="shade" src="${ctx}/static/images/index/shade.png" alt="遮罩" />
				</div>
				<div style="float: right">
					<img src="${ctx}/static/images/shadow/boxsd_r.png" alt="阴影" />
				</div>
			</div>
			<img id="more1" src="${ctx}/static/images/more.png" alt="更多" />

			<!--美发-->
			<img id="fa_t" src="${ctx}/static/images/index/fa_t.png" alt="美发顶部" />
			<div id="meifa">
				<div style="float: left">
					<img src="${ctx}/static/images/shadow/boxsd_l.png" alt="阴影" />
				</div>
				<div class="shop shop1">
					<a href="#" target="_blank"><img
						src="${ctx}/static/images/index/shop1.png" alt="商店" /></a><img
						class="shade" src="images/index/shade.png" alt="遮罩" />
				</div>
				<div class="shop shop2">
					<a href="#" target="_blank"><img
						src="${ctx}/static/images/index/shop2.png" alt="商店" /></a><img
						class="shade" src="images/index/shade.png" alt="遮罩" />
				</div>
				<div class="shop shop3">
					<a href="#" target="_blank"><img
						src="${ctx}/static/images/index/shop3.png" alt="商店" /></a><img
						class="shade" src="images/index/shade.png" alt="遮罩" />
				</div>
				<div class="shop shop4">
					<a href="#" target="_blank"><img
						src="${ctx}/static/images/index/shop4.png" alt="商店" /></a><img
						class="shade" src="images/index/shade.png" alt="遮罩" />
				</div>
				<div class="shop shop5">
					<a href="#" target="_blank"><img
						src="${ctx}/static/images/index/shop5.png" alt="商店" /></a><img
						class="shade" src="images/index/shade.png" alt="遮罩" />
				</div>
				<div class="shop shop6">
					<a href="#" target="_blank"><img
						src="${ctx}/static/images/index/shop6.png" alt="商店" /></a><img
						class="shade" src="images/index/shade.png" alt="遮罩" />
				</div>
				<div class="shop shop7">
					<a href="#" target="_blank"><img
						src="${ctx}/static/images/index/shop7.png" alt="商店" /></a><img
						class="shade" src="images/index/shade.png" alt="遮罩" />
				</div>
				<div class="shop shop8">
					<a href="#" target="_blank"><img
						src="${ctx}/static/images/index/shop8.png" alt="商店" /></a><img
						class="shade" src="images/index/shade.png" alt="遮罩" />
				</div>
				<div style="float: right">
					<img src="images/shadow/boxsd_r.png" alt="阴影" />
				</div>
			</div>
			<img id="more2" src="${ctx}/static/images/more.png" alt="更多" />

			<!--美甲-->
			<img id="jia_t" src="${ctx}/static/images/index/jia_t.png" alt="美甲顶部" />
			<div id="meijia">
				<div style="float: left">
					<img src="${ctx}/static/images/shadow/boxsd_l.png" alt="阴影" />
				</div>
				<div class="shop shop1">
					<a href="#" target="_blank"><img
						src="${ctx}/static/images/index/shop1.png" alt="商店" /></a><img
						class="shade" src="images/index/shade.png" alt="遮罩" />
				</div>
				<div class="shop shop2">
					<a href="#" target="_blank"><img
						src="${ctx}/static/images/index/shop2.png" alt="商店" /></a><img
						class="shade" src="images/index/shade.png" alt="遮罩" />
				</div>
				<div class="shop shop3">
					<a href="#" target="_blank"><img
						src="${ctx}/static/images/index/shop3.png" alt="商店" /></a><img
						class="shade" src="images/index/shade.png" alt="遮罩" />
				</div>
				<div class="shop shop4">
					<a href="#" target="_blank"><img
						src="${ctx}/static/images/index/shop4.png" alt="商店" /></a><img
						class="shade" src="images/index/shade.png" alt="遮罩" />
				</div>
				<div class="shop shop5">
					<a href="#" target="_blank"><img
						src="${ctx}/static/images/index/shop5.png" alt="商店" /></a><img
						class="shade" src="images/index/shade.png" alt="遮罩" />
				</div>
				<div class="shop shop6">
					<a href="#" target="_blank"><img
						src="${ctx}/static/images/index/shop6.png" alt="商店" /></a><img
						class="shade" src="images/index/shade.png" alt="遮罩" />
				</div>
				<div class="shop shop7">
					<a href="#" target="_blank"><img
						src="${ctx}/static/images/index/shop7.png" alt="商店" /></a><img
						class="shade" src="images/index/shade.png" alt="遮罩" />
				</div>
				<div class="shop shop8">
					<a href="#" target="_blank"><img
						src="${ctx}/static/images/index/shop8.png" alt="商店" /></a><img
						class="shade" src="images/index/shade.png" alt="遮罩" />
				</div>
				<div style="float: right">
					<img src="${ctx}/static/images/shadow/boxsd_r.png" alt="阴影" />
				</div>
			</div>
			<img id="more3" src="${ctx}/static/images/morelast.png" alt="更多" />
		</div>
	</div>

	<!--主体end-->

	<!--底部foot-->
	<div id="foot">
		<div style="float: left">
			<img src="${ctx}/static/images/shadow/footsd_l.png" alt="阴影" />
		</div>
		<div style="float: right">
			<img src="${ctx}/static/images/shadow/footsd_r.png" alt="阴影" />
		</div>
		<div id="footer"></div>
	</div>
	<!--底部end-->

	<!--返回return-->
	<div id="return">
		<a href="javascript:;"><img src="${ctx}/static/images/return.png"
			alt="返回顶部" /></a>
	</div>
	<!--返回end-->


	<script type="text/javascript" src="${ctx}/static/js/script.js"></script>
	<script src="${ctx}/static/js/jquery-1.9.1.min.js"
		type="text/javascript"></script>
	<script src="${ctx}/static/js/simplefoucs.js" type="text/javascript"></script>
	<!--banner换组-->
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							$("#btn_fa")
									.click(
											function() {
												$("#bnr1")
														.html(
																"<img src='${ctx}/static/images/banner/banner5.png'></img>");
												$("#bnr2")
														.html(
																"<img src='${ctx}/static/images/banner/banner6.png'></img>");
												$("#bnr3")
														.html(
																"<img src='${ctx}/static/images/banner/banner7.png'></img>");
												$("#bnr4")
														.html(
																"<img src='${ctx}/static/images/banner/banner8.png'></img>");
												$("#btn_fa")
														.css(
																'background-image',
																'url(${ctx}/static/images/banner/banner_icon9.png)');
												$("#btn_jia")
														.css(
																'background-image',
																'url(${ctx}/static/images/banner/banner_icon5.png)');
												$("#btn_rong")
														.css(
																'background-image',
																'url(${ctx}/static/images/banner/banner_icon7.png)');
											});
							$("#btn_jia")
									.click(
											function() {
												$("#bnr1")
														.html(
																"<img src='${ctx}/static/images/banner/banner9.png'></img>");
												$("#bnr2")
														.html(
																"<img src='${ctx}/static/images/banner/banner10.png'></img>");
												$("#bnr3")
														.html(
																"<img src='${ctx}/static/images/banner/banner11.png'></img>");
												$("#bnr4")
														.html(
																"<img src='${ctx}/static/images/banner/banner12.png'></img>");
												$("#btn_fa")
														.css(
																'background-image',
																'url(${ctx}/static/images/banner/banner_icon6.png)');
												$("#btn_jia")
														.css(
																'background-image',
																'url(${ctx}/static/images/banner/banner_icon8.png)');
												$("#btn_rong")
														.css(
																'background-image',
																'url(${ctx}/static/images/banner/banner_icon7.png)');
											});
							$("#btn_rong")
									.click(
											function() {
												$("#bnr1")
														.html(
																"<img src='${ctx}/static/images/banner/banner1.png'></img>");
												$("#bnr2")
														.html(
																"<img src='${ctx}/static/images/banner/banner2.png'></img>");
												$("#bnr3")
														.html(
																"<img src='${ctx}/static/images/banner/banner3.png'></img>");
												$("#bnr4")
														.html(
																"<img src='${ctx}/static/images/banner/banner4.png'></img>");
												$("#btn_fa")
														.css(
																'background-image',
																'url(${ctx}/static/images/banner/banner_icon6.png)');
												$("#btn_jia")
														.css(
																'background-image',
																'url(${ctx}/static/images/banner/banner_icon5.png)');
												$("#btn_rong")
														.css(
																'background-image',
																'url(${ctx}/static/images/banner/banner_icon10.png)');
											});
						});
	</script>
	<!--店铺遮罩-->
	<script>
		$(function() {
			$('.shop').hover(
					function() {
						$(this).children('.shade').stop(true, true).delay(100)
								.animate({
									'top' : 0,
									opacity : 1
								}, 300);
					}, function() {
						$(this).children('.shade').stop(true, true).animate({
							'top' : -482,
							opacity : 0
						}, 200);
					});
		});
	</script>
</body>
</html>























<%-- <%@ page contentType="text/html;charset=UTF-8"%>
<head>
<meta charset="UTF-8">
<title>美丽频道</title>
<%@ include file="/WEB-INF/include/common.jsp"%>
<tags:wcss items="login.css"></tags:wcss>
<link href="${ctx}/static/css/login.css" rel="stylesheet" type="text/css">
<link href="${ctx}/static/default/images/common.css" type="text/css"
	rel="stylesheet" />
	<link href="${ctx}/static/style/index.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/static/style/nav.css" rel="stylesheet" type="text/css" />
</head>
<body>
<!--头部-->
<div class="headerBar">
  <div class="header comWidth">
    <div class="fl">
    	<a href="${ctx}/test">
    		<img src="images/header/logo.png" alt="logo" id="logo" />
    	</a>
    </div>
    <div class="rightArea fr">
      <div class="topBar">
        <ul>
          <li id="top1"><a href="${ctx}/register/preRegisterByPhone">注册</a></li>
          <li id="top2"><a href="${ctx}/login/preLogin">登录</a></li>
          <li id="top3"><a href="#">我的频道</a></li>
          <li id="top4"><a href="${ctx}/applySellerIn/preApplySellerIn">申请商家入驻</a></li>
        </ul>
      </div>
      <div class="navBar">
        <ul>
          <li class="nav_icon1"><a href="${ctx }/login/noLogin">首页</a></li>
          <li class="nav_icon2"><a href="#">美容</a></li>
          <li class="nav_icon3"><a href="${ctx }/meifaShop">美发</a></li>
          <li class="nav_icon4"><a href="#">美甲</a></li>
        </ul>
      </div>
        <div id="search">
          <input type="text" id="search_ipt" />
          <input type="button" id="search_btn" />
        </div>
       
    </div>
  </div>
</div>
<div id="headersd"><img src="${ctx}/static/images/header/headersd1.jpg" alt="阴影" /></div>
<!--头部end-->
     
<!--主体-->
 <div id="main">
    <div style="float:left"><img src="${ctx}/static/images/shadow/shadow1.jpg" alt="阴影" /></div>
    <div style="float:right"><img src="images/shadow/shadow2.jpg" alt="阴影" /></div>
    
    <div id="container" >
      <div class="bannerbox">
      <div id="focus">
        <ul>
          <li id="bnr1"><a href="#" target="_blank">
              <img src="${ctx}/static/images/banner/banner1.png" alt="" /></a></li>
          <li id="bnr2"><a href="#" target="_blank">
              <img src="${ctx}/static/images/banner/banner2.png" alt="" /></a></li>
          <li id="bnr3"><a href="#" target="_blank">
              <img src="${ctx}/static/images/banner/banner3.png" alt="" /></a></li>
          <li id="bnr4"><a href="#" target="_blank">
              <img src="${ctx}/static/images/banner/banner4.png" alt="" /></a></li>
        </ul>
        <input id="btn_rong" type="button" alt="美容" />
        <input id="btn_fa" type="button" alt="美发" />
        <input id="btn_jia" type="button" alt="美甲" />
      </div>
     </div>
     <img id="sidebar" src="${ctx}/static/images/index/sidebar.png" alt="公告" />
     
     
     <!--美容-->
        <img id="rong_t" src="${ctx}/static/images/index/rong_t.png" alt="美容头部" />
        <div id="meirong">
          <div style="float:left"><img src="${ctx}/static/images/shadow/boxsd_l.png" alt="阴影" /></div>
          <div class="shop shop1"><a href="#" target="_blank"><img src="${ctx}/static/images/index/shop1.png" alt="商店" /></a><img class="shade" src="images/index/shade.png" alt="遮罩" /></div>
          <div class="shop shop2"><a href="#" target="_blank"><img src="${ctx}/static/images/index/shop2.png" alt="商店" /></a><img class="shade" src="images/index/shade.png" alt="遮罩" /></div>
          <div class="shop shop3"><a href="#" target="_blank"><img src="images/index/shop3.png" alt="商店" /></a><img class="shade" src="images/index/shade.png" alt="遮罩" /></div>
          <div class="shop shop4"><a href="#" target="_blank"><img src="images/index/shop4.png" alt="商店" /></a><img class="shade" src="images/index/shade.png" alt="遮罩" /></div>
          <div class="shop shop5"><a href="#" target="_blank"><img src="images/index/shop5.png" alt="商店" /></a><img class="shade" src="images/index/shade.png" alt="遮罩" /></div>
          <div class="shop shop6"><a href="#" target="_blank"><img src="images/index/shop6.png" alt="商店" /></a><img class="shade" src="images/index/shade.png" alt="遮罩" /></div>
          <div class="shop shop7"><a href="#" target="_blank"><img src="images/index/shop7.png" alt="商店" /></a><img class="shade" src="images/index/shade.png" alt="遮罩" /></div>
          <div class="shop shop8"><a href="#" target="_blank"><img src="images/index/shop8.png" alt="商店" /></a><img class="shade" src="images/index/shade.png" alt="遮罩" /></div>
          <div style="float:right"><img src="images/shadow/boxsd_r.png" alt="阴影" /></div> 
        </div>
        <img id="more1" src="images/more.png" alt="更多" />
        
        <!--美发-->
        <img id="fa_t" src="images/index/fa_t.png" alt="美发顶部" />
        <div id="meifa">
          <div style="float:left"><img src="images/shadow/boxsd_l.png" alt="阴影" /></div>
          <div class="shop shop1"><a href="#" target="_blank"><img src="images/index/shop1.png" alt="商店" /></a><img class="shade" src="images/index/shade.png" alt="遮罩" /></div>
          <div class="shop shop2"><a href="#" target="_blank"><img src="images/index/shop2.png" alt="商店" /></a><img class="shade" src="images/index/shade.png" alt="遮罩" /></div>
          <div class="shop shop3"><a href="#" target="_blank"><img src="images/index/shop3.png" alt="商店" /></a><img class="shade" src="images/index/shade.png" alt="遮罩" /></div>
          <div class="shop shop4"><a href="#" target="_blank"><img src="images/index/shop4.png" alt="商店" /></a><img class="shade" src="images/index/shade.png" alt="遮罩" /></div>
          <div class="shop shop5"><a href="#" target="_blank"><img src="images/index/shop5.png" alt="商店" /></a><img class="shade" src="images/index/shade.png" alt="遮罩" /></div>
          <div class="shop shop6"><a href="#" target="_blank"><img src="images/index/shop6.png" alt="商店" /></a><img class="shade" src="images/index/shade.png" alt="遮罩" /></div>
          <div class="shop shop7"><a href="#" target="_blank"><img src="images/index/shop7.png" alt="商店" /></a><img class="shade" src="images/index/shade.png" alt="遮罩" /></div>
          <div class="shop shop8"><a href="#" target="_blank"><img src="images/index/shop8.png" alt="商店" /></a><img class="shade" src="images/index/shade.png" alt="遮罩" /></div>
          <div style="float:right"><img src="images/shadow/boxsd_r.png" alt="阴影" /></div> 
        </div>
        <img id="more2" src="images/more.png" alt="更多" />
        
        <!--美甲-->
        <img id="jia_t" src="images/index/jia_t.png" alt="美甲顶部" />
        <div id="meijia">
          <div style="float:left"><img src="images/shadow/boxsd_l.png" alt="阴影" /></div>
          <div class="shop shop1"><a href="#" target="_blank"><img src="images/index/shop1.png" alt="商店" /></a><img class="shade" src="images/index/shade.png" alt="遮罩" /></div>
          <div class="shop shop2"><a href="#" target="_blank"><img src="images/index/shop2.png" alt="商店" /></a><img class="shade" src="images/index/shade.png" alt="遮罩" /></div>
          <div class="shop shop3"><a href="#" target="_blank"><img src="images/index/shop3.png" alt="商店" /></a><img class="shade" src="images/index/shade.png" alt="遮罩" /></div>
          <div class="shop shop4"><a href="#" target="_blank"><img src="images/index/shop4.png" alt="商店" /></a><img class="shade" src="images/index/shade.png" alt="遮罩" /></div>
          <div class="shop shop5"><a href="#" target="_blank"><img src="images/index/shop5.png" alt="商店" /></a><img class="shade" src="images/index/shade.png" alt="遮罩" /></div>
          <div class="shop shop6"><a href="#" target="_blank"><img src="images/index/shop6.png" alt="商店" /></a><img class="shade" src="images/index/shade.png" alt="遮罩" /></div>
          <div class="shop shop7"><a href="#" target="_blank"><img src="images/index/shop7.png" alt="商店" /></a><img class="shade" src="images/index/shade.png" alt="遮罩" /></div>
          <div class="shop shop8"><a href="#" target="_blank"><img src="images/index/shop8.png" alt="商店" /></a><img class="shade" src="images/index/shade.png" alt="遮罩" /></div>
          <div style="float:right"><img src="images/shadow/boxsd_r.png" alt="阴影" /></div> 
        </div>
        <img id="more3" src="images/morelast.png" alt="更多" />
      </div>
</div>

<!--主体end-->

<!--底部foot-->
<div id="foot">
  <div style="float:left"><img src="images/shadow/footsd_l.png" alt="阴影" /></div>
  <div style="float:right"><img src="images/shadow/footsd_r.png" alt="阴影" /></div>
  <div id="footer">
      
  </div>
</div>
<!--底部end-->

<!--返回return-->
<div id="return"><a href="javascript:;"><img src="images/return.png" alt="返回顶部" /></a></div>
<!--返回end-->


<script type="text/javascript" src="js/script.js"></script>
<script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="js/simplefoucs.js" type="text/javascript"></script>
<!--banner换组-->
  <script type="text/javascript">
	$(document).ready(function(){
		$("#btn_fa").click(function(){
		  $("#bnr1").html("<img src='images/banner/banner5.png'></img>");
          $("#bnr2").html("<img src='images/banner/banner6.png'></img>"); 
          $("#bnr3").html("<img src='images/banner/banner7.png'></img>"); 
          $("#bnr4").html("<img src='images/banner/banner8.png'></img>"); 
		  $("#btn_fa").css('background-image','url(images/banner/banner_icon9.png)');
		  $("#btn_jia").css('background-image','url(images/banner/banner_icon5.png)');
		  $("#btn_rong").css('background-image','url(images/banner/banner_icon7.png)');
        });		  
		$("#btn_jia").click(function(){
		  $("#bnr1").html("<img src='images/banner/banner9.png'></img>");
          $("#bnr2").html("<img src='images/banner/banner10.png'></img>"); 
          $("#bnr3").html("<img src='images/banner/banner11.png'></img>"); 
          $("#bnr4").html("<img src='images/banner/banner12.png'></img>");
          $("#btn_fa").css('background-image','url(images/banner/banner_icon6.png)');
		  $("#btn_jia").css('background-image','url(images/banner/banner_icon8.png)');
		  $("#btn_rong").css('background-image','url(images/banner/banner_icon7.png)'); 		  
		});
		$("#btn_rong").click(function(){
		  $("#bnr1").html("<img src='images/banner/banner1.png'></img>");
          $("#bnr2").html("<img src='images/banner/banner2.png'></img>"); 
          $("#bnr3").html("<img src='images/banner/banner3.png'></img>"); 
          $("#bnr4").html("<img src='images/banner/banner4.png'></img>");
          $("#btn_fa").css('background-image','url(images/banner/banner_icon6.png)');
		  $("#btn_jia").css('background-image','url(images/banner/banner_icon5.png)');
		  $("#btn_rong").css('background-image','url(images/banner/banner_icon10.png)');		  
		});
	});
  </script>
   <!--店铺遮罩-->
  <script>
  $(function(){
	$('.shop').hover(function(){
		$(this).children('.shade').stop(true,true).delay(100).animate({'top':0,opacity:1},300);
	},function(){
		$(this).children('.shade').stop(true,true).animate({'top':-482,opacity:0},200);
	})
  })
  </script>
</body>

 --%>