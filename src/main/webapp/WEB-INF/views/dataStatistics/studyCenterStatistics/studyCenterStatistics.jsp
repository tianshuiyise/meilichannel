<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 

<tags:wjs items="checkbox.js"></tags:wjs>
<tags:wcss items="message.css"></tags:wcss>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!--导航区 -->
<div class="top">
	<ul>
		<li>学生中心查询统计</li>
		<p>查询与统计>>学生中心查询统计</p>
	</ul>
</div>

<!-- 检索条件 -->
<form id="searchForm" action="${ctx }/studyCenterStatistics" method="post">
	<div class="gly-top">
	<table id="s-table">
		<tr>
			<td id="td1" align="right">平台</td>
			<td>
				<tags:wselect id="platForm" key="PlatForm" name="search_platForm" value="${param.search_platForm}" />		
			</td>
			<td id="td1" align="right">省份</td>
			<td>
				<select id="search_province" name="search_province" >
					<option value="">--请选择--</option>
					<c:forEach items="${provinceList}" var="province" varStatus="status">
						<option value="${province.province}" <c:if test="${param.search_province eq province.province }">selected="selected"</c:if>>
							${province.province}
						</option>
					</c:forEach>
				</select>		
			</td>
			<td id="td1" align="right">学习中心</td>
			<td>
				<select id="search_organizationKey" name="search_organizationKey" >
					<option value="">--请选择--</option>
					<c:forEach items="${studyCenterNameList}" var="studyCenter" varStatus="status">
						<option value="${studyCenter.organizationKey}" <c:if test="${param.search_organizationKey eq studyCenter.organizationKey }">selected="selected"</c:if>>
							${studyCenter.nameCh}
						</option>	
					</c:forEach>
				</select>		
			</td>
			<td id="s-td" >
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
			<td id="title">
				<input id="chk_all" type="checkbox" width="10px;" onclick="javascript:allCheck()">
			</td>
			<td id="title" style="width:50px;">序号</td>
			<td id="title">省市</td>
			<td id="title">学习中心代码</td>
			<td id="title">学习中心名称</td>
			<td id="title">招生层次</td>
			<td id="title">招生专业</td>
			<td id="title">详细信息</td>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${studyCenterList.content}" var="studyCenter" varStatus="status">
			<tr>
				<td id="title" width="30px">
					<input type="checkbox" id="chk_sub_checkBox" name="chk_sub_checkBox" value="${studyCenter.organizationKey}" onclick="javascript:checkT_F()"/>
				</td>
				<td id="title" style="width:50px;">${status.count}</td>
				<td id="left">${studyCenter.province}</td>
				<td id="left">${studyCenter.orgCode}</td>
				<td id="left">${studyCenter.nameCh}</td>
				<td id="left">
					<c:forEach items="${studyCenter.levelList }" var="level" varStatus="status">
						<c:choose>
							<c:when test="${status.count == fn:length(studyCenter.levelList) }">${level.levelName }</c:when>
							<c:otherwise>${level.levelName }、</c:otherwise>
						</c:choose>
					</c:forEach>
				</td>
				<td id="left">
					<c:forEach items="${studyCenter.specialtyList }" var="specialty" varStatus="status">
						<c:choose>
							<c:when test="${status.count == fn:length(studyCenter.specialtyList) }">${specialty.specialtyName }</c:when>
							<c:otherwise>${specialty.specialtyName }、</c:otherwise>
						</c:choose>
					</c:forEach>
				</td>
				<td id="title">
					<input type="button" id="btn_Details" value="详细信息" onclick="details('${ctx}/studyCenterStatistics/details', '${studyCenter.organizationKey }')"/> 
				</td>
			</tr>                                                             
		</c:forEach>
	</tbody>	
	</table>
<!-- 分页组件区 -->
<!-- TODO：后期这里可能会持续改进 -->
<tags:pagination page="${studyCenterList}"/>

<!-- 按钮区  -->
<div class="content" align="center">
	<span class="add"><input class="btn" type="button" value="导出" id="" onclick="exportToExcel('${ctx}/studyCenterStatistics/export')"/></span>
	<p>
</div>
</form>

<script type="text/javascript">
function details(controllerUrl, organizationKey) {
	window.location.href = controllerUrl + "?organizationKey=" + organizationKey;
}
</script>