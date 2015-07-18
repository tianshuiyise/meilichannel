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
							<li id="top1"><a href="${ctx}/register/preRegisterByPhone">注册</a></li>
							<li id="top2"><a href="${ctx}/login/preLogin">登录</a></li>
							<li id="top3"><a href="#">我的频道</a></li>
							<li id="top4"><a
								href="${ctx}/applySellerIn/preApplySellerIn">申请商家入驻</a></li>
						</ul>
					</div>	
					<div class="navBar">
						<ul>
							<li class="nav_icon1"><a href="${ctx}/mainPage/shouye">首页</a></li>
							<li class="nav_icon2"><a href="${ctx}/mainPage/meirong">美容</a></li>
							<li class="nav_icon3"><a href="#">美发</a></li>
							<li class="nav_icon4"><a href="#">美甲</a></li>
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