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
	<%-- <%@ include file="/WEB-INF/views/commonFile/head.jsp" %> --%>
	<c:import url="/WEB-INF/views/commonFile/head.jsp">
		<%-- <c:param name="loginStater">noLogin</c:param> --%>
	</c:import>
	<!-- 头部end -->
	
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
						<li id="bnr1">
							<a href="${ctx}/mainPage/shopDetail/0b0dde6e-0b51-4ce2-8ffe-0c40919bf3ec" target="_blank"> 
								<img src="${ctx}/static/images/banner/banner1.png" alt="" />
							</a>
						</li>
						<li id="bnr2"><a href="${ctx}/mainPage/shopDetail/0b0dde6e-0b51-4ce2-8ffe-0c40919bf3ec" target="_blank"> <img
								src="${ctx}/static/images/banner/banner2.png" alt="" /></a></li>
						<li id="bnr3"><a href="${ctx}/mainPage/shopDetail" target="_blank"> <img
								src="${ctx}/static/images/banner/banner3.png" alt="" /></a></li>
						<li id="bnr4"><a href="${ctx}/mainPage/shopDetail" target="_blank"> <img
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
				
				<c:forEach items="${meirongShops }" var="meirongShop" varStatus="status">
					<div class="shop shop${status.index+1}">
						<a href="#" target="_blank">
							<img src="${meirongShop.imageAddress }" alt="商店" />
						</a>
					<img class="shade" src="${ctx}/static/images/index/shade.png" alt="遮罩" />
					</div>
				</c:forEach>
				
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
				
				<c:forEach items="${meifaShops}" var="meifaShop" varStatus="status1">
					<div class="shop shop${status1.index+1}">
						<a href="#" target="_blank">
							<img src="${meifaShop.imageAddress }" alt="商店" />
						</a>
					<img class="shade" src="${ctx}/static/images/index/shade.png" alt="遮罩" />
					</div>
				</c:forEach>
				
				<div style="float: right">
					<img src="${ctx}/static/images/shadow/boxsd_r.png" alt="阴影" />
				</div>
			</div>
			<img id="more2" src="${ctx}/static/images/more.png" alt="更多" />

			<!--美甲-->
			<img id="jia_t" src="${ctx}/static/images/index/jia_t.png" alt="美甲顶部" />
			<div id="meijia">
				<div style="float: left">
					<img src="${ctx}/static/images/shadow/boxsd_l.png" alt="阴影" />
				</div>
				
				<c:forEach items="${meijiaShops}" var="meijiaShop" varStatus="status2">
					<div class="shop shop${status2.index+1}">
						<a href="#" target="_blank">
							<img src="${meijiaShop.imageAddress }" alt="商店" />
						</a>
					<img class="shade" src="${ctx}/static/images/index/shade.png" alt="遮罩" />
					</div>
				</c:forEach>
				
				<div style="float: right">
					<img src="${ctx}/static/images/shadow/boxsd_r.png" alt="阴影" />
				</div>
			</div>
			<img id="more3" src="${ctx}/static/images/morelast.png" alt="更多" />
		</div>
	</div>

	<!--主体end-->

<!--底部foot-->
<c:import url="/WEB-INF/views/commonFile/foot.jsp"/>
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