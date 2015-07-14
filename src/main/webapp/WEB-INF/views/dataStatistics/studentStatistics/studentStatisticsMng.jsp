<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 

<tags:wjs items="checkbox.js"></tags:wjs>
<tags:wcss items="message.css"></tags:wcss>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!--导航区 -->
<div class="top">
	<ul>
		<li>学生查询统计</li>
		<p>查询与统计>>学生查询统计</p>
	</ul>
</div>

<!-- 检索条件 -->
<form id="searchForm" action="${ctx }/studentStatistics">
	<div class="gly-top">
	<table id="s-table">
		<tr>
			 <td id="td1" align="right">平台</td>
			 <td>
				<tags:wselect id="platForm" key="PlatForm" name="search_platForm" value="${param.search_platForm}" />		
			</td>
			<td id="td1" align="right">省份</td>
			<td>
				<select id="search_province" name="search_province" >
					<option value="">--请选择--</option>
					<c:forEach items="${provinceList}" var="province" varStatus="status">
						<option value="${province}" <c:if test="${param.search_province eq province }">selected="selected"</c:if>>
							${province}
						</option>	
					</c:forEach>
				</select>		
			</td>
			<td id="td1" align="right">学号</td>
			<td>
				<input  class="text" type="text" id="txt_studentNum" name="search_studentNum" value="${param.search_studentNum}" />
			</td>
			<td id="td1" align="right">&nbsp;</td>
		</tr>
		<tr>	
			<td id="td1" align="right">状态</td>
			<td>
				<tags:wselect id="StudentStatus" key="StudentStatus" name="search_studentStatus" value="${param.search_studentStatus}" />	
			</td>
			
			<td id="td1" align="right">专业</td>
			<td>
				<select id="search_specialtyID" name="search_specialtyID" >
					<option value="">--请选择--</option>
					<c:forEach items="${specialtyList}" var="specialty" varStatus="status">
						<option value="${specialty.specialtyID}" <c:if test="${param.search_specialtyID eq specialty.specialtyID }">selected="selected"</c:if>>
							${specialty.nameCh}
						</option>	
					</c:forEach>
				</select>		
			</td>
			<td id="td1" align="right">层次</td>
			<td>
				<select id="search_edulevelID" name="search_edulevelID">
				<option value="">--请选择--</option>
					<c:forEach items="${levelList}" var="level" varStatus="status">
						<option value="${level.edulevelID}"<c:if test="${param.search_edulevelID eq level.edulevelID }">selected="selected"</c:if>>
							${level.levelName}
						</option>
					</c:forEach>
				</select>	
			</td>
			<td id="td1" align="right">&nbsp;</td>
		</tr>	
		<tr>
			<td id="td1" align="right">招生批次</td>
			 <td>
				<select id="search_batchID" name="search_batchID" >
				<option value="">--请选择--</option>
					<c:forEach items="${batchList}" var="batch" varStatus="status">
						<option value="${batch.batchID}" <c:if test="${param.search_batchID eq batch.batchID }">selected="selected"</c:if>>
							${batch.batchName}
						</option>	
					</c:forEach>
				</select>	
			</td>
				
			<td id="td1" align="right" colspan="5">&nbsp;</td>	
			<td id="s-td" >
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
			<td id="title">学号</td>
			<td id="title">姓名</td>
			<td id="title">性别</td>
			<td id="title">出生日期</td>
			<td id="title">身份证号</td>
			<td id="title">省份</td>
			<td id="title">层次</td>
			<td id="title">批次</td>
			<td id="title">专业</td>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${studentList.content}" var="student" varStatus="status">
			<tr>
				<td id="title" width="30px">
					<input type="checkbox" id="chk_sub_checkBox" name="chk_sub_checkBox" value="${student.studentKey}" onclick="javascript:checkT_F()"/>
				</td>
				<td id="title" style="width:50px;">${status.count}</td>
				<td id="left">${student.studentNum}</td>
				<td id="left">${student.nameCh}</td>
				<td id="left">${dict:display("Gender",student.genderCode) }</td>
				<fmt:parseDate value="${student.birthday}" var="birthday" ></fmt:parseDate>
				<td id="left"><fmt:formatDate value="${birthday}" pattern="yyyy-MM-dd"/></td>
				<td id="left">${student.idCard}</td>
				<td id="left">${student.province}</td>
				<td id="left">${student.levelName}</td>
				<td id="left">${student.batchName}</td>
				<td id="left">${student.specialtyName}</td>
			</tr>                                                             
		</c:forEach>
	</tbody>	
	</table>
<!-- 分页组件区 -->
<!-- TODO：后期这里可能会持续改进 -->
<tags:pagination page="${studentList}"/>

<!-- 按钮区  -->
<div class="content" align="center">
	<span class="add"><input class="btn" type="button" value="导出" id="" onclick="exportToExcel('${ctx}/studentStatistics/export')"/></span>
	<p>
</div>
</form>