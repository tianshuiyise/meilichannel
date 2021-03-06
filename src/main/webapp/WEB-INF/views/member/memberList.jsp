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
<form id="searchForm" action="" method="post">
	<div class="gly-top">
	</div>


	<!-- 列表区 -->
	<table id="table1">
		<thead>
			<tr id="tr1">
				<td class="title1" id="title" style="width: 50px;">序号</td>
				<td class="title2" id="title">服务人员姓名</td>
				<td class="title1" id="title">人员简介</td>
				<td class="title2" id="title">操作</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${memberList.content}" var="memberList"
				varStatus="status">
				<tr>
					<td class="title3" id="title" style="width: 50px;">${status.count}</td>
					<td class="title4" id="title" style="width: 90px;">${memberList.memberName}</td>
					<td class="title3" id="title" style="width: 170px;">${memberList.introduction}</td>
					<td class="title4" id="title" style="width: 170px;"><input class="change" type="button" value="修改"
						onclick="dispatchTrainingCourse('${ctx}/serviceInfo/modifyMemb','${memberList.memberId}')" />
						<input class="del" type="button"  value="删除" onclick="dispatchTrainingCourse('${ctx}/serviceInfo/deleteMemb','${memberList.memberId}')"/>

					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div id="add"><p><a href="${ctx }/serviceInfo/inselectMeirongMemb" >添加</a></p></div>

	<!-- 分页组件区 -->
	<!-- TODO：后期这里可能会持续改进 -->
	<tags:pagination page="${memberList}" />



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
<script type="text/javascript">
	function changeBelongExamBatch(path) {
		$("#searchForm").action = path;
		$("#searchForm").submit();
	}

	function dispatchTrainingCourse(controllerUrl, trainingKey) {
		//window.open(controllerUrl+"?academicKey="+academicKey,"_blank");
		window.location.href = controllerUrl + "?trainingKey=" + trainingKey;

	}
	function detailTrainingCourse(controllerUrl, trainingKey) {
		window.open(controllerUrl + "?trainingKey=" + trainingKey, "_blank",
				"scrollbars=1","alwaysRaised=1");
		//window.top.location.href=controllerUrl+"?academicKey="+academicKey;

	}
	
</script>
<script type="text/javascript">
function dispatchTrainingCourse(controllerUrl, trainingKey) {
	//window.open(controllerUrl+"?academicKey="+academicKey,"_blank");
	window.location.href = controllerUrl + "?memberId=" + trainingKey;

}
</script>
</body>
</html>