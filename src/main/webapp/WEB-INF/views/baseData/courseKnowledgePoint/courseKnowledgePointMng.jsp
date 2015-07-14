<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<tags:wjs items="checkbox.js" />
<tags:wcss items="message.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!--导航区 -->
<div class="top">
	<ul>
		<li>课程知识点定义</li>
		<p>基本数据>>课程知识点定义</p>
	</ul>
</div>

<!-- 检索条件 -->
<form id="searchForm" action="${ctx}/courseKnowledgePoint">
	<div class="gly-top">
		<table id="s-table">
			<tr>
				<td id="td1">专业&nbsp;
					<select id="search_specialtiesCode" name="search_specialtiesCode" >
						<option value="">--请选择--</option>
						<c:forEach items="${specialtyList}" var="specialty" varStatus="status">
							<option value="${specialty.specialtyID}" <c:if test="${param.search_specialtiesCode eq specialty.specialtyID }">selected="selected"</c:if>>
								${specialty.nameCh}
							</option>	
						</c:forEach>
					</select>		
				</td>
				<td id="td1">层次&nbsp;
					<select id="search_specialtiesLevel" name="search_specialtiesLevel">
						<option value="">--请选择--</option>
						<c:forEach items="${levelList}" var="level" varStatus="status">
							<option value="${level.edulevelID}" <c:if test="${param.search_specialtiesLevel eq level.edulevelID}">selected="selected"</c:if>>
								${level.levelName}
							</option>
						</c:forEach>	
					</select>	
				</td>
				<td id="td1">课程名称&nbsp;
					<input class="text" type="text" id="txt_nameCh" name="search_nameCh" value="${param.search_nameCh}" />
				</td>
				<td id="s-td">
					<input type="submit" class="btn" id="btn_query" value="查询" />
				</td>
			</tr>
		</table>
	</div>

<!--这里是操作完成的消息提示区  -->
<c:import url="/WEB-INF/include/message.jsp"></c:import>

<!-- 列表区 -->	
<table id="table1">
	<thead>
		<tr id="tr1">
			<td id="title" style="width:30px;">
				<input id="chk_all" type="checkbox" width="10px;" onclick="javascript:allCheck()">
			</td>
			<td id="title">课程名</td>
			<td id="title" style="width:50px;">序号</td>
			<td id="title">知识点</td>
        	<td id="title">内容说明</td>
			<td id="title">操作</td>
		</tr>
	</thead>
	<tbody>
		<c:choose>
			<c:when test="${no==0}">
				<tr>
					<td colspan="6" id="title"><c:out value="请选择要查询的知识点"></c:out></td>
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach items="${coursePointList.content}" var="coursePoint" varStatus="status">
					<tr>
						<td id="title" width="30px">
							<input type="checkbox" id="chk_sub_checkBox" name="chk_sub_checkBox" value="${coursePoint.courseKnowledgePointKey}" onclick="javascript:checkT_F()"/>
						</td>
						<td id="left">${coursePoint.nameCh}</td>
						<td id="title" style="width:50px;">${coursePoint.sequence}</td>
						<td id="left">${coursePoint.knowledgePointName}</td>
        				<td id="left">${coursePoint.contentDesc}</td>
						<td id="title">
							<input type="button" id="btn_modify" value="修改" onclick="modify('${ctx}/courseKnowledgePoint/preModify', '${coursePoint.courseKnowledgePointKey}')"/> 
							<input type="button" id="btn_delete" value="删除" onclick="singleDelete('删除该知识点后，该知识点的有关信息将同时删除！确实要删除吗？', '${ctx}/courseKnowledgePoint/singleDelete', '${coursePoint.courseKnowledgePointKey}/${coursePoint.courseKey}')"/>
						</td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</tbody>
</table>

<!-- 分页组件区 -->
<!-- TODO：后期这里可能会持续改进 -->
<c:if test="${no!=0}">
	<tags:pagination page="${coursePointList}"/>
</c:if>

<!-- 按钮区  -->
	<div class="content" align="center">
		<span class="add"><input class="btn" type="button" value="添加" id="btn_add" onclick="add('${ctx}/courseKnowledgePoint/preAdd')"/></span><%-- 批量删除要得到${courseKey} --%>
		<span class="add"><input class="btn" type="button" value="批量删除" id="btn_batch_delete" onclick="batchDelete('删除该知识点后，该知识点的有关信息将同时删除！确实要删除吗？','${ctx}/courseKnowledgePoint/batchDelete')"/></span>
		<p>
	</div>
</form>
<%-- 
<!-- 表单校验区  -->
<script type="text/javascript">
	$(document).ready(function() {
		// 汉字
		jQuery.validator.addMethod("search_nameCh", function(value, element) {
		var tel = /^[\u4e00-\u9fa5]+$/;
		return this.optional(element) || (tel.test(value));
		}, "请输入汉字");
		
		$("#searchForm").validate({ 
			// 验证规则 
			rules:{ 
				//课程名称 
				search_nameCh: { 
					required: false, 
					search_nameCh:true,
					rangelength: [1,100] ,
				},
			},
			/* 设置错误信息 */ 
			messages:{
				//课程名称
				search_nameCh: { 
					rangelength: "课程名必须在1-100个字符之间" , 
				},
			}
		});
	});		
</script>
 --%>