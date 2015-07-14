<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<tags:wjs items="checkbox.js" />
<tags:wcss items="message.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!--导航区 -->
<div class="top">
	<ul>
		<li>课程信息管理</li>
		<p>基本数据>>课程信息管理</p>
	</ul>
</div>

<!-- 检索条件 -->
<form id="searchForm" action="${ctx}/courses">
	<div class="gly-top">
		<table id="s-table">
			<tr>
				<td id="td1">课程名称&nbsp;
					<input type="text" id="txt_nameCh" name="search_nameCh" value="${param.search_nameCh}" class="text"/>
				</td>
				<td id="td1">课程编号&nbsp;
					<input type="text" id="txt_courseID" name="search_courseID" value="${param.search_courseID}" class="text"/>
				</td>
				<%-- <td id="td1">课程类型&nbsp;
					<tags:wselect id="courseType" key="CourseType" name="search_courseType" value="${param.search_courseType}" />
				</td> --%>
				<td id="td1">适用专业&nbsp;
					<select id="search_specialtiesCode" name="search_specialtiesCode" >
						<option value="">--请选择--</option>
						<c:forEach items="${specialtyList}" var="specialty" varStatus="status">
							<option value="${specialty.specialtyID}" <c:if test="${param.search_specialtiesCode eq specialty.specialtyID }">selected="selected"</c:if>>
								${specialty.nameCh}
							</option>
						</c:forEach>
					</select>		
				</td>
				<td id="td1">适用层次&nbsp;
					<select id="search_specialtiesLevel" name="search_specialtiesLevel">
						<option value="">--请选择--</option>
						<c:forEach items="${levelList}" var="level" varStatus="status">
							<option value="${level.edulevelID}" <c:if test="${param.search_specialtiesLevel eq level.edulevelID}">selected="selected"</c:if>>
								${level.levelName}
							</option>
						</c:forEach>	
					</select>	
				</td>
				
				<td id="s-td">
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
			<td id="title">课程编号</td>
			<td id="title">课程名称</td>
			<td id="title">课程类型</td>
			<td id="title">选课类型</td>
			<td id="title">已分配教师数</td>
			<td id="title">主讲教师</td>
			<!-- <td id="title">状态</td> -->
			<td id="title">创建时间</td>
			<td id="title">操作</td>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${courseList.content}" var="course" varStatus="status">
			<tr>
				<td id="title" width="30px">
					<input type="checkbox" id="chk_sub_checkBox" name="chk_sub_checkBox" value="${course.courseKey }" onclick="javascript:checkT_F()"/>
				</td>
				<td id="title" style="width:50px;">${status.count}</td>
				<td id="left">${course.courseID}</td>
				<td id="left"><a onclick="modify('${ctx}/courses/detailList', '${course.courseKey }')">${course.nameCh}</a></td>
				<td id="left">${dict:display('CourseType', course.courseType)}</td>
				<td id="left">${dict:display('CourseSelectType', course.courseSelectType)}</td>
				<td id="right">${fn:length(course.teachers) }</td>
				<td id="left">
					<c:forEach items="${course.teachers }" var="teacher" varStatus="status">
						<c:choose>
							<c:when test="${status.count == fn:length(course.teachers) }">${teacher.userNameCh }</c:when>
							<c:otherwise>${teacher.userNameCh }、</c:otherwise>
						</c:choose>
					
					</c:forEach>
				</td>
				<!-- <td id="left"></td> -->
				<fmt:parseDate value="${course.createDate }" var="now" pattern="yyyy-MM-dd"/>
				<td id="left"><fmt:formatDate value="${now}" /></td>
				<td id="title">
					<input type="button" id="btn_modify" value="任课安排" onclick="coursePlan('${ctx}/courses/coursePlanMng', '${course.courseKey }')"/>
					<input type="button" id="btn_define" value="章节定义" onclick="modify('${ctx}/courseChapter', '${course.courseKey }')"/>
					<input type="button" id="btn_define" value="知识点定义" onclick="modify('${ctx}/courseKnowledgePoint', '${course.courseKey}')"/>
					<input type="button" id="btn_modify" value="修改" onclick="modify('${ctx}/courses/preModify', '${course.courseKey }')"/> 
					<input type="button" id="btn_delete" value="删除" onclick="singleDelete('删除该课程后，该课程的有关信息将同时删除！确实要删除吗？', '${ctx}/courses/singleDelete', '${course.courseKey }')"/>
				</td>
			</tr>
		</c:forEach>
	</tbody>		
</table>

<!-- 分页组件区 -->
<!-- TODO：后期这里可能会持续改进 -->
<tags:pagination page="${courseList}"/>

<!-- 按钮区  -->
	<div class="content" align="center">
		<span class="add"><input class="btn" type="button" value="添加" id="btn_add" onclick="add('${ctx}/courses/preAdd')"/></span>
		<span class="add"><input class="btn" type="button" value="导出" id="btn_export" onclick="exportToExcel('${ctx}/courses/export')"/></span>
		<span class="add"><input class="btn" type="button" value="批量删除" id="btn_batch_delete" onclick="batchDelete('删除该课程后，该课程的有关信息将同时删除！确实要删除吗？','${ctx}/courses/batchDelete')"/></span>
		<p>
	</div>
</form>


<script type="text/javascript">
function coursePlan(controllerUrl, key) {
	window.location.href=controllerUrl+"?key="+key;
}

</script> 
