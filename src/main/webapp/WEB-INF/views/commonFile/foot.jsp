<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!--底部foot-->
	<div id="foot">
		<div style="float: left">
			<img src="${ctx}/static/images/shadow/footsd_l.png" alt="阴影" />
		</div>
		<div style="float: right">
			<img src="${ctx}/static/images/shadow/footsd_r.png" alt="阴影" />
		</div>
		<div id="footer"></div>
	</div>
	<!--底部end-->

	<!--返回return-->
	<div id="return">
		<a href="javascript:;"><img src="${ctx}/static/images/return.png"
			alt="返回顶部" /></a>
	</div>
	<!--返回end-->
