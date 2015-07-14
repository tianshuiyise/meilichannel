<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<tags:wjs items="calendar.js"></tags:wjs>
<tags:wjs items="back.js"></tags:wjs>

<!--导航区 -->
<div class="top">
	<ul>
		<li>添加招生批次</li>
		<p>基本数据>>添加招生批次</p>
	</ul>
</div>

<!-- 检索条件 -->
<form id="batchForm" action="/nankai/batch/add">

	<!-- 列表区 -->
	<table id="table1">
		<tr id="tr1">
			<td colspan="4" id="left">填写招生批次信息</td>
		</tr>
		<tr>
			<td id="right" width="200px;"><font color="red">*</font>批次编号</td>
	        <td colspan="3" id="left"><input type="text" id="txt_batchID" name="batchID" class="required"/></td>
		</tr>
	    <tr>
		    <td id="right" width="200px;"><font color="red">*</font>批次名称</td>
			<td id="left"><input type="text" id="txt_batchName" name="batchName" class="required"/></td>
			<td id="right" width="200px;"><font color="red">*</font>开始时间</td>
			<td id="left"><input type="text" id="txt_startDate" class="Wdate" name="startDate" onclick="WdatePicker()" /></td>
	    </tr>
	</table>

	<!-- 按钮区  -->
	<div class="content" align="center">
	    <span class="add" ><input type="submit" value="提交" id="btn" /></span>
	    <span class="add" ><input type="button" value="返回" id="btn"  onclick="back('${ctx}/batch')"/></span>
	</div>
</form>

<!-- 表单校验区 -->
<script type="text/javascript">
$(document).ready(function() {
	//批次号字母数字
	jQuery.validator.addMethod("batchID", function(value, element) {
		return this.optional(element) || /^[a-zA-Z0-9]+$/.test(value);
	}, "只能包括英文字母和数字");
	$("#batchForm").validate({ 
	
	/* 验证规则 */ 
		rules: { 
			batchName: {
	    		required:true,
				rangelength: [2,10],
				remote:{ //自带远程验证存在的方法  
                 	url:"${ctx}/batch/ajaxConfim",  
                 	type:"post",  
                 	dataType:"json",
                 	data:{  
                      batchName:function(){return $("#txt_batchName").val();}  
                 	} 
              	}  
			},
			batchID:{
	    		required: true,
	    		batchID:true, 
				rangelength: [2,10],
				remote:{ //自带远程验证存在的方法  
                 	url:"${ctx}/batch/batchIDUnique",  
                 	type:"post",  
                 	dataType:"json",
                 	data:{  
                      batchID:function(){return $("#txt_batchID").val();}  
                 	} 
              	}  
			},
			startDate:{
				required: true
			}
		}, 
		/* 设置错误信息 */ 
		messages: { 
			batchName: { 
				required: "请填写批次名称", 
				rangelength: "批次名必须在2-10个字符之间" ,
				remote: "该批次名称已存在"  
			},
			batchID: { 
				required: "请填写批次编号", 
				rangelength: "批次编号必须在2-10个字符之间",
				remote: "该批次编号已存在"  
			},
			startDate:{
				required: "请填写开始时间",
			} 
		}
	}); 
});
</script>