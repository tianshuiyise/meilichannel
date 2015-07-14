<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<tags:wjs items="popup.js" />
<script type="text/javascript">
 var api = frameElement.api,  W = api.opener;
 function backList() {
	 W.listBlog();
}

 function add()
{
    var id=document.getElementById('id1').value;
    alert(id);
    var title=document.getElementById('title1').value;
    var content= document.getElementById('content').value;
    window.location.href='${ctx}/blog/add?content='+content+'&id='+id+'&title='+title;
}

</script>
   <center>
   <c:if test="${not empty message}">
	${message}<br/>
   </c:if>
        id&nbsp;<input id="id1" name="title" type="text"   /><br/>
		标题&nbsp;<input id="title1" name="title" type="text"/><br/>
		内容&nbsp;<input id="content" name="content" type="text" /><br/>
	    <input type="button" value="保存" onclick="add();"/>
	    <input type="button" value="关闭" onclick="backList();"/>
</center>

