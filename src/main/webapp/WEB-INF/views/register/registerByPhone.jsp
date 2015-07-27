<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>

<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="${ctx}/static/style/nav.css"/>
<link rel="stylesheet" type="text/css" href="${ctx}/static/style/register.css"/>
<title>美丽频道</title>
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
<script>
var InterValObj; //timer变量，控制时间
var count = 5; //间隔函数，1秒执行
var curCount;//当前剩余秒数

function sendMessage() {
 	curCount = count;
//设置button效果，开始计时
     $("#btnSendCode").attr("disabled", "true");
     $("#btnSendCode").val("请在" + curCount + "秒内输入验证码");
     InterValObj = window.setInterval(SetRemainTime, 1000); //启动计时器，1秒执行一次
  //向后台发送处理数据
     $.ajax({
     type: "POST", //用POST方式传输
     dataType: "text", //数据格式:JSON
     url: 'Login.ashx', //目标地址
     data: "dealType=" + dealType +"&uid=" + uid + "&code=" + code,
     error: function (XMLHttpRequest, textStatus, errorThrown) { },
     success: function (msg){ }
     });
}

//timer处理函数
function SetRemainTime() {
            if (curCount == 0) {                
                window.clearInterval(InterValObj);//停止计时器
                $("#get_code2").removeAttr("disabled");//启用按钮
                $("#get_code2").val("重新发送验证码");
            }
            else {
                curCount--;
                $("#get_code2").val("请在" + curCount + "秒内输入验证码");
            }
        }


function msgCheck(){
		var phoneNum = $("#phoneNum").val();
		if(phoneNum==""||phoneNum==null){
			alert("手机号不能为空");
			return;
		}
		
		alert(phoneNum);
		curCount = count;
		//设置button效果，开始计时
		    // $("#get_code").attr("disabled", "true");
		     $("#get_code2").val("请在" + curCount + "秒内输入验证码");
		     InterValObj = window.setInterval(SetRemainTime, 1000); //启动计时器，1秒执行一次
		  //向后台发送处理数据
		jQuery.ajax({
			type : 'post',     
			contentType : 'application/json',     
			url : '${ctx }/register/msgGet?phoneNum='+phoneNum,
			//dataType : 'json',
			success : function(data) {
				alert(data);
			}
	    });
	};
function checkNumf(){
	var phoneNum = $("#phoneNum").val();
	var checkNum = $("#checkNum").val();
	jQuery.ajax({
		type : 'GET',     
		contentType : 'application/json',     
		url : '${ctx }/register/msgCheck?phoneNum='+phoneNum+'&checkNum='+checkNum,
		//dataType : 'json',
		success : function(data) {
			if(data=="验证码错误"){
			$("#get_code2").attr("src","${ctx}/static/images/Verification2.png");
			
			}
			else if(data=="验证码正确"){
				$("#get_code2").attr("src","${ctx}/static/images/Verification1.png");
				
				}
		}
    });
}
function submit(controllerUrl){
	alert("123");
	window.location.href = controllerUrl ;
}
function check(){
	return true;
	
}
</script>
</head>

<body>

<!--头部-->
<c:import url="/WEB-INF/views/commonFile/head.jsp"/>
<!--头部end-->

 
<form class="login"   onsubmit="return check()" action="toUserNameReg">
  <div id="mobile">*&nbsp;手机号码&nbsp;:<img src="${ctx}/static/images/+86.png"/><input id="phoneNum" type="text"  /></div>
  <div id="verify_code">&nbsp;&nbsp;&nbsp;*&nbsp;验证码&nbsp;:
 
  <input id="checkNum" type="text" onchange="checkNumf()"/>
  </div>
   <img id="get_code" src="${ctx}/static/images/Verification3.png" onclick="msgCheck()"/>
  <img type="text" id="get_code2"  />
  <div id="remark">*&nbsp;为必填内容</div>
   <input id="agreement" name="agreement" type="radio" onclick="if(this.c==1){this.c=0;this.checked=0}else this.c=1" c="0" />
  <span id="agr"><label for="agreement">同意协议</label>&nbsp;/&nbsp;<a href="#">阅读协议</a></span>
  <input id="next" type="submit" value="" onclick=""/>
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



