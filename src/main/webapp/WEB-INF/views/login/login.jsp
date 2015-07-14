<%@ page contentType="text/html;charset=UTF-8"%>
<head>
<meta charset="UTF-8">
<title>美丽频道</title>
<%@ include file="/WEB-INF/include/common.jsp"%>
<tags:wcss items="login.css"></tags:wcss>
<link href="${ctx}/static/default/images/login3.css" type="text/css" rel="stylesheet" />
</head>
<body onkeypress="login(event)">

	<form id="form1" action="${ctx }/login/loginCheck" name="form1"
		method="post" style="text-align: center">
		<div id="box">
		<div class="image">
          <input name="userName" type="text" id="textfield" class="input_1" />					
	      <input name="password" type="password" id="textfield2" class="input_1" />
		  <img id="go" src="${ctx}/static/default/images/go.jpg" width="50" height="51" onclick="javascript:document.form1.submit()" />
		</div>	
		</div>
	</form>
</body>

