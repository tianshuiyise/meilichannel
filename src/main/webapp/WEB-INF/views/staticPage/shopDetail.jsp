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

<div class="shopIndex">
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
    </ul>
  </div>
  <div id="workAct">
	<tags:merchontQQ  shopQq="${production.shopQQ}"/>
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
	      	<span>累计评价</span>
	      </a>
      </li>
      <li id="tag4">
	      <a href="javascript:void(0);" onclick="switchTag('tag4','content4','${ctx}/mainPage/order','${shop.shopId }');this.blur();">
	      	<span>累计成交量</span>
	      </a>
      </li>
      </ul>
    </div>
    <div id="content" class="content1">
    	<div id="content1" ><p>${shop.introduction }</p><div class="map"><div id="caodan"></div></div></div>
    	<div id="content2" class="hidecontent"></div>
    	<div id="content3" class="hidecontent"></div>
	    <div id="content4" class="hidecontent"></div>
	    
    </div>
  </div>

<div class="map" >
	<input type="hidden" name="shopCordX" id="shopCordX" value="${shop.shopCordX }"/>
	<input type="hidden" name="shopCordY" id="shopCordY" value="${shop.shopCordY }"/>
	<input type="hidden" name="shopAdd" id="shopAdd" value="${shop.shopAdd }"/>
	<input type="hidden" name="shopCord" id="shopCord" value="${shop.shopCord }"/>
	<div id="myMap"></div>
</div> 

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
<script src="${ctx}/static/js/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="${ctx}/static/js/simplefoucs.js" type="text/javascript"></script>
<script src="${ctx}/static/js/controlMap.js" type="text/javascript"></script>


<script   type="text/javascript">


$(function(){
	  var myMap=new MyMap("shopCordX","shopCordY","shopAdd","shopCord",false,false);
	  myMap.init();
});

function productDetail(url,param){
	window.location.href=url+"?proId="+param;
}


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
			             var str="<div id='workinfo"+i+"'  class='workinfo'><p><a href='javascript:void(0);' onclick=\"productDetail('${ctx}/mainPage/productDetail','"+proId+"')\"><img src='"+imageAddress+"' alt='作品图片'/></a></p><p><a href='javascript:void(0);' onclick=\"productDetail('${ctx}/mainPage/productDetail','"+proId+"')\" >"+proName+":</a><br/>"+introduction+"</p></div>";
		            	 $("#content2").append(str); 
		             }
		             if("content3"==content){
		            	 var  orderId=item.orderId;
		            	 var overallStatus=item.overallStatus;
		            	 var reviewMes=item.reviewMes;
		            	 var reviewDate=item.reviewDate;
		            	 var userName=item.userName;

		            	
		            	 $("#content3").append("<div class='name'><span>用户名: "+userName+"</span><span>订单号："+orderId+"</span><span>评价时间:"+reviewDate+"</span></div>"); 
		            	 $("#content3").append("<div class='assess'><span>"+reviewMes+"</span><p>评价： "+overallStatus+"</p></div>");

		             }
		             if("content4"==content){
		            	 var proName=item.proName;
		            	 var memberName=item.memberName;
		            	 var userName=item.userName;
		            	 var appointTime=item.appointTime;
 
		            	 $("#content4").append("<table>  <tr><td class='uname'>客户姓名："+userName+"</td><td class='details'>预约作品："+proName+"  ，    预约人员："+memberName+"</td><td class='dealtime'>下单时间："+appointTime+"</td></tr>  </table>"); 

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
</body>
</html>
