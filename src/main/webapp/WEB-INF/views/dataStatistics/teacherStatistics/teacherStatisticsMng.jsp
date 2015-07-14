<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/include/common.jsp"%>
<tags:wjs items="checkbox.js"></tags:wjs>
<tags:wcss items="message.css"></tags:wcss>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!--导航区 -->
<div class="top">
	<ul>
		<li>教师查询统计</li>
		<p>查询与统计>>教师查询统计</p>
	</ul>
</div>
<!-- 检索条件 -->
<form id="searchForm" action="${ctx }/teacherStatistics">
	<div class="gly-top">
		<table id="s-table">
			<tr>
				<td id="td1" align="right">平台</td>
				<td><tags:wselect id="platForm" key="PlatForm"
						name="search_platForm" value="${param.search_platForm}" /></td>
				<td id="td1" align="right">来源</td>
				<td><tags:wselect id="originCode" key="TeacherOrigin"
						name="search_originCode" value="${param.search_originCode}" /></td>
				<td id="td1" align="right">类型</td>
				<td><tags:wselect id="teacherType" key="TeacherType"
						name="search_teacherType" value="${param.search_teacherType}" /></td>
				<td id="td1" align="right">&nbsp;</td>
			</tr>
			<tr>
				<td id="td1" align="right">职称</td>
				<td><tags:wselect id="positionTitle" key="PositionTitle"
						name="search_positionTitle" value="${param.search_positionTitle}" /></td>
				<td id="td1" align="right">学历</td>
				<td><tags:wselect id="education" key="Education"
						name="search_education" value="${param.search_education}" /></td>
				<td id="td1" align="right">学位</td>
				<td><tags:wselect id="degree" key="Degree" name="search_degree"
						value="${param.search_degree}" /></td>
				<td id="td1" align="right">&nbsp;</td>
			</tr>
			<tr>
				<td id="td1" align="right">专业</td>
				<td><select id="search_specialty" name="search_specialty">
						<option value="">--请选择--</option>
						<c:forEach items="${specialtyList}" var="specialty"
							varStatus="status">
							<option value="${specialty.specialtyID}"
								<c:if test="${specialty.specialtyID eq param.search_specialty }">selected="selected"</c:if>>
								${specialty.nameCh}</option>
						</c:forEach>
				</select></td>
				<td id="td1" align="right">主讲课程</td>
				<td><input class="txt" type="text" name="search_mainClass"
					id="search_mainClass" value="${param.search_mainClass }" /></td>
				<td id="td1" align="right">教师姓名</td>
				<td><input class="txt" type="text" name="search_teacherName"
					id="search_teacherName" value="${param.search_teacherName }" /></td>
				<td id="s-td" colspan="3"><input type="submit" class="btn"
					id="btn_query" value="查询" /></td>
			</tr>
		</table>
	</div>
	<!--这里是操作完成的消息提示区  -->
	<c:import url="/WEB-INF/include/message.jsp"></c:import>

	<!-- 列表区 -->
	<table id="table1">
		<thead>
			<tr id="tr1">
				<td id="title"><input id="chk_all" type="checkbox"
					width="10px;" onclick="javascript:allCheck()"></td>
				<td id="title" style="width: 50px;">序号</td>
				<td id="title">姓名</td>
				<td id="title">性别</td>
				<td id="title">出生日期</td>
				<td id="title">来源</td>
				<td id="title">类型</td>
				<td id="title">职称</td>
				<td id="title">专业</td>
				<td id="title">学历</td>
				<td id="title">学位</td>
				<td id="title">联系电话</td>
				<td id="title">电子信箱</td>
				<td id="title">主讲课程</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${teacherList.content}" var="teacher"
				varStatus="status">
				<tr>
					<td id="title" width="30px"><input type="checkbox"
						id="chk_sub_checkBox" name="chk_sub_checkBox"
						value="${teacher.teacherKey}/${teacher.courseKey}/${teacher.specialtyID}"
						onclick="javascript:checkT_F()" /></td>
					<td id="title" style="width: 50px;">${status.count}</td>
					<td id="left">${teacher.userNameCh}</td>
					<td id="left">${dict:display('Gender',teacher.genderCode)}</td>
					<fmt:parseDate value="${teacher.birthday}" var="birthday"
						pattern="yyyy-MM-dd" />
					<td id="left"><fmt:formatDate value='${birthday}' /></td>
					<td id="left">${dict:display('TeacherOrigin',teacher.originCode)}</td>
					<td id="left">${teacher.teacherType}</td>
					<td id="left">${dict:display('PositionTitle',teacher.positionTitle)}</td>
					<td id="left">${teacher.specialtyNameCh }</td>
					<td id="left">${dict:display('Education',teacher.education)}</td>
					<td id="left">${dict:display('Degree',teacher.degree)}</td>
					<td id="right">${teacher.mobile }</td>
					<td id="left">${teacher.email}</td>
					<td id="left">${teacher.mainClass }</td> 
					</tr>
			</c:forEach>
		</tbody>
	</table>

	<!-- 分页组件区 -->
	<!-- TODO：后期这里可能会持续改进 -->
	<tags:pagination page="${teacherList}" />
	<!-- 按钮区  -->
	<div class="content" align="center">
		<span class="add"> <input class="btn" type="button" value="导出"
			id="" onclick="exportToExcel('${ctx}/teacherStatistics/export')" />
		</span>
		<p>
	</div>
</form>
