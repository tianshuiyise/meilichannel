<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<tags:wjs items="checkbox.js"></tags:wjs>
<tags:wcss items="message.css"></tags:wcss>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!--导航区 -->
<div class="top">
	<ul>
		<li>学生成绩查询</li>
		<p>查询与统计>>学生成绩查询</p>
	</ul>
</div>
<!-- 检索条件 -->
<form id="searchForm" action="${ctx }/studentScoreStatistics">
<div class="gly-top">
	<table id="s-table">
		<tr>
		<td id="td1" align="right">省份</td>
		<td><select id="search_province" name="search_province" >
					<option value="">--请选择--</option>
					<c:forEach items="${provinceList}" var="province" varStatus="status">
						<option value="${province}" <c:if test="${param.search_province eq province }">selected="selected"</c:if>>
							${province}
						</option>	
					</c:forEach>
				</select>	
		</td>
		<td id="td1" align="right">学习中心</td>
		<td><select id="search_studyCenterKey" name="search_studyCenterKey" >
					<option value="">--请选择--</option>
					<c:forEach items="${studyCenterList}" var="studyCenter" varStatus="status">
						<option value="${studyCenter.organizationKey}" <c:if test="${param.search_studyCenterKey eq studyCenter.organizationKey }">selected="selected"</c:if>>
							${studyCenter.nameCh}
						</option>	
					</c:forEach>
				</select>
		</td>
		<td id="td1" align="right">批次</td>
		<td><select id="search_batchID" name="search_batchID" >
				<option value="">--请选择--</option>
					<c:forEach items="${batchList}" var="batch" varStatus="status">
						<option value="${batch.batchID}" <c:if test="${param.search_batchID eq batch.batchID }">selected="selected"</c:if>>
							${batch.batchName}
						</option>	
					</c:forEach>
				</select>
		</td>
		</tr>
		<tr>
		<td id="td1" align="right">考试批次</td>
		<td><select id="search_belongBatchID" name="search_belongBatchID" >
					<option value="">--请选择--</option>
					<c:forEach items="${examBatchList}" var="examBatch" varStatus="status">
						<option value="${examBatch.belongBatchID}" <c:if test="${param.search_belongBatchID eq examBatch.belongBatchID }">selected="selected"</c:if>>
							${examBatch.belongBatchName}
						</option>	
					</c:forEach>
				</select>
		</td>
		<td id="td1" align="right">专业</td>
		<td><select id="search_specialtyID" name="search_specialtyID" >
					<option value="">--请选择--</option>
					<c:forEach items="${specialtyList}" var="specialty" varStatus="status">
						<option value="${specialty.specialtyID}" <c:if test="${param.search_specialtyID eq specialty.specialtyID }">selected="selected"</c:if>>
							${specialty.nameCh}
						</option>	
					</c:forEach>
				</select>
		</td>
		<td id="td1" align="right">层次</td>
		<td><select id="search_edulevelID" name="search_edulevelID">
				<option value="">--请选择--</option>
					<c:forEach items="${levelList}" var="level" varStatus="status">
						<option value="${level.edulevelID}"<c:if test="${param.search_edulevelID eq level.edulevelID }">selected="selected"</c:if>>
							${level.levelName}
						</option>
					</c:forEach>
				</select>
		</td>
		</tr>
		<tr>
		<td id="td1" align="right">状态</td>
		<td>
			<tags:wselect id="StudentStatus" key="StudentStatus" name="search_studentStatus" value="${param.search_studentStatus}" />
		</td>
		<td id="td1" align="right">学生学号</td>
		<td>
			<input  class="text" type="text" id="txt_studentNum" name="search_studentNum" value="${param.search_studentNum}" />
		</td>
		<td id="td1" align="right">学生姓名</td>
		<td>
			<input  class="text" type="text" id="txt_nameCh" name="search_nameCh" value="${param.search_nameCh}" />
		</td>
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
				<td id="title" >学号</td>
				<td id="title" >姓名</td>
				<td id="title" >课程名称</td>
				<td id="title" >学分</td>
				<td id="title" >学时</td>
				<td id="title" >选课学期</td>
				<td id="title" >开课时间</td>
				<td id="title" >课程类型</td>
				<td id="title" >考试方式</td>
				<td id="title" >平时成绩</td>
				<td id="title" >考试成绩</td>
				<td id="title" >附加分</td>
				<td id="title" >总评成绩</td>
				<td id="title" >考试批次</td>
				<td id="title" >状态</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${studentScoreStatisticsList.content}" var="studentScore" varStatus="status">
				<tr>
					<td id="title" width="30px">
						<input type="checkbox" id="chk_sub_checkBox" name="chk_sub_checkBox" value="${studentScore.studentScoreInfoKey }/${studentScore.studentKey}/${studentScore.examCourseInfoKey}/${studentScore.usualScore}/${studentScore.examlScore}/${studentScore.overallScore}" onclick="javascript:checkT_F()" />
					</td>
					<td id="title" style="width: 50px;">${status.count}</td>
					<td id="left">${studentScore.studentNum}</td>
					<td id="left">${studentScore.nameCh}</td>
					<td id="left">${studentScore.courseName}</td>
					<td id="right">${studentScore.score}</td>
					<td id="right">${studentScore.classHour}</td>
					<td id="left">${studentScore.courseSelectTermName}</td>
					<fmt:parseDate value="${studentScore.startTime}" var="startTime" pattern="yyyy-MM-dd"/>
					<td id="right"><fmt:formatDate value='${startTime}'/></td>
					<td id="left">${dict:display('CourseType',studentScore.courseType)}</td>
					<td id="left">${dict:display('ExamModel',studentScore.examModel)}</td>
					<td id="right">${studentScore.usualScore}</td>
					<td id="right">${studentScore.examlScore}</td>
					<td id="right">${studentScore.appendScore}</td>
					<td id="right">${studentScore.overallScore}</td>
					<td id="left">${studentScore.examBatchName}</td>
					<td id="left">${studentScore.examStatus}</td>
					</tr>
				</c:forEach>
		</tbody>
	</table>
	
<!-- 分页组件区 -->
<!-- TODO：后期这里可能会持续改进 -->
<tags:pagination page="${studentScoreStatisticsList}"/>
	<!-- 按钮区  -->
	<div class="content" align="center">
		<span class="add">
			<input class="btn" type="button" value="导出" id=""onclick="exportToExcel('${ctx}/studentScoreStatistics/export')" />
		</span> 
		<p>
	</div>
</form>
