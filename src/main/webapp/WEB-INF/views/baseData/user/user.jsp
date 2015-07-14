<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<tags:wjs items="checkbox.js" />
<tags:wcss items="message.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!--导航区 -->
<div class="top">
	<ul>
		<li>用户信息设置</li>
		<p>基本数据>>用户信息设置</p>
	</ul>
</div>

<!-- 检索条件 -->	
<form id="searchForm" action="${ctx }/user">
	<div class="gly-top">
		<table id="s-table">
			<tr>
				<td id="td1">系统用户名&nbsp;
					<input class="text" type="text" id="txt_userName" name="search_userName" value="${param.search_userName}" />
				</td>
				<td id="td1">用户ID&nbsp;
					<input class="text" type="text" id="txt_userID" name="search_userID" value="${param.search_userID}" />
				</td>
				<td id="td1">电话号&nbsp;
					<input class="text" type="text" id="txt_mobile" name="search_mobile" value="${param.search_mobile}" />
				</td>
				<%-- <td id="td1">角色&nbsp;
					<select name="roleName">
						<option value="">--请选择--</option>
						<c:forEach items="${roleList }" var="role"> 
							<option value="${role.roleKey }">${role.roleName }</option>
						</c:forEach>
					</select>
				</td> --%>
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
				<td id="title">系统用户名</td>
				<td id="title">用户ID</td>
				<td id="title">用户中文名</td>
				<!-- <td id="title">用户英文名</td> -->
				<td id="title">性别</td>
				<td id="title">角色</td>
				<td id="title">出生日期</td>
				<td id="title">移动电话</td>
				<!-- <td id="title">传真</td> -->
				<td id="title">电子信箱</td>
				<!-- <td id="title">备注</td> -->
				<td id="title">操作</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${userList.content}" var="user" varStatus="status">
				<tr>
					<td id="title" width="30px">
						<input type="checkbox" id="chk_sub_checkBox" name="chk_sub_checkBox" value="${user.userKey }" onclick="javascript:checkT_F()"/>
					</td>
					<td id="title" style="width:50px;">${status.count}</td>
					<td id="left">${user.userName}</td>
					<td id="right">${user.userID}</td>
					<td id="left">${user.nameCh}</td>
					<%-- <td id="left">${user.nameEn}</td> --%>
					<td id="left">
						${dict:display('Gender', user.genderCode)}
					</td>
					<td id="left">
						<c:forEach items="${user.roleList }" var="role" varStatus="status">
							<c:choose>
								<c:when test="${fn:length(user.roleList) != status.count }">${role.roleName }、</c:when>
								<c:otherwise>${role.roleName }</c:otherwise>
							</c:choose>
						</c:forEach>
					</td>
					<fmt:parseDate value="${user.birthday}" var="now" pattern="yyyy-MM-dd"/>
					<td id="left"><fmt:formatDate value="${now}" /></td>
					<td id="right">${user.mobile}</td>
					<%-- <td id="right">${user.fax}</td> --%>
					<td id="left">${user.email}</td>
					<%-- <td id="left">${user.remark}</td> --%>
					<td id="title">
						<input type="button" id="btn_modify" value="修改" onclick="modify('${ctx}/user/addUser', '${user.userKey }')"/> 
						<input type="button" id="btn_delete" value="删除" onclick="singleDelete('删除该用户后，该用户的有关信息将同时删除！确实要删除吗？','${ctx}/user/deleteSingle','${user.userKey}')"/>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<!-- 分页组件区 -->
	<!-- TODO：后期这里可能会持续改进 -->
	<tags:pagination page="${userList}"/>
	
	<!-- 按钮区  -->
	<div class="content" align="center">
		<span class="add">
			<input class="btn" type="button" value="添加" id="btn_add" onclick="add('${ctx}/user/addUser')"/>
		</span>
		<span class="add">
			<input class="btn" type="button" value="批量删除" id="btn_batch_delete" onclick="batchDelete('删除该用户后，该用户的有关信息将同时删除！确实要删除吗？','${ctx}/user/deleteBatch','${user.userKey}')"/>
		</span>
		<p>
	</div>
</form>