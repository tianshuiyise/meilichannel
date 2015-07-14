<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/include/common.jsp"%>

<tags:wjs items="checkbox.js"></tags:wjs>
<tags:wcss items="message.css"></tags:wcss>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
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
<!--导航区 -->
<div class="top">
	<ul>
		<li>美发</li>
		<p><a href="${ctx }/product/inselectMeifaPro" >添加</a></p>
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
				<td id="title" style="width: 50px;">序号</td>
				<td id="title">作品名称</td>
				<td id="title">作品价格</td>
				<td id="title">作品优惠价格</td>
				<td id="title">作品简介</td>
				<td id="title">操作</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${productList.content}" var="productList"
				varStatus="status">
				<tr>
					<td id="title" style="width: 50px;">${status.count}</td>
					<td id="title" style="width: 90px;">${productList.proName}</td>
					<td id="title" style="width: 70px;">${productList.proPrice}
						</td>
					<td id="title" style="width: 70px;">${productList.disPrice}
						</td>
					<td id="title" style="width: 170px;">${productList.introduction}</td>
					<td id="title" style="width: 170px;"><input type="button" value="修改"
						onclick="dispatchTrainingCourse('${ctx}/product/modifyPro','${productList.proId}')" />
						<input type="button"  value="删除" onclick="dispatchTrainingCourse('${ctx}/product/deletePro','${productList.proId}')"/>

					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<!-- 分页组件区 -->
	<!-- TODO：后期这里可能会持续改进 -->
	<tags:pagination page="${productList}" />



</form>
<script type="text/javascript">
function dispatchTrainingCourse(controllerUrl, trainingKey) {
	//window.open(controllerUrl+"?academicKey="+academicKey,"_blank");
	window.location.href = controllerUrl + "?proId=" + trainingKey;

}
</script>