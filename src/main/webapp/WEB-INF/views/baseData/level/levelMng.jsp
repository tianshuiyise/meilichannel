<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<tags:wjs items="checkbox.js" />
<tags:wcss items="message.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!--导航区 -->
<div class="top">
	<ul>
		<li>层次设置</li>
		<p>基本数据>>层次设置</p>
	</ul>
</div>

<!-- 检索条件 -->
<form id="searchForm" action="${ctx }/level">
	<div class="gly-top">
		<table id="s-table">
			<tr>
				<%-- <td id="td1">教育类型&nbsp;
					<tags:wselect id="eduType" key="EduType" name="search_eduType" value="${param.search_eduType}" />
				</td> --%>
				<td id="td1">层次代码&nbsp;
					<input class="text" type="text" id="txt_edulevelID" name="search_edulevelID" value="${param.search_edulevelID}" />
				</td>
				<td id="td1">层次名称&nbsp;
					<input class="text" type="text" id="txt_levelName" name="search_levelName" value="${param.search_levelName}" />
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
			<td id="title">教育类型</td>
			<td id="title">层次名称</td>
			<td id="title">层次代码</td>
			<td id="title">学制</td>
			<td id="title">层次属性</td>
			<td id="title">有无学位</td>
			<td id="title">操作</td>
		</tr>
	</thead>
	
	<tbody>
		<c:forEach items="${levelList.content}" var="level" varStatus="status">
			<tr>
				<td id="title" width="30px">
					<input type="checkbox" id="chk_sub_checkBox" name="chk_sub_checkBox" value="${level.edulevelKey }" onclick="javascript:checkT_F()"/>
				</td>
				<td id="title" style="width:50px;">${status.count}</td>
				<td id="left">${dict:display('EduType',level.eduType)}</td>
				<td id="left">${level.levelName}</td>
				<td id="left">${level.edulevelID}</td>
				<td id="right">${level.schoolingLength}</td>
				<td id="left">${level.levelAttr}</td>
				<td id="left"><c:if test="${level.degreeFlg==1}">有学位</c:if><c:if test="${level.degreeFlg==0}">无学位</c:if> </td>
				<td id="title">
					<input type="button" id="btn_modify" value="修改" onclick="modify('${ctx}/level/prelevelModify', '${level.edulevelKey }')"/> 
					<input type="button" id="btn_delete" value="删除" onclick="singleDelete('删除该层次后，该层次的有关信息将同时删除！确实要删除吗？', '${ctx}/level/singleDelete', '${level.edulevelKey }')"/>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>

<!-- 分页组件区 -->
<!-- TODO：后期这里可能会持续改进 -->
<tags:pagination page="${levelList}"/>

<!-- 按钮区  -->
	<div class="content" align="center">
		<span class="add"><input class="btn" type="button" value="添加" id="btn_add" onclick="add('${ctx}/level/preLevelAdd')"/></span>
		<span class="add"><input class="btn" type="button" value="批量删除" id="btn_batch_delete" onclick="batchDelete('删除该层次后，该层次的有关信息将同时删除！确实要删除吗？','${ctx}/level/batchDelete') "/></span>
		<p>
	</div>
</form>