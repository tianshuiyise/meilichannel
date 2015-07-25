<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<div id="sidebarbox">
   <div id="my_menu" class="sdmenu">
   	<c:if test="${!empty sessionScope.user }">
	   	<c:forEach items="${sessionScope.menuList }" var="menus" varStatus="status">
	   		<div>
		   		<span class="smenu"><a href="#">${menus.menuName}</a></span>
		   		<c:forEach items="${menus.subMenuList}" var="menu" varStatus="status">
		   			<a href="${ctx }/${menu.menuURL}">${menu.menuName}</a>
		   		</c:forEach>
	   		</div>
		 </c:forEach>
   	</c:if>
 </div>
</div>
<script type="text/javascript" src="${ctx}/static/js/sdmenu.js"></script>
<!--左导航-->
<script type="text/javascript">
var myMenu;
window.onload = function() {
	myMenu = new SDMenu("my_menu");
	myMenu.init();
};
</script>
