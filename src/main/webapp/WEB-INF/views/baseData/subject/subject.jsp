<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<tags:wjs items="checkbox.js" />
<tags:wcss items="message.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!--导航区 -->
<div class="top">
	<ul>
		<li>学科分类定义设置</li>
		<p>基本数据>>学科分类定义设置</p>
	</ul>
</div>

<!-- 检索条件 -->
<form id="searchForm" action="${ctx }/subject">
	<div class="gly-top">
		<table id="s-table">
			<tr>
				<td id="td1">学科代码&nbsp;
					<input class="text" type="text" id="txt_subjectID" name="search_subjectID" value="${param.search_subjectID}" />
				</td>
				<td id="td1">学科中文名&nbsp;
					<input class="text" type="text" id="txt_nameCh" name="search_nameCh" value="${param.search_nameCh}" />
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
				<td id="title">学科代码</td>
				<td id="title">学科中文名</td>
				<td id="title">学科英文名</td>
				<td id="title">备注</td>
				<td id="title">操作</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${subjectList.content}" var="subject" varStatus="status">
				<tr>
					<td id="title" width="30px">
						<input type="checkbox" id="chk_sub_checkBox" name="chk_sub_checkBox" value="${subject.subjectKey }" onclick="javascript:checkT_F()"/>
					</td>
					<td id="title" style="width:50px;">${status.count}</td>
					<td id="left">${subject.subjectID}</td>
					<td id="left">${subject.nameCh}</td>
					<td id="left">${subject.nameEn }</td>
					<td id="left">${subject.remark }</td>
					<td id="title">
						<input type="button" id="btn_modify" value="修改" onclick="modify('${ctx}/subject/subjectAdd', '${subject.subjectKey }')"/> 
						<input type="button" id="btn_delete" value="删除" onclick="singleDelete('删除该学科后，该学科的有关信息将同时删除！确实要删除吗？','${ctx}/subject/deleteSingle','${subject.subjectKey}')"/>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<!-- 分页组件区 -->
	<!-- TODO：后期这里可能会持续改进 -->
	<tags:pagination page="${subjectList}"/>
	
	<!-- 按钮区  -->
	<div class="content" align="center">
		<span class="add">
			<input class="btn" type="button" value="添加" id="btn_add" onclick="add('${ctx}/subject/subjectAdd')"/>
		</span>
		<span class="add">
			<input class="btn" type="button" value="批量删除" id="btn_batch_delete" onclick="batchDelete('删除该学科后，该学科的有关信息将同时删除！确实要删除吗？','${ctx}/subject/deleteBatch','${subject.subjectKey}')"/>
		</span>
		<p>
	</div>
</form>