<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<tags:wjs items="checkbox.js"></tags:wjs>
<tags:wcss items="message.css"></tags:wcss>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!--考试批次管理js -->
<script type="text/javascript">
function test(){
	var a=document.getElementById("a");
	var b=document.getElementById("b");
	if(a.checked){
		//a选上了
		$('#search_belongBatchName').attr('disabled',false);
	}else{
		//a没有选上
		$('#search_belongBatchName').attr('disabled',true);
	}
	if(b.checked){
		//b选上了
		$('#txt_belongBatchName').attr('disabled',false);
		$('#txt_belongBatchID').attr('disabled',false);
	}else{
		//b没有选上
		$('#txt_belongBatchName').attr('disabled',true);
		$('#txt_belongBatchID').attr('disabled',true);
	}
	
}

</script>
<!--导航区 -->
<div class="top">
	<ul>
		<li>考试批次定义</li>
		<p>查询与统计>>考试批次定义</p>
	</ul>
</div>
<!-- 检索条件 -->
<form id="searchForm" action="${ctx }/examBatchDefine/add">
<input type="hidden" value="${examBatch.examBatchKeys }"  name="keys" />
<!-- 列表区 -->
	<table>
	<tr>
		<td  rowspan="2">
			<input type = "radio" name = selection   id='a' onclick="test()" checked/>
			选择已有批次
		</td>
	</tr>
	<tr>
		<td>批次名称</td>
		<td>
			<select id="search_belongBatchName" name="belongBatchNameHad" >
				<c:forEach items="${examBatchs}" var="examBatch" varStatus="status">
					<option value="${examBatch.belongBatchName}"> 
						${examBatch.belongBatchName}
					</option>	
				</c:forEach>
			</select>	
		</td>
	</tr>
	<tr>
		<td rowspan="2">
			<input type = "radio" name = selection  id='b' onclick="test()"/>新建所属批次
		</td>
	</tr>
	<tr>
		<td >批次名称</td>
		<td>
			<input type="text" id="txt_belongBatchName"  disabled="disabled" name="belongBatchName"  value="${examBatch.belongBatchName }"/>
		</td>
		<td >批次编号</td>
		<td>
			<input type="text" id="txt_belongBatchID"  disabled="disabled" name="belongBatchID" value="${examBatch.belongBatchID}"/>
		</td>
	</tr>
	</table>

	<!-- 按钮区  -->
	<div class="content" align="center">
		<span class="add">
			<input class="btn" type="submit" value="确定" id="" />
		</span> 
		<span class="add">
			<input class="btn" type="button" value="取消" id=""  onclick="add('${ctx}/examBatchDefine')" />
		</span> 
		<p>
	</div>
</form>
<!-- 表单校验区 -->
<script type="text/javascript">
	jQuery.validator.addMethod("positiveFloat", function(value, element) {
		var positiveVal = /^[0-9].*$/;
		return this.optional(element) || (positiveVal.test(value));
	}, "请输入正数");
	$("#searchForm").validate({ 
			rules:{ 
				belongBatchName: {
					required: true, 
					remote:{ //自带远程验证存在的方法
			            url:"${ctx}/examBatchDefine/ajaxConfim",  
			            type:"post",  
			            dataType:"json",  
			            data:{  
			            	workItemName:function(){return $("#txt_belongBatchName").val();}  
			           		 } 
		         		}  
					},
					belongBatchID: {
						positiveFloat:true,
						rangelength:[1,10],
						required: true, 
						remote:{ //自带远程验证存在的方法
				            url:"${ctx}/examBatchDefine/ajaxConfimID",  
				            type:"post",  
				            dataType:"json",  
				            data:{  
				            	workItemName:function(){return $("#txt_belongBatchID").val();}  
				           		 } 
			         		}  
						}
				},
			
			messages: { 
				belongBatchName: {
					required: "请填写批次名称", 
					remote: "该批次名称已存在",
						},
				belongBatchID: {
					required: "请填写批次编号", 
					remote: "该批次编号已存在",
						},
			}
	});
</script>
