<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<tags:wjs items="popup.js" />
<script type="text/javascript">
function popUp(){
	$.dialog({
		title: '弹出窗口',
		width: '500px',
	    height: '300px',
	    left: '50%',
	    top: '50%',
	    max: false,
    	min: false,
    	lock: true, 
    	drag: false,
    	fixed: true,
    	content: 'url:${ctx}/blog/input',
    });
}

</script>

<!--导航区 -->
<div class="top">
	<ul>
		<li>制定教学计划</li>
		<p>教务管理>>制定教学计划</p>
	</ul>
</div>

<form action="${ctx }/blog/upload" method="POST" enctype="multipart/form-data" autocomplete="on">
	文件上传
	<input type="file" name="myfiles">
	<input type="submit" id="btn" value="上传" />
	<hr>
	<p>
		<label>自动匹配:</label>
		<input type="text" id="suggest1" />
	</p>
</form>
<hr>

<form id="searchForm" action="${ctx}/blog" name="form1">
<!-- 检索条件 -->
<div class="gly-top">
	<table id="s-table">
		<tr>
			<td id="td1">标题&nbsp;<input id="title_tp" name="search_title" type="text" class="{required:true,minlength:5,messages:{required:'请输入内容'}}" value="${param.search_title}" />
			</td>
			<td id="td1">内容&nbsp;<input id="content" name="search_content" type="text"  class="{required:true,minlength:5,messages:{required:'请输入'}}" value="${param.search_content}" />
			</td>
			<td id="s-td"><input type="submit" id="btn" value="查询" />
			</td>
			<td id="s-td"><a href="${ctx}/blog/export">导出Excel</a>
			</td>
			<td id="s-td"><a href="#" onclick="popUp();" >弹出层</a>
			</td>
		</tr>
	</table>
</div>
<!--这里是消息提示区.TODO:需要美工来定制样式  -->
<c:if test="${not empty message}">
	${message}
</c:if>
<!-- 列表区 -->
<table id="table1">
	<tr id="tr1">
		<td id="title"><input id="chk_all" type="checkbox" width="10px;" onclick="javascript:allCheck()">
		</td>
		<td id="title" style="width:50px;">序号</td>
		<td id="title">标题</td>
		<td id="title">内容</td>
		<td id="title">时间</td>
		<td id="title">操作</td>
	</tr>
	<c:forEach items="${blogs.content}" var="blog">
		<tr>
			<td id="title" width="30px"><input type="checkbox" id="chk_sub_checkBox" name="chk_sub_checkBox" onclick="javascript:checkT_F()"/>
			</td>
			<td id="title" style="width:50px;">${blog.id}</td>
			<td id="left">${blog.title }</td>
			<td id="title">${blog.content}</td>
			<c:set var="now" value="2013-7-30 12:24:57"></c:set>
			<fmt:parseDate value="${now}" var="now" pattern="yyyy-MM-dd"/>
			<td id="right"><fmt:formatDate value="${now}" /></td>
            <td id="title"><input type="button" value="删除" /> <input
				type="button" value="复制" />
			</td>
		</tr>
	</c:forEach>
</table>
<br>
<!-- 分页组件区 -->
<!-- TODO：后期这里可能会持续改进 -->
<tags:pagination page="${blogs}"/>
<!-- 按钮区  -->
<div class="content" align="center">
	<span class="add"><input type="button" value="新增" id="btn" class="btn" onclick="popUp();"/>
	</span> <span class="export"><input type="button" value="导出" id="btn" class="btn"/>
	</span>
	<span class="add">
		<input class="btn" type="button" value="批量删除" id="btn_batch_delete" onclick="batchDelete('删除该专业后，该专业的有关信息将同时删除！确实要删除吗？')"/>
	</span>
</div>

<!-- 下面这部分是多选控件区域 -->
<script type="text/javascript">
	$(document).ready(function(){  
		  
		$("#add").click(function(){  
			$("#select1 option:selected").appendTo("#select2");  
		});  
	   
		$("#remove").click(function(){  
			$("#select2 option:selected").appendTo("#select1");  
		});  
		  
		  
		//双击选项的时候实现右移,双击事件：dblclick  
		$("#select1").dblclick(function(){  
			$("#select1 option:selected").appendTo("#select2");  
		});  
		//双击选项的时候实现左移,双击事件：dblclick  
		$("#select2").dblclick(function(){  
			$("#select2 option:selected").appendTo("#select1");  
		});  
     
	 	//点击提交按钮查看所选内容  
		$("#send").click(function(){  
			var str="你选择的是：";  
			$("#select2 option").each(function(){ 
				str+=$(this).val()+",";//接收显示所选复选框的内容  
			});  
		  
			alert(str);  
      	});  
	});  
</script>
<style type="text/css">  
	#select1{width:300px;height:250px;padding:5px;}
	#select2{width:300px;height:250px;padding:5px;}  
	.multyselect_content{float:left;text-align:center;margin-right:10px;}  
	.multy_arrow{width:30px; height:30px;}
	#add,#remove{cursor:pointer;}
</style> 


<hr>
<table>
	<thead>
		<tr>
			<th align="center">可选的批次</th>
			<th></th>
			<th align="center">已选的批次</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td align="center">
				<select multiple="multiple" id="select1">  
			        <option value="1">选项1</option>  
			        <option value="2">选项2</option>  
			        <option value="3">选项3</option>  
			        <option value="4">选项4</option>  
			        <option value="5">选项5</option>  
			        <option value="6">选项6</option>  
			        <option value="7">选项7</option>  
			    </select>
			</td>
			<td align="center">
				<div id="add"><img class="multy_arrow" src="${ctx}/static/default/images/right_arrow.jpg" alt="选中右移"></div>  
			 	<br><br><br><br>
			    <div id="remove"><img class="multy_arrow" src="${ctx}/static/default/images/left_arrow.jpg" alt="选中左移"></div>
			</td>
			<td align="center">
				<select multiple="multiple" id="select2">  
    			</select>
			</td>
		</tr>
	</tbody>
</table>
<input type="button" id="send" value="提交"/>  
</form>

<script type="text/javascript">
function listBlog(){
  window.location.href='${ctx}/blog';
}
function autoComplete() {
	jQuery.ajax({
		type : 'GET',
		contentType : 'application/json',     
		url : '/nankai/blog/autoComplete',
		dataType : 'json',
		success : function(data) {
			var stockInfoJson = "[";
			$.each(data, function(i, item) {
				if(i == data.length-1) {
					stockInfoJson += "{ name:\""+item.title+"\", code:\""+item.id+"\"}"
				} else {
					stockInfoJson += "{ name:\""+item.title+"\", code:\""+item.id+"\"},"
				}
	        });
			
			stockInfoJson += "]";
			var obj = eval(stockInfoJson);
			$("#suggest1").focus().autocomplete(obj, {
				
				minChars: 1,
				matchCase:false,//不区分大小写
				autoFill: false,
				max: 10,
				formatItem: function(row, i, max,term) {
					var v = $("#suggest1").val();
					return  row.name + " (" + row.code + ")";
					if(row.code.indexOf(v) == 0 || row.name.indexOf(v)==0)
					{
						return  row.name + " (" + row.code + ")";
					}
					else
						return false;
				},
				formatMatch: function(row, i, max) {
					return row.name + " (" + row.code+")";
				},
				formatResult: function(row) {
					return row.code;
				},
				reasultSearch:function(row,v)//本场数据自定义查询语法 注意这是我自己新加的事件
				{
					//自定义在code或name中匹配
					if(row.data.code.indexOf(v) == 0 || row.data.name.indexOf(v) == 0)
					{
						return row;
					}
					else
						return false;			
				}
			});
		}
    });
}
autoComplete();
</script>


<hr>
<form id="blogForm2" name="form2" action="${ctx }/blog/submitAllLine" method="post">
<table>
	<tr>
		<td id="title" style="width:50px;">序号</td>
		<td id="title">标题</td>
		<td id="title">分数（必须是数字类型）</td>
	</tr>
	<c:forEach items="${blogs.content}" var="blog" varStatus="status">
		<tr>
			<td>
				${status.count }
			</td>
			<td>
				<select name="blogMap['${blog.id }'].title">
					<option value="标题1">标题1</option>
					<option value="标题2">标题2</option>
					<option value="标题3">标题3</option>
				</select>
			</td>
			<td>
				<input type="text" name="blogMap['${blog.id }'].content" value="${blog.content }" class="number"/>
			</td>
		</tr>
	</c:forEach>
</table>
<input type="submit" value="提交" />
</form>
<script type="text/javascript">
$(document).ready(function() {
	$("#blogForm2").validate();
});
</script>
