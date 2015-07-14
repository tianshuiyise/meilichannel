<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>

<tags:wjs items="checkbox.js"></tags:wjs>
<tags:wcss items="message.css"></tags:wcss>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<script type="text/javascript">
function changeBelongExamBatch(path){
 $("#searchForm").action=path;
 $("#searchForm").submit();
}

function skipStudyCenter(controllerUrl,belongBatchID, studyCenterKey) {
	window.location.href=controllerUrl+"?belongBatchID="+belongBatchID+"&studyCenterKey="+studyCenterKey;
}
</script>


<!--导航区 -->
<div class="top">
	<ul>
		<li>课程成绩统计</li>
		<p>查询与统计>>课程成绩统计</p>
	</ul>
</div>
<!-- 检索条件 -->
<form id="searchForm" action="${ctx }/courseScoreStatistics">
	<div class="gly-top">
	<table id="s-table">
		<tr>
			 <td id="td1" align="right">考试批次 </td>
			 <td>
				<select id="search_examBatch.belongExamBatchID" name="search_belongBatchID" onchange="changeBelongExamBatch('${ctx }/courseScoreStatistics')">
					<!-- <option value="">--请选择--</option> -->
					<c:forEach items="${belongExamBatchList}" var="examBatch" varStatus="status">
						<option value="${examBatch.belongBatchID}" <c:if test="${param.search_belongBatchID eq examBatch.belongBatchID }">selected="selected" <c:set var="belongBatchID" value="${examBatch.belongBatchID}"></c:set>  </c:if>>
							${examBatch.belongBatchName}
							
						</option>	
					</c:forEach>
				</select>		
			</td>
			
			<td id="td1" align="right">学习中心 </td>
			 <td>
				<select id="studyCenterKey" name="search_studyCenterKey" onchange="changeBelongExamBatch('${ctx }/courseScoreStatistics')">
					<!-- <option value="">--请选择--</option> -->
					<c:forEach items="${studyCenterList}" var="center" varStatus="status">
						<option value="${center.studyCenterKey}" <c:if test="${param.search_studyCenterKey eq center.studyCenterKey }">selected="selected"  <c:set var="studyCenterKey" value="${center.studyCenterKey}"></c:set></c:if>>
							${center.studyCenterName}
							
							
						</option>	
					</c:forEach>
				</select>		
			</td>
			
			<td id="td1" align="right">课程 </td>
			 <td>
				<select id="courseID" name="search_courseID" onchange="changeBelongExamBatch('${ctx }/courseScoreStatistics')">
					<!-- <option value="">--请选择--</option> -->
					<c:forEach items="${examCourseInfoList}" var="examCourseInfo" varStatus="status">
						<option value="${examCourseInfo.courseID}" <c:if test="${param.search_courseID eq examCourseInfo.courseID }">selected="selected"</c:if>>
							${examCourseInfo.courseName}
						</option>	
					</c:forEach>
				</select>		
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
			<td id="title"> </td>
			<td id="title">约考 </td>
			<td id="title">缺考 </td>
			<td id="title">作弊 </td>
			<td id="title">及格 </td>
			<td id="title">&lt;60 </td>
			<td id="title">60-70 </td>
			<td id="title">70-80 </td>
			<td id="title">80-90 </td>
			<td id="title">&gt;90 </td>
		</tr>
	</thead>
	<tbody>
		<tr id="tr1">
			<td id="title">人次</td>
			<td id="title">${examStatisticsResult.appointExamStudentNum } </td>
			<td id="title">${examStatisticsResult.missExamStudentNum} </td>
			<td id="title">${examStatisticsResult.cheatStudentNum  }</td>
			<td id="title">${examStatisticsResult.passStudentNum} </td>
			<td id="title">${examStatisticsResult.overallScoreLess60Num } </td>
			<td id="title">${examStatisticsResult.overallScoreBetween60and70Num } </td>
			<td id="title">${examStatisticsResult.overallScoreBetween70and80Num  }</td>
			<td id="title">${examStatisticsResult.overallScoreBetween80and90Num  }</td>
			<td id="title">${examStatisticsResult.overallScoreMore90Num } </td>
		</tr>
		<tr id="tr1">
			<td id="title">百分比 </td>
			<td id="title">${examStatisticsResult.appointExamStudentRate } </td>
			<td id="title">${examStatisticsResult.missExamRate } </td>
			<td id="title">${examStatisticsResult.cheatRate } </td>
			<td id="title">${examStatisticsResult.passRate } </td>
			<td id="title">${examStatisticsResult.overallScoreLess60Rate } </td>
			<td id="title">${examStatisticsResult.overallScoreBetween60and70Rate } </td>
			<td id="title">${examStatisticsResult.overallScoreBetween70and80Rate } </td>
			<td id="title">${examStatisticsResult.overallScoreBetween80and90Rate } </td>
			<td id="title">${examStatisticsResult.overallScoreMore90Rate } </td>
		</tr>
	
	</tbody>
	</table>
	<br/><br/><br/><br/>
	<table id="table1">
	<thead>
		<tr id="tr1">
			<td id="title" >
				<input id="chk_all" type="checkbox" width="10px;" onclick="javascript:allCheck()">
			</td>
			<td id="title" style="width:50px;" >序号</td>
			<td id="title" >考试批次</td>
			<td id="title" >学习中心</td>
			<td id="title" >学号</td>
			<td id="title" >姓名</td>
			<td id="title" >课程名称</td>
			<td id="title" >考核形式</td>
			<td id="title" >平时成绩</td>
			<td id="title" >平时成绩比例</td>
			<td id="title" >期末成绩</td>
			<td id="title" >期末成绩比例</td>
			<td id="title" >总评成绩</td>
			<td id="title" >考场记录</td>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${courseScoreStatisticsList.content}" var="courseScoreStatistics" varStatus="status">
			<tr>
				<td id="title" width="30px">
					<input type="checkbox" id="chk_sub_checkBox" name="chk_sub_checkBox" value="${courseScoreStatistics.studyCenterKey}/${courseScoreStatistics.examBatch.belongBatchID}/${courseScoreStatistics.examCourseInfo.courseID}/${courseScoreStatistics.studentScoreInfo.studentScoreInfoKey}" onclick="javascript:checkT_F()"/>
				</td>
				<td id="title" style="width:50px;">${status.count}</td>
				<td id="left">${courseScoreStatistics.examBatch.belongBatchName}</td>
				<td id="left">${courseScoreStatistics.studyCenterName}</td>
				<td id="left">${courseScoreStatistics.studentScoreInfo.studentNum}</td>
				<td id="left">${courseScoreStatistics.studentScoreInfo.studentName}</td>
				<td id="left">${courseScoreStatistics.examCourseInfo.courseName}</td>
				<td id="left">${dict:display('ExamModel',courseScoreStatistics.examCourseInfo.examModel)}</td>
				<td id="right">${courseScoreStatistics.studentScoreInfo.usualScore}</td>
				<td id="right">${courseScoreStatistics.examCourseInfo.usualScoreWeight}</td>
				<td id="right">${courseScoreStatistics.studentScoreInfo.examlScore}</td>
				<td id="right">${courseScoreStatistics.examCourseInfo.examlScoreWeight}</td>
				<td id="right">${courseScoreStatistics.studentScoreInfo.overallScore}</td>
				<td id="left">${dict:display('ExamRecord',courseScoreStatistics.studentScoreInfo.examRecord)}</td>
			</tr>                                                             
		</c:forEach>
	</tbody>	
	</table>
<!-- 分页组件区 -->
<!-- TODO：后期这里可能会持续改进 -->
<tags:pagination page="${courseScoreStatisticsList}"/>

<!-- 按钮区  -->
<div class="content" align="center">
	<span class="add"><input class="btn" type="button" value="导出分析表" id="" onclick="exportToExcel('${ctx}/courseScoreStatistics/export')"/></span>
	<span class="add"><input class="btn" type="button" value="返回" id="" onclick="skipStudyCenter('${ctx}/studyCenterScoreStatistics','${belongBatchID}','${studyCenterKey}')"/></span>
	
	<p>
</div>
</form>