<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="dict" uri="http://www.summer.org/tags/dict" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>美丽频道</title>
<link href="${ctx}/static/style/index.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/static/style/myshop.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/static/style/nav.css" rel="stylesheet" type="text/css" />


<script type="text/javascript" src="http://api.map.baidu.com/api?v=1.5&ak=ozR6nWdba9u5o94KFy8S2LEk">
    //v1.5版本的引用方式：src="http://api.map.baidu.com/api?v=1.5&ak=ozR6nWdba9u5o94KFy8S2LEk"
    //v1.4版本及以前版本的引用方式：src="http://api.map.baidu.com/api?v=1.4&key=ozR6nWdba9u5o94KFy8S2LEk&callback=initialize"

</script>


<!--[if IE 6]>
<script src="js/DD_belatedPNG_0.0.8a.js"></script>
<script>
DD_belatedPNG.fix('#logo,.navBar,#top1,#top2,#top3,#top4,.nav_icon1,.nav_icon2,.nav_icon3,.nav_icon4,.shade,input,.pre,.next');
</script>
<![endif]-->
</head>

<body>
<!--头部-->
	<c:import url="/WEB-INF/views/commonFile/head.jsp"/>
<!--头部end-->
     
<!--主体-->
<input type="hidden" name="shopId" id="shopId" value="${shop.shopId }"/>
<input type="hidden" name="shopCordX" id="shopCordX" value="${shop.shopCordX }"/>
<input type="hidden" name="shopCordY" id="shopCordY" value="${shop.shopCordY }"/>

<input type="hidden" name="shopAdd" id="shopAdd" value="${shop.shopAdd }"/>




<div id="container11">
  <div id="picbox">
  	<img id="mainpic" src="${shop.imageAddress }" alt="店铺主图片" />
  </div>
  <div id="shopinfo">
    <ul>
      <li></li>
      <li></li>
      <li>店铺名：&nbsp;${shop.shopName }的店铺</li>
      <li></li>
      <li>服务类型：&nbsp;    ${dict:display('shopType',shop.shopType) }</li>
      <li></li>
      <li>作品名称：&nbsp;
      	<c:forEach items="${shop.productions }" var="productions" varStatus="status">
      		<a href="${ctx}/mainPage/shopDetail/${productions.proId }">${productions.proName }</a>&nbsp;
      	</c:forEach>
      </li>
      <li></li>
      <li>联系商家：&nbsp;<a href="#">${shop.shopQq }</a></li>
      <li></li>
    </ul>
  </div>
  
  <div id="contain">
    <div id="title">
      <ul>
      <li id="tag1">
	      <a href="javascript:void(0);" onclick="switchTag('tag1','content1','${ctx}/mainPage/product','${shop.shopId }');this.blur();" class="selectli1">
	      	<span class="selectspan1">店铺详情</span>
	      </a>
      </li>
      <li id="tag2">
	     <a href="javascript:void(0);" onclick="switchTag('tag2','content2','${ctx}/mainPage/product','${shop.shopId }');this.blur();" >
	     	<span >作品详情</span>
	     </a>
      </li>
      
      <li id="tag3">
	      <a href="javascript:void(0);" onclick="switchTag('tag3','content3','${ctx}/mainPage/product','${shop.shopId }');this.blur();return false;">
	      	<span>累计评价（7）</span>
	      </a>
      </li>
      <li id="tag4">
	      <a href="javascript:void(0);" onclick="switchTag('tag4','content4','${ctx}/mainPage/product','${shop.shopId }');this.blur();">
	      	<span>累计成交量（15）</span>
	      </a>
      </li>
      </ul>
    </div>
    <div id="content" class="content1">
    	<div id="content1" >${shop.introduction }</div>
    
    	<div id="content2" class="hidecontent">
      		
    	</div>
    	<div id="content3" class="hidecontent">
     
	      <table border=1>
	        <tr><td class="name">用户名:张三</td><td class="numb">订单号：12345678</td><td></td><td class="comtime">评价时间</td></tr>
	        <tr><td colspan=3 class="assess">评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价</td><td class="comtype">好评</td></tr>
	      </table>
     
    	</div>
	    <div id="content4" class="hidecontent">
	      <table border=1>
	        <tr><td class="uname">李四</td><td class="details">预约作品，人员等详细信息</td><td class="dealtime">2015-7-1 10:07</td></tr>
	      </table>
	      
	    </div>
	    
    </div>
  </div>
 <div class="map"><div id="caodan"></div></div>
</div>

<!--主体end-->
<!--底部foot-->
<c:import url="/WEB-INF/views/commonFile/foot.jsp"/>
<!--返回end-->
	<script type="text/javascript" src="${ctx}/static/js/script.js"></script>
	<script src="${ctx}/static/js/jquery-1.9.1.min.js"
		type="text/javascript"></script>
	<script src="${ctx}/static/js/simplefoucs.js" type="text/javascript"></script>
<script   type="text/javascript">



function getProduct(url,id){
	$("#content2").empty();
		var d={"shopId":id};
		$.ajax({
			url:url,
			type:"post",
			async:false,
			contentType:"application/json",
			dataType:"json",
			data: JSON.stringify(d),
			success:function(result){
				$.each(result, function(i, item) {  
		             var proName=item.proName;
		             var proId=item.proId;
		             var introduction=item.introduction;
		             var imageAddress=item.imageAddress;
		             $("#content2").append("<div id='workinfo"+i+"'  class='workinfo'><a href='#'><img src='"+imageAddress+"' alt='作品图片'/></a><a href='${ctx}/mainPage/shopDetail/"+proId+"'>"+proName+":</a><br/>"+introduction+"</div>");
		            
				
				}); 
				 }
		}); 
		
	}
	
	
	
function switchTag(tag,content,url,shopid)
	{
	
	for(var i=1; i <6; i++)
		{
			if ("tag"+i==tag)
			{
					document.getElementById(tag).getElementsByTagName("a")[0].className="selectli"+i;
					document.getElementById(tag).getElementsByTagName("a")[0].getElementsByTagName("span")[0].className="selectspan"+i;
			}else{
					document.getElementById("tag"+i).getElementsByTagName("a")[0].className="";
					document.getElementById("tag"+i).getElementsByTagName("a")[0].getElementsByTagName("span")[0].className="";
			}
			if ("content"+i==content)
			{
				document.getElementById(content).className="";
				
				getProduct(url,shopid);
				
			}else{
			document.getElementById("content"+i).className="hidecontent";
			}
			document.getElementById("content").className=content;
		}
	}

	
  </script>  
  
  <script type="text/javascript"> 
  
  var shopCordX=$("#shopCordX").val();
  var shopCordY=$("#shopCordY").val();
  var shopAdd=$("#shopAdd").val();
  
    var map = new BMap.Map("caodan");          // 创建地图实例  
    var point = new BMap.Point(shopCordX, shopCordY);  // 创建点坐标  
    map.centerAndZoom(point, 13);                 // 初始化地图，设置中心点坐标和地图级别  
    map.addControl(new BMap.OverviewMapControl());    //  缩略图控件
    map.addControl(new BMap.MapTypeControl());       //   卫星控件
    map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
    map.addControl(new BMap.NavigationControl());   // 平移缩放控件
    map.addControl(new BMap.ScaleControl());        //  比例尺控件
   /*  map.addEventListener("click",function(e){
    alert(e.point.lng + "," + e.point.lat);
  }); */

    
 
  var opts = {
        width : 250,     // 信息窗口宽度
        height: 80,     // 信息窗口高度
        title : "信息窗口" , // 信息窗口标题
        enableMessage:true//设置允许信息窗发送短息
         };
 
    var marker = new BMap.Marker(new BMap.Point(shopCordX,shopCordY));  // 创建标注
    var content = shopAdd;
    map.addOverlay(marker);               // 将标注添加到地图中
    addClickHandler(content,marker);
  
  function addClickHandler(content,marker){
    marker.addEventListener("click",function(e){
      openInfo(content,e)}
    );
  }
  function openInfo(content,e){
    var p = e.target;
    var point = new BMap.Point(p.getPosition().lng, p.getPosition().lat);
    var infoWindow = new BMap.InfoWindow(content,opts);  // 创建信息窗口对象 
    map.openInfoWindow(infoWindow,point); //开启信息窗口
  }
    
    
    
  </script>  
</body>
</html>
