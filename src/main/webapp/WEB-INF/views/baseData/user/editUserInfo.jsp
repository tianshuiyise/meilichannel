<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<tags:wjs items="calendar.js"></tags:wjs>
<tags:wcss items="message.css" />

<!--导航区 -->
<div class="top">
	<ul>
		<li>用户</li>
		<p>用户>>信息修改</p>
	</ul>
</div>

<!--这里是操作完成的消息提示区  -->
<c:import url="/WEB-INF/include/message.jsp"></c:import>

<form id="userForm" action="${ctx }/userInfo/editUserInfo">
	<!-- 列表区 -->
	<table id="table1">
		<tr id="tr1">
			<td colspan="4" id="left">修改用户信息</td>
		</tr>
		<tr>
			<td id="right" width="200px"><font color="red">*</font>系统用户名</td>
	        <td id="left" colspan="3">
	        	<input type="text" id="txt_userName" name="userName" class="required" value="${user.userName}"/>
	        	<input type="hidden" id="hid_userName" name="hid_userName" value="${user.userName}"/>
	        </td>
	        <%-- <td id="right" width="200px"><font color="red">*</font>密码</td>
	        <td id="left"><input type="password" id="txt_password" name="password"  value="${user.password }"/></td> --%>
		</tr>
	    <tr>
	    	<td id="right"><font color="red">*</font>用户ID</td>
	        <td id="left">
	        	<input type="text" id="txt_userID" name="userID" class="required" value="${user.userID }"/>
	        	<input type="hidden" id="hid_userID" name="hid_userID" value="${user.userID }"/>
	        </td>
		    <td id="right"><font color="red">*</font>用户中文名</td>
			<td id="left"><input type="text" id="txt_nameCh" name="nameCh" class="required" value="${user.nameCh }"/></td>
	    </tr>
	    <tr>
	    	<td id="right">用户英文名</td>
			<td id="left"><input type="text" id="txt_nameEn" name="nameEn" value="${user.nameEn }"/></td>
			<td id="right"><font color="red">*</font>性别</td>
			<td id="left">
				<tags:wselect id="genderCode" key="Gender" name="genderCode" value="${user.genderCode}" />
			</td>
	    </tr>
	    <tr>
	    	<td id="right"><font color="red">*</font>出生日期</td>
	    	<fmt:parseDate value="${user.birthday}" var="birthday" pattern="yyyy-MM-dd"/>
	        <td id="left"><input type="text" id="txt_birthday" name="birthday" class="Wdate" onclick="WdatePicker()" value="<fmt:formatDate value='${birthday}'/>"/></td>
		    <td id="right"><font color="red">*</font>移动电话</td>
			<td id="left"><input type="text" id="txt_mobile" name="mobile" class="required" value="${user.mobile }"/></td>
	    </tr>
	     <tr>
	    	<td id="right">传真</td>
			<td id="left"><input type="text" id="txt_fax" name="fax" value="${user.fax }"/></td>
			<td id="right">电子邮箱</td>
			<td id="left"><input type="text" id="txt_email" name="email" value="${user.email }"/></td>
	    </tr>
	</table>
	<input type="hidden" name="userKey" value="${user.userKey}"/>
	
	<!-- 按钮区  -->
	<div class="content" align="center">
		<span class="add" ><input class="btn" type="submit" value="提交" id="btn" /></span>
	</div>
</form>

<!-- 表单校验区 -->
<script type="text/javascript">
$(document).ready(function() {
	//专业名汉字
	jQuery.validator.addMethod("hanzi", function(value, element) {  
	   var tel = /^[\u4e00-\u9fa5]+$/;  
	   return this.optional(element) || (tel.test(value));  
	}, "请输入汉字");
	//专业号字母数字
	jQuery.validator.addMethod("zimushuzi", function(value, element) {
		return this.optional(element) || /^[a-zA-Z0-9]+$/.test(value);
	}, "只能包括英文字母和数字"); 
	//英文字母
	jQuery.validator.addMethod("zimu", function(value, element) {
		return this.optional(element) || /^[a-zA-Z]+$/.test(value);
	}, "只能包括英文字母");
	
	$("#userForm").validate({ 
	/* 验证规则 */ 
		rules: { 
			userName: {
				required: true,
				rangelength: [2,10] ,
				zimushuzi: true,
				remote:{ //自带远程验证存在的方法  
                 	url:"${ctx}/user/ajaxConfim",  
                 	type:"post",  
                 	dataType:"json",
                 	data:{  
                      userName:function(){return $("#txt_userName").val();},
                      hid_userName:function(){return $("#hid_userName").val();},
                 	}
              	},
			},
			userID:{
	    		required: true,
				rangelength: [2,10],
				zimushuzi: true,
				remote:{ //自带远程验证存在的方法  
                 	url:"${ctx}/user/userIDUnique",  
                 	type:"post",  
                 	dataType:"json",
                 	data:{  
                      userID:function(){return $("#txt_userID").val();},
                      hid_userID:function(){return $("#hid_userID").val();}
                 	}
              	}
			},
			nameCh: {
				required: true,
				hanzi: true,
				rangelength: [2,10] ,
			},
			nameEn: {
				zimu: true,
			},
			genderCode: {
				required:true,
			},
			mobile: {
				required:true,
				number: true,
			},
			email: {
				email: true,
			},
			fax: {
				digits: true,
			},
			birthday:{
				required:true,
			},
		}, 
		/* 设置错误信息 */ 
		messages: { 
			userName: {
				required: "请填写用户名", 
				rangelength: "用户名必须在2-10个字符之间" ,
				remote: "该系统用户名已存在",
			},
			userID:{
				required: "请填写用户ID", 
				rangelength: "用户ID必须在2-10个字符之间",
				remote: "该用户ID已存在",
			},
			nameCh: {
				required:"请填写用户中文名",
				rangelength: "用户名必须在2-10个字符之间", 
			},
			genderCode: {
				required:"请选择性别",
			},
			mobile: {
				required:"请填写移动电话",
				number: "请输入数字",
			},
			fax: {
				digits: "请输入正确的传真号",
			},
			birthday:{
				required:"请填写出生日期",
			},
		}
	}); 
});
</script>
