<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<tags:wjs items="back.js"></tags:wjs>
<script type="text/javascript">
	$(function(){
		//专业名关联专业号
		var nameChObj = $("#txt_nameCh");
		//专业名关联专业代码
		$(nameChObj).blur(function(){
			var nameCh = nameChObj.val().trim();
			$.post("/nankai/specialtySet/findSpecialtyIDByName", {nameCh: nameCh}, function callBack(data) {
				if(data == "") {
					//没有对应的专业号，移除readonly属性
					$("#txt_specialtyID").val(data);
					$("#txt_specialtyID").removeAttr("readonly"); 
				} else {
					//有对应的专业号，添加文本框readonly属性为只读
					$("#txt_specialtyID").val(data);
					$("#txt_specialtyID").attr({readonly: "true"}); 
				};
			});
		});
	});
</script>

<!--导航区 -->
<div class="top">
	<ul>
		<li>添加专业设置</li>
		<p>基本数据>>添加专业设置</p>
	</ul>
</div>

<form action="${ctx }/specialtySet/add" id="specialtySetForm">
	<!-- 列表区 -->
	<table id="table1">
		<tr id="tr1">
			<td colspan="4">填写专业设置信息</td>
		</tr>

		<tr>
			<td id="right" width="150px">教育类型</td>
			<td id="left">
				学历教育<input type="hidden" id="hid_eduType" name="eduType" value="1">
				<%-- <tags:wselect id="slt_eduType" key="EduType" name="eduType" value="${param.search_eduType}" /> --%>
			</td>
			<td id="right" width="150px"><font color="red">*</font>学位类型</td>
			<td id="left"><tags:wselect id="slt_degreeType" key="Degree" name="degreeType" value="${param.search_degreeType}" /></td>
		</tr>

		<tr>
			<td id="right"><font color="red">*</font>专业名称</td>
			<td id="left">
				<input type="text" id="txt_nameCh" name="nameCh" class="required" />
			</td>
			<td id="right"><font color="red">*</font>专业代码</td>
			<td id="left">
				<input type="text" id="txt_specialtyID" name="specialtyID" class="required"/>
			</td>
		</tr>
		
		<tr>
			<td id="right"><font color="red">*</font>层次名称</td>
			<td id="left">
				<select id="slt_edulevelName" name="edulevelName" class="required">
					<option value="">--请选择--</option>
					<c:forEach items="${eduLevelList }" var="eduLevel">
						<option value="${eduLevel.edulevelID }/${eduLevel.levelName }" <c:if test="${eduLevel.levelName eq specialtySet.edulevelName }">selected="selected"</c:if>>${eduLevel.levelName }</option>
					</c:forEach>
				</select>
			</td>
			<td id="right"><font color="red">*</font>是否开设</td>
			<td id="left">
				<select id="slt_setFlg" name="setFlg" class="required">
					<option value="">--请选择--</option>
					<option value="1">是</option>
					<option value="0">否</option>
				</select>
			</td>
		</tr>
		
		<tr>
			<td id="right"><font color="red">*</font>要求最低学分</td>
			<td id="left">
				<input type="text" id="txt_minScore" name="minScore" class="required" />
			</td>
			<td id="right"><font color="red">*</font>要求最少课程数</td>
			<td id="left">
				<input type="text" id="txt_minCourseNum" name="minCourseNum" class="required" />
			</td>
		</tr>
		
		<tr>
			<td id="right"><font color="red">*</font>最低修业年限</td>
			<td id="left">
				<input type="text" id="txt_minSchoolYears" name="minSchoolYears" class="required" />
			</td>
			<td id="right"><font color="red">*</font>最高修业年限</td>
			<td id="left">
				<input type="text" id="txt_maxSchoolYears" name="maxSchoolYears" class="required" />
			</td>
		</tr>
		
		<tr>
			<td id="right"><font color="red">*</font>学期数</td>
			<td id="left" colspan="3">
				<input type="text" id="txt_terms" name="terms" />
			</td>
		</tr>
	</table>
	
	<!-- 按钮区  -->
	<div class="content" align="center">
		<span class="add"><input class="btn" type="submit" value="提交" id="btn_submit" /></span>
		<span class="add"><input class="btn" type="button" value="返回" id="btn_back" onclick="back('${ctx}/specialtySet')" /></span>
		<p>
	</div>
</form>

<!-- 表单校验区 -->
<script type="text/javascript">
$(function() {
	
	//专业号字母数字
	jQuery.validator.addMethod("zimushuzi", function(value, element) {
		return this.optional(element) || /^[a-zA-Z0-9]+$/.test(value);
	}, "只能包括英文字母和数字");
	
	//验证要求最低学分为正数
	jQuery.validator.addMethod("zhengshu", function(value, element) {  
		var positiveVal = /^[0-9].*$/;
		return this.optional(element) || (positiveVal.test(value));  
	}, "请输入正数");
	
	//验证正整数的方法 
	jQuery.validator.addMethod("positiveInteger", function(value, element) {
		var positiveVal = /^[0-9]*[1-9][0-9]*$/;    
		return this.optional(element) || (positiveVal.test(value));   
	}, "请输入正整数");
	
	//验证最高修业年限大于最低修业年限
	jQuery.validator.addMethod("compareVal", function(value, element, param) {
		var max = parseFloat(value);
		var min = parseFloat($(param).val());
		return max >= min;
	}, $.validator.format("不得小于最低修业年限"));
	
	$("#specialtySetForm").validate({
		rules: {
			eduType: {
				required:true,
			},
			degreeType: {
				required:true,
			},
			nameCh: { 
				required: true, 
				rangelength: [2,10],
			},
			specialtyID:{
				required: true,
				zimushuzi:true,
				rangelength: [2,10],
				remote:{
		    		url:"${ctx}/specialtySet/specialtyIDUnique",
		    		type:"post",
	                dataType:"json",
		    		data:{  
	                      specialtyID:function(){return $("#txt_specialtyID").val();},
	                      nameCh:function(){return $("#txt_nameCh").val();},
	                }
	    		}
			},
			edulevelName: {
				required: true,
			},
			setFlg: {
				required: true,
			},
			minScore: {
				required: true,
				zhengshu: true,
				number: true,
				max: 999,
			},
			minCourseNum: {
				required: true,
				zhengshu: true,
				number: true,
			},
			minSchoolYears: {
				required: true,
				zhengshu: true,
				number: true,
				max: 999,
			},
			maxSchoolYears: {
				required: true,
				zhengshu: true,
				number: true,
				compareVal: "#txt_minSchoolYears",
				max: 999,
			},
			terms: {
				required: true,
				positiveInteger: true,
			}
		},
		messages: {
			eduType: {
				required: "请选择教育类型",
			},
			degreeType: {
				required: "请选择学位类型",
			},
			nameCh: { 
				required: "请填写专业名称", 
				rangelength: "专业名必须在2-10个字符之间",
			},
			specialtyID:{
				required: "请填写专业号",
				rangelength: "专业号必须在2-10个字符之间",
				remote: "该专业代码已存在",
			},
			edulevelName: {
				required: "请选择层次",
			},
			setFlg: {
				required: "请选择是否开设",
			},
			minScore: {
				required: "请填写最低学分",
			},
			minCourseNum: {
				required: "请填写最少课程数",
			},
			minSchoolYears: {
				required: "请填写最低修业年限",
			},
			maxSchoolYears: {
				required: "请填写最高修业年限",
			},
			terms: {
				required: "请填写学期数",
			}
		}
	}); 
});
</script>