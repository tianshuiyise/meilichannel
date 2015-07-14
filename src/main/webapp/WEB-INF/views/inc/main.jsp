<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9" />
<title>美丽频道</title>
</head>
<frameset rows="150, *, 30" frameborder="0" framespacing="0" id="main_content" >
   <frame src="${ctx}/inc/top" name="topFrame" scrolling="no" noresize="noresize" id="topFrame" title="topFrame" /> 
	<frameset cols="170, *"  frameborder="no" framespacing="0">  
		<frame src="${ctx}/nav/left" name="leftFrame" scrolling="auto" noresize="noresize" id="leftFrame" title="leftFrame" />
		<frame src="${ctx }/meifaProduct" name="mainFrame" id="mainFrame" title="mainFrame" noresize="noresize"/>
	</frameset> 
  <frame src="${ctx}/inc/foot" name="footFrame" scrolling="no" noresize="noresize" id="footFrame" title="footFrame" />
</frameset><noframes></noframes>

<body>
</body>
</html>
