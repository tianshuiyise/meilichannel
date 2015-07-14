<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/include/common.jsp"%>

<tags:wjs items="checkbox.js"></tags:wjs>
<tags:wcss items="message.css"></tags:wcss>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
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
<!--[if IE 6]>
<script src="js/DD_belatedPNG_0.0.8a.js"></script>
<script>
DD_belatedPNG.fix('#logo,.navBar,#top1,#top2,#top3,#top4,.nav_icon1,.nav_icon2,.nav_icon3,.nav_icon4,.shade,input,#point,#point1,#point2,#point3,#point4,.messbox,#portrait');
</script>
<![endif]-->
<!--导航区 -->
<body>
    <div id="container">
      <form action="${ctx }/shop/meijiaUploadTo?userId=${user.userId}" enctype="multipart/form-data" method="post">
    <div id="container">
      <ul class="text">
        <li> *店铺名称：</li>
        <li></li>
        <li>*店铺QQ号：</li>
        <li></li>
        <li>*店铺描述：</li>
        <li></li>
        <li>*店铺主图片：</li>
        <li></li>
       
      </ul>
       <ul class="input">
        <li> <input type="text" name="shopName" /></li>
        <li></li>
        <li> <input type="text"  name="shopQq"/></li>
        <li></li>
        <li><input type="textarea"  name="introduction"/>(500字以内)</li>
        <li></li>
        <li> 
        <div id="localImag"><img id="preview" /></div>
        <input type=file name="doc" id="doc" onchange="javascript:setImagePreview();"></li>
        <li></li>
      </ul>
      <input id="saveinfo" type="submit" value="保存信息"/>
    </div>
   
      </form>
    </div>
    </body>
<!--主体end-->
