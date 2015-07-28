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
<script type="text/javascript">
	function add_meiliChannel(controllerUrl) {
		window.location.href = controllerUrl;
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
	<c:import url="/WEB-INF/views/commonFile/head.jsp" />
	<!--主体-->
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
				<!--导航区 -->
				<div class="top">
					<ul>
						<li>美发</li>
					</ul>
				</div>
				<!--这里是操作完成的消息提示区  -->
				<c:import url="/WEB-INF/include/message.jsp"></c:import>

				<form id="searchForm" action="" method="post">
					<div class="gly-top"></div>
					<!-- 列表区 -->
					<table id="table1">
						<thead>
							<tr id="tr1">
								<td class="title1" id="title" style="width: 50px;">序号</td>
								<td class="title2" id="title">作品的名称</td>
								<td class="title1" id="title">作品价格</td>
								<td class="title2" id="title">作品优惠价格</td>
								<td class="title1" id="title">作品简介</td>
								<td class="title2" id="title">操作</td>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${productList.content}" var="productList"
								varStatus="status">
								<tr>
									<td class="title3" id="title" style="width: 50px;">${status.count}</td>
									<td class="title4" id="title" style="width: 90px;">${productList.proName}</td>
									<td class="title3" id="title" style="width: 70px;">${productList.proPrice}
									</td>
									<td class="title4" id="title" style="width: 70px;">${productList.disPrice}
									</td>
									<td class="title3" id="title" style="width: 170px;">${productList.introduction}</td>
									<td class="title4" id="title" style="width: 170px;"><input
										class="change" type="button" value="修改"
										onclick="dispatchTrainingCourse('${ctx}/uploadProductInfo/modifyPro','${productList.proId}')" />
										<input class="del" type="button" value="删除"
										onclick="dispatchTrainingCourse('${ctx}/uploadProductInfo/deletePro','${productList.proId}')" />

									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div id="add">
						<p>
							<a href="${ctx }/uploadProductInfo/inselectMeifaPro">添加</a>
						</p>
					</div>

					<!-- 分页组件区 -->
					<!-- TODO：后期这里可能会持续改进 -->
					<tags:pagination page="${productList}" />
				</form>
			</div>
		</div>
	</div>
	<!--底部foot-->
	<c:import url="/WEB-INF/views/commonFile/foot.jsp" />


	<script type="text/javascript">
		function changeBelongExamBatch(path) {
			$("#searchForm").action = path;
			$("#searchForm").submit();
		}

		function dispatchTrainingCourse(controllerUrl, trainingKey) {
			//window.open(controllerUrl+"?academicKey="+academicKey,"_blank");
			window.location.href = controllerUrl + "?trainingKey="
					+ trainingKey;

		}
		function detailTrainingCourse(controllerUrl, trainingKey) {
			window.open(controllerUrl + "?trainingKey=" + trainingKey,
					"_blank", "scrollbars=1", "alwaysRaised=1");
			//window.top.location.href=controllerUrl+"?academicKey="+academicKey;

		}
	</script>
	<script type="text/javascript">
		function dispatchTrainingCourse(controllerUrl, trainingKey) {
			//window.open(controllerUrl+"?academicKey="+academicKey,"_blank");
			window.location.href = controllerUrl + "?proId=" + trainingKey;

		}
	</script>

</body>

</html>










<%-- 


<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/include/common.jsp"%>

<tags:wjs items="checkbox.js"></tags:wjs>
<tags:wcss items="message.css"></tags:wcss>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!--导航区 -->
<div class="top">
	<ul>
		<li>美发</li>
	</ul>
</div>

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
				<td class="title2" id="title">作品的名称</td>
				<td class="title1" id="title">作品价格</td>
				<td class="title2" id="title">作品优惠价格</td>
				<td class="title1" id="title">作品简介</td>
				<td class="title2" id="title">操作</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${productList.content}" var="productList"
				varStatus="status">
				<tr>
					<td class="title3" id="title" style="width: 50px;">${status.count}</td>
					<td class="title4" id="title" style="width: 90px;">${productList.proName}</td>
					<td class="title3" id="title" style="width: 70px;">${productList.proPrice}
						</td>
					<td class="title4" id="title" style="width: 70px;">${productList.disPrice}
						</td>
					<td class="title3" id="title" style="width: 170px;">${productList.introduction}</td>
					<td class="title4" id="title" style="width: 170px;"><input class="change" type="button" value="修改"
						onclick="dispatchTrainingCourse('${ctx}/product/modifyPro','${productList.proId}')" />
						<input class="del" type="button"  value="删除" onclick="dispatchTrainingCourse('${ctx}/product/deletePro','${productList.proId}')"/>

					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div id="add"><p><a href="${ctx }/product/inselectMeifaPro"">添加</a></p></div>

	<!-- 分页组件区 -->
	<!-- TODO：后期这里可能会持续改进 -->
	<tags:pagination page="${productList}" />



</form> --%>
