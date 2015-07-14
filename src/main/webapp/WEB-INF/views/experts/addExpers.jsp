<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/include/common.jsp"%>
<tags:wjs items="checkbox.js"></tags:wjs>
<tags:wcss items="message.css"></tags:wcss>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<script type="text/javascript">

</script>

<form id="addexpert" action="${ctx }/Experts/add">
    <!--这里是操作完成的消息提示区  -->
    <c:import url="/WEB-INF/include/message.jsp"></c:import>
	<!-- 列表区 -->
	<table id="table1">
		<thead>
			<tr id="tr1">
				<td id="right" colspan="1"><font color='red'>*</font>用户名：</td>
				<td id="left" colspan="8"><input type="text" id="expertUserName"
					name="expertUserName"  
					value="${expert.expertUserName}" /></td>
					
			</tr>
			<tr id="tr1">
				<td id="right" colspan="1"><font color='red'>*</font>密码：</td>
				<td id="left" colspan="8"><input type="text" id="expertPassword"
					name="expertPassword" class="required"
					value="${expert.expertPassword}" /></td>
			</tr>
			<tr id="tr1">
				<td id="right" colspan="1"><font color='red'>*</font>专家姓名：</td>
				<td id="left" colspan="8"><input type="text" id="expertName"
					name="expertName" class="required" value="${expert.expertName}" /></td>
			</tr>

			<tr id="tr1">
				<td id="right" colspan="1">联系方式：</td>
				<td id="left" colspan="8"><input type="text" id="txt_name"
					name="expertPhone"  value="${expert.expertPhone}" /></td>
			</tr>

			<tr id="tr1">
				<td id="right" colspan="1">年份：</td>
				<td id="left" colspan="8"><input type="text" id="txt_name"
					name="expertYear"  value="${expert.expertYear}" /></td>
			</tr>

			<tr id="tr1">
				<td id="right" colspan="1">开户行：</td>
				<td id="left" colspan="8"><input type="text" id="txt_name"
					name="expertBank"  value="${expert.expertBank}" /></td>
			</tr>

			<tr id="tr1">
				<td id="right" colspan="1">账号：</td>
				<td id="left" colspan="8"><input type="text" id="txt_name"
					name="expertAccounts" 
					value="${expert.expertAccounts}" /></td>
			</tr>



		</thead>

	</table>
	<div class="content" align="center">
		<input type="submit" value="创建"  />
	</div>

</form>
<!-- 表单校验区 -->
<script type="text/javascript">

    
$(document).ready(function() {
	
	var d=new Date();
	var year=d.getFullYear();
	$("#nowDate").html(year);
	
	//批次号字母数字
	jQuery.validator.addMethod("period", function(value, element) {
		return this.optional(element) || /^[0-9]+$/.test(value);
	}, "数字");
	jQuery.validator.addMethod("isEmail", function(value, element) {  
	    var tel = /^w+((-w+)|(.w+))*@[A-Za-z0-9]+((.|-)[A-Za-z0-9]+)*.[A-Za-z0-9]+$/;
	    return this.optional(element) || (tel.test(value));
	}, "请正确填写您的邮箱");
	 
	// 手机号码验证 
	jQuery.validator.addMethod("isMobile", function(value, element) { 
	
	  var length = value.length; 
	  var mobile = /^[0-9]+$/; 
	  return this.optional(element) || (length == 11 && mobile.test(value)); 
	}, "请正确填写您的手机号码"); 
	
	
	
	
	$("#addexpert").validate({ 
	
	/* 验证规则 */ 
		rules: { 
			expertUserName: {
	    		required:true,
			},
			expertName:{
	    		required: true,  
			},
			 expertPassword :{
				required: true,
			},
			
		}, 
		/* 设置错误信息 */ 
		messages: { 
			
			expertUserName: { 
				required: "请填写用户名！", 
			},
			expertName: { 
				required: "请填写专家姓名", 
			},
			expertPassword :{ 
				required: "请填写密码！", 
			},
			
		
			} 
		
	}); 
});
</script>