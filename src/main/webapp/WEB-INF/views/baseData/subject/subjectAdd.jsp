<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<tags:wjs items="back.js"></tags:wjs>

<!--导航区 -->
<div class="top">
	<ul>
		<li>添加学科分类信息</li>
		<p>基本数据>>添加学科分类信息</p>
	</ul>
</div>

<!-- 检索条件 -->
<form id="subjectForm" action="/nankai/subject/addSubject">

	<!-- 列表区 -->
	<table id="table1">
		<tr id="tr1">
			<td colspan="4" id="left">填写学科分类信息</td>
		</tr>
		<tr>
			<td id="right" width="200px;"><font color="red">*</font>学科代码</td>
	        <td id="left"><input type="text" id="txt_subjectID" name="subjectID" class="required"/></td>
	        <td id="right" width="200px;"><font color="red">*</font>学科中文名</td>
			<td id="left"><input type="text" id="txt_nameCh" name="nameCh" class="required"/></td>
		</tr>
	    <tr>
			<td id="right" width="200px;">学科英文名</td>
			<td id="left"><input type="text" id="txt_nameEn" name="nameEn"/></td>
			<td id="right" width="200px;">备注</td>
	        <td id="left"><textarea id="txt_remark" name="remark" rows="3" cols="40"></textarea></td>
	    </tr>
	</table>

	<!-- 按钮区  -->
	<div class="content" align="center">
	    <span class="add" ><input type="submit" value="提交" id="btn" /></span>
	    <span class="add" ><input type="button" value="返回" id="btn"  onclick="back('${ctx}/subject')"/></span>
	</div>
</form>

<!-- 表单校验区 -->
<script type="text/javascript">
$(document).ready(function() {
	//英文字母数字
	jQuery.validator.addMethod("alnum", function(value, element) {
		return this.optional(element) || /^[a-zA-Z0-9]+$/.test(value);
	}, "只能包括英文字母和数字");
	
	$("#subjectForm").validate({ 
	/* 验证规则 */ 
		rules: { 
			nameCh: {
	    		required:true,
				rangelength: [2,10],
				remote:{ //自带远程验证存在的方法  
                 	url:"${ctx}/subject/ajaxConfim",  
                 	type:"post",  
                 	dataType:"json",
                 	data:{  
                      nameCh:function(){return $("#txt_nameCh").val();}  
                 	} 
              	}  
			},
			subjectID:{
	    		required: true,
	    		alnum:true, 
				rangelength: [2,10],
				remote:{ //自带远程验证存在的方法  
                 	url:"${ctx}/subject/subjectIDUnique",  
                 	type:"post",  
                 	dataType:"json",
                 	data:{  
                      subjectID:function(){return $("#txt_subjectID").val();}  
                 	} 
              	}  
			},
		}, 
		/* 设置错误信息 */ 
		messages: { 
			subjectID: { 
				required: "请填写学科代码", 
				rangelength: "学科代码必须在2-10个字符之间" ,
				remote: "该学科代码已存在"  
			},
			nameCh: { 
				required: "请填写学科中文名", 
				rangelength: "学科中文名必须在2-10个字符之间",
				remote: "该学科中文名已存在"  
			},
		}
	}); 
});
</script>