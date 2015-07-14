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
		<li>期末考试统计</li>
		<p>查询与统计>>期末考试统计</p>
	</ul>
</div>
<!-- 检索条件 -->
<form id="searchForm" action="${ctx }/finalExamStatistics">
	<div class="gly-top">
	<table id="s-table">
		<tr>
			 <td id="td1" align="right">考试批次</td>
			 <td>
				<select id="search_examBatch.belongExamBatchID" name="search_belongBatchID" onchange="changeBelongExamBatch('${ctx }/finalExamStatistics')">
					<!-- <option value="">--请选择--</option> -->
					<c:forEach items="${belongExamBatchList}" var="examBatch" varStatus="status">
						<option value="${examBatch.belongBatchID}" <c:if test="${param.search_belongBatchID eq examBatch.belongBatchID }">selected="selected"</c:if>>
							${examBatch.belongBatchName}
						</option>	
					</c:forEach>
				</select>		
			</td>
		</tr>
		<tr>	
			<td id="td1" align="right">涉考学习中心数</td>
			<td>
				<input  class="text" type="text" id="txt_studentNum" name="studyCenterInvolvedNum" disabled="disabled" value="${examStatisticsResult.studyCenterInvolvedNum}" />
			</td>
			<td id="td1" align="right">涉考课程门次</td>
			<td>
				<input  class="text" type="text" id="txt_studentNum" name="courseInvolvedNum"  disabled="disabled" value="${examStatisticsResult.courseInvolvedNum}" />
			</td>
			<td id="td1" align="right">涉考人次</td>
			<td>
				<input  class="text" type="text" id="txt_studentNum" name="studentInvolvedNum" disabled="disabled"  value="${examStatisticsResult.studentInvolvedNum}" />
			</td>
			<td id="td1" align="right">缺考人次</td>
			<td>
				<input  class="text" type="text" id="txt_studentNum" name="missExamStudentNum"  disabled="disabled" value="${examStatisticsResult.missExamStudentNum}" />
			</td>
		</tr>
		<tr>	
			<td id="td1" align="right">缺考率</td>
			<td>
				<input  class="text" type="text" id="txt_studentNum" name="missExamRate" disabled="disabled"  value="${examStatisticsResult.missExamRate}" />
			</td>
			<td id="td1" align="right">作弊人次</td>
			<td>
				<input  class="text" type="text" id="txt_studentNum" name="cheatStudentNum" disabled="disabled"  value="${examStatisticsResult.cheatStudentNum}" />
			</td>
			<td id="td1" align="right">作弊率</td>
			<td>
				<input  class="text" type="text" id="txt_studentNum" name="cheatRate"  disabled="disabled"  value="${examStatisticsResult.cheatRate}" />
			</td>
			<td id="td1" align="right">及格人次</td>
			<td>
				<input  class="text" type="text" id="txt_studentNum" name="passStudentNum"  disabled="disabled" value="${examStatisticsResult.passStudentNum}" />
			</td>
		</tr>
		<tr>
			<td id="td1" align="right">及格率</td>
			<td>
				<input  class="text" type="text" id="txt_studentNum" name="passRate" disabled="disabled"  value="${examStatisticsResult.passRate}" />
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
			<td id="title" rowspan="2">
				<input id="chk_all" type="checkbox" width="10px;" onclick="javascript:allCheck()">
			</td>
			<td id="title" style="width:50px;" rowspan="2">序号</td>
			<td id="title" rowspan="2">学习中心</td>
			<td id="title" rowspan="2">约考人次<!-- 约考人数 --></td>
			<td id="title" rowspan="2">缺考人次<!-- 缺考人数 --></td>
			<td id="title" rowspan="2">缺考率</td>
			<td id="title" rowspan="2">作弊人次</td>
			<td id="title" rowspan="2">作弊率</td>
			<td id="title" rowspan="2">及格人次</td>
			<td id="title" rowspan="2">及格率</td>
			<td id="title" colspan="5">期末成绩统计/百分比</td>
			<td id="title" colspan="5">总评成绩统计/百分比</td>
			<td id="title"  rowspan="2">学习中心成绩统计</td>
		</tr>
		<tr  id="tr1">
			<td id="title">&lt;60</td>
			<td id="title">60-70</td>
			<td id="title">70-80</td>
			<td id="title">80-90</td>
			<td id="title">&gt;90</td>
			<td id="title">&lt;60</td>
			<td id="title">60-70</td>
			<td id="title">70-80</td>
			<td id="title">80-90</td>
			<td id="title">&gt;90</td>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${examStatisticList.content}" var="examStatistic" varStatus="status">
			<tr>
				<td id="title" width="30px">
					<input type="checkbox" id="chk_sub_checkBox" name="chk_sub_checkBox" value="${examStatistic.studyCenterKey}/${examStatistic.examBatch.belongBatchID}" onclick="javascript:checkT_F()"/>
				</td>
				<td id="title" style="width:50px;">${status.count}</td>
				<td id="left">${examStatistic.studyCenterName}</td>
				<td id="right">${examStatistic.appointExamStudentNum}</td>
				<td id="right">${examStatistic.missExamStudentNum}</td>
				<td id="right">${examStatistic.missExamRate}</td>
				<td id="right">${examStatistic.cheatStudentNum}</td>
				<td id="right">${examStatistic.cheatRate}</td>
				<td id="right">${examStatistic.passStudentNum}</td>
				<td id="right">${examStatistic.passRate}</td>
				<td id="right">${examStatistic.examScoreLess60Rate}</td>
				<td id="right">${examStatistic.examScoreBetween60and70Rate}</td>
				<td id="right">${examStatistic.examScoreBetween70and80Rate}</td>
				<td id="right">${examStatistic.examScoreBetween80and90Rate}</td>
				<td id="right">${examStatistic.examScoreMore90Rate}</td>
				<td id="right">${examStatistic.overallScoreLess60Rate}</td>
				<td id="right">${examStatistic.overallScoreBetween60and70Rate}</td>
				<td id="right">${examStatistic.overallScoreBetween70and80Rate}</td>
				<td id="right">${examStatistic.overallScoreBetween80and90Rate}</td>
				<td id="right">${examStatistic.overallScoreMore90Rate}</td>
				<td id="left"><input type="button"  value="学习中心成绩查询" onclick="skipStudyCenter('${ctx}/studyCenterScoreStatistics','${examStatistic.examBatch.belongBatchID}','${examStatistic.studyCenterKey}')"/> 
				</td>
			</tr>                                                             
		</c:forEach>
	</tbody>	
	</table>
<!-- 分页组件区 -->
<!-- TODO：后期这里可能会持续改进 -->
<tags:pagination page="${examStatisticList}"/>

<!-- 按钮区  -->
<div class="content" align="center">
	<span class="add"><input class="btn" type="button" value="导出分析表" id="" onclick="exportToExcel('${ctx}/finalExamStatistics/export')"/></span>
	<p>
</div>
</form>