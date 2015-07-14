<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<tags:wjs items="back.js"></tags:wjs>
<tags:wjs items="checkbox.js"></tags:wjs>
<tags:wcss items="message.css"></tags:wcss>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
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
		/* $("#send").click(function(){  
			var str="";  
			$("#select2 option").each(function(){ 
				str+=$(this).val()+",";//接收显示所选复选框的内容  
			});  
			var a=document.createElement("input");
			a.
			
			//window.location.href="/nankai/setInputBatch/setInputBatchId?belongBatchIDs="+str;
      	}); */  
      	
      	
      	
	}); 
	function zxy() {

		var projectType1 = $("#projectType1").val();
		var obj = document.getElementById("txt_secondSubject1");
		jQuery.ajax({
			type : 'GET',
			contentType : 'application/json',
			url : '${ctx}/trainingDeclare/getSecondSubject?myCol2='
					+ projectType1,
			dataType : 'json',
			success : function(data) {
				obj.options.length = 0;
				obj.options.add(new Option("--二级学科--", ""));
				$.each(data.Subjects1, function(i, item) {
					obj.options.add(new Option(item.subjectName,
							item.subjectKey)); //这个兼容IE与firefox 

				});

			}
		});

	}
	
	// 获取已选学科 
	
	function setInputBatch(){
      		var str="";  
      		var myGet = document.getElementById("pxb");
      		var myGet1 = document.getElementById("lsxm");
      		var myGet2 = document.getElementById("xshd");
      		var myGet3 = document.getElementById("count");
			$("#select2 option").each(function(){ 
				
				str+=$(this).val()+",";//接收显示所选复选框的内容  
			});  
			if(str==""){
				return;
			}
			jQuery
			.ajax({
				type : 'GET',
				contentType : 'application/json',
				url : '${ctx}/expertChooseUI/ObtainSum?str='
						+ str,
				dataType : 'json',
				success : function(data) {
				  
					myGet.innerHTML =data.training;
					myGet1.innerHTML =data.temporaryDeclare;
					myGet2.innerHTML=data.AcademicActivities;
					myGet3.innerHTML=parseInt(data.AcademicActivities)+parseInt(data.temporaryDeclare)+parseInt(data.training);
				}
			});
      	}
	
	function setInputBatch2(url,expertKey){
  		var str="";  
		$("#select2 option").each(function(){ 
			str+=$(this).val()+",";//接收显示所选复选框的内容  
		});  
		
		window.location.href=url+"?str="+str+"&expertKey="+expertKey;
  	}
	
	
	function change() {
		var secondSubject = $("#txt_secondSubject1").val();
		var obj = document.getElementById('select1');
		jQuery
				.ajax({
					type : 'GET',
					contentType : 'application/json',
					url : '${ctx}/trainingDeclare/getThirdSubject?myCol='
							+ secondSubject,
					dataType : 'json',
					success : function(data) {
						obj.options.length = 0;
						$.each(data.Subjects, function(i, item) {
							obj.options.add(new Option(item.subjectName,
									item.subjectKey)); //这个兼容IE与firefox 

						});

					}
				});
	}
</script>

<style type="text/css">  
	.select1{width:300px;height:250px;padding:5px;}  
	.multyselect_content{float:left;text-align:center;margin-right:10px;}  
	.multy_arrow{width:30px; height:30px;}
	#add,#remove{cursor:pointer;}
</style> 

<!--导航区 -->
<div class="top">
	<ul>
		<li>选择专家学科</li>
		<p>专家管理>>选择专家学科</p>
	</ul>
</div>
<c:import url="/WEB-INF/include/message.jsp"></c:import>
<!-- 检索条件 -->
<form id="searchForm" action="${ctx }/expertChooseUI/setSubject">
<div style="font-size: 15px"> <strong>专家名称 ：${expert.expertName}<strong></div><br> 对应学科 ：<select id="projectType1" name="projectType1"
					onchange="zxy()">
						<option selected="selected" value="2">请选择</option>
						<option value="0">中医</option>
						<option value="1">西医</option>
				</select>
<select id="txt_secondSubject1"
				name="secondSubject" onchange="change()">
					<option value="">--二级学科--</option>
					<c:forEach items="${secondSubject}" var="subject"
						varStatus="status">
						<option value="${subject.subjectKey}">
							${subject.subjectName}</option>
					</c:forEach>
</select>

<table>		
		<tr>
			<th align="center">可选的学科</th>
			<th></th>
			<th align="center">已选的学科</th>
		    <th align="center">项目总数显示<input type="button" onclick="setInputBatch()" value="获取"></th>
		</tr>
	
	
		<tr>
			<td align="center">
			<select id="select1"
				name="hostSecondPlace" class="select1" multiple="multiple">
					<option value="">--三级学科--</option>

			</select>
			
		<!--
			    <select multiple="multiple" id="select1"  class="select1">
			   
					<c:forEach items="${belongExamBatchList}" var="examBatch" varStatus="status">
						<option value="${examBatch.belongBatchID}" >
							${examBatch.belongBatchName}
						</option>	
					</c:forEach>
				
				</select>
					-->
			</td>
			
			<td align="center">
				<div id="add"><img class="multy_arrow" src="${ctx}/static/default/images/right_arrow.jpg" alt="选中右移"></div>  
			 	<br><br><br><br>
			    <div id="remove"><img class="multy_arrow" src="${ctx}/static/default/images/left_arrow.jpg" alt="选中左移"></div>
			</td>
			<td align="center">
				<select multiple="multiple" id="select2" class="select1" onformchange="selectedSubjects()" > 
				
					<c:forEach items="${existingAdvices}" var="inputBatch" varStatus="status">
						<option selected="selected">
							${inputBatch}
						</option>	
					</c:forEach>
				 
    			</select>
			</td>
			  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;学术活动：<span id="xshd"></span><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;培训班：<span id="pxb"></span><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;临时活动：<span id="lsxm"></span><br><br><br>
			  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;合计：<span id="count"></span><br><br><br></td>
	         
	    </tr>
	  
		
	    
</table>
<br><br>
	<div class="content" align="center">
		<span class="add"><input type="button" id="send" value="提交" onclick="setInputBatch2('${ctx }/expertChooseUI/setSubject','${expert.expertKey}')" /> </span>
		<span class="add"><input type="button" value="返回" id="btn" 	onclick="back('${ctx}/Experts/Qlist')" /></span>
	</div>
</form>

