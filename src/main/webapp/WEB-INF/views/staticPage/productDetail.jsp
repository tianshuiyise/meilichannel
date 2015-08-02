<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>美丽频道</title>
<link href="${ctx}/static/style/work.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/static/style/nav.css" rel="stylesheet" type="text/css" />
<!--[if IE 6]>
<script src="js/DD_belatedPNG_0.0.8a.js"></script>
<script>
DD_belatedPNG.fix('#logo,.navBar,#top1,#top2,#top3,#top4,.nav_icon1,.nav_icon2,.nav_icon3,.nav_icon4,.shade,input,.pre,.next');
</script>
<![endif]-->
</head>
<body>
	<!--头部-->
	<c:import url="/WEB-INF/views/commonFile/head.jsp" />
	<!--头部end-->
	<!--主体-->
	<div class="container11" id="production">
        <div id="imgBox"><img src="${production.imageAddress }" alt="店铺主图片" /></div>
		<form action="${ctx}/mainPage/reserveProduct">
		    <div id="workMess">
			    <ul>
			      <li></li>
			      <li>作品名称：&nbsp;<input value="${production.proId }" name="proId" type="hidden"/>${production.proName }</li>
			      <li></li>
			      <li>作品价格：&nbsp;<input value="${production.proPrice }" name="orderPrice" type="hidden"/>￥${production.proPrice }</li>
			      <li></li>
			      <li>服务人员：&nbsp;<select name="memberId">
							<option value="0 ">请选择</option>
							<c:forEach items="${production.memberName }"  var="member" varStatus="status">
								<option value="${member.memberId} ">${member.memberName }</option>
							</c:forEach>     
						</select></li>
			      <li></li>
			      <li>预约时间：&nbsp;<input id="time" type="text" name="appointTime"/></li>
			      <li></li>
               </ul>
            </div>
			<div id="workAct">
		      
			<tags:merchontQQ  shopQq="${production.shopQQ}"/>
		      
				<c:choose>
					<c:when test="${empty sessionScope.user}">
					    <input id="collection" type="button" value="" disabled="disabled"/>
						<input id="submitOrder" type="submit" value="" disabled="disabled"/>
						
					</c:when>
					<c:otherwise>
					    <input id="collection" type="button" value="" onclick="collection('${ctx}/mainPage/collectionProduction','${production.proId }')"/>
						<input id="submitOrder" type="submit" value="" />
						
					</c:otherwise>
				</c:choose>
			</div>
		</form>
		<div id="contain1">
		    <div id="title">
		      <ul>
					<li id="tag1">
						<a href="javascript:void(0);" onclick="switchTag('tag1','content1','${ctx}/mainPage/member','${production.proId }');this.blur();" class="selectli1">
							<span class="selectspan1">作品详情</span>
						</a>
					</li>
					<li id="tag2">
						<a href="javascript:void(0);" onclick="switchTag('tag2','content2','${ctx}/mainPage/member','${production.proId }');this.blur();">
							<span>服务人员信息</span>
						</a>
					</li>
					<li id="tag3">
						<a href="javascript:void(0);" onclick="switchTag('tag3','content3','${ctx}/mainPage/review','${production.proId }');this.blur();">
							<span>累计评价</span>
						</a>
					</li>
					<li id="tag4">
						<a href="javascript:void(0);" onclick="switchTag('tag4','content4','${ctx}/mainPage/order','${production.proId }');this.blur();">
							<span>累计成交量</span>
						</a>
					</li>
				</ul>
		    </div>
		    <div id="content" class="content1">
		    <div id="content1">
		      <p><a href="#">${production.proName}：</a><br /> 
						${production.introduction }</p>
		      
		    </div>
		    <div id="content2" class="hidecontent"></div>
		    <div id="content3" class="hidecontent"></div>
		    <div id="content4" class="hidecontent"></div>



		
			

			</div>
		</div> 
		
		
	</div>

		<!--主体end-->
		<!--底部foot-->
<c:import url="/WEB-INF/views/commonFile/foot.jsp" />
<script src="${ctx}/static/js/jquery-1.9.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="${ctx}/static/js/script.js"></script>
<script src="${ctx}/static/js/simplefoucs.js" type="text/javascript"></script>
<script language="javascript">

function collection(path,proId){
	window.location.href=path+"?proId="+proId;
}


	function getProduct(url,id,content){
		$("#content2").empty();
		$("#content3").empty();
		$("#content4").empty();
		
		var d={"proId":id};
		$.ajax({
			url:url,
			type:"post",
			async:false,
			contentType:"application/json",
			dataType:"json",
			data: JSON.stringify(d),
			success:function(result){
				//alert(JSON.stringify(result));
				$.each(result, function(i, item) { 
					
		             if("content2"==content){
		            	 var imageAddress=item.imageAddress;
		            	 var memberName=item.memberName;
		            	 var introduction=item.introduction;
			             var str="<div class='server'><div class='serverPic fl'><img src='"+imageAddress+"'><p><br/>"+memberName+"</p></div></div>";
		            	 var str1="<div class='serverName'><p>"+introduction+"</p></div>";
			             $("#content2").append(str); 
			             $("#content2>div").append(str1); 
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
		            	 $("#content4").append("<table>   </table>"); 
		            	 $("#content4 table").append(" <tr><td class='uname'>客户姓名："+userName+"</td><td colspan=2 class='details'>预约作品："+proName+"  ，    预约人员："+memberName+"</td><td class='dealtime'>下单时间："+appointTime+"</td></tr> ");
		             }
				}); 
			}
		}); 
	}
		
	function switchTag(tag, content,url,shopid) {
		
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
