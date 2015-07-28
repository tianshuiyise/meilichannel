<%@tag pageEncoding="UTF-8"%>
<%@ attribute name="page" type="org.springframework.data.domain.Page" required="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
int current =  page.getNumber();
int total = page.getTotalPages();
request.setAttribute("current", current);
request.setAttribute("total", total);
%>
<style>
#table2 {
	bottom: 30px;
  	width:50%;
	position: fixed;
	border-collapse: collapse;
	border-spacing: 0;
	margin-left: 23px;
	border-top: 1px solid #858587;
	border-bottom: 1px solid #858587;
}
.right {
	width: 100px;
	float: right;
}
</style>
<table id="table2">
  	<tr>
		<td  valign="middle" height="28" style="text-align:center;">
			<div>【第<span>${current+1}</span>页 / 共<span>${total}</span>页】  【本页<span>${page.numberOfElements}</span>条 / 共<span>${page.totalElements}</span>条】</div>
		</td>
		
		<td width="350" style="padding-top:2px;">
		    <input type="hidden" id="pageHidden" name="page.page" value="${current+1}" >
		    <input type="hidden" id="pageTotalHidden" name="page.totalPages" value="${total}" >
			<div align="center">【<% if (page.hasPreviousPage()){%><a href="#" onclick="pageSummbit(1)" >首页</a><%}else{%>首页<%} %>】
			           【<% if (page.hasPreviousPage()){%><a  href="#" onclick="pageSummbit(${current});">上一页</a><%}else{%>上一页<%} %>】
				【<% if (page.hasNextPage()){%><a  href="#" onclick="pageSummbit(${current+2});">下一页</a><%}else{%>下一页<%} %>】
				【<% if (page.hasNextPage()){%><a  href="#" onclick="pageSummbit(${page.totalPages});" >末页</a><%}else{%>末页<%} %>】
			</div>
		</td>
		<td width="100" valign="middle" style="padding-bottom:1px;">
			<div  class="right" >
				<input class="inputBlue" id="goToPageNumber" name="goToPageNumber" type="text"/>
				<input class="btn2"  name="button" type="button" onclick="goToPageSummbit()" value="GO"/>
			</div>
		</td>
	  </tr>
  </table>
<script type="text/javascript">
<!--
function pageSummbit(goToPageNumber){
	$("#pageHidden").val(goToPageNumber);
	$("#searchForm").submit();
}
function goToPageSummbit(){
    var goToPageNumber = $("#goToPageNumber").val();
    var totalPages = $("#pageTotalHidden").val();
    if(goToPageNumber > totalPages) {
    	$("#pageHidden").val(totalPages);
    } else {
    	$("#pageHidden").val(goToPageNumber);
    }
	$("#searchForm").submit();
}
-->
</script>