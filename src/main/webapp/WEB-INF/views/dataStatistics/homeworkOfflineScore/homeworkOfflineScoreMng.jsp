<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>

<tags:wjs items="checkbox.js"></tags:wjs>
<tags:wcss items="message.css"></tags:wcss>
<tags:wjs items="calendar.js"></tags:wjs>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!--导航区 -->
<div class="top">
	<ul>
		<li>离线作业成绩查询</li>
		<p>查询与统计>>离线作业成绩查询</p>
	</ul>
</div>

<!-- 检索条件 -->
<form id="searchForm" action="${ctx }/homeworkOfflineScore">
	<div class="gly-top">
	<table id="s-table">
		<tr>
			 <td id="td1" align="right">平台</td>
			 <td>
				<tags:wselect id="platForm" key="PlatForm" name="search_platForm" value="${param.search_platForm}" />		
			</td>
			<td id="td1" align="right">学习中心 </td>
			 <td>
				<select id="studyCenterKey" name="search_organizationKey" >
					<option value="">--请选择--</option>
					<c:forEach items="${studyCenterList}" var="center" varStatus="status">
						<option value="${center.studyCenterKey}" <c:if test="${param.search_organizationKey eq center.studyCenterKey }">selected="selected"  <c:set var="studyCenterKey" value="${center.studyCenterKey}"></c:set></c:if>>
							${center.studyCenterName}
						</option>	
					</c:forEach>
				</select>		
			</td>
			
			 <td id="td1" align="right">作业类型</td>
			 <td>
				<%-- <tags:wselect id="HomeworkType" key="HomeworkType" name="search_homeworkType" value="${param.search_homeworkType}" />		
			 --%>
			 <select id="homeworkType" name="search_homeworkType">
			 <option value="">--请选择--</option>
			 	<c:forEach items="${dict:list('HomeworkType')}" var="dict">
			 		<c:if test="${dict.code ne '0' }">
			 			<c:choose>
					 		<c:when test="${dict.code eq  param.search_homeworkType}">
					 			<option selected="selected" value="${dict.code }">${dict.label }</option>
					 		</c:when>
					 		<c:otherwise>
					 			<option value="${dict.code }">${dict.label }</option>
					 		</c:otherwise>
				 		</c:choose>
			 		</c:if>
			 	</c:forEach>
			 </select>
			 
			
			</td>
			
			<td id="td1" align="right">&nbsp;</td>
		</tr>
		<tr>	
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
			<td id="td1" align="right">课程名称</td>
			<td>
				<input  class="text" type="text" id="txt_courseName" name="search_courseName" value="${param.search_courseName}" />
			</td>
			<td id="td1" align="right">&nbsp;</td>
		</tr>	
		<tr>
			<td id="td1" align="right">布置时间</td>
			<td>
				<input class="Wdate"  type="text" id="txt_startDate" name="search_publishDateStart" onClick="WdatePicker()" value="${param.search_publishDateStart}" />
				~
				<input class="Wdate"  type="text" id="txt_endDate" name="search_publishDateEnd" onClick="WdatePicker()" value="${param.search_publishDateEnd}" />
			</td>
		
			<td id="td1" align="right">学号</td>
			<td>
				<input  class="text" type="text" id="txt_studentNum" name="search_studentNum" value="${param.search_studentNum}" />
			</td>
			
			<td id="td1" align="right" colspan="3">&nbsp;</td>	
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
			<td id="title">学习中心</td>
			<td id="title">层次</td>
			<td id="title">专业</td>
			<td id="title">学号</td>
			<td id="title">姓名</td>
			<td id="title">课程名称</td>
			<td id="title">作业名称</td>
			<!-- <td id="title">历次</td> -->
			<td id="title">成绩</td>
			<td id="title">布置/下载时间</td>
			<td id="title">完成/提交/上传时间</td>
			<td id="title">批阅时间</td>
			<td id="title">批阅备注</td>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${homeworkScoreList.content}" var="homeworkScore" varStatus="status">
			<tr>
				<td id="title" width="30px">
					<input type="checkbox" id="chk_sub_checkBox" name="chk_sub_checkBox" value="${homeworkScore.homeworkScoreInfoKey}" onclick="javascript:checkT_F()"/>
				</td>
				<td id="title" style="width:50px;">${status.count}</td>
				<td id="left">${homeworkScore.organizationName}</td>
				<td id="left">${homeworkScore.edulevelName}</td>
				<td id="left">${homeworkScore.specialtyName}</td>
				<td id="left">${homeworkScore.studentNum}</td>
				<td id="left">${homeworkScore.studentName}</td>
				<td id="left">${homeworkScore.courseName}</td>
				<td id="left">${homeworkScore.homeworkName}</td>
				<%-- <td id="title" style="width:50px;">${status.count}</td> --%>
				<td id="right">${homeworkScore.score}</td>
				<fmt:parseDate value="${homeworkScore.publishDate}" var="publishDate" ></fmt:parseDate>
				<td id="left"> <fmt:formatDate value="${publishDate}" pattern="yyyy-MM-dd"/></td>
				<fmt:parseDate value="${homeworkScore.finishDate}" var="finishDate" ></fmt:parseDate>
				<td id="left"> <fmt:formatDate value="${finishDate}" pattern="yyyy-MM-dd"/></td>
				<fmt:parseDate value="${homeworkScore.perusalDate}" var="perusalDate" ></fmt:parseDate>
				<td id="left"> <fmt:formatDate value="${perusalDate}" pattern="yyyy-MM-dd"/></td>
				<td id="left">${homeworkScore.perusalRemark}</td>
			</tr>                                                             
		</c:forEach>
	</tbody>	
	</table>
<!-- 分页组件区 -->
<!-- TODO：后期这里可能会持续改进 -->
<tags:pagination page="${homeworkScoreList}"/>

<!-- 按钮区  -->
<div class="content" align="center">
	<span class="add"><input class="btn" type="button" value="导出" id="" onclick="exportToExcel('${ctx}/homeworkOfflineScore/export')"/></span>
	<p>
</div>
</form>