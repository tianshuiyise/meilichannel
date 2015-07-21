<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!--头部-->
	<div class="headerBar">
		<div class="header comWidth">
			<div class="fl">
				<img src="${ctx}/static/images/header/logo.png" alt="logo" id="logo" />
				<div class="rightArea fr">
					<div class="topBar">
						<ul>
							<c:choose>
								<c:when test="${empty sessionScope.user}">
									<li id="top1"><a href="${ctx}/register/preRegisterByPhone">注册</a></li>
									<li id="top2"><a href="${ctx}/login/preLogin">登录</a></li>
								</c:when>
								<c:otherwise>
									<li id="top1">${sessionScope.user.userName}</li>
									<li id="top2"><a href="${ctx}/login/logout">退出登录</a></li>
								</c:otherwise>
							</c:choose>
							<li id="top3">
								<c:choose>
									<c:when test="${empty sessionScope.user}">
										<a href="${ctx }/login/preLogin">我的频道</a>
									</c:when>
									<c:otherwise>
									<!-- 待续。。。 -->
										<a href="${ctx }/beautyShopMng/1">我的频道</a>
									</c:otherwise>
								</c:choose>
							</li>
							<li id="top4">
								<c:choose>
									<c:when test="${empty sessionScope.user}">
										<a href="${ctx}/applySellerIn/preApplySellerIn">申请商家入驻</a>
									</c:when>
									<c:otherwise>
									<!-- 待续。。。 -->
										<!-- 用户 -->
										<c:if test="${sessionScope.user.userType eq '1'} ">
											<a href="${ctx}/applySellerIn/preApplySellerIn">申请商家入驻</a>
										</c:if>
										<!-- 商家 -->
										<c:if test="${sessionScope.user.userType eq '2'}">
											<a href="${ctx }/beautyShopMng/1">我的店铺</a>
										</c:if>
										
									</c:otherwise>
								</c:choose>
							</li>
						</ul>
					</div>	
					<div class="navBar">
						<ul>
							<c:forEach items="${sessionScope.mainMenu }" var="mainMenu" varStatus="status">
								<li class='nav_icon"+${status.index +1 }+"'><a href="${ctx}/${mainMenu.menuURL}">${mainMenu.menuName}</a></li>
							</c:forEach>
						
							<%-- <li class="nav_icon1"><a href="${ctx}/mainPage/shouye">首页</a></li>
							<li class="nav_icon2"><a href="${ctx}/mainPage/meirong">美容</a></li>
							<li class="nav_icon3"><a href="#">美发</a></li>
							<li class="nav_icon4"><a href="#">美甲</a></li> --%>
						</ul>
					</div>
					<div id="search">
						<input type="text" id="search_ipt" /> <input type="button"
							id="search_btn" />
					</div>

				</div>
			</div>
		</div>
		<div id="headersd">
			<img src="${ctx}/static/images/header/headersd1.jpg" alt="阴影" />
		</div>
		<!--头部end-->
	</div>