<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/include/common.jsp"%>
<tags:wjs items="checkbox.js"></tags:wjs>
<tags:wcss items="message.css"></tags:wcss>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>美丽频道</title>
<link rel="stylesheet" type="text/css" href="${ctx}/static/style/channel.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/static/style/nav.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/static/style/upload.css" />
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
			<!--导航区 -->
<div class="top">
	<ul>
		<li>美发</li>
	</ul>
</div>
<form id="searchForm"  action="${ctx}/serviceInfo/meifaInfoUpload?userId=${user.userId}" method="POST" enctype="multipart/form-data">
  <div id="personinfor">
      <div class="personin"><span><i>*</i>服务人员姓名：</span><input type="text" name="memberName"/></div>
      <div class="personin"><span><i>*</i>人员简介：<br/><h4>(500字以内)</h4></span><input type="text"  name="introduction" /></div>
      <div class="personin"><span><i>*</i>人员头像：</span><div class="box">
							<div id="info_pic">
								<img src='${ctx}/static/images/blank.jpg '
									width="371" height="371" /> <input id="image_address"
									type="hidden" name="imageAddress"
									value="${ctx}/static/images/blank.jpg "/>
							</div>
						</div>
						<input id="changeAvatar" type="button" value="上传" />
						</div> 
      <div class="workin"><input id="reset" type="reset"  value="重置" /></div>
      <div class="workin"><input id="saveinfo" type="submit" value="保存信息"/></div>
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
<script type="text/javascript">
	function add_meiliChannel(controllerUrl) {
		window.location.href = controllerUrl;
	}

	$('#changeAvatar').on('click', function() {
		layer.open({
			type : 2,
			title : '上传图片',
			maxmin : true,
			shadeClose : true, //点击遮罩关闭层
			area : [ '420px', '520px' ],
			content : '${ctx}/static/iframe.jsp'
		});
	});
</script>
</body>
</html>







