<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>美丽频道</title>
<link href="${ctx}/static/style/myshop.css" rel="stylesheet" type="text/css" />
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
	<c:import url="/WEB-INF/views/commonFile/head.jsp"/>
<!--头部end-->

<!--主体-->
<div id="container11">
  <div id="picbox"><img id="mainpic" src="${ctx}/static/images/index/shop7.png" alt="店铺主图片" /></div>
  <div id="shopinfo">
    <ul>
      <li></li>
      <li>作品名称：&nbsp;****</li>
      <li></li>
      <li>作品价格：&nbsp;￥288.00</li>
      <li></li>
      <li>服务人员：&nbsp;<select><option value="aaa">aaa</option><option value="bbb">bbb</option></select></li>
      <li></li>
      <li>预约时间：&nbsp;<input type="text" /></li>
      <li></li>
      <li>联系商家：&nbsp;<a href="#">QQ</a></li>
      <li></li>
      <li><input type="submit" value="提交订单"/><input type="button" value="收藏"/></li>
      <li></li>
    </ul>
  </div>
  
  <div id="contain1">
    <div id="title">
      <ul>
      <li id="tag1"><a href="#" onclick="switchTag('tag1','content1');this.blur();" class="selectli1"><span
      class="selectspan1">作品详情</span></a></li>
      <li id="tag2"><a href="#" onclick="switchTag('tag2','content2');this.blur();"><span>服务人员信息</span></a></li>
      <li id="tag3"><a href="#" onclick="switchTag('tag3','content3');this.blur();"><span>累计评价（7）</span></a></li>
      <li id="tag4"><a href="#" onclick="switchTag('tag4','content4');this.blur();"><span>累计成交量（15）</span></a></li>
      </ul>
    </div>
    <div id="content" class="content1">
    <div id="content1">
      <div class="workinfo"><img src="${ctx}/static/images/channel/portrait.png" alt="作品图片"/>作品1：<br/>新华网北京6月27日电 中共中央政治局6月26日下午就加强反腐倡廉法规制度建设进行第二十四次集体学习。中共中央总书记习近平在主持学习时强调，我们党长期执政，既具有巨大政治优势，也面临严峻挑战，必须依靠党的各级组织和人民的力量，不断加强和改进党的建设、管理、监督。铲除不良作风和腐败现象滋生蔓延的土壤，根本上要靠法规制度。要加强反腐倡廉法规制度建设，把法规制度建设贯穿到反腐倡廉各个领域、落实到制约和监督权力各个方面，发挥法规制度的激励约束作用，推动形成不敢腐不能腐不想腐的有效机制。
　　中央纪委宣传部部长肖培就这个问题进行讲解，并谈了意见和建议。
　　中共中央政治局各位同志认真听取了他的讲解，并就有关问题进行了讨论。
　　习近平在主持学习时发表了讲话。他指出，再过几天，我们将迎来中国共产党成立94周年。今天，中央政治局集体学习安排党建方面的内容，题目是加强反腐倡廉法规制度建设，以此来纪念党的94岁生日。</div>
      
    </div>
    <div id="content2" class="hidecontent">
      <div class="personinfo"><img src='${ctx}/static/images/channel/present.png' alt="服务人员照片">姓名：(づ￣3￣)づ╭❤～就好<br/>也面临严峻挑战，必须依靠党的各级组织和人民的力量，不断加强和改进党的建设、管理、监督。铲除不良作风和腐败现象滋生蔓延的土壤，根本上要靠法规制度。要加强反腐倡廉法规制度建设，把法规制度建设贯穿到反腐倡廉各个领域、落实到制约和监督权力各个方面，发挥法规制度的激励约束作用，推动形成不敢腐不能腐不想腐的有效机制。</div>
     <div class="personinfo"><img src='${ctx}/static/images/channel/present.png' alt="服务人员照片">姓名：(づ￣3￣)づ╭❤～就好<br/>也面临严峻挑战，必须依靠党的各级组织和人民的力量，不断加强和改进党的建设、管理、监督。铲除不良作风和腐败现象滋生蔓延的土壤，根本上要靠法规制度。要加强反腐倡廉法规制度建设，把法规制度建设贯穿到反腐倡廉各个领域、落实到制约和监督权力各个方面，发挥法规制度的激励约束作用，推动形成不敢腐不能腐不想腐的有效机制。</div>
     <div class="personinfo"><img src='${ctx}/static/images/channel/present.png' alt="服务人员照片">姓名：(づ￣3￣)づ╭❤～就好<br/>也面临严峻挑战，必须依靠党的各级组织和人民的力量，不断加强和改进党的建设、管理、监督。铲除不良作风和腐败现象滋生蔓延的土壤，根本上要靠法规制度。要加强反腐倡廉法规制度建设，把法规制度建设贯穿到反腐倡廉各个领域、落实到制约和监督权力各个方面，发挥法规制度的激励约束作用，推动形成不敢腐不能腐不想腐的有效机制。</div>
     <div class="personinfo"><img src='${ctx}/static/images/channel/present.png' alt="服务人员照片">姓名：(づ￣3￣)づ╭❤～就好<br/>也面临严峻挑战，必须依靠党的各级组织和人民的力量，不断加强和改进党的建设、管理、监督。铲除不良作风和腐败现象滋生蔓延的土壤，根本上要靠法规制度。要加强反腐倡廉法规制度建设，把法规制度建设贯穿到反腐倡廉各个领域、落实到制约和监督权力各个方面，发挥法规制度的激励约束作用，推动形成不敢腐不能腐不想腐的有效机制。</div>
    </div>
    <div id="content3" class="hidecontent">
     
      <table border=1>
        <tr><td class="name">用户名:张三</td><td class="numb">订单号：12345678</td><td></td><td class="comtime">评价时间</td></tr>
        <tr><td colspan=3 class="assess">评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价</td><td class="comtype">好评</td></tr>
      </table>
     <table border=1>
        <tr><td class="name">用户名:张三</td><td class="numb">订单号：12345678</td><td></td><td class="comtime">评价时间</td></tr>
        <tr><td colspan=3 class="assess">评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价</td><td class="comtype">差评</td></tr>
      </table>
      <table border=1>
        <tr><td class="name">用户名:张三</td><td class="numb">订单号：12345678</td><td></td><td class="comtime">评价时间</td></tr>
        <tr><td colspan=3 class="assess">评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价</td><td class="comtype">好评</td></tr>
      </table>
     <table border=1>
        <tr><td class="name">用户名:张三</td><td class="numb">订单号：12345678</td><td></td><td class="comtime">评价时间</td></tr>
        <tr><td colspan=3 class="assess">评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价</td><td class="comtype">差评</td></tr>
      </table>
       <table border=1>
        <tr><td class="name">用户名:张三</td><td class="numb">订单号：12345678</td><td></td><td class="comtime">评价时间</td></tr>
        <tr><td colspan=3 class="assess">评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价</td><td class="comtype">好评</td></tr>
      </table>
     <table border=1>
        <tr><td class="name">用户名:张三</td><td class="numb">订单号：12345678</td><td></td><td class="comtime">评价时间</td></tr>
        <tr><td colspan=3 class="assess">评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价评价</td><td class="comtype">差评</td></tr>
      </table>
    </div>
    <div id="content4" class="hidecontent">
      <table border=1>
        <tr><td class="uname">李四</td><td class="details">预约作品，人员等详细信息</td><td class="dealtime">2015-7-1 10:07</td></tr>
      </table>
      <table border=1>
        <tr><td class="uname">李四</td><td class="details">预约作品，人员等详细信息</td><td class="dealtime">2015-7-1 10:07</td></tr>
      </table>
      <table border=1>
        <tr><td class="uname">李四</td><td class="details">预约作品，人员等详细信息</td><td class="dealtime">2015-7-1 10:07</td></tr>
      </table>
      <table border=1>
        <tr><td class="uname">李四</td><td class="details">预约作品，人员等详细信息</td><td class="dealtime">2015-7-1 10:07</td></tr>
      </table>
      <table border=1>
        <tr><td class="uname">李四</td><td class="details">预约作品，人员等详细信息</td><td class="dealtime">2015-7-1 10:07</td></tr>
      </table>
      <table border=1>
        <tr><td class="uname">李四</td><td class="details">预约作品，人员等详细信息</td><td class="dealtime">2015-7-1 10:07</td></tr>
      </table>
    </div>
    
    </div>
  </div>
</div>

<!--主体end-->
<!--底部foot-->
<c:import url="/WEB-INF/views/commonFile/foot.jsp"/>
<script src="${ctx}/static/js/jquery-1.9.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="${ctx}/static/js/script.js"></script>
	
<script language="javascript">
function switchTag(tag,content)
{
//	alert(tag);
//	alert(content);
for(i=1; i <6; i++)
{
if ("tag"+i==tag)
{
document.getElementById(tag).getElementsByTagName("a")[0].className="selectli"+i;
document.getElementById(tag).getElementsByTagName("a")[0].getElementsByTagName("span")
[0].className="selectspan"+i;
}else{
document.getElementById("tag"+i).getElementsByTagName("a")[0].className="";
document.getElementById("tag"+i).getElementsByTagName("a")[0].getElementsByTagName("span")
[0].className="";
}
if ("content"+i==content)
{
document.getElementById(content).className="";
}else{
document.getElementById("content"+i).className="hidecontent";
}
document.getElementById("content").className=content;
}
}
</script>
</body>
</html>
