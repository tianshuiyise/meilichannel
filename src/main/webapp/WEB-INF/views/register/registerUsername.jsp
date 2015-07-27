<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>

<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="${ctx}/static/style/nav.css">
<link rel="stylesheet" type="text/css" href="${ctx}/static/style/register.css">
<title>美丽频道</title>
<script src="${ctx}/static/js/jquery-1.9.1.min.js" type="text/javascript"></script>
<style type ="text/css" >
   .i{box-shadow:0 0 2px #ff5ea6;}
  input{outline:medium;}
</style>
<script type="text/javascript">
	function usernameCheck(){
		var username=$("#inputName").val();
		jQuery.ajax({
			type:"GET",
			contentType:"application/json",
			url:"${ctx }/register/usernameCheck?username="+username,
			//datatype:""
			success:function(data){
				if(data=="用户名已被注册"){
					$("#checkuser").css("display","-moz-box");
					
				}
				else{
					$("#checkuser").css("display","none");
					$("#userflag").attr("value","1");
				}
			}
		});
	}
	function regist(){
		var username=$("#inputName").val();
		var userflag =$("#userflag").val();
		var passwd=$("#inputCode").val();
		var passwdconfirm=$("#inputCode2").val();
		
		if(passwd!=passwdconfirm){
			alert("请确认密码");
			return false;
		}
		else if(username==""||username==null){
			alert("用户名不能为空");
			return false;
		}
		else if(userflag==0){
			alert("用户名重复");
			return false;
		}
		else if(passwd==passwdconfirm){
			return true;
		}
	}
</script>
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

  
<form class="login" id="regStep2" onsubmit="return regist()" action="userRegist">
   <p><label for="inputName" class="regText2">输入用户名：</label><input id="inputName" name="userName" type="text" onchange="usernameCheck()"/><span id="checkuser">用户名已注册</span></p>
   <input type="hidden" id="userflag" value="0"/>
   <p><label for="inputCode" class="regText2">输入密码：</label><input id="inputCode" name="password" type="password" /><span>密码不能少于6位</span></p>
   <p><label for="inputCode2" class="regText2">确认密码：</label><input id="inputCode2" type="password" /><span style="visibility:hidden;"></span></p>
   <p><label for="submit" class="regText2" style="visibility:hidden;">确认密码：</label><input id="submit" type="submit" value="确认" /></p>
</form>




<script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
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