<%@ tag pageEncoding="utf-8" %>
<%@ attribute name="key" required="true" type="java.lang.String"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<div class="box">
    	<div id="info_pic">
    		<img src='${ctx}/static/images/meilichannel_null.jpg '>
    		<input type="hidden" name="${key}" value="${ctx}/static/images/meilichannel_null.jpg " />
    	</div>
</div> 
<input id="changeAvatar" type="button" value="上传" /> 
<script type="text/javascript">
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
</script>
