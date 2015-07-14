<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<tags:wjs items="checkbox.js"></tags:wjs>
<tags:wcss items="message.css"></tags:wcss>
<tags:wjs items="calendar.js"></tags:wjs>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!--导航区 -->
<div class="top">
	<ul>
		<li>考试批次定义</li>
		<p>查询与统计>>考试批次定义</p>
	</ul>
</div>
<!-- 检索条件 -->
<form id="searchForm" action="${ctx }/examBatchDefine">
<div class="gly-top">
		<table id="s-table">
		<tr>
		<td id="td1" align="right">平台</td>
		<td><tags:wselect id="platForm"
						key="PlatForm" name="search_platForm"
						value="${param.search_platForm}" /></td>
		<td id="td1" align="right">考试时间</td>
		<td><input class="Wdate"  type="text" id="txt_startDate" name="search_startDate" onClick="WdatePicker()" value="${param.search_startDate}" />~<input class="Wdate"  type="text" id="txt_endDate" name="search_endDate" onClick="WdatePicker()" value="${param.search_endDate}" /></td>
		<td id="td1" align="right">所属批次号</td>
		<td><input class="txt" type="text" name="search_belongBatchID" id="search_belongBatchID" value="${param.search_belongBatchID }" /></td>
		<td id="s-td" colspan="3"><input type="submit" class="btn"
					id="btn_query" value="查询" /></td>
		</tr>	
		</table></div>
		<!--这里是操作完成的消息提示区  -->
	<c:import url="/WEB-INF/include/message.jsp"></c:import>

<!-- 列表区 -->
	<table id="table1">
		<thead>
			<tr id="tr1">
				<td id="title"  ><input id="chk_all" type="checkbox"
					width="10px;" onclick="javascript:allCheck()"></td>
				<td id="title" style="width: 50px;" >序号</td>
				<td id="title" >批次号</td>
				<td id="title" >平台</td>
				<td id="title" >考试时间始</td>
				<td id="title" >考试时间止</td>
				<td id="title" >所属批次号</td>
				<td id="title" >所属批次</td>
			</tr>
		
		</thead>
		<tbody>
				<c:forEach items="${examBatchList.content}" var="examBatch" varStatus="status">
			
				<tr>
					<td id="title" width="30px">
					<input type="checkbox"
						id="chk_sub_checkBox" name="chk_sub_checkBox" value="${examBatch.examBatchKey }/${examBatch.examBatchID }/${examBatch.nameCh }" onclick="javascript:checkT_F()" />
					</td>
					<td id="title" style="width: 50px;">${status.count}</td>
					<td id="left">${examBatch.examBatchID }</td>
					<td id="left">${dict:display('PlatForm',examBatch.platForm)}</td>
					<fmt:parseDate value="${examBatch.startDate }" var="startDate" pattern="yyyy-MM-dd"/>
					<td id="right"><fmt:formatDate value='${startDate}'/></td>
					<fmt:parseDate value="${examBatch.endDate }" var="endDate" pattern="yyyy-MM-dd"/>
					<td id="right"><fmt:formatDate value='${endDate}'/></td>
					<td id="left">${examBatch.belongBatchID }</td>
					<td id="left">${examBatch.belongBatchName }</td>
					</tr>
					</c:forEach>
		</tbody>
	</table>
	
<!-- 分页组件区 -->
<!-- TODO：后期这里可能会持续改进 -->

	<!-- 按钮区  -->
	<div class="content" align="center">
		
		<span class="add">
			<input class="btn" type="button" value="定义所属批次" id="" onclick="exportToExcel('${ctx}/examBatchDefine/examBatchDefined')" />
		</span> 

		<p>
	</div>
</form>
