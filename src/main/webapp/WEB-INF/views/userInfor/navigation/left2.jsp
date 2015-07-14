<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/tlcommon.jsp" %>
<html >
<head>
<base target="mainFrame">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9" />
<title>左侧菜单</title>
<link rel="stylesheet" type="text/css" href="${ctx}/static/style/channel.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/static/style/nav.css" />
</head>
<body>
<div id="sidebarbox">
        <div id="my_menu" class="sdmenu">
	      <div>
            <span class="smenu">上传店铺信息</span>
            <a href="${ctx}/shop/meirongShopUpload?userId=${user.userId}">美容店铺信息</a>
            <a href="${ctx}/shop/meifaShopUpload?userId=${user.userId}">美发店铺信息</a>
            <a href="${ctx}/shop/meijiaShopUpload?userId=${user.userId}">美甲店铺信息</a>
          </div>
        <div>
            <span class="smenu">上传作品信息</span>
            <a href="${ctx }/product/meirongProduct">美容作品信息</a>
            <a href="${ctx }/product/meifaProduct">美发作品信息</a>
            <a href="${ctx }/product/meijiaProduct">美甲作品信息</a>
        </div>
        <div>
            <span class="smenu">服务人员信息</span>
            <a href="${ctx }/member/meirongMember">美容服务人员信息</a>
            <a href="${ctx }/member/meifaMember">美发服务人员信息</a>
            <a href="${ctx }/member/meijiaMember">美甲服务人员信息</a>
        </div>
        <div>
            <span><a href="${ctx}/beautyShopMng/1">处理订单</a></span>	
        </div>
        <div>
            <span><a href="${ctx}/beautyShopMng/2">评论信息</a></span>	
        </div>
        <div>
            <span><a href="${ctx}/beautyShopMng/3">申请退出系统</a></span>	
        </div>
      </div>
      </div>
      <script type="text/javascript" src="${ctx}/static/js/sdmenu.js"></script>


<script type="text/javascript">
var myMenu;
window.onload = function() {
	myMenu = new SDMenu("my_menu");
	myMenu.init();
};
</script>
</body>
</html>
