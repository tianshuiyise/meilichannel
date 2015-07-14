<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<tags:wjs items="back.js"></tags:wjs>

<!--导航区 -->
<div class="top">
	<ul>
		<li>教师详细信息</li>
		<p>基本信息>>教师详细信息</p>
	</ul>
</div>
<form id="searchForm" action="${ctx }/teacherType/add" method="post" >

<!-- 列表区 -->
<table id="table1">
	<tr id="tr1">
		<td id="left" colspan="2">填写教师信息</td>
	</tr>
	<tr>
		<td id="right" width="200px"><font color="red">*</font>类型名称</td>
		<td>
			<input class="txt" type="text" name="itemLabel" id="itemLabel"/>
		</td>
	</tr>
	<tr>
		<td id="right"><font color="red">*</font>分类编号</td>
		<td id="right" style="text-align:left;"><input class="txt" type="text" name="itemCode" id="itemCode"/></td>
	</tr>
</table>

<!-- 按钮区  -->
<div class="content" align="center">
	<span class="add"><input class="btn" type="submit" value="提交" id="btn_add" /></span>
	<span class="add">
		<input class="btn" type="button" value="返回" id="btn_back"  onclick="back('${ctx}/teacherType')"/>
	</span>
</div>
</form>

<!-- 表单校验区 -->
<script type="text/javascript">
$(document).ready(function() {
	//专业名汉字
	jQuery.validator.addMethod("itemLabel", function(value, element) {  
	   var tel = /^[\u4e00-\u9fa5]+$/;  
	   return this.optional(element) || (tel.test(value));  
	}, "请输入汉字");
	//专业号字母数字
	jQuery.validator.addMethod("itemCode", function(value, element) {
		return this.optional(element) || /^[a-zA-Z0-9]+$/.test(value);
	}, "只能包括英文字母和数字");
	
	$("#searchForm").validate({ //根据form的id来改
	rules: { 
		itemLabel: { 
			required: true, 
			itemLabel: true, 
			rangelength: [2,10],
			remote:{ //自带远程验证存在的方法  
                 url:"${ctx}/teacherType/itemLabelUnique",  
                 type:"post", 
                 dataType:"json",
                 data:{  
                      itemLabel:function(){return $("#itemLabel").val();}  
                 } 
			}
		},
		 itemCode:{
	    	required: true,
	    	itemCode:true,
	    	rangelength: [2,10],
	    	remote:{
	    		url:"${ctx}/teacherType/itemCodeUnique",
	    		type:"post",  
                dataType:"json",
	    		data:{  
                      itemCode:function(){return $("#itemCode").val();}  
                 }
	    	}
		},
	},
	messages: { 
		itemLabel: { 
			required: "请填写类型名称", 
			rangelength: "类型名称必须在2-10个字符之间",
			remote: "该类型名称已存在"  
		},
		itemCode:{
	    	required: "请填写分类编号",
	    	rangelength: "分类编号必须在2-10个字符之间",
	    	remote: "该分类编号已存在"
		}
	}
	}); 
});
</script>
