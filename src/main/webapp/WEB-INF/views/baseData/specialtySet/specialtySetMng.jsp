<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<tags:wjs items="checkbox.js" />
<tags:wcss items="message.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!--导航区 -->
<div class="top">
	<ul>
		<li>专业设置</li>
		<p>基本数据>>专业设置</p>
	</ul>
</div>

<!-- 检索条件 -->
<form id="searchForm" action="${ctx }/specialtySet">
	<div class="gly-top">
		<table id="s-table">
			<tr>
				<%-- <td id="td1">教育类型&nbsp;
					<tags:wselect id="eduType" key="EduType" name="search_eduType" value="${param.search_eduType}" />
				</td> --%>
				<td id="td1">学位类型&nbsp;
					<tags:wselect id="degreeType" key="Degree" name="search_degreeType" value="${param.search_degreeType}" />		
				</td>
				<td id="td1">专业代码&nbsp;
					<input class="text" type="text" id="txt_specialtyID" name="search_specialtyID" value="${param.search_specialtyID}" />
				</td>
				<td id="td1">专业名称&nbsp;
					<input class="text" type="text" id="txt_nameCh" name="search_nameCh" value="${param.search_nameCh}" />
				</td>
				<td id="td1">层次代码&nbsp;
					<input class="text" type="text" id="txt_edulevelID" name="search_edulevelID" value="${param.search_edulevelID}" />
				</td>
			</tr>
			<tr>
				<td id="td1">层次名称&nbsp;
					<input class="text" type="text" id="txt_edulevelName" name="search_edulevelName" value="${param.search_edulevelName}" />
				</td>
				<td id="td1">是否开设&nbsp;
					<select name="search_setFlg">
						<option value="">--请选择--</option>
						<option value="1" <c:if test="${param.search_setFlg eq '1' }">selected="selected"</c:if>>是</option>
						<option value="0" <c:if test="${param.search_setFlg eq '0' }">selected="selected"</c:if>>否</option>
					</select>
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
			<td id="title">学位类型</td>
			<td id="title">专业名称</td>
			<td id="title">专业代码</td>
			<td id="title">层次名称</td>
			<td id="title">层次代码</td>
			<td id="title">是否开设</td>
			<td id="title">要求最低学分</td>
			<td id="title">要求最少课程数</td>
			<td id="title">最低修业年限</td>
			<td id="title">最高修业年限</td>
			<td id="title">操作</td>
		</tr>
	</thead>
	
	<tbody>
		<c:forEach items="${specialtySetList.content}" var="specialtySet" varStatus="status">
			<tr>
				<td id="title" width="30px">
					<input type="checkbox" id="chk_sub_checkBox" name="chk_sub_checkBox" value="${specialtySet.specialtySetKey }" onclick="javascript:checkT_F()"/>
				</td>
				<td id="title" style="width:50px;">${status.count}</td>
				<td id="left">${dict:display('EduType', specialtySet.eduType)}</td>
				<td id="left">${dict:display('Degree', specialtySet.degreeType)}</td>
				<td id="left">${specialtySet.nameCh}</td>
				<td id="left">${specialtySet.specialtyID}</td>
				<td id="left">${specialtySet.edulevelName}</td>
				<td id="left">${specialtySet.edulevelID}</td>
				<td id="left">
					<c:choose>
						<c:when test="${specialtySet.setFlg eq '1'}">是</c:when>
						<c:otherwise>否</c:otherwise>
					</c:choose>
				</td>
				<td id="right">${specialtySet.minScore}</td>
				<td id="right">${specialtySet.minCourseNum}</td>
				<td id="right">${specialtySet.minSchoolYears}</td>
				<td id="right">${specialtySet.maxSchoolYears}</td>
				<td id="title">
					<input type="button" id="btn_modify" value="修改" onclick="modify('${ctx}/specialtySet/preAddOrModify', '${specialtySet.specialtySetKey }')"/> 
					<input type="button" id="btn_delete" value="删除" onclick="singleDelete('删除该专业设置后，该专业设置的有关信息将同时删除！确实要删除吗？', '${ctx}/specialtySet/singleDelete', '${specialtySet.specialtySetKey }')"/>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>

<!-- 分页组件区 -->
<!-- TODO：后期这里可能会持续改进 -->
<tags:pagination page="${specialtySetList}"/>

<!-- 按钮区  -->
<div class="content" align="center">
	<span class="add"><input class="btn" type="button" value="添加" id="btn_add" onclick="add('${ctx}/specialtySet/preAddOrModify')"/></span>
	<span class="add">
		<input class="btn" type="button" value="批量删除" id="btn_batch_delete" onclick="batchDelete('删除该专业设置后，该专业设置的有关信息将同时删除！确实要删除吗？','${ctx}/specialtySet/batchDelete')"/>
	</span>
	<p>
</div>
</form>
