<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<tags:wjs items="checkbox.js"></tags:wjs>
<tags:wcss items="message.css"></tags:wcss>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>美丽频道</title>
<link rel="stylesheet" type="text/css" href="${ctx}/static/style/channel.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/static/style/nav.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/static/style/upload.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/static/style/myshop.css" />
<script type="text/javascript">
	function add_meiliChannel(controllerUrl) {
		window.location.href = controllerUrl ;
	}
	function operationWithId(controllerUrl, shopId) {
		window.location.href = controllerUrl + "?shopId=" + shopid;
	}
</script>
<!--[if IE 6]>
<script src="js/DD_belatedPNG_0.0.8a.js"></script>
<script>
DD_belatedPNG.fix('#logo,.navBar,#top1,#top2,#top3,#top4,.nav_icon1,.nav_icon2,.nav_icon3,.nav_icon4,.shade,input,.pre,.next');
</script>
<![endif]-->
</head>

<body>
	<!-- 头部 -->
	<c:import url="/WEB-INF/views/commonFile/head.jsp"/>
	<!--主体-->
	 <!--主体-->
  <div class="comWidth">
    <div id="top">
      <div id="portrait"><img src="${sessionScope.user.imageAddress}"/></div>
      <div id="username">${sessionScope.user.userName}</div>
    </div>
	<div id="main">
		<!-- 左侧菜单 -->
		 <c:import url="/WEB-INF/views/commonFile/leftMenu.jsp"/>
    	<div id="container">
    		<!--这里是操作完成的消息提示区  -->
			<c:import url="/WEB-INF/include/message.jsp"></c:import>
<form id="searchForm"  action="${ctx}/uploadProductInfo/meijiaInfoUpload?userId=${user.userId}" enctype="multipart/form-data" method="post">
			<div id="container">
				<ul class="text">
					<li>*作品名称：</li>
					<li></li>
					<li>*作品价格：</li>
					<li></li>
					<li>*作品优惠价格：</li>
					<li></li>
					<li>*作品简介：</li>
					<li></li>
					<li>*作品图片：</li>
					<li></li>

				</ul>
				<ul class="input">
					<li><input type="text" name="proName" /></li>
					<li></li>
					<li><input type="text" name="proPrice" /></li>
					<li></li>
					<li><input type="text" name="disPrise" /></li>
					<li></li>
					<li><input type="text" name="introduction" />(500字以内)</li>
					<li></li>
        			<li>
						<!-- 上传图片 input的名字是key= imageAddress-->
						<tags:uploadPhoto key="imageAddress"/>
					</li>
				</ul>
				<input id="saveinfo" type="submit" value="保存信息" />
			</div>

		</form>
    	</div>
	</div>
	</div>
	<!--底部foot-->
	<c:import url="/WEB-INF/views/commonFile/foot.jsp"/>
<script src="${ctx}/static/js/jquery-1.7.min.js" type="text/javascript"></script>
<script src="${ctx}/static/js/Area.js" type="text/javascript"></script>
<script src="${ctx}/static/js/AreaData_min.js" type="text/javascript"></script>
<script src="${ctx}/static/js/script.js" type="text/javascript"></script>
<script src="${ctx}/static/layer/layer.js" type="text/javascript"></script>
<script src="${ctx}/static/js/calendar/calendar.js" type="text/javascript"></script>
<script src="${ctx}/static/js/calendar/WdatePicker.js" type="text/javascript"></script>
</body>
</html>