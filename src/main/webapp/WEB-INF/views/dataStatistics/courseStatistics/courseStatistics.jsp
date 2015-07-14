<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 

<tags:wjs items="checkbox.js"></tags:wjs>
<tags:wcss items="message.css"></tags:wcss>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!--导航区 -->
<div class="top">
	<ul>
		<li>课程查询统计</li>
		<p>查询与统计>>课程查询统计</p>
	</ul>
</div>

<!-- 检索条件 -->
<form id="searchForm" action="${ctx }/courseStatistics" method="post">
	<div class="gly-top">
	<table id="s-table">
		<tr>
			<td id="td1" align="right">平台</td>
			<td>
				<tags:wselect id="platForm" key="PlatForm" name="search_platForm" value="${param.search_platForm}" />		
			</td>
			<td id="td1" align="right">层次</td>
			<td>
				<select id="search_edulevelID" name="search_edulevelID">
					<option value="">--请选择--</option>
					<c:forEach items="${levelList}" var="level" varStatus="status">
						<option value="${level.edulevelID}"<c:if test="${param.search_edulevelID eq level.edulevelID }">selected="selected"</c:if>>
							${level.levelName}
						</option>
					</c:forEach>
				</select>	
			</td>
			<td id="td1" align="right">专业</td>
			<td>
				<select id="search_specialtyID" name="search_specialtyID" >
					<option value="">--请选择--</option>
					<c:forEach items="${specialtyList}" var="specialty" varStatus="status">
						<option value="${specialty.specialtyID}" <c:if test="${param.search_specialtyID eq specialty.specialtyID }">selected="selected"</c:if>>
							${specialty.nameCh}
						</option>	
					</c:forEach>
				</select>		
			</td>
			<td></td>
		</tr>
		
		<tr>	
			<td id="td1" align="right">是否统考</td>
				<td>
					<select name="search_attributeFlgs">
						<option value="">--请选择--</option>
						<option value="1" <c:if test="${param.search_attributeFlgs eq '1'}">selected='selected'</c:if>>是</option>
						<option value="0" <c:if test="${param.search_attributeFlgs eq '0'}">selected='selected'</c:if>>否</option>
					</select>
				</td>
			<td id="td1" align="right">课程名称</td>
			<td>
				<input class="text" type="text" id="txt_nameCh" name="search_nameCh" value="${param.search_nameCh}" />
			</td>
			<td id="td1" align="right">课程代码</td>
			<td>
				<input class="text" type="text" id="txt_courseID" name="search_courseID" value="${param.search_courseID}" />
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
			<td id="title">课程代码</td>
			<td id="title">课程名称</td>
			<td id="title">英文名</td>
			<td id="title">课程类型</td>
			<td id="title">专业</td>
			<td id="title">层次</td>
			<td id="title">是否统考</td>			
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${courseStatisticsList.content}" var="courseStatistics" varStatus="status">
			<tr>
				<td id="title" width="30px">
					<input type="checkbox" id="chk_sub_checkBox" name="chk_sub_checkBox" value="${courseStatistics.courseKey}" onclick="javascript:checkT_F()"/>
				</td>
				<td id="title" style="width:50px;">${status.count}</td>
				<td id="left">${courseStatistics.courseID}</td>
				<td id="left">${courseStatistics.nameCh}</td>
				<td id="left">${courseStatistics.nameEn}</td>
				<td id="left">${dict:display('CourseType',courseStatistics.courseType)}</td>
				<td id="left">
					<c:forEach items="${courseStatistics.specialtyList}" var="specialty" varStatus="status">
						<c:choose>
						<c:when test="${status.count == fn:length(courseStatistics.specialtyList) }">${specialty }</c:when>
						<c:otherwise>${specialty }、</c:otherwise>
						</c:choose>
					</c:forEach>
				</td>
				<td id="left">
					<c:forEach items="${courseStatistics.levelList}" var="levelName" varStatus="status">
						<c:choose>
						<c:when test="${status.count == fn:length(courseStatistics.levelList) }">${levelName }</c:when>
						<c:otherwise>${levelName }、</c:otherwise>
						</c:choose>
					</c:forEach>
				</td>
				<td id="left">
					<c:if test="${courseStatistics.tongkaoFlg eq '1'}">是</c:if>
					<c:if test="${courseStatistics.tongkaoFlg eq '0'}">否</c:if>
				</td>
			</tr>                                                             
		</c:forEach>
	</tbody>	
	</table>
<!-- 分页组件区 -->
<!-- TODO：后期这里可能会持续改进 -->
<tags:pagination page="${courseStatisticsList}"/>

<!-- 按钮区  -->
<div class="content" align="center">
	<span class="add"><input class="btn" type="button" value="导出" id="" onclick="exportToExcel('${ctx}/courseStatistics/export')"/></span>
	<p>
</div>
</form>