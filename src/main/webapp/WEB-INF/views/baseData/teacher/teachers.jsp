<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<tags:wjs items="checkbox.js" />
<tags:wcss items="message.css"></tags:wcss>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!--导航区 -->
<div class="top">
	<ul>
		<li>教师信息管理</li>
		<p>基本信息>>教师信息管理</p>
	</ul>
</div>

<!-- 检索条件 -->
<form id="searchForm" action="${ctx }/teachers">
	<div class="gly-top">
		<table id="s-table">
			<tr>
				<td id="td1" align="right">教师类型</td>
				<td>
					<tags:wselect id="teacherType" key="TeacherType" name="search_teacherType" value="${param.search_teacherType}" />
				</td>
				<td id="td1" align="right">专业</td>
				<td>
					<select id="search_specialty" name="search_specialty" >
						<option value="">--请选择--</option>
						<c:forEach items="${specialtyList}" var="specialty" varStatus="status">
							<option value="${specialty.specialtyID}" <c:if test="${specialty.specialtyID eq param.search_specialty }">selected="selected"</c:if>>
								${specialty.nameCh}
							</option>	
						</c:forEach>
					</select>		
				</td>
				<td id="td1" align="right">学历</td>
				<td>
					<tags:wselect id="education" key="Education" name="search_education" value="${param.search_education}" />
				</td>
				<td id="td1" align="right">职称</td>
				<td>
					<tags:wselect id="positionTitle" key="PositionTitle" name="search_positionTitle" value="${param.search_positionTitle}" />
				</td>
			</tr>
			<tr>
				<td id="td1" align="right">是否退休</td>
				<td>
					<select name="search_retireFlg">
						<option value="">--请选择--</option>
						<option value="1" <c:if test="${param.search_retireFlg eq '1'}">selected='selected'</c:if>>是</option>
						<option value="0" <c:if test="${param.search_retireFlg eq '0'}">selected='selected'</c:if>>否</option>
					</select>
				</td>
				<td id="td1" align="right">教师名</td>
				<td>
					 <input class="txt" type="text" name="search_userNameCh" id="text_search_userNameCh" value="${param.search_userNameCh }" />
				</td>
				<td id="td1" align="right">身份证号</td>
				<td>
					<input type="text" name="search_userIDCard" id="text_search_userIDCard" value="${param.search_userIDCard }" />
				</td>
				<td id="td1" align="right">移动电话</td>
				<td>
					<input type="text" name="search_userMobile" id="text_search_userMobile" value="${param.search_userMobile }" />
				</td>
			</tr>
			<tr>
				<td id="td1" align="right">研究方向</td>
				<td>
					<input class="txt" type="text" name="search_researchArea" id="text_search_researchArea" value="${param.search_researchArea }" />
				</td>
				<td id="td1" align="right">所授课</td>
				<td>
					<input class="txt" type="text" name="search_teachingCourse" id="text_search_teachingCourse" value="${param.search_teachingCourse }" />
				</td>
				<td id="s-td" colspan="4">
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
			<td id="title">教师姓名</td>
			<td id="title">出生日期</td>
			<td id="title">性别</td>
			<td id="title">来源</td>
			<!-- <td id="title">所授课程</td> -->
			<td id="title">教师类型</td>
			<td id="title">拓展类别</td> 
			<td id="title">专业</td>
			<td id="title">学历</td>
			<td id="title">学位</td>
			<td id="title">联系电话</td>
			<td id="title">电子邮箱</td>
			<td id="title">操作</td>
		</tr>
	</thead>
	
	<tbody>
		<c:forEach items="${teachersList.content}" var="teachers" varStatus="status">
			<tr>
				<td id="title" width="30px">
					<input type="checkbox" id="chk_sub_checkBox" name="chk_sub_checkBox" value="${teachers.teacherKey }" onclick="javascript:checkT_F()"/>
				</td>
				<td id="title" style="width:50px;">${status.count}</td>
				<td id="left">
					<a onclick="modify('${ctx}/teachers/preInfo', '${teachers.teacherKey }')">${teachers.userNameCh}</a>
				</td>
				<fmt:parseDate value="${teachers.userBirthday}" var="birthday" pattern="yyyy-MM-dd"/>
				<td id="left"><fmt:formatDate value="${birthday}" /></td>
				<td id="left">${dict:display('Gender', teachers.userGenderCode)}</td>
				<td id="left">${dict:display('TeacherOrigin',teachers.originCode)}</td>
				<%-- <td id="left">${teachers.teachingCourse}</td> --%>
				<td id="left">${teachers.teacherType}</td>
				<td id="left">${teachers.teacherTypeExName}</td>
				<td id="left">${teachers.specialtyNameCh}</td>
				<td id="left">${dict:display('Education', teachers.education)}</td>
				<td id="left">${dict:display('Degree', teachers.degree)}</td>
				<td id="right">${teachers.userMobile}</td>
				<td id="left">${teachers.userEmail}</td>
				<td id="title">
					<input type="button" id="btn_modify" value="修改" onclick="modify('${ctx}/teachers/preModify', '${teachers.teacherKey }')"/> 
					<input type="button" id="btn_delete" value="删除" onclick="singleDelete('删除该教师信息后，该教师的有关信息将同时删除！确实要删除吗？', '${ctx}/teachers/singleDelete','${teachers.teacherKey }')"/>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>

<!-- 分页组件区 -->
<!-- TODO：后期这里可能会持续改进 -->
<tags:pagination page="${teachersList}"/>

<!-- 按钮区  -->
	<div class="content" align="center">
		<span class="add"><input class="btn" type="button" value="添加" id="btn_add" onclick="add('${ctx}/teachers/preAdd')"/></span>
		<span class="add"><input class="btn" type="button" value="导出" id="btn_add" onclick="exportToExcel('${ctx}/teachers/export')"/></span>
		<span class="add"><input class="btn" type="button" value="批量删除" id="btn_batch_delete" onclick="batchDelete('删除该教师信息后，该教师的有关信息将同时删除！确实要删除吗？','${ctx}/teachers/batchDelete') "/></span>
		<p>
	</div>
</form>
