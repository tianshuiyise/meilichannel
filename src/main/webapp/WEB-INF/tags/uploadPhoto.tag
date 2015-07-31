<%@ tag pageEncoding="utf-8" %>
<%@ attribute name="key" required="true" type="java.lang.String"%>
<%@ attribute name="value" required="false" type="java.lang.String"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<div class="box">
    	<div id="info_pic">
    		<c:if test="${value eq null }">
    			<c:set var="value" value="${ctx }/static/photo/meilichannel_null.jpg" />
    		</c:if>
    		<img src='${value}'>
    		<input type="hidden" name="${key}" value="${value}" />
    	</div>
</div> 
<input id="changeAvatar" type="button" value="上传" /> 
<script src="${ctx}/static/js/jquery-1.7.min.js" type="text/javascript"></script>
<script src="${ctx}/static/js/Area.js" type="text/javascript"></script>
<script src="${ctx}/static/js/AreaData_min.js" type="text/javascript"></script>
<script src="${ctx}/static/layer/layer.js" type="text/javascript"></script>
<script type="text/javascript">
$(function(){
	$('#changeAvatar').on('click', function(){
	    layer.open({
	        type: 2,
	        title: '上传图片',
	        maxmin: true,
	        shadeClose: true, //点击遮罩关闭层
	        area : ['420px' , '520px'],
	        content: '${ctx}/static/iframe.jsp'
	    });
	});
});

</script>
