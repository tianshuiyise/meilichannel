<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<tags:wcss items="message.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!--导航区 -->
<div class="top">
	<ul>
		<li>用户</li>
		<p>用户>>密码修改</p>
	</ul>
</div>

<!--这里是操作完成的消息提示区  -->
<c:import url="/WEB-INF/include/message.jsp"></c:import>

<form action="${ctx }/userInfo/editPassword" method="post" id="editPassword">	
	<input type="hidden" id="hid_userKey" name="userKey" value="${currentUser.userKey }">
	<!-- 列表区 -->
	<table id="table1">
		<tbody>
			<tr id="tr1">
				<td id="left" colspan="2">密码修改</td>
			</tr>
			<tr>
				<td id="right" width="200px"><font color="red">*</font>当前密码：</td>
				<td id="left">
					<input type="password" name="password" id="pas_password"/>
				</td>
			</tr>
			<tr>
				<td id="right"><font color="red">*</font>新密码：</td>
				<td id="left">
					<input type="password" name="password1" id="pas_password1"/>
				</td>
			</tr>
			<tr>
				<td id="right"><font color="red">*</font>确认新密码：</td>
				<td id="left">
					<input type="password" name="password2"/>
				</td>
			</tr>
		</tbody>
	</table>
	
	<!-- 按钮区  -->
	<div class="content" align="center">
		<span class="add">
			<input class="btn" type="submit" value="确认修改" />
		</span>
		<p>
	</div>
</form>

<!-- 表单校验区 -->
<script type="text/javascript">
$(document).ready(function() {
	// 验证两次输入值是否不相同
	jQuery.validator.addMethod("notEqualTo", function(value, element, param) {
		return value != $(param).val();
	}, $.validator.format("新密码与原密码不能相同"));

$("#editPassword").validate({ 
	rules: { 
		password:{
			required:true,
			rangelength: [6,16],
			remote:{ 
                 url:"${ctx}/userInfo/passwordExist",  
                 type:"post",
                 dataType:"json",
                 data:{  
                      password:function(){return $("#pas_password").val();},
                      userKey:function(){return $("#hid_userKey").val();},  
                 } 
			}
		},
		password1:{
			required:true,
			rangelength: [6,16],
			notEqualTo: "#pas_password",
		},
		password2:{
			required:true,
			rangelength: [6,16],
			equalTo: "#pas_password1",
		},
	},
	messages: { 
		password:{
			rangelength: "请输入6-16位密码",
			remote: "原密码错误",
		},
		password1:{
			rangelength: "请输入6-16位密码",
		},
		password2:{
			rangelength: "请输入6-16位密码",
			equalTo: "两次密码不一致",
		},
	}
	}); 
});
</script>