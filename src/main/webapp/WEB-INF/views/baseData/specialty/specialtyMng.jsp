<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<tags:wjs items="checkbox.js" />
<tags:wcss items="message.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!--导航区 -->
<div class="top">
	<ul>
		<li>专业目录</li>
		<p>基本数据>>专业目录</p>
	</ul>
</div>

<!-- 检索条件 -->
<form id="searchForm" action="${ctx }/specialty">
	<div class="gly-top">
		<table id="s-table">
			<tr>
				<%-- <td id="td1">教育类型&nbsp;
					<tags:wselect id="eduType" key="EduType" name="search_eduType" value="${param.search_eduType}" />
				</td>
				<td id="td1">学位类型&nbsp;
					<tags:wselect id="degreeType" key="Degree" name="search_degreeType" value="${param.search_degreeType}" />		
				</td> --%>
				<td id="td1">专业代码&nbsp;
					<input class="text" type="text" id="txt_specialtyID" name="search_specialtyID" value="${param.search_specialtyID}" />
				</td>
				<td id="td1">专业名称&nbsp;
					<input class="text" type="text" id="txt_nameCh" name="search_nameCh" value="${param.search_nameCh}" />
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
			<!-- <td id="title">教育类型</td> -->
			<td id="title">专业名称</td>
			<td id="title">专业代码</td>
			<!-- <td id="title">学位类型</td> -->
			<td id="title">操作</td>
		</tr>
	</thead>
	
	<tbody>
		<c:forEach items="${specialtyList.content}" var="specialty" varStatus="status">
			<tr>
				<td id="title" width="30px">
					<input type="checkbox" id="chk_sub_checkBox" name="chk_sub_checkBox" value="${specialty.specialtyKey }" onclick="javascript:checkT_F()"/>
				</td>
				<td id="title" style="width:50px;">${status.count}</td>
				<%-- <td id="left">${dict:display('EduType', specialty.eduType)}</td> --%>
				<td id="left">${specialty.nameCh}</td>
				<td id="left">${specialty.specialtyID}</td>
				<%-- <td id="left">${dict:display('Degree', specialty.degreeType)}</td> --%>
				<td id="title">
					<input type="button" id="btn_modify" value="修改" onclick="modify('${ctx}/specialty/preModify', '${specialty.specialtyKey }')"/> 
					<input type="button" id="btn_delete" value="删除" onclick="singleDelete('删除该专业后，该专业的有关信息将同时删除！确实要删除吗？', '${ctx}/specialty/singleDelete', '${specialty.specialtyKey }')"/>
				</td>
			</tr>
		</c:forEach>
	</tbody>	
</table>

<!-- 分页组件区 -->
<!-- TODO：后期这里可能会持续改进 -->
<tags:pagination page="${specialtyList}"/>

<!-- 按钮区  -->
<div class="content" align="center">
	<span class="add"><input class="btn" type="button" value="添加" id="btn_add" onclick="add('${ctx}/specialty/preAdd')"/></span>
	<span class="add">
		<input class="btn" type="button" value="批量删除" id="btn_batch_delete" onclick="batchDelete('删除该专业后，该专业的有关信息将同时删除！确实要删除吗？','${ctx}/specialty/batchDelete')"/>
	</span>
	<p>
</div>
</form>
