<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<tags:wjs items="checkbox.js"></tags:wjs>
<tags:wcss items="message.css"></tags:wcss>
<tags:wjs items="back.js"></tags:wjs>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!--导航区 -->
<div class="top">
	<ul>
		<li>学习积分查询</li>
		<p>查询与统计>>学习积分查询</p>
	</ul>
</div>
<!-- 检索条件 -->
<form id="searchForm" action="${ctx }/">
<div class="gly-top">
		<table id="s-table">
		<c:forEach items="${integralQueryLists}" var="integrals" varStatus="status">
		<tr>
		<td id="td1" align="right">学号</td>
		<td>
			<input class="text" type="text" id="txt_studentNum" name="search_studentNum" value="${integrals.studentNum}" disabled="disabled"/>
		</td>
		<td id="td1" align="right">姓名</td>
		<td>
			<input class="text" type="text" id="txt_studentNum" name="search_studentNum" value="${integrals.nameCh}" disabled="disabled"/>
		</td>
		<td id="td1" align="right">专业</td>
		<td>
			<input class="text" type="text" id="txt_courseName" name="search_courseName" value="${integrals.specialtyNam}" disabled="disabled"/>
		</td>
		</tr>
		
		<tr>
		<td id="td1" align="right">学习中心</td>
		<td>
			<input class="text" type="text" id="txt_studentNum" name="search_studentNum" value="${integrals.stuCenNam}" disabled="disabled"/>
		</td>
		<td id="td1" align="right">层次</td>
		<td>
			<input class="text" type="text" id="txt_studentNum" name="search_studentNum" value="${integrals.edulevelNam}" disabled="disabled"/>
		</td>
		<td id="td1" align="right">课程</td>
		<td>
			<input class="text" type="text" id="txt_studentNum" name="search_studentNum" value="${integrals.courseName}" disabled="disabled"/>
		</td>
		</tr>	
		</c:forEach>
		</table>
</div>
		<!--这里是操作完成的消息提示区  -->
	<c:import url="/WEB-INF/include/message.jsp"></c:import>

<!-- 列表区 -->
	<table id="table1">
		<thead>
		<tr>
			<td colspan="6">学习积分详情 </td>
		</tr>
			<tr id="tr1">
				<td id="title" >序号</td>
				<td id="title" >积分策略</td>
				<td id="title" >项目名称</td>
				<td id="title" >积分</td>
				<td id="title" >获得积分时间</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${integralQueryList}" var="integral" varStatus="status">
			<tr>
				<td id="title" align="center">${status.count}</td>
				<td id="left">${dict:display('IntergalStrategy',integral.intergalStrategy) }</td>
				<td id="left">${integral.intergalEvent }</td>
				<td id="right">${integral.integralCount }</td>
				<fmt:parseDate value="${integral.gainDate}" var="date" pattern="yyyy-MM-dd"/>
				<td id="left"><fmt:formatDate value='${date}'/></td>
		   </tr>
		   	</c:forEach>
		</tbody>
	</table>
	
	<!-- 按钮区  -->
	<div class="content" align="center">
		<span class="add">
			<input class="btn" type="button" value="返回" id=""onclick="back('${ctx}/integralQuery')" />
		</span> 
		<p>
	</div>
</form>
