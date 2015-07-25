<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="${ctx}/static/style/nav.css"/>
<link rel="stylesheet" type="text/css" href="${ctx}/static/style/register.css"/>
<title>美麗頻道</title>
<style type ="text/css" >
   .i{box-shadow:0 0 2px #ff5ea6;}
  input{outline:medium;}
</style>
<!--[if IE 6]>
<script src="js/DD_belatedPNG_0.0.8a.js"></script>
<script>
DD_belatedPNG.fix('#logo,.navBar,#top1,#top2,#top3,#top4,.nav_icon1,.nav_icon2,.nav_icon3,.nav_icon4,.shade,input,');
</script>
<![endif]-->
</head>

<body>
<!--头部-->
<c:import url="/WEB-INF/views/commonFile/head.jsp"/>
<!--头部end-->

  
<form class="login">
  <div id="mobile">*&nbsp;手机号码&nbsp;:<img src="${ctx}/static/images/+86.png"/><input type="text" /></div>
  <div id="verify_code">&nbsp;&nbsp;&nbsp;*&nbsp;验证码&nbsp;:<input type="text" /></div>
  <input id="get_code" type="button" />
  <div id="remark">*&nbsp;为必填内容</div>
   <input id="agreement" name="agreement" type="radio" onclick="if(this.c==1){this.c=0;this.checked=0}else this.c=1" c="0" />
  <span id="agr"><label for="agreement">同意协议</label>&nbsp;/&nbsp;<a href="#">阅读协议</a></span>
  <input id="next" type="submit" value="" />
  <a href="#"><span id="skp">邮箱注册</span>
  <img id="skip" src="${ctx}/static/images/skip.png"/></a>
</form>

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



