<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/tlcommon.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9" />
<title>左侧菜单</title>
<link href="${ctx}/static/default/css/left.css" rel="stylesheet" type="text/css" />
<script src="${ctx}/static/default/js/jquery-1.6.1.min.js" type="text/javascript"></script>
<script src="${ctx }/static/plugins/lhgdialog/4.2.0/lhgdialog.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#user-list-bd").hide();
		var lr_systembtn = $("#user-list");
		var lr_menu = $("#user-list-bd");
		lr_systembtn.mouseenter(function(){
			t_delay= setTimeout(function(){
				lr_menu.fadeIn();
			},200);
		});
		lr_systembtn.mouseleave(function(){
			clearTimeout(t_delay);
			lr_menu.fadeOut();
		});
	});
	$(document).ready(function(){
		  $("#xshd").css("background-color","#D8D8D8");
	  	$(".li-list").click(function(){
		   $("li").css("background-color","");
		   $(this).css("background-color","#D8D8D8");
	    
	  });
	});
	$(document).ready(function(){
		$(".left-menu").height($(document).height()-58);
		var count = $(".left").height()+55;
		$(".line").height(count);
	});
	
</script>
</head>

<body>
<div id="navigation">

    <div id="user-list" >
       <div class="user">
				<div id="tu1"></div>
				<div id="username" >用户${user.userName }的信息</div>
				<div id="time"></div>
		  </div>
        <div id="user-list-bd" >
             <li>
          			
					<a href="#" >	用户名：${user.userName } </a>
					
			</li><li>		
					<a href="#" >	单位：${user.unit.unitName } </a>
			</li>
					
        </div>
    </div>

</div>

<div class="line"></div>
<div class="left">
<div class="left-menu">
	<div id="line1"></div>
    
   
	<c:forEach items="${navs}" var="nav">
	<div class="nav">
		<ul >
		 
			<li class="li-list"><a href="${ctx }/${nav.menuURL}" target="mainFrame">${nav.menuName}</a></li>
			
		</ul>
	</div>
	<div id="line1"></div>
	
	</c:forEach>
	
	 <c:if test="${empty navs}">
	 
          <div class="nav">
		<ul >
		 
			<li id="xshd" class="li-list"><a href="${ctx }/toReportAcademic" target="mainFrame">待上报学术活动</a></li>
			
		</ul>
	</div>
	<div id="line1"></div>
	<div class="nav">
		<ul >
		 
			<li class="li-list"><a href="${ctx }/toReportTraining" target="mainFrame">待上报培训班</a></li>
			
		</ul>
	</div>
	<div id="line1"></div>
	<div class="nav">
		<ul >
		 
			<li class="li-list"><a href="${ctx }/toReportTemp" target="mainFrame">待上报临时项目</a></li>
			
		</ul>
	</div>
	<div id="line1"></div>
    </c:if>
</div>
</div>
</body>
</html>
