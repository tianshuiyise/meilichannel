<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!--导航区 -->
<div class="top">
	<ul>
		<li>用户</li>
		<p>用户>>信息浏览</p>
	</ul>
</div>

	<!-- 列表区 -->
	<table id="table1">
		<tr id="tr1">
			<td colspan="4" id="left">用户信息浏览</td>
		</tr>
		<tr>
			<td id="right" width="200px">系统用户名</td>
	        <td id="left" width="30%">
	        	${user.userName}
	        </td>
	    	<td id="right" width="200px">用户ID</td>
	        <td id="left">
	        	${user.userID }
	        </td>
		</tr>
	    <tr>
		    <td id="right">用户中文名</td>
			<td id="left">
				${user.nameCh }
			</td>
	    	<td id="right">用户英文名</td>
			<td id="left">
				${user.nameEn }
			</td>
	    </tr>
	    <tr>
			<td id="right">性别</td>
			<td id="left">
				${dict:display('Gender', user.genderCode) }
			</td>
	    	<td id="right">出生日期</td>
	    	<fmt:parseDate value="${user.birthday}" var="birthday" pattern="yyyy-MM-dd"/>
	        <td id="left">
	        	<fmt:formatDate value='${birthday}'/>
	        </td>
	    </tr>
	    <tr>
		    <td id="right">移动电话</td>
			<td id="left">
				${user.mobile }
			</td>
	    	<td id="right">传真</td>
			<td id="left">
				${user.fax }
			</td>
	    </tr>
	     <tr>
			<td id="right">电子邮箱</td>
			<td id="left" colspan="3">
				${user.email }
			</td>
	    </tr>
	</table>
