<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<tags:wcss items="message.css"></tags:wcss>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>美丽频道</title>
<link rel="stylesheet" type="text/css"
	href="${ctx}/static/style/channel.css" />
<link rel="stylesheet" type="text/css"
	href="${ctx}/static/style/nav.css" />
<link rel="stylesheet" type="text/css"
	href="${ctx}/static/style/upload.css" />
<link rel="stylesheet" type="text/css"
	href="${ctx}/static/style/myshop.css" />
<!--[if IE 6]>
<script src="js/DD_belatedPNG_0.0.8a.js"></script>
<script>
DD_belatedPNG.fix('#logo,.navBar,#top1,#top2,#top3,#top4,.nav_icon1,.nav_icon2,.nav_icon3,.nav_icon4,.shade,input,.pre,.next');
</script>
<![endif]-->
</head>

<body>
	<!-- 头部 -->
	<c:import url="/WEB-INF/views/commonFile/head.jsp" />
	<!--主体-->
	<div class="comWidth">
		<div id="top">
			<div id="portrait">
				<img src="${sessionScope.user.imageAddress}" />
			</div>
			<div id="username">${sessionScope.user.userName}</div>
		</div>
		<div id="main">
			<!-- 左侧菜单 -->
			<c:import url="/WEB-INF/views/commonFile/leftMenu.jsp" />
			<div id="container">
				<!--这里是操作完成的消息提示区  -->
				<c:import url="/WEB-INF/include/message.jsp"></c:import>
				<form action="${ctx }/uploadShopInfo/shopModifyTo" enctype="multipart/form-data" method="post">
					<input type="hidden" name="shopId" value="${shop.shopId}" />
					<div id="shopinfor">
						<div class="shopin">
							<span><i>*</i>店铺名称：</span>
							<input type="text" name="shopName" value="${shop.shopName}" />
						</div>
						<div class="shopin">
							<span><i>*</i>店铺QQ：</span>
							<input type="text" name="shopQq" value="${shop.shopQq}" />
						</div>
						<div class="shopin">
							<span><i>*</i>店铺描述：<br /><small>(500字以内)</small></span>
							<textarea rows="5" cols="5" name="introduction" >${shop.introduction}</textarea>
						</div>
						<div class="shopin">
							<span><i>*</i>店铺地址：</span>
							<input type="text" name="shopAdd"  value="${shop.shopAdd}" />
						</div>
						<div class="shopin">
							<span><i>*</i>店铺图片：</span>
							<!-- 上传图片 input的名字是key= imageAddress-->
							<tags:uploadPhoto key="imageAddress" value="${shop.imageAddress}"/>
						</div>
						<div class="shopin">
							<span><i>*</i>地图：</span>
							<%-- 
							<tags:myMap shopCordX="${shop.shopCordX }" shopCordY="${shop.shopCordY }" shopCord="${shop.shopCord }" shopAdd="${shop.shopAdd}" allowAutoPosition="false" enableDragging="true"></tags:myMap>
							 --%>
							
							<div class="map" >
								<input type="hidden" name="shopCordX" id="shopCordX" value="${shop.shopCordX }"/>
								<input type="hidden" name="shopCordY" id="shopCordY" value="${shop.shopCordY }"/>
								<input type="hidden" name="shopCord" id="shopCord" value="${shop.shopCord }"/>
								<input type="hidden"  id="shopAdd"  value="${shop.shopAdd}" />
								<div id="myMap"></div>
							</div>  
							
						</div>
						<input id="saveinfo" type="submit" value="保存信息" />
					</div>
				</form>
			</div>
		</div>
	</div>

<script src="${ctx}/static/js/jquery-1.7.min.js" type="text/javascript"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ozR6nWdba9u5o94KFy8S2LEk"></script>	
<script src="${ctx}/static/js/controlMap.js" type="text/javascript"></script>
<script src="${ctx}/static/js/script.js" type="text/javascript"></script>
 <script type="text/javascript">
 $(function(){
	 /* 
	 	参数分别是经度，维度，地址，经纬度，是input标签的ID；
	 	两个boolean值分别代表，是否允许自动定位（当没有地址的时候，可以自动定位），remark标记是否可以拖拽（当定义店铺信息的时候可以拖拽）
	  */
	  var myMap=new MyMap("shopCordX","shopCordY","shopAdd","shopCord",false,true);
	  myMap.init();
});
</script>

</body>
</html>
