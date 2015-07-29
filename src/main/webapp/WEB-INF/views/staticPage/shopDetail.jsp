<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="dict" uri="http://www.summer.org/tags/dict" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>美丽频道</title>
<link href="${ctx}/static/style/index.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/static/style/myshop.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/static/style/nav.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ozR6nWdba9u5o94KFy8S2LEk"></script>
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
      		<a href="javascript:void(0);" target="_blank"  onclick="productDetail('${ctx}/mainPage/productDetail','${productions.proId }')">
      			${productions.proName }
      		</a>&nbsp;
      	</c:forEach>
      </li>
      <li></li>
      <li>联系商家：&nbsp;
      	<tags:merchontQQ shopQq="${shop.shopQq}"/>
      </li>
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
	      <a href="javascript:void(0);" onclick="switchTag('tag3','content3','${ctx}/mainPage/review','${shop.shopId }');this.blur();return false;">
	      	<span>累计评价（7）</span>
	      </a>
      </li>
      <li id="tag4">
	      <a href="javascript:void(0);" onclick="switchTag('tag4','content4','${ctx}/mainPage/order','${shop.shopId }');this.blur();">
	      	<span>累计成交量（15）</span>
	      </a>
      </li>
      </ul>
    </div>
    <div id="content" class="content1">
    	<div id="content1" >${shop.introduction }</div>
    	<div id="content2" class="hidecontent"></div>
    	<div id="content3" class="hidecontent"></div>
	    <div id="content4" class="hidecontent"></div>
	    
    </div>
  </div>

<input type="hidden" name="shopCordX" id="shopCordX" value="${shop.shopCordX }"/>
<input type="hidden" name="shopCordY" id="shopCordY" value="${shop.shopCordY }"/>
<input type="hidden" name="shopAdd" id="shopAdd" value="${shop.shopAdd }"/>

 <div class="map"><div id="caodan"></div></div> 

<%-- <c:import url="/WEB-INF/views/commonFile/myMap.jsp">
	<c:param name="shopCordX" value="${shop.shopCordX }"></c:param>
	<c:param name="shopCordY" value="${shop.shopCordY }"></c:param>
	<c:param name="shopAdd" value="${shop.shopAdd }"></c:param>
</c:import> --%>
 <%-- 
 <tags:myMap shopCordX="${shop.shopCordX}" shopCordY="${shop.shopCordY }" shopAdd="${shop.shopAdd }"/>
  --%>
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
function getProduct(url,id,content){
	$("#content2").empty();
	$("#content3").empty();
	$("#content4").empty();
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
		             if("content2"==content){
		            	 var proName=item.proName;
			             var proId=item.proId;
			             var introduction=item.introduction;
			             var imageAddress=item.imageAddress;
			             var str="<div id='workinfo"+i+"'  class='workinfo'><a href='javascript:void(0);' onclick=\"productDetail('${ctx}/mainPage/productDetail','"+proId+"')\"><img src='"+imageAddress+"' alt='作品图片'/></a><a href='javascript:void(0);' onclick=\"productDetail('${ctx}/mainPage/productDetail','"+proId+"')\" >"+proName+":</a><br/>"+introduction+"</div>";
		            	 $("#content2").append(str); 
		             }
		             if("content3"==content){
		            	 var  orderId=item.orderId;
		            	 var overallStatus=item.overallStatus;
		            	 var reviewMes=item.reviewMes;
		            	 var reviewDate=item.reviewDate;
		            	 var userName=item.userName;
		            	 $("#content3").append("<table border=1>   </table>"); 
		            	 $("#content3 table").append(" <tr><td class='name'>用户名: "+userName+"</td><td class='numb'>订单号："+orderId+"</td><td></td><td class='comtime'>评价时间:"+reviewDate+"</td></tr>"); 
		            	 $("#content3 table").append(" <tr><td colspan=3 class='assess'>留言："+reviewMes+"</td><td class='comtype'>评价： "+overallStatus+"</td></tr> ");
		             }
		             if("content4"==content){
		            	 var proName=item.proName;
		            	 var memberName=item.memberName;
		            	 var userName=item.userName;
		            	 var appointTime=item.appointTime;
		            	 $("#content4").append("<table border=1>   </table>"); 
		            	 $("#content4 table").append(" <tr><td class='uname'>客户姓名："+userName+"</td><td class='details'>预约作品："+proName+"  ，    预约人员："+memberName+"</td><td class='dealtime'>下单时间："+appointTime+"</td></tr> ");
		             }
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
				getProduct(url,shopid,content);
			}else{
			document.getElementById("content"+i).className="hidecontent";
			}
			document.getElementById("content").className=content;
		}
	}
	
  </script>  
<script type="text/javascript"> 
  
  $(function(){
	  var shopCordX=$("#shopCordX").val();
	  var shopCordY=$("#shopCordY").val();
	  var shopAdd=$("#shopAdd").val();
	  
	  //如果没有给定经纬度，获得当前位置的坐标
	  if(shopCordX==""){
		  
		var geoc = new BMap.Geocoder();
		var geolocation = new BMap.Geolocation();
		geolocation.getCurrentPosition(function(r){
			if(this.getStatus() == BMAP_STATUS_SUCCESS){
				//map.panTo(r.point);
				//alert('您的位置：'+r.point.lng+','+r.point.lat);
				shopCordX=r.point.lng;
				shopCordY=r.point.lat;
				var pt = r.point;
				geoc.getLocation(pt, function(rs){
				var addComp = rs.addressComponents;
					//alert(addComp.province + ", " + addComp.city + ", " + addComp.district + ", " + addComp.street + ", " + addComp.streetNumber);
					shopAdd=addComp.province + ", " + addComp.city + ", " + addComp.district + ", " + addComp.street + ", " + addComp.streetNumber;
				});  
			}
			else {
				alert('failed'+this.getStatus());
			}        
		},{enableHighAccuracy: true});
	  }
	  
		// 百度地图API功能
		// 创建Map实例,设置地图允许的最小/大级别
		var map = new BMap.Map("caodan",{minZoom:4,maxZoom:25});
		//创建点坐标
		var point = new BMap.Point(shopCordX, shopCordY);
		// 初始化地图,设置中心点坐标和地图级别
		map.centerAndZoom(point, 15);
		//开启鼠标滚轮缩放
		map.enableScrollWheelZoom(); 
		//启用键盘操作，默认禁用。
		map.enableKeyboard();
		   
		// 比例尺控件，右下角，默认位于地图左下方，显示地图的比例关系。
		var bottom_right_control = new BMap.ScaleControl({
			anchor: BMAP_ANCHOR_BOTTOM_RIGHT
			});
			
		//地图平移缩放控件，PC端默认位于地图左上方，它包含控制地图的平移和缩放的功能。
		var navigationControl = new BMap.NavigationControl({
			// anchor表示控件的停靠位置，即控件停靠在地图的哪个角
			anchor: BMAP_ANCHOR_TOP_LEFT,
			// LARGE类型,控件外观类型, 表示显示完整的平移缩放控件
			type: BMAP_NAVIGATION_CONTROL_LARGE,
			// 启用显示定位
			enableGeolocation: true
		});
		//向地图添加控件
		map.addControl(bottom_right_control);       
		map.addControl(navigationControl);  
		
		//地图覆盖物:所有叠加或覆盖到地图的内容，Marker：标注表示地图上的点，InfoWindow：信息窗口也是一种特殊的覆盖物
		//可以使用map.addOverlay方法向地图添加覆盖物，使用map.removeOverlay方法移除覆盖物，注意此方法不适用于InfoWindow。
		// 创建标注  
		var marker=new BMap.Marker(point);
		// 将标注添加到地图中
		map.addOverlay(marker);
		marker.addEventListener("click", function(e){    
			//alert(e.point.lng + ", " + e.point.lat);
			//信息窗口
			var opts = {    
				 width : 250,     // 信息窗口宽度    
				 height: 100,     // 信息窗口高度    
				 title : "信息窗口"  // 信息窗口标题   
				}  ;
			var infoWindow = new BMap.InfoWindow("地址："+shopAdd, opts);  // 创建信息窗口对象    
			map.openInfoWindow(infoWindow,  new BMap.Point(e.point.lng,e.point.lat));      // 打开信息窗口
		});
		//开启拖拽功能,默认情况下标注不支持拖拽
		marker.enableDragging();
		map.addControl(new BMap.OverviewMapControl());    //  缩略图控件
		map.addControl(new BMap.MapTypeControl());       //   卫星控件
  });
 
  </script>  

  <script type="text/javascript">
    function productDetail(url,param){
    	window.location.href=url+"?proId="+param;
    }
</script>
  
  
  
</body>
</html>
