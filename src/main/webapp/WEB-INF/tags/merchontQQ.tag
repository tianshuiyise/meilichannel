<%@ tag pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<%@ attribute name="shopQq" required="true" type="java.lang.String" %>
<a target="_blank" id="qq" href="http://wpa.qq.com/msgrd?v=3&uin=${shopQq}&site=qq&menu=yes">
	<img border="0" src="${ctx }/static/images/qq.png" alt="点击这里给我发消息" title="点击这里给我发消息"/>
</a>