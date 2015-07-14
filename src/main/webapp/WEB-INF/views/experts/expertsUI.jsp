<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/include/common.jsp"%>
<tags:wjs items="checkbox.js"></tags:wjs>
<tags:wcss items="message.css"></tags:wcss>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<script type="text/javascript">
function addExperts(controllerUrl) {
	
	window.location.href=controllerUrl;
	
}
function expertChooseUI(controllerUrl,expertName,expertKey) {
	 
	window.location.href=controllerUrl+"?expertName="+expertName+"&expertKey="+expertKey;
	
}
function expertChooseUI2(controllerUrl,expertName,expertKey,subjectName) {
	
	window.location.href=controllerUrl+"?expertName="+expertName+"&expertKey="+expertKey+"&subjectName="+subjectName;
	
}
function expertChooseUI3(controllerUrl,expertKey) {
	if(confirm("确定要删除专家意见吗？")) {
		window.location.href=controllerUrl+"?expertKey="+expertKey;
	} else {
		return false;
	}
	
	
	
}
function UpdateExperts(controllerUrl,expertKey) {
	
	window.location.href=controllerUrl+"?expertKey="+expertKey;
	
}
function deleteExperts(controllerUrl,expertKey){
	if(confirm("确定要删除这个专家么？")){
		window.location.href=controllerUrl+"?expertKey="+expertKey;
		}else{
		}
	
	
}

</script>

<form id="theme" action="${ctx}/Experts/Qlist" method="post">
<!--这里是操作完成的消息提示区  -->
<c:import url="/WEB-INF/include/message.jsp"></c:import>
<div class="gly-top">
	<table id="s-table">
		<tr>
			 <td id="td1" align="right">姓名</td>
			 <td>
				<input id="name"  name="expertName" />		
			</td>
			
			 <td id="td1" align="right">年份</td>
			 <td>
				<input id="year"  name="expertYear" />		
			</td>
			
			 <td id="td1" align="right">账号</td>
			 <td>
				<input id="account"  name="expertAccounts" />		
			</td>
			
			 <td id="td1" align="right">学科</td>
			 <td>
				<input id="sbuject"  name="subjectName" />		
			</td>
			
			<td id="s-td" >
				<input type="submit" class="btn" id="btn_query" value="查询" />
				 <input type="button"  value="创建专家用户" onclick="addExperts('${ctx}/Experts/input')"/>
			</td>
		</tr>
	</table>
	</div>





	<!-- 列表区 -->
	<table id="table1">
	<thead>
		<tr id="tr1">
			<td id="title">序号</td>
			<td id="title">用户名</td>
			<td id="title">密码</td>
			<td id="title">专家姓名</td>
			<td id="title">账号</td>
			<td id="title">开户行</td>
			<td id="title">专家年份</td>
			<td id="title">学科</td>
			<td id="title">联系方式</td>
			<td id="title">选择学科</td>
			<td id="title">操作</td>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${expert}" var="expert" varStatus="status">
			<tr>
				<td id="left">      ${status.count}</td>
				<td id="left">${expert.expertUserName}</td>
				<td id="left"> ${expert.expertPassword } </td>
				<td id="left">${expert.expertName}</td>
				<td id="left">${expert.expertAccounts}</td>
				<td id="left">${expert.expertBank}</td>
				<td id="left">${expert.expertYear}</td>
				<td id="left">${expert.subjectName}</td>
				<td id="left">${expert.expertPhone}</td>
				<td id="left"><input type="button"  value="选择学科" onclick="expertChooseUI('${ctx}/expertChooseUI/list','${expert.expertName}','${expert.expertKey}')" />
			<!--  	<input type="button"  value="修改已选学科" onclick="expertChooseUI2('${ctx}/expertChooseUI/inputStream','${expert.expertName}','${expert.expertKey}','${expert.subjectName}')" />
			-->
				<input type="button"  value="删除已选学科" onclick="expertChooseUI3('${ctx}/expertChooseUI/delete','${expert.expertKey}')" />
				
				<td id="left">
					<input type="button"  value="修改" onclick="UpdateExperts('${ctx}/Experts/input','${expert.expertKey}')"/>
					<input type="button"  value="删除" onclick="deleteExperts('${ctx}/Experts/delete','${expert.expertKey}')"/>
				</td>
			</tr>                                                             
		</c:forEach>
		
	</tbody>	
	
	</table>	
	<div class="content" align="center">
    </div>
			
	
</form>