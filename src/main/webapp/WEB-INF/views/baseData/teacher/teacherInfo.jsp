<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<tags:wjs items="calendar.js"></tags:wjs>
<tags:wjs items="back.js"></tags:wjs>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!--导航区 -->
<div class="top">
	<ul>
		<li>修改教师信息</li>
		<p>基本信息>>修改教师信息</p>
	</ul>
</div>

<!-- 列表区 -->
	<input type="hidden" name="userKey" value="${teachers.userKey}">
	<table id="table1">
		<thead>
			<tr id="tr1">
				<td colspan="7">基本信息</td>
			</tr>
		</thead>
		<tbody>
			<tbody>
			<tr>
				<td id="right" width="150px">登录名</td>
				<td id="left" colspan="2">
					${teachers.userName}
				</td>
				<td id="right" width="150px">教师类型</td>
				<td id="left" colspan="2">
					${teachers.teacherType}
				</td>
				<td width="130px" rowspan="8" align="center">
					<c:choose>
						<c:when test="${not empty teachers.photoFilePath}">
							<img src="${teachers.photoFilePath }" alt="教师照片" width="130px" height="190px"/>
						</c:when>
						<c:otherwise>
							教师照片
						</c:otherwise>
					</c:choose>
				</td>
			</tr>
			<tr>
				<td id="right">教师姓名</td>
				<td id="left" colspan="2">${teachers.userNameCh}</td>
				<td id="right">教师ID</td>
				<td id="left" colspan="2">
					${teachers.userID}
				</td>
			</tr>
			<tr>
				<td id="right">英文名</td>
				<td id="left" colspan="2">${teachers.userNameEn}</td>
				<td id="right">性别</td>
				<td id="left" colspan="2">
					${dict:display('Gender', teachers.userGenderCode) }
				</td>
			</tr>
			<tr>
				<td id="right">民族</td>
				<td id="left" colspan="2">${teachers.folk}</td>
				<td id="right">政治面貌</td>
				<td id="left" colspan="2">${teachers.politics}</td>
			</tr>
			<tr>
				<td id="right">出生日期</td>
				<fmt:parseDate value="${teachers.userBirthday}" var="userbirthday" pattern="yyyy-MM-dd"/>
				<td id="left" colspan="2"><fmt:formatDate value="${userbirthday}"/></td>
				<td id="right">身份证号</td>
				<td id="left" colspan="2">${teachers.userIDCard}</td>
			</tr>
			<tr>
				<td id="right">籍贯</td>
				<td id="left" colspan="2">${teachers.native1}</td>
				<td id="right">最高学历</td>
				<td id="left" colspan="2">
					${dict:display('Education', teachers.education) }
				</td>
			</tr>
			<tr>
				<td id="right">最后学位</td>
				<td id="left" colspan="2">
					${dict:display('Degree', teachers.degree) }
				</td>
				<td id="right">职称</td>
				<td id="left" colspan="2">
					${dict:display('PositionTitle', teachers.positionTitle) }
				</td>
			</tr>
			<tr>
				<td id="right">专业</td>
				<td id="left" colspan="2">
						<c:forEach items="${specialtySetList}" var="specialtySet" varStatus="status">
							<c:if test="${specialtySet.specialtyID eq teachers.specialty}">${specialtySet.nameCh}</c:if>
						</c:forEach>
				</td>
				<td id="right">毕业学校</td>
				<td id="left" colspan="2">${teachers.graduateSchool}</td>
			</tr>
			<tr>
				<td id="right">院校拼音简写</td>
				<td id="left" colspan="2">
					${teachers.shortenName}
				</td>
				<td id="right">拓展类别</td>
				<td id="left" colspan="3">
						<c:forEach items="${teacherTypeDefList}" var="teacherTypeDef" varStatus="status">
							<c:if test="${teacherTypeDef.itemCode eq teachers.teacherTypeEx}">${teacherTypeDef.itemLabel}</c:if>
						</c:forEach>
				</td>
			</tr>
			
			<tr>
				<td id="right">来源</td>
				<td id="left" colspan="2">
					${teachers.originCode}
				</td>
				<td id="right">研究方向</td>
				<td id="left" colspan="3">${teachers.researchArea}</td>
			</tr>
		</tbody>

		<thead>
			<tr id="tr1">
				<td colspan="7" id="left">联系方式及其他</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td id="right">家庭住址</td>
				<td id="left" colspan="2">${teachers.homeAddress}</td>
				<td id="right">电子邮件</td>
				<td id="left" colspan="3">${teachers.userEmail}</td>
			</tr>
			<tr>
				<td id="right">家庭电话</td>
				<td id="left" colspan="2">${teachers.userHomeTel}</td>
				<td id="right">办公电话</td>
				<td id="left" colspan="3">${teachers.userOfficeTel}</td>
			</tr>
			<tr>
				<td id="right">移动电话</td>
				<td id="left" colspan="2">${teachers.userMobile}</td>
				<td id="right">工资号</td>
				<td id="left" colspan="3">${teachers.wageCard}</td>
			</tr>
			<tr>
				<td id="right">交行卡号</td>
				<td id="left" colspan="2">${teachers.bankCard}</td>
				<td id="right">是否退休</td>
				<td id="left" colspan="3">
					<c:if test="${teachers.retireFlg eq '1'}">是</c:if>
					<c:if test="${teachers.retireFlg eq '0'}">否</c:if>
				</td>
			</tr>
			<tr>
				<td id="right">退休证编号</td>
				<td id="left" colspan="2">${teachers.retireCard}</td>
				<td id="right">是否论文指导教师</td>
				<td id="left" colspan="3">
					<c:if test="${teachers.thesisGuidFlg eq '1'}">是</c:if>
					<c:if test="${teachers.thesisGuidFlg eq '0'}">否</c:if>
				</td>
			</tr>
			<tr>
				<td id="right">教师状态</td>
				<td id="left" colspan="2">
					${dict:display('TeacherStatus', teachers.teacherStatus) }
				</td>
				<td id="right">教师聘用状态</td>
				<td id="left" colspan="3">
					${dict:display('HireStatus', teachers.hireStatus) }
				</td>
			</tr>
			<tr>
				<td id="right">备注</td>
				<td id="left" colspan="2">${teachers.userRemark}</td>
				<td id="right">个人介绍</td>
				<td id="left" colspan="3">${teachers.brief}</td>
			</tr>
		</tbody>
	</table>

<!-- 按钮区  -->
	<div class="content" align="center">
		<span class="add"><input class="btn" type="button" value="返回" id="btn_back" onclick="back('${ctx}/teachers')"/></span>
		<p>
	</div>
