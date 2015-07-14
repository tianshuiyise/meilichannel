<%--
这里是共通的头文件，每个内容页面必须引入  
其中Jquery以及默认样式相关的文件，内容页面不需要引入

其他第三方类库需要需要采用如下步骤引入：
1. 统一命名
2. 采用tags:wjs或tags.wcss标签引入
说明：统一命名为全局唯一。避免js和css冲突，可以这样命名:zTree.js、zTree.css
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="dict" uri="http://www.summer.org/tags/dict" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<Link href="${ctx}/static/default/images/favicon.ico" rel="shortcut icon" type="image/x-icon"/>
<link rel="icon" href="${ctx}/static/default/images/favicon.ico" type="image/x-icon"/>
<link href="${ctx}/static/default/css/table.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/static/plugins/jquery-validation/1.10.0/validate.css" rel="stylesheet" type="text/css" />
<script src="${ctx}/static/plugins/jquery/1.6.1/jquery.min.js"></script>
<script src="${ctx}/static/plugins/jquery/1.6.1/jquery.json-2.2.min.js"></script>
<script src="${ctx}/static/default/json2.js"></script>
<%--jquery-valildtion --%>
<script src="${ctx}/static/plugins/jquery-validation/1.10.0/jquery.validate.min.js"></script>
<script src="${ctx}/static/plugins/jquery-validation/1.10.0/jquery.metadata.js"></script>
<script src="${ctx}/static/plugins/jquery-validation/1.10.0/messages_bs_zh.js"></script>

<!-- 自动匹配输入框的js和css -->
<script src="${ctx}/static/plugins/autoComplete/jquery.autocomplete.js"></script>
<link href="${ctx}/static/plugins/autoComplete/jquery.autocomplete.css" rel="stylesheet" type="text/css" />


<script src="${ctx}/static/plugins/jQueryUI/jquery-ui.js"></script>
<link href="${ctx}/static/plugins/jQueryUI/jquery-ui.css" rel="stylesheet" type="text/css" />




<%--js定义  --%> 
<%--负责表格复选框的全选/全不选功能的js  --%> 
<c:set var="checkbox.js" value="${ctx }/static/default/js/table_checkBox.js" scope="application" />

<!-- 弹出窗口的js -->
<c:set var="popup.js" value="${ctx }/static/plugins/lhgdialog/4.2.0/lhgdialog.min.js?self=true&skin=default" scope="application" />

<!-- 负责日期的控件js -->
<c:set var="calendar.js" value="${ctx }/static/default/js/calendar/WdatePicker.js" scope="application" />

<!-- 负责返回功能的js -->
<c:set var="back.js" value="${ctx }/static/default/js/back.js" scope="application"></c:set>

<%--css定义    --%> 
<%--操作后提示信息的样式   --%> 
<c:set var="message.css" value="${ctx}/static/default/css/message.css" scope="application" />

<!-- 登录样式 -->
<c:set var="login.css" value="${ctx}/static/default/css/login.css" scope="application" />

<%--列表隐藏--%>
<c:set var="tab.css" value="${ctx}/static/default/css/course_details.css" scope="application"/>

<%--角色样式--%>
<c:set var="role.css" value="${ctx }/static/default/css/role1.css" scope="application" />

<%-- 404错误页面样式 --%>
<c:set var="error404.css" value="${ctx }/static/default/css/error404.css" scope="application" />

<%-- 500错误页面样式 --%>
<c:set var="error500.css" value="${ctx }/static/default/css/error500.css" scope="application" />

