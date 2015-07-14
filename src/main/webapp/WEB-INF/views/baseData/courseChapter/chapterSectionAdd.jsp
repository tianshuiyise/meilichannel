<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<tags:wjs items="back.js"></tags:wjs>

<!--导航区 -->
<div class="top">
	<ul>
		<li>添加课程章节</li>
		<p>基本数据>>添加课程章节</p>
	</ul>
</div>

<form action="${ctx }/courseChapter/addSection" id="chapterSectionForm">
<!-- 列表区 -->
<table id="table1">
	<tr id="tr1">
		<td colspan="2">添加课程章节信息</td>
	</tr>
	<tr>
		<td id="right"><font color="red">*</font>课程名称</td>
		<td id="left"><label>${courseChapter.nameCh}</label><input type="hidden" id="txt_courseKey" name="courseKey" value="${courseChapter.courseKey}"/></td>
	</tr>
	<tr id="tr2">
		<td id="right"><font color="red">*</font>课程章名</td>
		<td id="left"><label>${courseChapter.chapterName}</label></td>
	</tr>
	<tr>
		<td id="right"><font color="red">*</font>章名编号</td>
		<td id="left"><label>${courseChapter.chapterCode}</label><input type="hidden" id="txt_parentChapterCode" name="parentChapterCode" value="${courseChapter.chapterCode}" /></td>
	</tr>
	<tr id="tr2">
		<td id="right" width="200px;"><font color="red">*</font>节标题</td>
		<td id="left"><input type="text" id="txt_chapterName" name="chapterName" class="required" /></td>
	</tr>
	<tr>
		<td id="right"><font color="red">*</font>节编号</td>
		<td id="left"><input type="text" id="txt_chapterCode" name="chapterCode" class="required" /></td>
	</tr>
	<tr id="tr2">
		<td id="right" width="200px;"><font color="red">*</font>主要内容</td>
		<td id="left"><input type="text" id="txt_contentDesc" name="contentDesc" class="required" /></td>
	</tr>
	</table>
	
<!-- 按钮区  -->
<div class="content" align="center">
	<span class="add"><input class="btn" type="submit" value="提交" id="btn_submit" /></span>
	<span class="add"><input class="btn" type="button" value="返回" id="btn_back" onclick="back('${ctx}/courseChapter','${courseChapter.courseKey}')"/></span>
	<p>
</div>
</form>

<!-- 表单校验区  -->
<script type="text/javascript">
	$(document).ready(function() {
		//验证正整数的方法 
		jQuery.validator.addMethod("positiveInteger", function(value, element) {
			var positiveVal = /^[0-9]*[1-9][0-9]*$/;    
			return this.optional(element) || (positiveVal.test(value));   
		}, "请输入正整数");

		$("#chapterSectionForm").validate({ 
		   // 是否在敲击键盘时验证,默认:true
		    onkeyup :false,
			rules:{ 
				//章节标题
				chapterName:{
					required: true,  
					rangelength: [1,50],
					remote:{ //自带远程验证存在的方法
		            	url:"${ctx}/courseChapter/chapterNameConfim",  
		          		type:"post",  
		            	dataType:"json",  
		            	data:{  
		                	chapterName:function(){return $("#txt_chapterName").val();},
		                	courseKey:function(){return $("#txt_courseKey").val();},  
							parentChapterCode:function(){return $("#txt_parentChapterCode").val();}  
		            	} 
		            }					
				},
				//章节编码
				chapterCode:{
					required: true, 
					positiveInteger: true, 
					rangelength: [1,10],
					remote:{ //自带远程验证存在的方法
		            	url:"${ctx}/courseChapter/chapterCodeConfim",  
		          		type:"post",  
		            	dataType:"json",  
		            	data:{  
		                	chapterCode:function(){return $("#txt_chapterCode").val();},  
		                	courseKey:function(){return $("#txt_courseKey").val();},  
							parentChapterCode:function(){return $("#txt_parentChapterCode").val();}  
		            	} 
		            }									
				},
			},
			messages:{
				//章节标题
				chapterName:{
					required: "请填写章节标题", 
					rangelength: "章节标题必须在1-50个字符之间",  
					remote: "该课程章节标题已存在"  			
				},
				//章节编码
				chapterCode:{
					required: "请填写章节编号", 
					rangelength: "章节编号必须在1-10个字符之间",  
					remote: "该课程章节编号已存在"  			
				},
			}
		});
	});		
</script>
