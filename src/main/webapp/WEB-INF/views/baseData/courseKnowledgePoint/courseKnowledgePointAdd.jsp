<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<tags:wjs items="back.js"></tags:wjs>

<!--导航区 -->
<div class="top">
	<ul>
		<li>添加课程知识点</li>
		<p>基本数据>>添加课程知识点</p>
	</ul>
</div>

<form action="${ctx }/courseKnowledgePoint/add" id="knowledgePointForm">
<!-- 列表区 -->
<table id="table1">
	<tr id="tr1">
		<td colspan="2">添加课程知识点信息</td>
	</tr>
	<tr>
		<td id="right"><font color="red">*</font>课程名称</td>
		<td id="left">
			<select id="search_courseKey" name="courseKey" style="width: 150px" class="required" onchange="confim()">
			<option value="">--请选择--</option>
			<c:forEach items="${courseList}" var="course" varStatus="status">
				<option value="${course.courseKey}">
					${course.nameCh}
				</option>	
			</c:forEach>
			</select>
		</td>
	</tr>
	<tr>
		<td id="right"><font color="red">*</font>序号</td>
		<td id="left"><input type="text" id="txt_sequence" name="sequence" disabled="disabled" class="required"/></td>
	</tr>
	<tr>
		<td id="right"><font color="red">*</font>知识点</td>
		<td id="left"><input type="text" id="txt_knowledgePointName" name="knowledgePointName" disabled="disabled" class="required" /></td>
	</tr>
	<tr>
		<td id="right"><font color="red">*</font>知识点编号</td>
		<td id="left"><input type="text" id="txt_knowledgePointCode" name="knowledgePointCode"  disabled="disabled" class="required" /></td>
	</tr>
	<tr>
		<td id="right" width="200px;"><font color="red">*</font>知识点内容</td>
		<td id="left"><input type="text" id="txt_contentDesc" name="contentDesc"  disabled="disabled" class="required"/></td>
	</tr>
	</table>
	
<!-- 按钮区  -->
<div class="content" align="center">
	<span class="add"><input class="btn" type="submit" value="提交" id="btn_submit" /></span><%-- 返回要得到${courseKey} --%>
	<span class="add"><input class="btn" type="button" value="返回" id="btn_back" onclick="back('${ctx}/courseKnowledgePoint','')"/></span>
	<p>
</div>
</form>

<!-- 表单校验区  -->
<script type="text/javascript">
	function confim(){
		var courseKey=$("#search_courseKey").val();
		if(courseKey!=""){
			$(":text").attr("disabled",false);
		}else{
			check();
		}
	}
	
	//匿名方法的调用
	function check(){
	}
	
	$(document).ready(check);
	
	$(document).ready(function() {
		//序号
		jQuery.validator.addMethod("sequence", function(value, element) {
		return this.optional(element) || /^[0-9]*[1-9][0-9]*$/.test(value);//^[0-9]*$
		}, "请输入正整数");
		//知识点编码
		jQuery.validator.addMethod("knowledgePointCode", function(value, element) {
		return this.optional(element) || /^[a-zA-Z0-9]+$/.test(value);
		}, "只能包括英文字母和数字");

		$("#knowledgePointForm").validate({ 
		   // 是否在敲击键盘时验证,默认:true
		    onkeyup :false,	
			rules:{ 
				//序号
				sequence:{
					required: true, 
					sequence: true, 
					remote:{ //自带远程验证存在的方法
		            	url:"${ctx}/courseKnowledgePoint/sequenceConfim",  
		          		type:"post",  
		            	dataType:"json",  
		            	data:{  
		                	sequence:function(){return $("#txt_sequence").val();},
		                	courseKey:function(){return $("#search_courseKey").val();}    
		            	} 
		            }
		    	},									
				//知识点
				knowledgePointName:{
					required: true, 
					rangelength: [1,50],
					remote:{ //自带远程验证存在的方法
		            	url:"${ctx}/courseKnowledgePoint/knowledgePointNameConfim",  
		          		type:"post",  
		            	dataType:"json",  
		            	data:{  
		                	knowledgePointName:function(){return $("#txt_knowledgePointName").val();},
		                	courseKey:function(){return $("#search_courseKey").val();}  		                	  
		            	} 
		            }					
				},
				//知识点编码
				knowledgePointCode:{
					required: true, 
					knowledgePointCode: true, 
					rangelength: [1,10],
					remote:{ //自带远程验证存在的方法
		            	url:"${ctx}/courseKnowledgePoint/knowledgePointCodeConfim",  
		          		type:"post",  
		            	dataType:"json",  
		            	data:{  
		                	knowledgePointCode:function(){return $("#txt_knowledgePointCode").val();},
		                	courseKey:function(){return $("#search_courseKey").val();}  		                	  
		            	} 
		            }									
				},
			},
			messages:{
				//序号
				sequence:{
					required: "请填写知识点序号", 
					remote: "该课程知识点序号已存在"  			
				},
				//知识点
				knowledgePointName:{
					required: "请填写知识点", 
					rangelength: "知识点必须在1-50个字符之间",  
					remote:"该课程知识点已存在"  			
				},
				//知识点编码
				knowledgePointCode:{
					required: "请填写知识点编号", 
					rangelength: "知识点编号必须在1-10个字符之间",  
					remote: "该课程知识点编号已存在"  			
				},
			},
		});
	});		
</script>
