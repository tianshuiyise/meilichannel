<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/include/common.jsp"%>
<tags:wcss items="message.css"></tags:wcss>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
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

<!--导航区 -->
<!--这里是操作完成的消息提示区  -->
<c:import url="/WEB-INF/include/message.jsp"></c:import>

<form id="searchForm" action="${ctx}/beautyShopMng/${shopType}" method="post">
	<input type="hidden" name="shopType" value="${shopType}" >
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
			<input type="button" onclick="add_meiliChannel('${ctx}/beautyShopMng/${shopType}/preAdd')" value="添加">
		</span>
	</div>
    <%-- <tags:wselect id="slt_cWUpdateType"  name="cWUpdateType" key="CWUpdateType" value="${param.search_cWUpdateType}"></tags:wselect> --%>	
</form>