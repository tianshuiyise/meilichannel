<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="${ctx}/static/style/nav.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/static/style/apply.css" />
<title>申请入驻</title>
<!--[if IE 6]>
<script src="js/DD_belatedPNG_0.0.8a.js"></script>
<script>
DD_belatedPNG.fix('#logo,.navBar,#top1,#top2,#top3,#top4,.nav_icon1,.nav_icon2,.nav_icon3,.nav_icon4,.shade,input,#apply_icon,#apply_icon1,#apply_icon2,#apply_icon3,#apply_icon4,#apply_icon5,.line1,.line2');
</script>
<![endif]-->
<style type ="text/css" >
   .i{box-shadow:0 0 2px #ff5ea6;}
  input{outline:medium;}
</style>
</head>

<body>
<!--头部-->
<c:import url="/WEB-INF/views/commonFile/head.jsp"/>
<!--头部end-->

 <!--主体main-->
  <div id="main">
    <div id="topbox">
      <div id="top">
        <img id="apply_icon" src="${ctx}/static/images/apply/apply.png" alt="图标" />
        <img id="apply_icon1" src="${ctx}/static/images/apply/apply1.png" alt="图标" />
        <img id="apply_icon2" src="${ctx}/static/images/apply/apply2.png" alt="图标" />
        <img id="apply_icon3" src="${ctx}/static/images/apply/apply3.png" alt="图标" />
        <img id="apply_icon4" src="${ctx}/static/images/apply/apply4.png" alt="图标" />
        <img id="apply_icon5" src="${ctx}/static/images/apply/apply5.png" alt="图标" />
      </div>
    </div>
    
<form class="login">
  <img id="login_icon1" src="${ctx}/static/images/login_icon1.png" />
  <img id="login_icon2" src="${ctx}/static/images/login_icon2.png" />
  <input id="usename" type="text" value="用户名/邮箱/手机号" style="color:gray;" onfocus="if(value == '用户名/邮箱/手机号'){value = ''}" onblur="if (value == ''){value = '用户名/邮箱/手机号'}" />
  <input id="password" type="password" style="color:gray;" />
  <input id="password1" name="password1" type="radio" onclick="if(this.c==1){this.c=0;this.checked=0}else this.c=1" c="0" />
  <div class="password2">&nbsp;<label for="password1">记住密码</label>&nbsp;&nbsp;/&nbsp;&nbsp;<a href="#">忘记密码&nbsp;？</a>&nbsp;</div>
  <input id="verification_code" type="text" />
  <img id="code" src="${ctx}/static/images/code.png" />
  <input id="login_icon3" type="submit" value="" />
  <div class="login4">&nbsp;&nbsp;&nbsp;<a href="#">使用QQ登录&nbsp;&nbsp;/</a>&nbsp;<a href="#">注册&nbsp;？</a>&nbsp;</div>
</form>
  </div>
  <!--主体end-->
  
<script src="${ctx}/static/js/jquery-1.9.1.min.js" type="text/javascript"></script>
<script type ="text/javascript" >
    $(function() {
            $("body input").focus(function() {
                $(this).addClass("i");
            }).blur(function() {
                $(this).removeClass("i");
            })
        });
</script>
</body>
</html>
