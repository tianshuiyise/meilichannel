<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<tags:wcss items="message.css"></tags:wcss>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>美丽频道</title>
<link rel="stylesheet" type="text/css" href="${ctx}/static/style/channel.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/static/style/nav.css" />
<script type="text/javascript">
	function add_meiliChannel(controllerUrl) {
		window.location.href = controllerUrl ;
	}
	function operationWithId(controllerUrl, shopId) {
		window.location.href = controllerUrl + "?shopId=" + shopid;
	}
</script>
<!--[if IE 6]>
<script src="js/DD_belatedPNG_0.0.8a.js"></script>
<script>
DD_belatedPNG.fix('#logo,.navBar,#top1,#top2,#top3,#top4,.nav_icon1,.nav_icon2,.nav_icon3,.nav_icon4,.shade,input,.pre,.next');
</script>
<![endif]-->
</head>

<body>

	<!-- 头部 -->
	<c:import url="/WEB-INF/views/commonFile/head.jsp"/>

	<!--主体-->
	 <!--主体-->
  <div class="comWidth">
    <div id="top">
      <div id="portrait"><img src="${sessionScope.user.imageAddress}"/></div>
      <div id="username">${sessionScope.user.userName}</div>
    </div>
	<div id="main">
		<!-- 左侧菜单 -->
		 <c:import url="/WEB-INF/views/commonFile/leftMenu.jsp"/>
		<%-- <%@ include file="/WEB-INF/views/commonFile/leftMenu.jsp" %> --%>
    	<div id="container">
    		<!--这里是操作完成的消息提示区  -->
			<c:import url="/WEB-INF/include/message.jsp"></c:import>
				<form id="searchForm" action="${ctx}/beautyShopMng/${shopType}" method="post">
					<input type="hidden" name="shopType" value="${shopType}" />
					<div class="gly-top">
						<table id="s-table">
							<tr>
								<td id="td1" align="right">店铺名字</td>
								<td>
									<input class="text" type="text" id="txt_shopName" name="search_shop_name" value="${param.search_shopName}" />
								</td>
								<td id="s-td">
									<input type="submit" id="btn_query" value="查询" />
								</td>
							</tr>
						</table>
						
					</div>
					<!-- 列表区 -->
					 <div id="container" >  
					    	<div id="ranking">
					      		<div id="ranktext">
					        		<%-- <input type="button" onclick="add('${ctx}/beautyShopMng/${shopType}/add')" value="添加"> --%>
					      		</div>
					      		<c:forEach items="${productList.content}" var="shoplist" varStatus="status">
					      			<div class="rank-shop">
							        <a onclick="operationWithId('${ctx}/beautyShopMng/${shopType}/detail','${shoplist.shopId}')"   href="#">
							        	<img src="${ctx}/static/photo/${shoplist.imageName}" alt="店铺" />
							        </a>
							        <span>
							        	<a href="#">${shoplist.shopName} 的店铺</a>
								       <div>
								       	<input type="button" onclick="operationWithId('${ctx}/beautyShopMng/${shopType}/preModify','${shoplist.shopId}')" value="修改"/>
								       	/
								       	<input type="button" value="删除" onclick="operationWithId('${ctx}/beautyShopMng/${shopType}/delete','${shoplist.shopId}')"/>
								       </div>
					        			</span>
					        			<p>${shoplist.introduction} ，... </p>
					      			</div>
					      		</c:forEach>
					    	</div>
					    	<%-- <img id="pages" src="${ctx}/static/images/channel/pages.png" alt="页码" /> --%>
					   </div>
					   <!-- 分页组件区 -->
					   <tags:pagination page="${productList}"/>
					   
					   <div class="content" align="center">
						<span class="add">
							<input type="button" onclick="add_meiliChannel('${ctx}/beautyShopMng/${shopType}/preAdd')" value="添加"/>
						</span>
					</div>
					   <%-- <tags:wselect id="slt_cWUpdateType"  name="cWUpdateType" key="CWUpdateType" value="${param.search_cWUpdateType}"></tags:wselect> --%>	
				</form>
    	</div>
		
	</div>
	</div>
	<!--底部foot-->
	<c:import url="/WEB-INF/views/commonFile/foot.jsp"/>
</body>

</html>


