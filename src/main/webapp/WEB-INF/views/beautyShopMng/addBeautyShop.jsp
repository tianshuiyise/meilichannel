<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/include/common.jsp"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<head>
<link rel="stylesheet" type="text/css"
	href="${ctx}/static/style/myshop.css" />
<link rel="stylesheet" type="text/css"
	href="${ctx}/static/style/nav.css" />
<link rel="stylesheet" type="text/css"
	href="${ctx}/static/style/channel.css" />
<link rel="stylesheet" type="text/css"
	href="${ctx}/static/style/nav.css" />
<script src="${ctx}/static/js/jquery-1.7.min.js" type="text/javascript"></script>
<script src="${ctx}/static/js/calendar/calendar.js"
	type="text/javascript"></script>
<script src="${ctx}/static/js/calendar/WdatePicker.js"
	type="text/javascript"></script>
<script src="${ctx}/static/js/Area.js" type="text/javascript"></script>
<script src="${ctx}/static/js/AreaData_min.js" type="text/javascript"></script>

<script src="${ctx}/static/layer/layer.js" type="text/javascript"></script>

</head>
<!--[if IE 6]>
<script src="js/DD_belatedPNG_0.0.8a.js"></script>
<script>
DD_belatedPNG.fix('#logo,.navBar,#top1,#top2,#top3,#top4,.nav_icon1,.nav_icon2,.nav_icon3,.nav_icon4,.shade,input,#point,#point1,#point2,#point3,#point4,.messbox,#portrait');
</script>
<![endif]-->
<!--导航区 -->
<body>
	<div id="container">
		<form action="${ctx }/beautyShopMng/${shopType}/add" enctype="multipart/form-data" method="post">
			
			<div id="container">
				<ul class="text">
					<li>店铺名称：</li>
					<li>商店坐标</li>
					<li>商店地址：</li>
					<li>商店类型</li>
					<li>简介</li>
					<li>店铺QQ</li>
					<li>商家ID</li>
					<li>图片</li>
				</ul>
				<ul class="input">
					<li><input type="text" name="shopName"  /></li>
					<li><input type="text" name="shopCord"  /></li>
					<li><input type="text" name="shopAdd"  /></li>
					<li><input type="text" name="shopType" /></li>
					<li><input type="text" name="introduction"  /></li>
					<li><input type="text" name="shopQq"  /></li>
					<li><input type="text" name="merchontId"  /></li>
					<li>
					
						<div class="box">
				        	<div id="info_pic">
				        		<img src='${ctx}/static/images/meilichannel_null.jpg '>
				        		<input type="text" name="imageAddress" value="${ctx}/static/images/meilichannel_null.jpg " />
				        	</div>
	        			</div> 
    					<input id="changeAvatar" type="button" value="上传" /> 
					</li>
				</ul>
				<input id="saveinfo" type="submit" value="保存信息" />
				
				<input type="button" onclick="add_meiliChannel('${ctx}/beautyShopMng/${shopType}')" value="返回">
			</div>
		</form>
	</div>
</body>
<!--主体end-->

<script type="text/javascript">
function add_meiliChannel(controllerUrl) {
	window.location.href = controllerUrl ;
}


$('#changeAvatar').on('click', function(){
    layer.open({
        type: 2,
        title: '上传图片',
        maxmin: true,
        shadeClose: true, //点击遮罩关闭层
        area : ['420px' , '520px'],
        content: '${ctx}/static/iframe.jsp'
    });
});
</script>
