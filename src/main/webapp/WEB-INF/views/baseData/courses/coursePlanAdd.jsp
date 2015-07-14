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
		<p>任课安排>>添加教师</p>
	</ul>
</div>

<!-- 检索条件 -->
<form id="searchForm" action="${ctx }/courses/preteacherPlanAdd">
	<input type="hidden" id="txt_courseKey" name="courseKey" value="${courseKey}"/>
	<div class="gly-top">
		<table id="s-table">
			<tr>
				<td id="td1">教师姓名：&nbsp;
					<input type="text" id="txt_nameCh" name="search_nameCh" value="${param.search_nameCh}" class="text"/>
				</td>
				<td id="td1">研究方向：&nbsp;
					<input type="text" id="txt_researchArea" name="search_researchArea" value="${param.search_researchArea}" class="text"/>
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
			<td id="title">教师姓名</td>
			<td id="title">职称</td>
			<td id="title">研究方向</td>
			<td id="title">教师来源</td>
			<td id="title">教师状态</td>
		</tr>
	</thead>
	
	<tbody>
		<c:forEach items="${coursePlanList}" var="coursePlan" varStatus="status">
			<tr>
				<td id="title" width="30px">
					<input type="checkbox" id="chk_sub_checkBox" name="chk_sub_checkBox" value="${coursePlan.teacherKey }" onclick="javascript:checkT_F()"/>
				</td>
				<td id="title" style="width:50px;">${status.count}</td>
				<td id="left">${coursePlan.nameCh}</td>
				<td id="left">${dict:display('PositionTitle', coursePlan.positionTitle)}</td>
				<td id="left">${coursePlan.researchArea}</td>
				<td id="left">
					<c:if test="${coursePlan.originCode eq 'A' }">校内</c:if>
					<c:if test="${coursePlan.originCode eq 'B' }">校外</c:if>
				</td>
				<td id="left">${dict:display('TeacherStatus', coursePlan.teacherStatus)}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>

<!-- 按钮区  -->
	<div class="content" align="center">
		<span class="add"><input class="btn" type="button" value="添加教师" id="btn_add" onclick="addTeacher('${ctx}/courses/teacherAdd','${courseKey }')"/></span>
		<span class="add"><input class="btn" type="button" value="返回" id="btn_back" onclick="back('${ctx}/courses/coursePlanMng','${courseKey }')"/></span>
		<p>
	</div>	
</form>

<script>
/**
 * @param confirmMessage	confirm对话框的提示信息
 * @param controllerUrl	对应controller里面的方法
 * @param param			传给controller的参数
 * @returns {Boolean}
 */
function addTeacher(controllerUrl, courseKey) {
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
}
</script>