<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 

<tags:wjs items="checkbox.js"></tags:wjs>
<tags:wcss items="message.css"></tags:wcss>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!--导航区 -->
<div class="top">
	<ul>
		<li>工作人员查询统计</li>
		<p>数据统计>>工作人员查询统计</p>
	</ul>
</div>

<!-- 检索条件 -->
<form id="searchForm" action="${ctx }/workStatistics" method="post">
	<div class="gly-top">
	<table id="s-table">
		<tr>
			 <td id="td1" align="right">类别</td>
			 <td>
				<tags:wselect id="workerType" key="WorkerType" name="search_workerType" value="${param.search_workerType}" />		
			</td>
			
			<td id="td1" align="right">部门/学习中心</td>
			<td>
				<select id="search_organizationKey" name="search_organizationKey">
				<option value="">--请选择--</option>
					<c:forEach items="${organizationList}" var="org" varStatus="status">
						<option value="${org.organizationKey}"<c:if test="${param.search_organizationKey eq org.organizationKey }">selected="selected"</c:if>>
							${org.nameCh}
						</option>
					</c:forEach>
				</select>	
			</td>
			
			
			<td id="td1" align="right">学历</td>
			<td>
				<tags:wselect id="education" key="Education" name="search_education" value="${param.search_education}" />		
			</td>
			<td id="td1" align="right">&nbsp;</td>
		
				
			<td id="td1" align="right" colspan="1">&nbsp;</td>	
			
		</tr>
		<tr>
			<td id="td1" align="right">姓名</td>
			<td>
				<input  class="text" type="text" id="txt_nameCh" name="search_nameCh" value="${param.search_nameCh}" />
			</td>
			<td id="td1" align="right" colspan="4">&nbsp;</td>	
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
			<td id="title">姓名</td>
			<td id="title">性别</td>
			<td id="title">出生日期</td>
			<td id="title">学历</td>
			<td id="title">部门</td>
			<td id="title">职务</td>
			<td id="title">联系方式</td>
			<td id="title">分管工作</td>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${workList.content}" var="work" varStatus="status">
			<tr>
				<td id="title" width="30px">
					<input type="checkbox" id="chk_sub_checkBox" name="chk_sub_checkBox" value="${work.workerKey}" onclick="javascript:checkT_F()"/>
				</td>
				<td id="title" style="width:50px;">${status.count}</td>
				<td id="left">${work.nameCh}</td>
				<td id="left"> ${dict:display("Gender",work.genderCode) } </td>
				<fmt:parseDate value="${work.birthday}" var="birthday" ></fmt:parseDate>
				<td id="left"> <fmt:formatDate value="${birthday}" pattern="yyyy-MM-dd"/></td>
				<td id="left"><%-- ${work.education} --%>${dict:display("Education",work.education) }</td>
				<td id="left">${work.organizationName} </td>
				<td id="left">${work.titleName}</td>
				<td id="right">${work.mobile}</td>
				<td id="left">${work.workContent}</td>
			</tr>                                                             
		</c:forEach>
	</tbody>	
	</table>
	
	<!-- 分页组件区 -->
<!-- TODO：后期这里可能会持续改进 -->
<tags:pagination page="${workList}"/>

<!-- 按钮区  -->
<div class="content" align="center">
	<span class="add"><input class="btn" type="button" value="导出" id="" onclick="exportToExcel('${ctx}/workStatistics/export')"/></span>
	<p>
</div>
</form>