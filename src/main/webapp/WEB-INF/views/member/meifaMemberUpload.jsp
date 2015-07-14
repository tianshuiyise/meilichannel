<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/include/common.jsp"%>

<tags:wjs items="checkbox.js"></tags:wjs>
<tags:wcss items="message.css"></tags:wcss>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<head>
<link rel="stylesheet" type="text/css" href="${ctx}/static/style/myshop.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/static/style/nav.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/static/style/channel.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/static/style/nav.css" />
<style type="text/css">
#localImag img{ width:100%; height:100%; z-index:3; background:#222 repeat center center;}
</style>
<script src="${ctx}/static/js/jquery-1.7.min.js" type="text/javascript"></script>
<script src="${ctx}/static/js/calendar/calendar.js" type="text/javascript"></script>
<script src="${ctx}/static/js/calendar/WdatePicker.js" type="text/javascript"></script>
<script src="${ctx}/static/js/Area.js" type="text/javascript"></script>
<script src="${ctx}/static/js/AreaData_min.js" type="text/javascript"></script>
<script>  
function setImagePreview() {          
    var docObj=document.getElementById("doc");           
    var imgObjPreview=document.getElementById("preview");  
    if(docObj.files && docObj.files[0]){                          
      
        imgObjPreview.src = window.URL.createObjectURL(docObj.files[0]);  
     }else{                          
                          
         docObj.select();                          
         var imgSrc = document.selection.createRange().text;                          
         var localImagId = document.getElementById("localImag");  
         
        try{                                  
            localImagId.style.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";            

                      
            localImagId.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;                         

 
        }catch(e){                                  
            alert("您上传的图片格式不正确，请重新选择!");                                  
            return false;                          
        }  
            imgObjPreview.style.display = 'none';                          
            document.selection.empty();                  
        }                  
            return true;          
        }  
</script> 
</head>
<!--导航区 -->
<div class="top">
	<ul>
		<li>美发</li>
		<p>美发>>美发人员信息</p>
	</ul>
</div>

<!--这里是操作完成的消息提示区  -->
<c:import url="/WEB-INF/include/message.jsp"></c:import>
<form id="searchForm"  action="${ctx}/member/meifaInfoUpload?userId=${user.userId}" method="POST" enctype="multipart/form-data">
<div id="container">
      <ul class="text">
        <li> *服务人员姓名：</li>
        <li></li>
        <li>*人员简介</li>
        <li></li>
        <li>*人员头像：</li>
        <li></li>
      </ul>
       <ul class="input">
        <li> <input type="text" name="memberName"/></li>
        <li></li>
        <li><input type="textarea"  name="introduction"/>(500字以内)</li>
        <li></li>
        <li> 
        <div id="localImag"><img id="preview" /></div>
        <input type=file name="doc" id="doc" onchange="javascript:setImagePreview();"></li>
        <li></li>
      </ul>
     <input type="reset"  value="重置">
     <input id="saveinfo" type="submit" value="保存信息"/>
    </div>
</form>