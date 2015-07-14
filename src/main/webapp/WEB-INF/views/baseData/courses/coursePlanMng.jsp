<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<tags:wjs items="checkbox.js" />
<tags:wjs items="back.js"></tags:wjs>
<tags:wcss items="message.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!--导航区 -->
<div class="top">
	<ul>
		<li>任课安排</li>
		<p>数据统计>>学生数据统计</p>
	</ul>
</div>

<!-- 检索条件 -->
<form id="searchForm" action="${ctx }/courses/coursePlanMng">
	<div class="gly-top">
		<table id="s-table">
			<tr>
				<td id="td1">课程代码：&nbsp;
					${coursePlan.courseID}	
				</td>
				<td id="td1">课程名称：&nbsp;
					${coursePlan.nameCh}
				</td>
				<td id="td1">分配教师数：&nbsp;
					${fn:length(coursePlanList)}
				</td>
				<%-- <td id="td1">课程状态：&nbsp;
					${dict:display('CourseStatus',coursePlan.courseStatus) }
				</td> --%>
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
			<td id="title">职称</td>
			<td id="title">研究方向</td>
			<td id="title">教师来源</td>
			<td id="title">教师状态</td>
			<td id="title">操作</td>
		</tr>
	</thead>
	
	<tbody>
		<c:forEach items="${coursePlanList}" var="coursePlan" varStatus="status">
			<tr>
				<td id="title" width="30px">
					<input type="checkbox" id="chk_sub_checkBox" name="chk_sub_checkBox" value="${coursePlan.teacherKey }" onclick="javascript:checkT_F()"/>
				</td>
				<td id="title" style="width:50px;">${status.count}</td>
				<td id="left">${coursePlan.userNameCh}</td>
				<td id="left">${dict:display('PositionTitle', coursePlan.positionTitle)}</td>
				<td id="left">${coursePlan.researchArea }</td>
				<td id="left">
					<c:if test="${coursePlan.originCode eq 'A' }">校内</c:if>
					<c:if test="${coursePlan.originCode eq 'B' }">校外</c:if>
				</td>
				<td id="left">${dict:display('CourseStatus', coursePlan.courseStatus)}</td>
				<td id="title">
					<input type="button" id="btn_delete" value="删除" onclick="singleDelete1('确实要删除该教师吗？', '${ctx}/courses/singleDeleteTeacher', '${coursePlan.courseKey }', '${coursePlan.teacherKey }')"/>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>

<!-- 按钮区  -->
	<div class="content" align="center">
		<span class="add"><input class="btn" type="button" value="添加教师" id="btn_add" onclick="addTeacher('${ctx}/courses/preteacherPlanAdd','${coursePlan.courseKey }')"/></span>
		<span class="add"><input class="btn" type="button" value="批量删除" id="btn_batch_delete" onclick="batchDeleteTeacher('确实要删除该教师吗？','${ctx}/courses/batchDeleteTeacher','${coursePlan.courseKey }') "/></span>
		<span class="add"><input class="btn" type="button" value="返回" id="btn_back" onclick="back('${ctx}/courses')"/></span>
		<p>
	</div>
</form>

<script type="text/javascript">
function singleDelete1(confirmMessage,controllerUrl, courseKey, teacherKey) {
	if(confirm(confirmMessage)) {
		var url = controllerUrl+"?courseKey="+courseKey+"&teacherKey="+teacherKey;
		window.location.href=url;
	}
	return false;
}

/**
 * 添加功能调用的方法
 * @param controllerUrl	controller对应的url
 */
function addTeacher(controllerUrl,courseKey) {
	window.location.href=controllerUrl+"?courseKey="+courseKey;
}


/**
 * 批量操作进行的提示消息
 * @param confirmMessage：confirm对话框的提示信息
 * @param controllerUrl：对应controller里面的方法
 * @returns {Boolean}
 */
function batchDeleteTeacher(confirmMessage, controllerUrl, courseKey) {
	var alertMessage = "您没有勾选要操作的记录，请先勾选！";
	//判断是否勾选复选框，如果没有勾选，提示alertMessage的信息
	var obj = document.getElementsByName("chk_sub_checkBox");
	var j = 0;
	for(var i=0;i<obj.length;i++) {
		if(obj[i].checked==true) {
			j ++;
			break;
		}
	}
	if(j < 1) {
		alert(alertMessage);
		return false;
	}
	//批量操作的提示信息，提示confirmMessage的对应的信息，例如“确认删除该XXX信息吗？”
	if(confirm(confirmMessage)) {
		var specialKeys=document.getElementsByName("chk_sub_checkBox");
		var keyString = "?keys=";
	    for(var i=0;i<specialKeys.length;i++){
	    	if(specialKeys[i].checked){
	    		keyString+=specialKeys[i].value+=",";
	    	}
	    }
	    //controller对应的url加上传过去多条记录的主键keys
	    var url = controllerUrl+keyString+"&courseKey="+courseKey;
	    window.location.href=url;
	} else {
		return false;
	}
}

</script> 