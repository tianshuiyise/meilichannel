<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<tags:wjs items="back.js"></tags:wjs>

<!--导航区 -->
<div class="top">
	<ul>
		<li>修改课程信息</li>
		<p>基本数据>>修改课程信息</p>
	</ul>
</div>

<!-- 列表区 -->
<form id="modifyForm" action="${ctx}/courses/modify">
<table id="table1">
	<tr id="tr1">
		<td id="left" colspan="4">修改课程信息<input type="hidden" name="courseKey" id="txt_courseKey" value="${course.getCourseKey() }"/></td>
	</tr>
	<tr>
		<td id="right" width="90px"><font color="red">*</font>课程编号<input type="hidden" name="hid_courseID" id="txt_hid_courseID" value="${course.getCourseID()}"/></td>
		<td id="left"><input type="text" name="courseID" id="txt_courseID" value="${course.getCourseID()}" class="required" /></td>
		<td id="right"><font color="red">*</font>课程名称<input type="hidden" name="hid_nameCh" id="txt_hid_nameCh" value="${course.getNameCh() }"/></td>
		<td id="left" ><input type="text" name="nameCh" id="txt_nameCh" value="${course.getNameCh() }" class="required" /></td>
	</tr>
	<tr id="tr2">
	    <td id="right" width="90px">英文名<input type="hidden" name="hid_nameEn" id="txt_hid_nameEn" value="${course.getNameEn() }"/></td>
		<td id="left" width="400px"><input type="text" name="nameEn" id="txt_nameEn" value="${course.getNameEn() }" /></td>
		<td id="right"><font color="red">*</font>课程类型</td>
		<td id="left">
			<tags:wselect id="courseType" key="CourseType" name="courseType" value="${course.courseType}"/>
		</td>
	</tr>
	<tr id="tr2">
		<td id="right">所用语言</td>
		<td id="left" ><input type="text" name="language" id="txt_language" value="${course.getLanguage() }"  /></td>
		<td id="right">关键字</td>
		<td id="left" ><input type="text" name="keyword" id="txt_keyword" value="${course.getKeyword() }" /></td>
	</tr>
	<tr id="tr2">
		<td id="right"><font color="red">*</font>适用专业</td>
		<td id="left">
		<!-- <input type="text" name="specialtiesName" id="txt_specialtiesName" /> -->
			<select id="search_specialtiesCode" multiple="multiple" name="specialtiesCodes" style="width: 150px" class="required">
			<%--<option value="${course.getSpecialtiesCode()}" selected="selected">${course.getSpecialtiesName()}</option> --%>
				<c:forEach items="${specialtyList}" var="specialty" varStatus="status">
					<option value="${specialty.specialtyID}" <c:if test="${specialtyMap[specialty.specialtyID] eq '1'}">selected="selected"</c:if>>
						${specialty.nameCh}
					</option>	
				</c:forEach>
			</select>
		</td>
		<td id="right"><font color="red">*</font>适用层次</td>
		<td id="left" >
			<select id="search_specialtiesLevels" multiple="multiple" name="specialtiesLevels" style="width: 150px" class="required">
				<%-- <option value="${course.getSpecialtiesLevel()}" selected="selected">${course.getLevelName()}</option> --%>
				<c:forEach items="${levelList}" var="level" varStatus="status">
					<option value="${level.edulevelID}" <c:if test="${levelMap[level.edulevelID] eq '1'}">selected="selected"</c:if>>
						${level.levelName}
					</option>
				</c:forEach>	
			</select>			
		</td>
	</tr>
	<tr>
		<td id="right">所属学科</td>
		<td id="left">
			<select  multiple="multiple" size="5" style="width: 150px" name="specialtiesSubjects">
				<c:forEach items="${subjectList}" var="subject" varStatus="status">
					<option value="${subject.subjectID}" <c:if test="${subjectMap[subject.subjectID] eq '1'}">selected="selected"</c:if>>
						${subject.nameCh}
					</option>
				</c:forEach>
			</select>	
		</td>
		<td id="right">选课类型</td>
		<td id="left">
			<tags:wselect id="courseSelectType" key="CourseSelectType" name="courseSelectType" value="${course.courseSelectType}"/>
		</td>
	</tr>
	<tr id="tr2">
		<%-- <td id="right"><font color="red">*</font>所属学科</td>
		<td id="left"><input type="text" name="subjects" id="txt_subjects" value="${course.getSubjects() }" class="required"/></td> --%>
		<td id="right">课程版本号</td>
		<td id="left"><input type="text" name="version" id="txt_version" value="${course.getVersion() }"/></td>
		<td id="right">学分</td>
		<td id="left"><input type="text" name="score" id="txt_commendScore"  value="${course.getScore() }" /></td>
	</tr>
	<tr>
		<td id="right">学时</td>
		<td id="left"><input type="text" name="classHour" id="txt_commendHours" value="${course.getClassHour() }"/></td>
		<td id="right">对应统考科目</td>
		<td id="left"><input type="text" name="unifiedExamSubject" id="txt_unifiedExamSubject" value="${course.getUnifiedExamSubject() }" /></td>
		
		<%-- <td id="right"><font color="red">*</font>是否统考</td>
		<td id="left">
			<select id="slt_attributeFlgs" name="attributeFlgs" style="width: 150px" class="required" onclick="con()">
				<option value="1" <c:if test="${course.getAttributeFlgs() eq '1'}">selected="selected"</c:if>>是</option>
				<option value="0" <c:if test="${course.getAttributeFlgs() eq '0'}">selected="selected"</c:if>>否</option>
			</select>
		</td> --%>
	</tr>
	<tr id="tr2">
		<td id="right">课程简介</td>
		<td id="left"><textarea id="txa_brief" rows="3" cols="40" name="brief">${course.getBrief()}</textarea>
		<td id="right">备注</td>
		<td id="left"><textarea id="txa_remark" rows="3" cols="40" name="remark">${course.getRemark()}</textarea>
		</td>
	</tr>
</table>

<!-- 按钮区  -->
	<div class="content" align="center">
		<span class="add"><input class="btn" type="submit" value="保存" id="btn_submit" /></span>
		<span class="add"><input class="btn" type="button" value="返回" id="btn_back" onclick="back('${ctx}/courses')"/></span>
		<p>
	</div>
</form>

<!-- 表单校验区  -->
<script type="text/javascript">
	function con(){
		var attributeFlgs=$("#slt_attributeFlgs").val();
		if(attributeFlgs=="1"){
			$("#txt_unifiedExamSubject").attr("class","required");
		}else{
			$("#txt_unifiedExamSubject").attr("class","");
		}
	}
	
	$(document).ready(function() {
		//字母数字
		jQuery.validator.addMethod("courseID", function(value, element) {
		return this.optional(element) || /^[a-zA-Z0-9]+$/.test(value);
		}, "只能包括英文字母和数字");
		//字母数字
		jQuery.validator.addMethod("nameEn", function(value, element) {
		return this.optional(element) || /^[a-zA-Z0-9]+$/.test(value);
		}, "只能包括英文");
		
		$("#modifyForm").validate({ 
			rules:{ 
				//课程编号
				courseID:{
					required: true,  
					courseID: true,
					rangelength: [1,20],
					remote:{ //自带远程验证存在的方法
		            	url:"${ctx}/courses/courseIDConfim",  
		          		type:"post",  
		            	dataType:"json",  
		            	data:{  
		                	courseID:function(){return $("#txt_courseID").val();},
		                	//隐藏的信息
		                	hid_courseID:function(){return $("#txt_hid_courseID").val();}  
		            	} 
	         		}  					
				},
				//课程名称 
				nameCh: { 
					required: true, 
					rangelength: [1,100] ,
					remote:{ //自带远程验证存在的方法
	           			url:"${ctx}/courses/nameChConfim",  
	            		type:"post",  
	            		dataType:"json",  
	           			data:{  
	                		nameCh:function(){return $("#txt_nameCh").val();},
	                		//隐藏的信息
	                		hid_nameCh:function(){return $("#txt_hid_nameCh").val();}  
	            		} 
	         		}  
				},
				//英文名称 
				nameEn: { 
					rangelength: [1,100] ,
					remote:{ //自带远程验证存在的方法
	           			url:"${ctx}/courses/nameEnConfim",  
	            		type:"post",  
	            		dataType:"json",  
	           			data:{  
	                		nameEn:function(){return $("#txt_nameEn").val();},
	                		//隐藏的信息
	                		hid_nameEn:function(){return $("#txt_hid_nameEn").val();}  
	            		} 
	         		}  
				},
				//所用语言
				language:{
					rangelength: [1,20] ,
				},	
				//学分
				score:{
					number: true,
				},
				//学时
				classHour:{
					number: true,
				},	
				unifiedExamSubject:{
					rangelength: [1,20] ,
				},
				courseType: {
					required: true,
				},
			},
			/* 设置错误信息 */ 
			messages:{
				//课程编号
				courseID: {
					required: "请填写课程编号", 
					rangelength: "课程编号必须在1-20个字符之间",  
					remote: "该课程编号已存在"  			
				},	
				//课程名称
				nameCh: { 
					required: "请填写课程名称", 
					rangelength: "课程名必须在1-100个字符之间" ,
					remote:   "该课程已存在"  
				},
				score: {
					number: "请输入合法数字",
				},
				classHour: {
					number: "请输入合法数字",
				},
				unifiedExamSubject:{
					rangelength: "所用语言必须在1-20个字符之间", 
				},
				//英文名称
				nameEn: { 
					required: "请填写英文名", 
					rangelength: "英文名必须在1-100个字符之间" ,
					remote:   "该英文名已存在"  
				},
				courseType: {
					required: "请选择课程类型",
				},				
			}	
		});  
	});		
</script>