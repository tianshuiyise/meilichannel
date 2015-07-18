<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>美丽频道</title>
<link href="${ctx}/static/style/index.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/static/style/nav.css" rel="stylesheet" type="text/css" />
<!--[if IE 6]>
<script src="js/DD_belatedPNG_0.0.8a.js"></script>
<script>
DD_belatedPNG.fix('#logo,.navBar,#top1,#top2,#top3,#top4,.nav_icon1,.nav_icon2,.nav_icon3,.nav_icon4,.shade,input,.pre,.next');
</script>
<![endif]-->
</head>

<body>
<!--头部-->
	<c:import url="/WEB-INF/views/commonFile/head.jsp"/>
<!--头部end-->
     
<!--主体-->
 <div id="main">
    <div style="float:left"><img src="${ctx}/static/images/shadow/shadow1.jpg" alt="阴影" /></div>
    <div style="float:right"><img src="${ctx}/static/images/shadow/shadow2.jpg" alt="阴影" /></div>
    
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
     <div id="ranking">
       <div id="ranktext">
         <span>排序：<a href="###">销售量</a><a href="###">评价</a><a href="###">综合排序</a><a href="###">就近搜索</a></span>
       </div>
       <div class="rank-shop">
         <a href="#"><img src="${ctx}/static/images/index/shop1.png" alt="店铺" /></a><span><a href="#">***的店铺</a></span>
         <div class="delete"><input type="button" value="修改"/>/<input type="button" value="删除"/></div>
         <p>淘宝网是亚太地区较大的网络零售商圈，由阿里巴巴集团在2003年5月10日投资创立。淘宝网现在业务跨越C2C（个人对个人）、B2C（商家对个人）两大部分。截止2014年，淘宝网注册会员超5亿人每天有超过1.2亿的活跃用户，在线商品数达到10亿件，... </p>
       </div>
       <div class="rank-shop">
         <a href="#"><img src="${ctx}/static/images/index/shop1.png" alt="店铺" /></a><span><a href="#">***的店铺</a></span><p>淘宝网是亚太地区较大的网络零售商圈，由阿里巴巴集团在2003年5月10日投资创立。淘宝网现在业务跨越C2C（个人对个人）、B2C（商家对个人）两大部分。截止2014年，淘宝网注册会员超5亿人每天有超过1.2亿的活跃用户，在线商品数达到10亿件，... </p>
       </div>
       <div class="rank-shop">
         <a href="#"><img src="${ctx}/static/images/index/shop1.png" alt="店铺" /></a><span><a href="#">***的店铺</a></span><p>淘宝网是亚太地区较大的网络零售商圈，由阿里巴巴集团在2003年5月10日投资创立。淘宝网现在业务跨越C2C（个人对个人）、B2C（商家对个人）两大部分。截止2014年，淘宝网注册会员超5亿人每天有超过1.2亿的活跃用户，在线商品数达到10亿件，... </p>
       </div>
       <div class="rank-shop">
         <a href="#"><img src="${ctx}/static/images/index/shop1.png" alt="店铺" /></a><span><a href="#">***的店铺</a></span><p>淘宝网是亚太地区较大的网络零售商圈，由阿里巴巴集团在2003年5月10日投资创立。淘宝网现在业务跨越C2C（个人对个人）、B2C（商家对个人）两大部分。截止2014年，淘宝网注册会员超5亿人每天有超过1.2亿的活跃用户，在线商品数达到10亿件，... </p>
       </div>
       <div class="rank-shop">
         <a href="#"><img src="${ctx}/static/images/index/shop1.png" alt="店铺" /></a><span><a href="#">***的店铺</a></span><p>淘宝网是亚太地区较大的网络零售商圈，由阿里巴巴集团在2003年5月10日投资创立。淘宝网现在业务跨越C2C（个人对个人）、B2C（商家对个人）两大部分。截止2014年，淘宝网注册会员超5亿人每天有超过1.2亿的活跃用户，在线商品数达到10亿件，... </p>
       </div>
     </div>
     <img id="pages" src="${ctx}/static/images/channel/pages.png" alt="页码" />
    </div>
</div>

<!--主体end-->

<!--底部foot-->
<c:import url="/WEB-INF/views/commonFile/foot.jsp"/>
<!--返回end-->


<script type="text/javascript" src="${ctx}/static/js/script.js"></script>
<script src="${ctx}/static/js/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="${ctx}/static/js/simplefoucs.js" type="text/javascript"></script>
<!--banner换组-->
  <script type="text/javascript">
	$(document).ready(function(){
		$("#btn_fa").click(function(){
		  $("#bnr1").html("<img src='${ctx}/static/images/banner/banner5.png'></img>");
          $("#bnr2").html("<img src='${ctx}/static/images/banner/banner6.png'></img>"); 
          $("#bnr3").html("<img src='${ctx}/static/images/banner/banner7.png'></img>"); 
          $("#bnr4").html("<img src='${ctx}/static/images/banner/banner8.png'></img>"); 
		  $("#btn_fa").css('background-image','url(${ctx}/static/images/banner/banner_icon9.png)');
		  $("#btn_jia").css('background-image','url(${ctx}/static/images/banner/banner_icon5.png)');
		  $("#btn_rong").css('background-image','url(${ctx}/static/images/banner/banner_icon7.png)');
        });		  
		$("#btn_jia").click(function(){
		  $("#bnr1").html("<img src='${ctx}/static/images/banner/banner9.png'></img>");
          $("#bnr2").html("<img src='${ctx}/static/images/banner/banner10.png'></img>"); 
          $("#bnr3").html("<img src='${ctx}/static/images/banner/banner11.png'></img>"); 
          $("#bnr4").html("<img src='${ctx}/static/images/banner/banner12.png'></img>");
          $("#btn_fa").css('background-image','url(${ctx}/static/images/banner/banner_icon6.png)');
		  $("#btn_jia").css('background-image','url(${ctx}/static/images/banner/banner_icon8.png)');
		  $("#btn_rong").css('background-image','url(${ctx}/static/images/banner/banner_icon7.png)'); 		  
		});
		$("#btn_rong").click(function(){
		  $("#bnr1").html("<img src='${ctx}/static/images/banner/banner1.png'></img>");
          $("#bnr2").html("<img src='${ctx}/static/images/banner/banner2.png'></img>"); 
          $("#bnr3").html("<img src='${ctx}/static/images/banner/banner3.png'></img>"); 
          $("#bnr4").html("<img src='${ctx}/static/images/banner/banner4.png'></img>");
          $("#btn_fa").css('background-image','url(${ctx}/static/images/banner/banner_icon6.png)');
		  $("#btn_jia").css('background-image','url(${ctx}/static/images/banner/banner_icon5.png)');
		  $("#btn_rong").css('background-image','url(${ctx}/static/images/banner/banner_icon10.png)');		  
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
</html>
