<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<tags:wjs items="calendar.js"></tags:wjs>
<tags:wjs items="back.js"></tags:wjs>

<!--导航区 -->
<div class="top">
	<ul>
		<li>用户信息设置</li>
		<p>基本数据>>用户信息设置</p>
	</ul>
</div>

<!-- 检索条件 -->
<form id="userForm" action="${ctx }/user/add" >

	<!-- 列表区 -->
	<table id="table1">
		<tr id="tr1">
			<td colspan="4" id="left">填写用户信息</td>
		</tr>
		<tr>
			<td id="right" width="200px"><font color="red">*</font>系统用户名</td>
	        <td id="left"><input type="text" id="txt_userName" name="userName" class="required"/></td>
	        <td id="right" width="200px"><font color="red">*</font>密码</td>
	        <td id="left"><input type="password" id="txt_password" name="password" class="required"/></td>
		</tr>
	    <tr >
	    	<td id="right"><font color="red">*</font>用户ID</td>
	        <td id="left"><input type="text" id="txt_userID" name="userID" class="required"/></td>
		    <td id="right"><font color="red">*</font>用户中文名</td>
			<td id="left"><input type="text" id="txt_nameCh" name="nameCh" class="required"/></td>
	    </tr>
	    <tr>
	    	<td id="right">用户英文名</td>
			<td id="left"><input type="text" id="txt_nameEn" name="nameEn" /></td>
			<td id="right"><font color="red">*</font>性别</td>
			<td id="left">
				<tags:wselect id="genderCode" key="Gender" name="genderCode" value="${user.genderCode}" />
			</td>
	    </tr>
	    <tr >
	    	<td id="right"><font color="red">*</font>出生日期</td>
	        <td id="left"><input type="text" id="txt_birthday" name="birthday" class="Wdate" onclick="WdatePicker()"/></td>
		    <td id="right"><font color="red">*</font>移动电话</td>
			<td id="left"><input type="text" id="txt_mobile" name="mobile" class="required"/></td>
	    </tr>
	     <tr>
	    	<td id="right">传真</td>
			<td id="left"><input type="text" id="txt_fax" name="fax"/></td>
			<td id="right">电子邮箱</td>
			<td id="left"><input type="text" id="txt_email" name="email"/></td>
	    </tr>
	    <tr>
	    	<td id="right"><font color="red">*</font>角色</td>
	    	<td>
	    		<select id="mul_roleNames" name="roleNames" multiple="multiple" size="5">
    				<c:forEach items="${roleList }" var="role">
						<option value="${role.roleKey }">${role.roleName }</option>
					</c:forEach>
	    		</select>
	    	</td>
	    	<td id="right"><font color="red">*</font>用户类型</td>
	    	<td>
	    		<!-- <select id="mul_userTypes" name="userTypes" multiple="multiple" size="5" class="required">
					<option value="1">管理员</option>
					<option value="2">教师</option>
					<option value="4">学生</option>
	    		</select> -->
	    		<tags:wmultipleselect name="userTypes" key="UserType" value=""></tags:wmultipleselect>
	    	</td>
	    </tr>
	    <tr>
	    	<td id="right">备注</td>
	        <td id="left" colspan="3"><textarea id="txt_remark" name="remark" cols="40" rows="3"></textarea></td>
	    </tr>
	</table>

	<!-- 按钮区  -->
	<div class="content" align="center">
	    <span class="add" ><input class="btn" type="submit" value="提交" id="btn" /></span>
	    <span class="add" ><input class="btn" type="button" value="返回" id="btn"  onclick="back('${ctx}/user')"/></span>
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
				rangelength: [2,15] ,
				zimushuzi: true,
				remote:{ //自带远程验证存在的方法  
                 	url:"${ctx}/user/ajaxConfim",  
                 	type:"post",  
                 	dataType:"json",
                 	data:{  
                      userName:function(){return $("#txt_userName").val();}  
                 	} 
              	}  
			},
			password:{
				required:true,
				rangelength: [6,16],
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
                      userID:function(){return $("#txt_userID").val();}  
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
			roleNames: {
				required: true,
			},
			userTypes:{
				required:true,
			}
		}, 
		/* 设置错误信息 */ 
		messages: { 
			userName: {
				required: "请填写用户名", 
				rangelength: "用户名必须在2-15个字符之间" ,
				remote: "该系统用户名已存在",
			},
			password:{
				required:"请填写密码",
				rangelength: "请输入6-16位密码",
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
			roleNames: {
				required: "请选择角色",
			}
		}
	}); 
});
</script>