<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<!--导航区 -->
<div class="top">
	<ul>
		<li>文件上传</li>
	</ul>
</div>
<form id="searchForm" action="${ctx}/upload" method="POST" enctype="multipart/form-data">
<!-- 检索条件 -->
<div class="gly-top">
	<table id="s-table">
		<tr>
			<td id="td1"><input type="file" id="fil_myfiles" name="myfiles"/>
			</td>
			<td id="s-td"><input type="submit" id="btn" value="提交" />
			</td>
		</tr>
	</table>
</div>
</form>
<!-- 表单校验区 -->
<script type="text/javascript">
$(document).ready(function(){

	$("#fil_myfiles").change(function(){
		//文件对象
		var fileObj = $("input[name='myfiles']");
		//文件路径
		var filepath=fileObj.val();
		var extStart=filepath.lastIndexOf(".");
		//后缀名
		var ext=filepath.substring(extStart,filepath.length).toUpperCase();
		//对文件格式进行校验
		if(ext!=".BMP"&&ext!=".PNG"&&ext!=".GIF"&&ext!=".JPG"&&ext!=".JPEG"){
			alert("图片限于bmp,png,gif,jpeg,jpg格式");
			fileObj.val("");
			return false;
		}
		//文件大小
		var file_size = 0;    
		//判断浏览器      
		if ($.browser.msie) {    //ie  
			var img=new Image();
			img.src=filepath;   
			while(true){
				if(img.fileSize > 0){
					if(img.fileSize>300*1024){   	
						alert("图片不得大于300K！");
						fileObj.val("");
						return false;
					}
				break;
				}
			} 
		} else {     //其他浏览器
			file_size = this.files[0].size;   
			console.log(file_size/1024 + " KB");
			var size = file_size / 1024;  
			if(size > 300){  
				alert("图片不得大于300K！");
				fileObj.val(""); 
				return false;				
			}
		}
		return true;
	});
});
</script>