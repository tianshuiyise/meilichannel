<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/include/common.jsp"%>

<tags:wjs items="checkbox.js"></tags:wjs>
<tags:wcss items="message.css"></tags:wcss>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<head>
<link rel="stylesheet" type="text/css" href="${ctx}/static/style/channel.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/static/style/nav.css" />
<script src="${ctx}/static/js/jquery-1.7.min.js" type="text/javascript"></script>
<script src="${ctx}/static/js/calendar/calendar.js" type="text/javascript"></script>
<script src="${ctx}/static/js/calendar/WdatePicker.js" type="text/javascript"></script>
<script src="${ctx}/static/js/Area.js" type="text/javascript"></script>
<script src="${ctx}/static/js/AreaData_min.js" type="text/javascript"></script>

<script type="text/javascript">
$(function (){
	initComplexArea('seachprov', 'seachcity', 'seachdistrict', area_array, sub_array, '44', '0', '0');
});

//得到地区码
function getAreaID(){
	var area = 0;          
	if($("#seachdistrict").val() != "0"){
		area = $("#seachdistrict").val();                
	}else if ($("#seachcity").val() != "0"){
		area = $("#seachcity").val();
	}else{
		area = $("#seachprov").val();
	}
	return area;
}

function showAreaID() {
	//地区码
	var areaID = getAreaID();
	//地区名
	var areaName = getAreaNamebyID(areaID) ;
	alert("您选择的地区码：" + areaID + "      地区名：" + areaName);            
}

//根据地区码查询地区名
function getAreaNamebyID(areaID){
	var areaName = "";
	if(areaID.length == 2){
		areaName = area_array[areaID];
	}else if(areaID.length == 4){
		var index1 = areaID.substring(0, 2);
		areaName = area_array[index1] + " " + sub_array[index1][areaID];
	}else if(areaID.length == 6){
		var index1 = areaID.substring(0, 2);
		var index2 = areaID.substring(0, 4);
		areaName = area_array[index1] + " " + sub_array[index1][index2] + " " + sub_arr[index2][areaID];
	}
	return areaName;
}
</script><script type="text/javascript">
$(function (){
	initComplexArea('seachprov', 'seachcity', 'seachdistrict', area_array, sub_array, '44', '0', '0');
});

//得到地区码
function getAreaID(){
	var area = 0;          
	if($("#seachdistrict").val() != "0"){
		area = $("#seachdistrict").val();                
	}else if ($("#seachcity").val() != "0"){
		area = $("#seachcity").val();
	}else{
		area = $("#seachprov").val();
	}
	return area;
}

function showAreaID() {
	//地区码
	var areaID = getAreaID();
	//地区名
	var areaName = getAreaNamebyID(areaID) ;
	alert("您选择的地区码：" + areaID + "      地区名：" + areaName);            
}

//根据地区码查询地区名
function getAreaNamebyID(areaID){
	var areaName = "";
	if(areaID.length == 2){
		areaName = area_array[areaID];
	}else if(areaID.length == 4){
		var index1 = areaID.substring(0, 2);
		areaName = area_array[index1] + " " + sub_array[index1][areaID];
	}else if(areaID.length == 6){
		var index1 = areaID.substring(0, 2);
		var index2 = areaID.substring(0, 4);
		areaName = area_array[index1] + " " + sub_array[index1][index2] + " " + sub_arr[index2][areaID];
	}
	return areaName;
}
</script>
</head>
<!--[if IE 6]>
<script src="js/DD_belatedPNG_0.0.8a.js"></script>
<script>
DD_belatedPNG.fix('#logo,.navBar,#top1,#top2,#top3,#top4,.nav_icon1,.nav_icon2,.nav_icon3,.nav_icon4,.shade,input,#point,#point1,#point2,#point3,#point4,.messbox,#portrait');
</script>
<![endif]-->
<!--导航区 -->
<body>
  <!--头部-->
<div class="headerBar">
  <div class="header comWidth">
    <div class="fl"><img src="images/header/logo.png" alt="logo" id="logo" /></div>
    <div class="rightArea fr">
      <div class="topBar">
        <ul>
          <li id="top0"><a href="#">MOJOKER</a></li>
          <li id="top3"><a href="#">我的频道</a></li>
          <li id="top4"><a href="#">申请商家入驻</a></li>
        </ul>
      </div>
      <div class="navBar">
        <ul>
          <li class="nav_icon1"><a href="#">首页</a></li>
          <li class="nav_icon2"><a href="#">美容</a></li>
          <li class="nav_icon3"><a href="#">美发</a></li>
          <li class="nav_icon4"><a href="#">美甲</a></li>
        </ul>
      </div>
        <div id="search">
          <input type="text" id="search_ipt" />
          <input type="button" id="search_btn" />
        </div>
       
    </div>
  </div>
</div>
<div id="headersd"><img src="images/header/headersd11.jpg" alt="阴影" /></div>
<!--头部end-->

  <!--主体-->
  <div class="comWidth">
    <div id="top">
      <div id="portrait"></div>
      <div id="username">MOJOKER</div>
    </div>
    <div id="main">
      <div id="sidebarbox">
        <div id="my_menu" class="sdmenu">
	      <div>
            <span class="smenu">个人中心</span>
            <a href="#">个人信息</a>
            <a href="#">修改头像</a>
            <a href="#">我的账单</a>
          </div>
        <div>
            <span class="smenu">我的订单</span>
            <a href="#">未支付订单</a>
            <a href="#">预约订单</a>
            <a href="#">未评价订单</a>
            <a href="#">已取消订单</a>
        </div>
        <div>
            <span><a href="#">我的收藏</a></span>
        </div>
        <div>
            <span><a href="#">我的评价</a></span>	
        </div>
        <div>
            <span><a href="#">我的足迹</a></span>	
        </div>
        <div>
            <span><a href="#">信息通知</a></span>	
        </div>
        <div>
            <span><a href="#">退款维权</a></span>	
        </div>
      </div>
      </div>
    <div id="container">
      <div class="head">信息通知</div>
      <div class="collection">
         <ul>
           <li class="collection1 colle">
             <img src="images/channel/shop_pic1.png" alt="店铺图片" />
             <span>周杰伦的店铺</span>
             <p><img src="images/channel/position_icon.png" alt="定位小图标" />大连市 小平岛 亲海园</p>
           </li>
           <li class="collection2 colle">
             <img src="images/channel/shop_pic2.png" alt="店铺图片" />
             <span>成龙的店铺</span>
             <p><img src="images/channel/position_icon.png" alt="定位小图标" />大连市 小平岛 亲海园</p>
           </li>
           <li class="collection3 colle">
             <img src="images/channel/shop_pic3.png" alt="店铺图片" />
             <span>桂纶镁的店铺</span>
             <p><img src="images/channel/position_icon.png" alt="定位小图标" />大连市 小平岛 亲海园</p>
           </li>
         </ul>
       </div>
       <div class="collection">
         <ul>
           <li class="collection1 colle">
             <img src="images/channel/shop_pic1.png" alt="店铺图片" />
             <span>周杰伦的店铺</span>
             <p><img src="images/channel/position_icon.png" alt="定位小图标" />大连市 小平岛 亲海园</p>
           </li>
           <li class="collection2 colle">
             <img src="images/channel/shop_pic2.png" alt="店铺图片" />
             <span>成龙的店铺</span>
             <p><img src="images/channel/position_icon.png" alt="定位小图标" />大连市 小平岛 亲海园</p>
           </li>
           <li class="collection3 colle">
             <img src="images/channel/shop_pic3.png" alt="店铺图片" />
             <span>桂纶镁的店铺</span>
             <p><img src="images/channel/position_icon.png" alt="定位小图标" />大连市 小平岛 亲海园</p>
           </li>
         </ul>
       </div>
       <div class="collection">
         <ul>
           <li class="collection1 colle">
             <img src="images/channel/shop_pic1.png" alt="店铺图片" />
             <span>周杰伦的店铺</span>
             <p><img src="images/channel/position_icon.png" alt="定位小图标" />大连市 小平岛 亲海园</p>
           </li>
           <li class="collection2 colle">
             <img src="images/channel/shop_pic2.png" alt="店铺图片" />
             <span>成龙的店铺</span>
             <p><img src="images/channel/position_icon.png" alt="定位小图标" />大连市 小平岛 亲海园</p>
           </li>
           <li class="collection3 colle">
             <img src="images/channel/shop_pic3.png" alt="店铺图片" />
             <span>桂纶镁的店铺</span>
             <p><img src="images/channel/position_icon.png" alt="定位小图标" />大连市 小平岛 亲海园</p>
           </li>
         </ul>
       </div>
       <div class="collection">
         <ul>
           <li class="collection1 colle">
             <img src="images/channel/shop_pic1.png" alt="店铺图片" />
             <span>周杰伦的店铺</span>
             <p><img src="images/channel/position_icon.png" alt="定位小图标" />大连市 小平岛 亲海园</p>
           </li>
           <li class="collection2 colle">
             <img src="images/channel/shop_pic2.png" alt="店铺图片" />
             <span>成龙的店铺</span>
             <p><img src="images/channel/position_icon.png" alt="定位小图标" />大连市 小平岛 亲海园</p>
           </li>
           <li class="collection3 colle">
             <img src="images/channel/shop_pic3.png" alt="店铺图片" />
             <span>桂纶镁的店铺</span>
             <p><img src="images/channel/position_icon.png" alt="定位小图标" />大连市 小平岛 亲海园</p>
           </li>
         </ul>
       </div>
       <div class="collection">
         <ul>
           <li class="collection1 colle">
             <img src="images/channel/shop_pic1.png" alt="店铺图片" />
             <span>周杰伦的店铺</span>
             <p><img src="images/channel/position_icon.png" alt="定位小图标" />大连市 小平岛 亲海园</p>
           </li>
           <li class="collection2 colle">
             <img src="images/channel/shop_pic2.png" alt="店铺图片" />
             <span>成龙的店铺</span>
             <p><img src="images/channel/position_icon.png" alt="定位小图标" />大连市 小平岛 亲海园</p>
           </li>
           <li class="collection3 colle">
             <img src="images/channel/shop_pic3.png" alt="店铺图片" />
             <span>桂纶镁的店铺</span>
             <p><img src="images/channel/position_icon.png" alt="定位小图标" />大连市 小平岛 亲海园</p>
           </li>
         </ul>
       </div>
       <div class="collection">
         <ul>
           <li class="collection1 colle">
             <img src="images/channel/shop_pic1.png" alt="店铺图片" />
             <span>周杰伦的店铺</span>
             <p><img src="images/channel/position_icon.png" alt="定位小图标" />大连市 小平岛 亲海园</p>
           </li>
           <li class="collection2 colle">
             <img src="images/channel/shop_pic2.png" alt="店铺图片" />
             <span>成龙的店铺</span>
             <p><img src="images/channel/position_icon.png" alt="定位小图标" />大连市 小平岛 亲海园</p>
           </li>
           <li class="collection3 colle">
             <img src="images/channel/shop_pic3.png" alt="店铺图片" />
             <span>桂纶镁的店铺</span>
             <p><img src="images/channel/position_icon.png" alt="定位小图标" />大连市 小平岛 亲海园</p>
           </li>
         </ul>
       </div>
       <div class="collection">
         <ul>
           <li class="collection1 colle">
             <img src="images/channel/shop_pic1.png" alt="店铺图片" />
             <span>周杰伦的店铺</span>
             <p><img src="images/channel/position_icon.png" alt="定位小图标" />大连市 小平岛 亲海园</p>
           </li>
           <li class="collection2 colle">
             <img src="images/channel/shop_pic2.png" alt="店铺图片" />
             <span>成龙的店铺</span>
             <p><img src="images/channel/position_icon.png" alt="定位小图标" />大连市 小平岛 亲海园</p>
           </li>
           <li class="collection3 colle">
             <img src="images/channel/shop_pic3.png" alt="店铺图片" />
             <span>桂纶镁的店铺</span>
             <p><img src="images/channel/position_icon.png" alt="定位小图标" />大连市 小平岛 亲海园</p>
           </li>
         </ul>
       </div>
       <div class="collection">
         <ul>
           <li class="collection1 colle">
             <img src="images/channel/shop_pic1.png" alt="店铺图片" />
             <span>周杰伦的店铺</span>
             <p><img src="images/channel/position_icon.png" alt="定位小图标" />大连市 小平岛 亲海园</p>
           </li>
           <li class="collection2 colle">
             <img src="images/channel/shop_pic2.png" alt="店铺图片" />
             <span>成龙的店铺</span>
             <p><img src="images/channel/position_icon.png" alt="定位小图标" />大连市 小平岛 亲海园</p>
           </li>
           <li class="collection3 colle">
             <img src="images/channel/shop_pic3.png" alt="店铺图片" />
             <span>桂纶镁的店铺</span>
             <p><img src="images/channel/position_icon.png" alt="定位小图标" />大连市 小平岛 亲海园</p>
           </li>
         </ul>
       </div>
       <div class="collection">
         <ul>
           <li class="collection1 colle">
             <img src="images/channel/shop_pic1.png" alt="店铺图片" />
             <span>周杰伦的店铺</span>
             <p><img src="images/channel/position_icon.png" alt="定位小图标" />大连市 小平岛 亲海园</p>
           </li>
           <li class="collection2 colle">
             <img src="images/channel/shop_pic2.png" alt="店铺图片" />
             <span>成龙的店铺</span>
             <p><img src="images/channel/position_icon.png" alt="定位小图标" />大连市 小平岛 亲海园</p>
           </li>
           <li class="collection3 colle">
             <img src="images/channel/shop_pic3.png" alt="店铺图片" />
             <span>桂纶镁的店铺</span>
             <p><img src="images/channel/position_icon.png" alt="定位小图标" />大连市 小平岛 亲海园</p>
           </li>
         </ul>
       </div>
       <div class="collection">
         <ul>
           <li class="collection1 colle">
             <img src="images/channel/shop_pic1.png" alt="店铺图片" />
             <span>周杰伦的店铺</span>
             <p><img src="images/channel/position_icon.png" alt="定位小图标" />大连市 小平岛 亲海园</p>
           </li>
           <li class="collection2 colle">
             <img src="images/channel/shop_pic2.png" alt="店铺图片" />
             <span>成龙的店铺</span>
             <p><img src="images/channel/position_icon.png" alt="定位小图标" />大连市 小平岛 亲海园</p>
           </li>
           <li class="collection3 colle">
             <img src="images/channel/shop_pic3.png" alt="店铺图片" />
             <span>桂纶镁的店铺</span>
             <p><img src="images/channel/position_icon.png" alt="定位小图标" />大连市 小平岛 亲海园</p>
           </li>
         </ul>
       </div>
       <div class="collection">
         <ul>
           <li class="collection1 colle">
             <img src="images/channel/shop_pic1.png" alt="店铺图片" />
             <span>周杰伦的店铺</span>
             <p><img src="images/channel/position_icon.png" alt="定位小图标" />大连市 小平岛 亲海园</p>
           </li>
           <li class="collection2 colle">
             <img src="images/channel/shop_pic2.png" alt="店铺图片" />
             <span>成龙的店铺</span>
             <p><img src="images/channel/position_icon.png" alt="定位小图标" />大连市 小平岛 亲海园</p>
           </li>
           <li class="collection3 colle">
             <img src="images/channel/shop_pic3.png" alt="店铺图片" />
             <span>桂纶镁的店铺</span>
             <p><img src="images/channel/position_icon.png" alt="定位小图标" />大连市 小平岛 亲海园</p>
           </li>
         </ul>
       </div>
       <img id="pages" src="images/channel/pages.png" alt="页码" />
    </div>
    </div>
  </div>
<!--主体end-->
  
<script type="text/javascript" src="js/sdmenu.js"></script>
<!--左导航-->
<script type="text/javascript">
var myMenu;
window.onload = function() {
	myMenu = new SDMenu("my_menu");
	myMenu.init();
};
</script>
<!--左导航end-->
</body>
<!--主体end-->
