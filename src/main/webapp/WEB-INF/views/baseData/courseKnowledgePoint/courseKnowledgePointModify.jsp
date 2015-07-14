<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<tags:wjs items="back.js"></tags:wjs>


<!--导航区 -->
<div class="top">
	<ul>
		<li>修改课程知识点</li>
		<p>基本数据>>修改课程知识点</p>
	</ul>
</div>

<form action="${ctx }/courseKnowledgePoint/modify" id="knowledgePointModifyForm">
<!-- 列表区 -->
<table id="table1">
	<tr id="tr1">
		<td colspan="2">修改课程知识点信息<input type="hidden" name="courseKnowledgePointKey" id="txt_courseKnowledgePointKey" value="${coursePoint.courseKnowledgePointKey}"/></td>
	</tr>
	<tr>
		<td id="right"><font color="red">*</font>课程名称</td>
		<td id="left">
			<select id="search_courseKey" name="courseKey" style="width: 150px">
			<c:forEach items="${courseList}" var="course" varStatus="status">
				<option value="${course.courseKey}" <c:if test="${coursePoint.courseKey eq course.courseKey}">selected="selected"</c:if>>
					${course.nameCh}
				</option>	
			</c:forEach>
			</select>
		</td>
	</tr>
	<tr>
		<td id="right" width="200px;"><font color="red">*</font>序号<input type="hidden" id="txt_hid_sequence" name="hid_sequence" value="${coursePoint.sequence}" class="required" /></td>
		<td id="left"><input type="text" id="txt_sequence" name="sequence" value="${coursePoint.sequence}" class="required" /></td>
	</tr>
	<tr>
		<td id="right"><font color="red">*</font>知识点<input type="hidden" id="txt_hid_knowledgePointName" name="hid_knowledgePointName" value="${coursePoint.knowledgePointName}"/></td>
		<td id="left"><input type="text" id="txt_knowledgePointName" name="knowledgePointName" value="${coursePoint.knowledgePointName}" class="required" /></td>
	</tr>
	<tr>
		<td id="right"><font color="red">*</font>知识点编号<input type="hidden" id="txt_hid_knowledgePointCode" name="hid_knowledgePointCode" value="${coursePoint.knowledgePointCode}"/></td>
		<td id="left"><input type="text" id="txt_knowledgePointCode" name="knowledgePointCode" value="${coursePoint.knowledgePointCode}" class="required" /></td>
	</tr>
	<tr>
		<td id="right" width="200px;"><font color="red">*</font>知识点内容</td>
		<td id="left"><input type="text" id="txt_contentDesc" name="contentDesc" value="${coursePoint.contentDesc}" class="required" /></td>
	</tr>
	</table>
	
<!-- 按钮区  -->
<div class="content" align="center">
	<span class="add"><input class="btn" type="submit" value="保存" id="btn_submit" /></span>
	<span class="add"><input class="btn" type="button" value="返回" id="btn_back" onclick="back('${ctx}/courseKnowledgePoint','${coursePoint.courseKey}')"/></span>
	<p>
</div>
</form>

<!-- 表单校验区  -->
<script type="text/javascript">
	$(document).ready(function() {
		//序号
		jQuery.validator.addMethod("sequence", function(value, element) {
		return this.optional(element) || /^[0-9]*$/.test(value);
		}, "只能包括数字");
		//知识点编码
		jQuery.validator.addMethod("knowledgePointCode", function(value, element) {
		return this.optional(element) || /^[a-zA-Z0-9]+$/.test(value);
		}, "只能包括英文字母和数字");

		$("#knowledgePointModifyForm").validate({ 
		   // 是否在敲击键盘时验证,默认:true
		    onkeyup :false,
			rules:{ 
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
		                	courseKey:function(){return $("#search_courseKey").val();},
		                	//存放原有信息
		                	hid_knowledgePointName:function(){return $("#txt_hid_knowledgePointName").val();}   
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
		                	courseKey:function(){return $("#search_courseKey").val();},
		                	//存放原有信息
		                	hid_knowledgePointCode:function(){return $("#txt_hid_knowledgePointCode").val();}   
		            	} 
		            }									
				},
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
		                	courseKey:function(){return $("#search_courseKey").val();},
		                	//存放原有信息
    		            	hid_sequence:function(){return $("#txt_hid_sequence").val();},
			            	} 
		            }
		    	},									
			},
			messages:{
				//知识点
				chapterName:{
					required: "请填写知识点", 
					rangelength: "知识点必须在1-50个字符之间",  
					remote: "该课程知识点已存在"  			
				},
				//知识点编码
				knowledgePointCode:{
					required: "请填写知识点编号", 
					rangelength: "知识点编号必须在1-10个字符之间",  
					remote: "该课程知识点编号已存在"  			
				},
				//序号
				sequence:{
					required: "请填写知识点序号", 
					remote: "该课程知识点序号已存在"  			
				},
			},
		});
	});			
</script>
