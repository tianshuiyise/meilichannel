<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<tags:wjs items="back.js"></tags:wjs>

<!--导航区 -->
<div class="top">
	<ul>
		<li>修改课程章节</li>
		<p>基本数据>>修改课程章节</p>
	</ul>
</div>

<form action="${ctx }/courseChapter/modify" id="courseChapterModifyForm">
<!-- 列表区 -->
<table id="table1">
	<tr id="tr1">
		<td colspan="2">修改课程章节信息<input type="hidden" name="courseChapterKey" id="txt_courseChapterKey" value="${courseChapter.courseChapterKey}"/></td>
	</tr>
	<tr>
		<td id="right"><font color="red">*</font>课程名称<input type="hidden" id="txt_parentChapterCode" name="parentChapterCode" value="${courseChapter.parentChapterCode}"/></td>
		<td id="left">
			<select id="search_courseKey" name="courseKey" style="width: 150px" class="required" >
			<c:forEach items="${courseList}" var="course" varStatus="status">
				<option value="${course.courseKey}" <c:if test="${courseChapter.courseKey eq course.courseKey}">selected="selected"</c:if>>
					${course.nameCh}
				</option>	
			</c:forEach>
			</select>
		</td>
	</tr>
	<tr>
		<td id="right" width="200px;"><font color="red">*</font>章节标题<input type="hidden" id="txt_hid_chapterName" name="hid_chapterName" value="${courseChapter.chapterName}"/></td>
		<td id="left"><input type="text" id="txt_chapterName" name="chapterName" value="${courseChapter.chapterName}" class="required" /></td>
	</tr>
	<tr>
		<td id="right"><font color="red">*</font>章节编号</td>
		<td id="left"><label>${courseChapter.chapterCode}</label><input type="hidden" id="txt_chapterCode" name="chapterCode" value="${courseChapter.chapterCode}" class="required" /></td>
	</tr>
	<tr>
		<td id="right" width="200px;"><font color="red">*</font>主要内容</td>
		<td id="left"><input type="text" id="txt_contentDesc" name="contentDesc" value="${courseChapter.contentDesc}" class="required" /></td>
	</tr>
	</table>
	
<!-- 按钮区  -->
<div class="content" align="center">
	<span class="add"><input class="btn" type="submit" value="保存" id="btn_submit" /></span>
	<span class="add"><input class="btn" type="button" value="返回" id="btn_back" onclick="back('${ctx}/courseChapter','${courseChapter.courseKey}')"/></span>
	<p>
</div>
</form>

<!-- 表单校验区  -->
<script type="text/javascript">
	$(document).ready(function() {
/* 		//字母数字
		jQuery.validator.addMethod("chapterCode", function(value, element) {
		return this.optional(element) || /^[a-zA-Z0-9]+$/.test(value);
		}, "只能包括英文字母和数字");
 */
		$("#courseChapterModifyForm").validate({ 
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
		                	courseKey:function(){return $("#search_courseKey").val();},
							parentChapterCode:function(){return $("#txt_parentChapterCode").val();},
		                	//存放原有信息
		                	hid_chapterName:function(){return $("#txt_hid_chapterName").val();}   
		            	} 
		            }					
				},
/* 				//章节编码
				chapterCode:{
					required: true, 
					chapterCode: true, 
					rangelength: [1,10],
					remote:{ //自带远程验证存在的方法
		            	url:"${ctx}/courseChapter/chapterCodeConfim",  
		          		type:"post",  
		            	dataType:"json",  
		            	data:{  
		                	chapterCode:function(){return $("#txt_chapterCode").val();},  
		                	courseKey:function(){return $("#search_courseKey").val();},
							parentChapterCode:function(){return $("#txt_parentChapterCode").val();}		                	    
		            	} 
		            }									
				},
 */			},
			messages:{
				//章节标题
				chapterName:{
					required: "请填写章节标题", 
					rangelength: "章节标题必须在1-50个字符之间",  
					remote: "该课程章节标题已存在"  			
				},
/* 				//章节编码
				chapterCode:{
					required: "请填写章节编号", 
					rangelength: "章节编号必须在1-10个字符之间",  
					remote: "该课程章节编号已存在"  			
				},
 */			},
		});
	});		
</script>
