<!-- 操作提示信息页面 -->
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${not empty message}">
	<script type="text/javascript">
	    $(document).ready(function() {
	       var add = $("#message");
	       //渐变消失效果
	       setTimeout(function(){add.fadeOut(1000);},3000);
	       //卷动消失效果
	       //setTimeout(function(){add.slideUp("slow");},3000);	
	    });
	</script>
	<div id="message">
		${message}
	</div>
</c:if>
