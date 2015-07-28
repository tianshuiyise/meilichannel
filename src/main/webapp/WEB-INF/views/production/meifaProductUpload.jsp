<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/include/common.jsp"%>

<tags:wjs items="checkbox.js"></tags:wjs>
<tags:wcss items="message.css"></tags:wcss>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<head>
<link rel="stylesheet" type="text/css" href="${ctx}/static/style/upload.css" />
</head>

<!--导航区 -->
<div class="top">
	<ul>
		<li>美发</li>
	</ul>
</div>

<!--这里是操作完成的消息提示区  -->
<c:import url="/WEB-INF/include/message.jsp"></c:import>
<form id="searchForm"  action="${ctx}/uploadProductInfo/meifaInfoUpload?userId=${user.userId}" method="POST" enctype="multipart/form-data">
    <div id="workinfor">
      <div class="workin"><span><i>*</i>作品名称：</span><input type="text" name="proName"/></div>
      <div class="workin"><span><i>*</i>作品价格：</span><input type="text" name="proPrice" /></div>
      <div class="workin"><span><i>*</i>作品优惠价格：</span><input type="text" name="disPrice" /></div>
      <div class="workin"><span><i>*</i>作品简介：<br/><h4>(500字以内)</h4></span><input type="text"  name="introduction" /></div>
      <div class="workin"><span><i>*</i>作品图片：</span><div class="box">
							<div id="info_pic">
								<img src='${ctx}/static/images/blank.jpg '
									width="371" height="371"> <input id="image_address"
									type="hidden" name="imageAddress"
									value="${ctx}/static/images/blank.jpg ">
							</div>
						</div>
						<input id="changeAvatar" type="button" value="上传" />
						</div> 
      <div class="workin"><input id="reset" type="reset"  value="重置" /></div>
      <div class="workin"><input id="saveinfo" type="submit" value="保存信息"/></div>
    </div>
</form>


<script src="${ctx}/static/js/jquery-1.7.min.js" type="text/javascript"></script>
<script src="${ctx}/static/js/calendar/calendar.js" type="text/javascript"></script>
<script src="${ctx}/static/js/calendar/WdatePicker.js" type="text/javascript"></script>
<script src="${ctx}/static/js/Area.js" type="text/javascript"></script>
<script src="${ctx}/static/js/AreaData_min.js" type="text/javascript"></script>
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