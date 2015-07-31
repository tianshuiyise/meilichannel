<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${ctx}/static/uploadify/uploadify.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${ctx}/static/uploadify/jquery.uploadify.min.js"></script>
<link rel="stylesheet" type="text/css" href="${ctx}/static/jquery.imgareaselect-0.9.10/css/imgareaselect-default.css">
<script type="text/javascript" src="${ctx}/static/jquery.imgareaselect-0.9.10/scripts/jquery.imgareaselect.pack.js"></script>

<script type="text/javascript">
$(function() {
	$('#photo_save').hide();
	$('#photo_save').click(function(){
		var x1=$('input[name="x1"]').val();
		var y1=$('input[name="y1"]').val();
		var x2=$('input[name="x2"]').val();
		var y2=$('input[name="y2"]').val();
		var src=$('#avatar_pic img').attr('src');
		$.ajax({
			url:'${ctx}/photoSave',
			type:"post",
			async:false,
			dataType:"text",
			data: {
				data:x1+","+y1+","+x2+","+y2+","+src
			},
			beforeSend:function(){
		    },
			success:function(result){
				if(!result){
					alert("图片裁剪出错，请重新裁剪");
				}else{
					$("#info_pic img",window.parent.document).attr('src',result);
					$("#info_pic input",window.parent.document).attr('value',result);
					var i = parent.layer.getFrameIndex();
					parent.layer.close(i);
				}
			}
		}); 
	});

	
	//在js中可以写el表达式，只要这段js代码写在jsp文件中就可以了
    $("#file_upload").uploadify({
        'swf'      : '${ctx}/static/uploadify/uploadify.swf',
        'uploader' : '${ctx}/upload',
        'multi':false,
		'fileSizeLimit':'2MB',
		'fileTypeExts':'*.jpg;*.jpge;*.gif;*.png',
		'buttonText' : '上传图片',
		'fileObjName'   : 'file',  
		 'onUploadSuccess':function(file, data, response){
			
			$('#photo_save').show();
			$('#avatar_pic img').attr('src',data);
			$('#avatar_pic img').attr('height',300);
			$('#avatar_pic img').attr('width',300);
			$('#file_upload').hide();
			$('#avatar_pic img').imgAreaSelect({ 
				aspectRatio:"1:1",
				x1:0,
				y1:0,
				x2:50,
				y2:50,
				maxHeight: 280, 
				handles: true,
				onSelectEnd: function (img, selection) {
		            $('input[name="x1"]').val(selection.x1);
		            $('input[name="y1"]').val(selection.y1);
		            $('input[name="x2"]').val(selection.x2);
		            $('input[name="y2"]').val(selection.y2);                
		        }
			});
		} 
    });
});
	</script>
</head>
<body>

<div id='upload_avatar'>
		<h2>支持JPG,GIF,PNG格式，图片最大为2MB  <%=request.getContextPath()%></h2>
		<div id='avatar_pic'>
			<img src='${ctx}/static/images/blank.jpg '/>
		</div>
		<div id="queue"></div>
		<input id="file_upload" name="file_upload" type="file" />
		
		<input type='hidden' name='x1' />
		<input type='hidden' name='y1' />
		<input type='hidden' name='x2' />
		<input type='hidden' name='y2' />
		<a id='photo_save' href='javascript:void(0)'>保存</a>
		<button ></button>
	</div>
</body>
</html>