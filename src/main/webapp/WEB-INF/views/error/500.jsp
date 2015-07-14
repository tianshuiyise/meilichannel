<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="refresh" content="5; url=${ctx }/userInfo/showUserInfo">
<tags:wjs items="back.js"></tags:wjs>
<tags:wcss items="error500.css"></tags:wcss>
<center>
	<div class="book">
		<div id="left_500"></div>
		<div id="right_msg"></div>
		<div id="num_msg">5</div>
		<div id="right_msg1"></div>
	</div>
</center>

<script>
	function countDown(secs){
		num_msg.innerText=secs;
    	if(--secs>0) {
    		setTimeout("countDown("+secs+" )",1000);
    	}
	}
	countDown(5);
</script>
