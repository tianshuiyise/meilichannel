<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/include/common.jsp"%>
<tags:wjs items="checkbox.js"></tags:wjs>
<tags:wcss items="message.css"></tags:wcss>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<script type="text/javascript">
	function leave(controllerUrl,studentKey,courseID) {
		window.location.href = controllerUrl + "?studentKey=" + studentKey+"&courseID="+courseID;
	}
</script>
<!--导航区 -->
<div class="top">
	<ul>
		<li>学习积分查询</li>
		<p>查询与统计>>学习积分查询</p>
	</ul>
</div>
<!-- 检索条件 -->
<form id="searchForm" action="${ctx }/integralQuery">
	<div class="gly-top">
		<table id="s-table">
			<tr>
				<td id="td1" align="right">平台</td>
				<td><tags:wselect id="platForm" key="PlatForm"
						name="search_platForm" value="${param.search_platForm}" /></td>
				<td id="td1" align="right">学习中心</td>
				<td><select id="search_studyCenterKey" name="search_studyCenterKey">
						<option value="">--请选择--</option>
						<c:forEach items="${studyCenterList}" var="studyCenter"
							varStatus="status">
							<option value="${studyCenter.organizationKey}"
								<c:if test="${param.search_studyCenterKey eq studyCenter.organizationKey }">selected="selected"</c:if>>
								${studyCenter.nameCh}</option>
						</c:forEach>
				</select></td>
				<td id="td1" align="right">课程名称</td>
				<td><input class="text" type="text" id="txt_courseName"
					name="search_courseName" value="${param.search_courseName}" /></td>
			</tr>
			<tr>
				<td id="td1" align="right">层次</td>
				<td><select id="search_edulevelID" name="search_edulevelID">
						<option value="">--请选择--</option>
						<c:forEach items="${levelList}" var="level" varStatus="status">
							<option value="${level.edulevelID}"
								<c:if test="${param.search_edulevelID eq level.edulevelID }">selected="selected"</c:if>>
								${level.levelName}</option>
						</c:forEach>
				</select></td>
				<td id="td1" align="right">专业</td>
				<td><select id="search_specialtyID" name="search_specialtyID">
						<option value="">--请选择--</option>
						<c:forEach items="${specialtyList}" var="specialty"
							varStatus="status">
							<option value="${specialty.specialtyID}"
								<c:if test="${param.search_specialtyID eq specialty.specialtyID }">selected="selected"</c:if>>
								${specialty.nameCh}</option>
						</c:forEach>
				</select></td>
				<td id="td1" align="right">学号</td>
				<td><input class="text" type="text" id="txt_studentNum" name="search_studentNum" value="${param.search_studentNum}" /></td>
				<td id="s-td" colspan="3">
				    <input type="submit" class="btn" id="btn_query" value="查询" />
				</td>
			</tr>
		</table>
	</div>
	<!--这里是操作完成的消息提示区  -->
	<c:import url="/WEB-INF/include/message.jsp"></c:import>

	<!-- 列表区 -->
	<table id="table1">
		<thead>
			<tr id="tr1">
				<td id="title"><input id="chk_all" type="checkbox"
					width="10px;" onclick="javascript:allCheck()"></td>
				<td id="title" style="width: 50px;">序号</td>
				<td id="title">学习中心</td>
				<td id="title">层次</td>
				<td id="title">专业</td>
				<td id="title">批次</td>
				<td id="title">学号</td>
				<td id="title">姓名</td>
				<td id="title">用户名</td>
				<td id="title">课程编号</td>
				<td id="title">课程名称</td>
				<td id="title">总积分</td>
				<td id="title">详情</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${integralQueryList.content}" var="integralQuery"
				varStatus="status">
				<tr>
					<td id="title" width="30px"><input type="checkbox"
						id="chk_sub_checkBox" name="chk_sub_checkBox"
						value="${integralQuery.studentKey}/${integralQuery.courseID}"
						onclick="javascript:checkT_F()" /></td>
					<td id="title" style="width: 50px;">${status.count}</td>
					<td id="left">${integralQuery.stuCenNam}</td>
					<td id="left">${integralQuery.edulevelNam}</td>
					<td id="left">${integralQuery.specialtyNam}</td>
					<td id="left">${integralQuery.batchName}</td>
					<td id="left">${integralQuery.studentNum}</td>
					<td id="left">${integralQuery.nameCh}</td>
					<td id="left">${integralQuery.userName}</td>
					<td id="left">${integralQuery.courseID}</td>
					<td id="left">${integralQuery.courseName}</td>
					<td id="right">${integralQuery.integralCount}</td>
					<td id="left"><input type="button" value="详情"
						onclick="leave('${ctx}/integralQuery/details','${integralQuery.studentKey}','${integralQuery.courseID}')" /></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<!-- 分页组件区 -->
	<!-- TODO：后期这里可能会持续改进 -->
	<tags:pagination page="${integralQueryList}" />

	<!-- 按钮区  -->
	<div class="content" align="center">
		<span class="add">
		   <input class="btn" type="button" value="导出分析表" id="" onclick="exportToExcel('${ctx}/integralQuery/export')" />
		</span>
		<p>
	</div>
</form>
