<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<tags:wjs items="back.js"></tags:wjs>

<!--导航区 -->
<div class="top">
	<ul>
		<li>添加专业</li>
		<p>基本数据>>添加专业</p>
	</ul>
</div>

<form action="${ctx }/specialty/add" id="specialtyForm">
	<!-- 列表区 -->
	<table id="table1">
		<tr id="tr1">
			<td colspan="2">填写专业信息</td>
		</tr>

		<tr>
			<td id="right" width="200px;"><font color="red">*</font>专业名称</td>
			<td id="left"><input type="text" id="nameCh" name="nameCh" class="required" /></td>
		</tr> 
		
		<tr>
			<td id="right"><font color="red">*</font>专业代码</td>
			<td id="left"><input type="text" id="specialtyID" name="specialtyID" class="required" /></td>
		</tr>
	</table>
	
	<!-- 按钮区  -->
	<div class="content" align="center">
		<span class="add"><input class="btn" type="submit" value="提交" id="btn_submit" /></span>
		<span class="add"><input class="btn" type="button" value="返回" id="btn_back" onclick="back('${ctx}/specialty')"/></span>
		<p>
	</div>
</form>

<!-- 表单校验区 -->
<script type="text/javascript">
$(document).ready(function() {
	//专业号字母数字
	jQuery.validator.addMethod("specialtyID", function(value, element) {
		return this.optional(element) || /^[a-zA-Z0-9]+$/.test(value);
	}, "只能包括英文字母和数字");
	
	$("#specialtyForm").validate({ 
	rules: { 
		nameCh: { 
			required: true, 
			rangelength: [2,10],
			remote:{ //自带远程验证存在的方法  
                 url:"${ctx}/specialty/specialtyNameUnique",  
                 type:"post", 
                 dataType:"json",
                 data:{  
                      nameCh:function(){return $("#nameCh").val();}  
                 } 
			}
		},
		 specialtyID:{
	    	required: true,
	    	specialtyID:true,
	    	rangelength: [2,10],
	    	remote:{
	    		url:"${ctx}/specialty/specialtyIDUnique",
	    		type:"post",  
                dataType:"json",
	    		data:{  
                      specialtyID:function(){return $("#specialtyID").val();}  
                 }
	    	}
		}
	},
	messages: { 
		nameCh: { 
			required: "请填写专业名称", 
			rangelength: "专业名必须在2-10个字符之间",
			remote: "该专业名称已存在"  
		},
		specialtyID:{
	    	required: "请填写专业号",
	    	rangelength: "专业号必须在2-10个字符之间",
	    	remote: "该专业代码已存在"
		}
	}
	}); 
});
</script>