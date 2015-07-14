<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<tags:wjs items="calendar.js"></tags:wjs> 
<tags:wjs items="checkbox.js"></tags:wjs>
<tags:wcss items="message.css"></tags:wcss>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!--导航区 -->
<div class="top">
	<ul>
		<li>学生选课查询</li>
		<p>查询与统计>>学生选课查询</p>
	</ul>
</div>

<!-- 检索条件 -->
<form id="searchForm" action="${ctx }/courseSelectQuery">
	<div class="gly-top">
	<table id="s-table">
		<tr>
			<td id="td1" align="right">平台</td>
			<td>
				<tags:wselect id="platForm" key="PlatForm" name="search_platForm" value="${param.search_platForm}" />		
			</td>
		<td id="td1" align="right">学习中心</td>
		<td><select id="search_organizationKey" name="search_organizationKey" >
					<option value="">--请选择--</option>
					<c:forEach items="${studyCenterList}" var="studyCenter" varStatus="status">
						<option value="${studyCenter.organizationKey}" <c:if test="${param.search_organizationKey eq studyCenter.organizationKey }">selected="selected"</c:if>>
							${studyCenter.nameCh}
						</option>	
					</c:forEach>
				</select></td>
			<td id="td1" align="right">课程类型</td>
			<td>
				<tags:wselect id="courseType" key="CourseType" name="search_courseType" value="${param.search_courseType}" />		
			</td>
		</tr>
		<tr>	
			<td id="td1" align="right">课程编号</td>
			<td>
				<input  class="text" type="text" id="txt_courseID" name="search_courseID" value="${param.search_courseID}" />
			</td>
			<td id="td1" align="right">课程名称</td>
			<td>
				<input  class="text" type="text" id="txt_courseName" name="search_courseName" value="${param.search_courseName}" />
			</td>	
			<td id="td1" align="right">学号</td>
			<td>
				<input  class="text" type="text" id="txt_studentNum" name="search_studentNum" value="${param.search_studentNum}" />	
			</td>
		</tr>
		<tr>
			<td id="td1" align="right">学生姓名</td>
			<td>
				<input  class="text" type="text" id="txt_userNameCh" name="search_userNameCh" value="${param.search_userNameCh}" />	
			</td>
			<td id="td1" align="right">开课时间</td>
			<td>
				<input id="txt_beginTime" class="Wdate" name="search_beginTime" type="text" onClick="WdatePicker()" value="${param.search_beginTime}">
			</td>
			<td>至</td>
			<td>
				<input id="txt_endTime" class="Wdate" name="search_endTime" type="text" onClick="WdatePicker()" value="${param.search_endTime }">
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
			<td id="title">学号</td>
			<td id="title">姓名</td>
			<td id="title">学习中心</td>
			<td id="title">课程编号</td>
			<td id="title">课程名称</td>
			<td id="title">学分</td>
			<td id="title">学时</td>
			<td id="title">选课学期</td>
			<td id="title">开课时间</td>
			<td id="title">选课类别</td>
			<td id="title">课程类型</td>
			<td id="title">考试方式</td>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${courseSelectQueryList.content}" var="courseSelectQuery" varStatus="status">
			<tr>
				<td id="title" width="30px">
					<input type="checkbox" id="chk_sub_checkBox" name="chk_sub_checkBox" value="${courseSelectQuery.courseSelectInfoKey}" onclick="javascript:checkT_F()"/>
				</td>
				<td id="title" style="width:50px;">${status.count}</td>
				<td id="left">${courseSelectQuery.studentNum}</td>
				<td id="left">${courseSelectQuery.userNameCh }</td>
				<td id="left">${courseSelectQuery.studyCenterName } </td>
				<td id="left">${courseSelectQuery.courseID }</td>
				<td id="left">${courseSelectQuery.courseName}</td>
				<td id="right">${courseSelectQuery.score}</td>
				<td id="right">${courseSelectQuery.classHour}</td>
				<td id="left">${courseSelectQuery.courseSelectTermName}</td>
				<fmt:parseDate value="${courseSelectQuery.startTime}" var="now" pattern="yyyy-MM-dd"/>
				<td id="left"><fmt:formatDate value="${now}" /></td>
				<td id="left">${dict:display("CourseSelectType",courseSelectQuery.courseSelectType) } </td>
				<td id="left">${dict:display("CourseType",courseSelectQuery.courseType) } </td>
				<td id="left">${dict:display("ExamModel",courseSelectQuery.examModel) }</td>
			</tr>                                                             
		</c:forEach>
	</tbody>	
	</table>
<!-- 分页组件区 -->
<!-- TODO：后期这里可能会持续改进 -->
<tags:pagination page="${courseSelectQueryList}"/>

<!-- 按钮区  -->
<div class="content" align="center">
	<span class="add"><input class="btn" type="button" value="导出" id="" onclick="exportToExcel('${ctx}/courseSelectQuery/export')"/></span>
	<p>
</div>
</form>