<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<tags:wjs items="back.js"></tags:wjs>

<!--导航区 -->
<div class="top">
	<ul>
		<li>修改专业设置</li>
		<p>基本数据>>修改专业设置</p>
	</ul>
</div>

<form action="${ctx }/specialtySet/modify" id="specialtySetForm">
	<!-- 列表区 -->
	<input type="hidden" name="specialtySetKey" value="${specialtySet.specialtySetKey }" />
	<table id="table1">
		<tr id="tr1">
			<td colspan="4">填写专业设置信息</td>
		</tr>

		<tr>
			<td id="right" width="150">教育类型</td>
			<td id="left">
				学历教育<input type="hidden" id="hid_eduType" name="eduType" value="1">
				<%-- <tags:wselect id="eduType" key="EduType" name="eduType" value="${specialtySet.eduType}" /> --%>
			</td>
			<td id="right" width="150"><font color="red">*</font>学位类型</td>
			<td id="left"><tags:wselect id="degreeType" key="Degree" name="degreeType" value="${specialtySet.degreeType}" /></td>
		</tr>

		<tr>
			<td id="right"><font color="red">*</font>专业名称</td>
			<td id="left">
				<%-- <input type="text" name="nameCh" value="${specialtySet.nameCh }" readonly="readonly"/> --%>
				<select name="nameCh">
					<option value="">--请选择--</option>
					<c:forEach items="${specialtyList }" var="specialty">
						<option value="${specialty.specialtyID }/${specialty.nameCh }" <c:if test="${specialty.nameCh eq specialtySet.nameCh }">selected="selected"</c:if>>${specialty.nameCh }</option>
					</c:forEach>
				</select>
			</td>
			<td id="right"><font color="red">*</font>层次名称</td>
			<td id="left">
				<%-- <input type="text" name="edulevelName" value="${specialtySet.edulevelName }" readonly="readonly"/> --%>
				<select name="edulevelName">
					<option value="">--请选择--</option>
					<c:forEach items="${eduLevelList }" var="eduLevel">
						<option value="${eduLevel.edulevelID }/${eduLevel.levelName }" <c:if test="${eduLevel.levelName eq specialtySet.edulevelName }">selected="selected"</c:if>>${eduLevel.levelName }</option>
					</c:forEach>
				</select>
			</td>
		</tr>
		
		<tr>
			<td id="right"><font color="red">*</font>是否开设</td>
			<td id="left">
				<select name="setFlg">
					<option value="">--请选择--</option>
					<option value="1" <c:if test="${specialtySet.setFlg }">selected="selected"</c:if>>是</option>
					<option value="0" <c:if test="${!specialtySet.setFlg }">selected="selected"</c:if>>否</option>
				</select>
				
			</td>
			<td id="right"><font color="red">*</font>要求最低学分</td>
			<td id="left">
				<input type="text" id="txt_minScore" name="minScore" value="${specialtySet.minScore }"/>
			</td>
		</tr>
		
		<tr>
			<td id="right"><font color="red">*</font>要求最少课程数</td>
			<td id="left">
				<input type="text" name="minCourseNum" value="${specialtySet.minCourseNum }"/>
			</td>
			<td id="right"><font color="red">*</font>最低修业年限</td>
			<td id="left">
				<input type="text" id="txt_minSchoolYears" name="minSchoolYears" value="${specialtySet.minSchoolYears }"/>
			</td>
		</tr>
		
		<tr>
			<td id="right"><font color="red">*</font>最高修业年限</td>
			<td id="left">
				<input type="text" id="txt_maxSchoolYears" name="maxSchoolYears" value="${specialtySet.maxSchoolYears }"/>
			</td>
			<td id="right"><font color="red">*</font>学期数</td>
			<td id="left">
				<input type="text" id="txt_terms" name="terms" value="${specialtySet.terms }"/>
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
	
	//验证要求最低学分为正数
	jQuery.validator.addMethod("zhengshu", function(value, element) {  
		var positiveVal = /^[0-9].*$/;  
		return this.optional(element) || (positiveVal.test(value));  
	}, "请输入正数");
	
	//验证最高修业年限大于最低修业年限
	jQuery.validator.addMethod("compareVal", function(value, element, param) {
		var max = parseFloat(value);
		var min = parseFloat($(param).val());
		return max >= min;
	}, $.validator.format("不得小于最低修业年限"));
	
	//验证正整数的方法 
	jQuery.validator.addMethod("positiveInteger", function(value, element) {
		var positiveVal = /^[0-9]*[1-9][0-9]*$/;    
		return this.optional(element) || (positiveVal.test(value));   
	}, "请输入正整数");
	
	$("#specialtySetForm").validate({
		rules: {
			degreeType: {
				required:true,
			},
			nameCh: { 
				required: true, 
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
				max: 999,
				compareVal: "#txt_minSchoolYears",
			},
			terms: {
				required: true,
				positiveInteger: true,
			}
		},
		messages: {
			degreeType: {
				required: "请选择学位类型",
			},
			nameCh: { 
				required: "请选择专业", 
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