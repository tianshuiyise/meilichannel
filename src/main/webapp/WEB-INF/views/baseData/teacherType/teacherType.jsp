<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<tags:wjs items="checkbox.js" />
<tags:wcss items="message.css"></tags:wcss>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!--导航区 -->
<div class="top">
	<ul>
		<li>教师分类定义</li>
		<p>基本信息>>教师分类定义</p>
	</ul>
</div>
<form id="searchForm" action="${ctx }/teacherType/listAdd" method="post">

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
		<td id="title">类型名称</td>
		<td id="title">分类编号</td>
		<td id="title">操作</td>
	</tr>
</thead>	
	<tbody>
		<c:forEach items="${teacherTypeList}" var="teacherType" varStatus="status">
			<tr>
				<td id="title" width="30px">
					<input type="checkbox" id="chk_sub_checkBox" name="chk_sub_checkBox" value="${teacherType.teacherTypeDef }"onclick="javascript:checkT_F()"/>
				</td>
				<td id="title" style="width:50px;">${status.count}</td>
				<td id="left">${teacherType.itemLabel}</td>
				<td id="left">${teacherType.itemCode}</td>
				<td id="title">
					<input type="button" id="btn_modify" value="修改" onclick="modify('${ctx}/teacherType/preModify', '${teacherType.teacherTypeDef }')" /> 
					<input type="button" id="btn_delete" value="删除" onclick="singleDelete('删除该老师后，该老师的有关信息将同时删除！确实要删除吗？', '${ctx}/teacherType/singleDelete', '${teacherType.teacherTypeDef }')"/>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>

<!-- 按钮区  -->
<div class="content" align="center">
	<span class="add"><input class="btn" type="submit" value="添加" id="btn_add" /></span>
	<span class="add">
		<input class="btn" type="button" value="批量删除" id="btn_batch_delete" onclick="batchDelete('删除该老师后，该老师的有关信息将同时删除！确实要删除吗？','${ctx}/teacherType/batchDelete')"/>
	</span>
</div>
</form>