<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/include/common.jsp"%>

<tags:wjs items="checkbox.js"></tags:wjs>
<tags:wcss items="message.css"></tags:wcss>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<head>
<link rel="stylesheet" type="text/css" href="${ctx}/static/style/upload.css" />

<style type="text/css">
#localImag img {
	width: 100%;
	height: 100%;
	z-index: 3;
	background: #222 repeat center center;
}
</style>
</head>
<!--[if IE 6]>
<script src="js/DD_belatedPNG_0.0.8a.js"></script>
<script>
DD_belatedPNG.fix('#logo,.navBar,#top1,#top2,#top3,#top4,.nav_icon1,.nav_icon2,.nav_icon3,.nav_icon4,.shade,input,#point,#point1,#point2,#point3,#point4,.messbox,#portrait');
</script>
<![endif]-->
<!--导航区 -->
<body>
	
		<form action="${ctx }/shop/shopModifyTo" enctype="multipart/form-data"
			method="post">
			<input type="hidden" name="shopId" value="${shop.shopId}">
			<div id="shopinfor">
			  <div class="shopin"><span><i>*</i>店铺名称：</span><input type="text" name="shopName" value="${shop.shopName}" /></div>
			  <div class="shopin"><span><i>*</i>店铺QQ：</span><input type="text" name="shopQq" value="${shop.shopQq}" /></div>
			  <div class="shopin"><span><i>*</i>店铺描述：<br/><h4>(500字以内)</h4></span><textarea name="introduction" value="${shop.introduction}" ></textarea></div>
			  <div class="shopin"><span><i>*</i>店铺图片：</span><div class="box">
							<div id="info_pic">
								<img src='${ctx}/static/images/blank.jpg '
									width="371" height="371"> <input id="image_address"
									type="hidden" name="imageAddress"
									value="${ctx}/static/images/blank.jpg ">
							</div>
						</div>
						<input id="changeAvatar" type="button" value="上传" />
						</div>  
			  <input id="saveinfo" type="submit" value="保存" />
			</div>

		</form>


<!--主体end-->
<script src="${ctx}/static/js/jquery-1.7.min.js" type="text/javascript"></script>
<script src="${ctx}/static/js/calendar/calendar.js"
	type="text/javascript"></script>
<script src="${ctx}/static/js/calendar/WdatePicker.js"
	type="text/javascript"></script>
<script src="${ctx}/static/js/Area.js" type="text/javascript"></script>
<script src="${ctx}/static/js/AreaData_min.js" type="text/javascript"></script>

<script src="${ctx}/static/layer/layer.js" type="text/javascript"></script>
<script>
	function setImagePreview() {
		var docObj = document.getElementById("doc");
		var imgObjPreview = document.getElementById("preview");
		if (docObj.files && docObj.files[0]) {

			imgObjPreview.src = window.URL.createObjectURL(docObj.files[0]);
		} else {

			docObj.select();
			var imgSrc = document.selection.createRange().text;
			var localImagId = document.getElementById("localImag");

			try {
				localImagId.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";

				localImagId.filters
						.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;

			} catch (e) {
				alert("您上传的图片格式不正确，请重新选择!");
				return false;
			}
			imgObjPreview.style.display = 'none';
			document.selection.empty();
		}
		return true;
	}
</script>
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