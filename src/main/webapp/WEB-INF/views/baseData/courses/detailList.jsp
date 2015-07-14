<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<tags:wcss items="tab.css" />
<tags:wjs items="checkbox.js" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!--控制表格隐藏显示区 -->
<script type="text/javascript">
$(document).ready(function(){
	$(".tabs1").show();
	$(".tabs").hide();
	
	$(".tab_box .tab").click(function(){
		$(this).next().slideToggle("slow");
		$(this).children().toggleClass("up"); 
		return false;
	});
});
</script>

<!--导航区 -->
<div class="top">
	<ul>
		<li>课程详情信息</li>
		<p>基本数据>>课程详情信息</p>
	</ul>
</div>

<!-- 课程信息列表区 -->
<div class="content_nb">
<div class="tab_box">
<!-- <div id="tab1">基本信息</div> -->
	<div class="tabs1">
		<table id="table1_nb">
			<tr id="tr1">
				<td id="left" colspan="4">课程详情信息
			</tr>
			<tr>
				<td id="right" width="150px">课程编号</td>
				<td id="left" colspan="3">${course.getCourseID()}</td>
				<%-- <td id="left">课程类型??</td>
				<td id="left"><tags:wselect id="courseType" key="CourseType" name="search_courseType" value="${param.search_courseType}"/></td> --%>
			</tr>
			<tr id="tr2">
				<td id="right">课程名称</td>
				<td id="left" >${course.getNameCh() }</td>
				<td id="right" width="150px">英文名</td>
				<td id="left" >${course.getNameEn() }</td>
			</tr>
			<tr>
				<td id="right">所用语言</td>
				<td id="left" >${course.getLanguage() }</td>
				<td id="right">关键字</td>
				<td id="left" >${course.getKeyword() }</td>
			</tr>
			<tr id="tr2">
				<td id="right">适用专业</td>
				<td id="left">${course.getSpecialtiesName()}</td>
				<td id="right">适用层次</td>
				<td id="left" >${course.getLevelName()}</td>
			</tr>
			<tr>
				<td id="right">推荐学分</td>
				<td id="left">${course.getCommendScore() }</td>
				<td id="right">推荐学时</td>
				<td id="left">${course.getCommendHours() }</td>
			</tr>
			<tr id="tr2">
				<td id="right">所属学科</td>
				<td id="left">${course.getSubjects() }</td>
				<td id="right">课程版本号</td>
				<td id="left">${course.getVersion() }</td>
			</tr>
			<tr>
				<td id="right">是否统考</td>
				<td id="left">
					<c:if test="${course.getAttributeFlgs()==0}">
						<c:out value="否"></c:out>
					</c:if>
					<c:if test="${course.getAttributeFlgs()==1}">
						<c:out value="是"></c:out>
					</c:if>
				</td>
				<td id="right">对应统考科目</td>
				<td id="left">${course.getUnifiedExamSubject() }</td>
			</tr>
			<tr id="tr2">
				<td id="right">课程简介</td>
				<td id="left">${course.getBrief() }</td>
				<td id="right">备注</td>
				<td id="left">${course.getRemark() }</td>
			</tr>
		</table>
	</div>
</div>
<p>

<!-- 章节定义列表区 -->
<div class="tab_box">
	<div class="tab">章节定义
		<!--[if lte IE 7]> 
		<div class="down7">
		<![endif]-->
		<div class="down"></div>
		<!--[if lte IE 7]> 
		</div>
		<![endif]-->
	</div>
	<div class="tabs">
		<table id="table1_nb">
			<thead>
				<tr id="tr1">
					<td id="title">
						<input id="chk_all" type="checkbox" width="10px;" onclick="javascript:allCheck()">
					</td>
					<td id="title">章节编号</td>
					<td id="title">章节标题</td>
					<td id="title">内容说明</td>
					<td id="title">操作</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${courseChapterList}" var="chapter" varStatus="status">
					<tr>
						<td id="title">
							<input type="checkbox" id="chk_sub_checkBox" name="chk_sub_checkBox" value="${chapter.courseChapterKey }" onclick="javascript:checkT_F()"/>
						</td>
						<td id="left">
							<%-- ${chapter.chapterCode} --%>
							<c:choose>
								<c:when test="${chapter.leafFlg }">${chapter.parentChapterCode }.${chapter.chapterCode }</c:when>
								<c:otherwise>${chapter.chapterCode}</c:otherwise>
							</c:choose>
						</td>
						<td id="left">${chapter.chapterName}</td>
						<td id="left">${chapter.contentDesc}</td>
						<td id="title">
							<input type="button" id="btn_delete" value="删除" onclick="singleDelete('删除该章节后，该章节的有关信息将同时删除！确实要删除吗？', '${ctx}/courseChapter/singleDelete', '${chapter.courseChapterKey }/${chapter.courseKey}')"/>	
							<input type="button" id="btn_modify" value="修改" onclick="modify('${ctx}/courseChapter/preModify', '${chapter.courseChapterKey }')"/> 
							<c:if test="${chapter.depth==1}">
								<input type="button" id="btn_modify" value="增加节" onclick="modify('${ctx}/courseChapter/preAddSection', '${chapter.courseChapterKey }')"/> 
							</c:if>
						</td>
					</tr>
					
					<c:forEach items="${chapter.sectionList }" var="section">
						<tr>
							<td id="title" width="30px">
								<%-- <input type="checkbox" id="chk_sub_checkBox" name="chk_sub_checkBox" value="${section.courseChapterKey }" onclick="javascript:checkT_F()"/> --%>
							</td>
							<td id="left">
								<c:choose>
									<c:when test="${section.leafFlg }">${section.parentChapterCode }.${section.chapterCode }</c:when>
									<c:otherwise>${section.chapterCode}</c:otherwise>
								</c:choose>
							<td id="left">${section.chapterName}</td>
	        				<td id="left">${section.contentDesc}</td>
							<td id="title">
								<input type="button" id="btn_modify" value="修改" onclick="modify('${ctx}/courseChapter/preModify', '${section.courseChapterKey }')"/> 
								<input type="button" id="btn_delete" value="删除" onclick="singleDelete('删除该章节后，该章节的有关信息将同时删除！确实要删除吗？', '${ctx}/courseChapter/singleDelete', '${section.courseChapterKey }/${section.courseKey}')"/>
							</td>
						</tr>
					</c:forEach>
				</c:forEach>
			</tbody>
		</table>
		
	<!-- 按钮区  -->
		<div class="content123" align="center">
			<span class="add123"><input class="btn" type="button" value="添加" id="btn_add" onclick="add('${ctx}/courseChapter/preAdd')"/></span>
			<span class="add234"><input class="btn" type="button" value="批量删除" id="btn_batch_delete" onclick="batchDelete('删除该章节后，该章节的有关信息将同时删除！确实要删除吗？','${ctx}/courseChapter/batchChapterDelete')"/></span>
			<p>	
		</div>
	</div>
</div>

<!-- 知识点定义列表区 -->
<div class="tab_box">
	<div class="tab">知识点定义
		<!--[if lte IE 7]> 
		<div class="down7">
		<![endif]-->
		<div class="down">
		</div>
		<!--[if lte IE 7]> 
		</div>
		<![endif]-->
	</div>
	<div class="tabs">
		<table id="table1_nb">
			<thead>
				<tr id="tr1">
					<td id="title">
						<input id="chk_all" type="checkbox" width="10px;" onclick="javascript:allCheck()">			
					</td>
					<td id="title">序号</td>
					<td id="title">知识点</td>
					<td id="title">内容说明</td>
					<td id="title">操作</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${coursePointList}" var="coursePoint" varStatus="status">
					<tr>
						<td id="title">
							<input type="checkbox" id="chk_sub_checkBox" name="chk_sub_checkBox" value="${coursePoint.courseKnowledgePointKey}" onclick="javascript:checkT_F()"/>			
						</td>
						<td id="right">${coursePoint.sequence}</td>
						<td id="left">${coursePoint.knowledgePointName}</td>
						<td id="left">${coursePoint.contentDesc}</td>
						<td id="title">
							<input type="button" id="btn_delete" value="删除" onclick="singleDelete('删除该知识点后，该知识点的有关信息将同时删除！确实要删除吗？', '${ctx}/courseKnowledgePoint/singleDelete', '${coursePoint.courseKnowledgePointKey}/${coursePoint.courseKey}')"/>
							<input type="button" id="btn_modify" value="修改" onclick="modify('${ctx}/courseKnowledgePoint/preModify', '${coursePoint.courseKnowledgePointKey}')"/> 
						</td>
					</tr>
				</c:forEach>	
			</tbody>
		</table>
		
		<!-- 按钮区  -->
		<div class="content123" align="center">
			<span class="add123"><input class="btn" type="button" value="添加" id="btn_add" onclick="add('${ctx}/courseKnowledgePoint/preAdd')"/></span>
			<span class="add234"><input class="btn" type="button" value="批量删除" id="btn_batch_delete" onclick="batchDelete('删除该知识点后，该知识点的有关信息将同时删除！确实要删除吗？','${ctx}/courseKnowledgePoint/batchChapterDelete')"/></span>
			<P>
		</div>
	</div>
</div>
</div>