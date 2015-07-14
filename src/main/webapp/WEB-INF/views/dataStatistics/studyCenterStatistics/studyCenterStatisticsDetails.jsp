<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/include/common.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<tags:wjs items="calendar.js"></tags:wjs>
<tags:wjs items="back.js"></tags:wjs>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<tags:wcss items="message.css"></tags:wcss>
<tags:wjs items="checkbox.js"></tags:wjs>

<!--导航区 -->
<div class="top">
	<ul>
		<li>学生中心查询统计</li>
		<p>查询与统计>>学生中心查询统计</p>
	</ul>
</div>

<!-- 列表区1 -->
<form id="searchForm" action="${ctx }/studyCenterStatistics/details"
	method="post" enctype="multipart/form-data">
	<!-- 列表区 -->
	<table id="table1">
		<tr id="tr1">
			<td colspan="4" id="left">学习中心基本信息</td>
		</tr>
		<tr>
			<td id="right" width="200px">学习中心名称</td>
			<td id="left" width="30%">${studyCenter.nameCh}</td>
			<td id="right" width="200px">省份</td>
			<td id="left">${studyCenter.province}</td>
		</tr>
		<tr>
			<td id="right" >学习中心代码</td>
			<td id="left">${studyCenter.orgCode}</td>
			<td id="right" >邮编</td>
			<td id="left">${studyCenter.postcode}</td>
		</tr>
		<tr>
			<td id="right" >依托建设单位</td>
			<td id="left">${studyCenter.relyCreateUnit}</td>
			<td id="right" >审批备案文号</td>
			<td id="left">${studyCenter.approveRecordNo}</td>
			
		</tr>
		<tr>
			<td id="right" >依托建设性质</td>
			<td id="left">${studyCenter.relyCreateUnitType}</td>
			<td id="right" >审批备案时间</td>
			<fmt:parseDate value="${studyCenter.approveRecordDate }" var="now" pattern="yyyy-MM-dd"/>
			<td id="left"><fmt:formatDate value="${now}" /></td>
		</tr>
		<tr>
			<td id="right" >负责人</td>
			<td id="left">${studyCenter.ownerName}</td>
			<td id="right" >联系人</td>
			<td id="left">${studyCenter.linkman}</td>
		</tr>
		<tr>
			<td id="right" >负责人电话</td>
			<td id="left">${studyCenter.ownerTel}</td>
			<td id="right" >联系人电话</td>
			<td id="left" >${studyCenter.linkmanTel}</td>
		</tr>
		<tr>
			<td id="right" width="200px">通讯地址</td>
			<td id="left" colspan="3" >${studyCenter.organizationAddress}</td>
		</tr>
	</table>

	<!-- 列表区 2-->
	<table id="table1">
		<tr id="tr1">
			<td colspan="4" id="left">学习中心层次专业信息</td>
		</tr>
		<tr id="tr1">
			<td id="title" style="width: 50px;">序号</td>
			<td id="title">招生层次</td>
			<td id="title">招生专业</td>
			<td id="title">学费标准</td>
		</tr>
		<tbody>
			<c:forEach items="${studyCenter.schoolFeeList}" var="studyCenter"
				varStatus="status">
				<tr>
					<td id="title" style="width: 50px;">${status.count}</td>
					<td id="left">${studyCenter.levelName}</td>
					<td id="left">${studyCenter.specialtyName}</td>
					<td id="left">${studyCenter.schoolFee}</td>
				</tr>
			</c:forEach>
			<c:if test="${fn:length(studyCenter.schoolFeeList) == 0 }">
				<tr>
					<td id="title" colspan="4">暂无层次专业信息！</td>
				</tr>
			</c:if>
		</tbody>
	</table>

	<!-- 按钮区  -->
	<div class="content" align="center">
		<span class="add"><input class="btn" type="button" value="返回"
			id="btn_back" onclick="back('${ctx}/studyCenterStatistics')" /></span>
		<p>
	</div>
</form>

<script type="text/javascript">
	function details(controllerUrl, organizationKey) {
		window.location.href = controllerUrl + "?organizationKey="
				+ organizationKey;
	}
</script>