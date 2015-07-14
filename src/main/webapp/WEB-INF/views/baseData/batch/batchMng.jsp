<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<tags:wjs items="checkbox.js" />
<tags:wcss items="message.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!--导航区 -->
<div class="top">
	<ul>
		<li>招生批次设置</li>
		<p>基本数据>>招生批次设置</p>
	</ul>
</div>

<!-- 检索条件 -->
<form id="searchForm" action="${ctx }/batch">
	<div class="gly-top">
		<table id="s-table">
			<tr>
				<td id="td1">批次编号&nbsp;
					<input class="text" type="text" id="txt_batchID" name="search_batchID" value="${param.search_batchID}" />
				</td>
				<td id="td1">批次名称&nbsp;
					<input class="text" type="text" id="txt_batchName" name="search_batchName" value="${param.search_batchName}" />
				</td>
				<td id="s-td">
					<input class="btn" type="submit" id="btn_query" value="查询" />
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
				<td id="title">批次编号</td>
				<td id="title">批次名称</td>
				<td id="title">开始时间</td>
				<td id="title">操作</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${batchList.content}" var="batch" varStatus="status">
				<tr>
					<td id="title" width="30px">
						<input type="checkbox" id="chk_sub_checkBox" name="chk_sub_checkBox" value="${batch.enrollBatchKey }" onclick="javascript:checkT_F()"/>
					</td>
					<td id="title" style="width:50px;">${status.count}</td>
					<td id="right">${batch.batchID}</td>
					<td id="left">${batch.batchName}</td>
					<fmt:parseDate value="${batch.startDate}" var="now" pattern="yyyy-MM-dd"/>
					<td id="left"><fmt:formatDate value="${now}" /></td>
					<td id="title">
						<input type="button" id="btn_modify" value="修改" onclick="modify('${ctx}/batch/batchAdd', '${batch.enrollBatchKey }')"/> 
						<input type="button" id="btn_delete" value="删除" onclick="singleDelete('删除该批次后，该批次的有关信息将同时删除！确实要删除吗？','${ctx}/batch/singleDelete','${batch.enrollBatchKey}')"/>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<!-- 分页组件区 -->
	<!-- TODO：后期这里可能会持续改进 -->
	<tags:pagination page="${batchList}"/>
	
	<!-- 按钮区  -->
	<div class="content" align="center">
		<span class="add">
			<input class="btn" type="button" value="添加" id="btn_add" onclick="add('${ctx}/batch/batchAdd')"/>
		</span>
		<span class="add">
			<input class="btn" type="button" value="批量删除" id="btn_batch_delete" onclick="batchDelete('删除该批次后，该批次的有关信息将同时删除！确实要删除吗？','${ctx}/batch/batchDelete','${batch.enrollBatchKey}')"/>
		</span>
		<p>
	</div>
</form>