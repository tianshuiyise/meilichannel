$(function(document) {
	//找到表格中的偶数行，设置其背景色
	$("#table1 tr:even").css("background", "#f2f2f2");
	//表头，设置其背景色
	$("#tr1").css("background", "#d8d8d8");
});
	
/**
 * 点击全选复选框触发的方法
 */
function allCheck(){
    var obj=document.getElementsByName("chk_sub_checkBox");
    if(document.getElementById("chk_all").checked==true){
        for(var i=0;i<obj.length;i++){
            obj[i].checked=true;
        }
    }else{
        for(var i=0;i<obj.length;i++){
            obj[i].checked=false;
        }
    }
}
/**
 * 判断全选复选框是否勾选
 */
function checkT_F(){
    var obj=document.getElementsByName("chk_sub_checkBox");
    var j=0;
    for(var i=0;i<obj.length;i++){
        if(obj[i].checked==true){    //并且为选中
            j++;
        }
    }
    if(j==obj.length){    //如果复选框选中的数量等于（复选框总和减去全选这个选框的数量）
        document.getElementById("chk_all").checked=true; //全选被激活
    }else{
        document.getElementById("chk_all").checked=false;    //取消全选
    }
}

/**
 * 批量操作进行的提示消息
 * @param confirmMessage：confirm对话框的提示信息
 * @param controllerUrl：对应controller里面的方法
 * @returns {Boolean}
 */
function batchDelete(confirmMessage, controllerUrl) {
	var alertMessage = "您没有勾选要操作的记录，请先勾选！";
	//判断是否勾选复选框，如果没有勾选，提示alertMessage的信息
	var obj = document.getElementsByName("chk_sub_checkBox");
	var j = 0;
	for(var i=0;i<obj.length;i++) {
		if(obj[i].checked==true) {
			j ++;
			break;
		}
	}
	if(j < 1) {
		alert(alertMessage);
		return false;
	}
	//批量操作的提示信息，提示confirmMessage的对应的信息，例如“确认删除该XXX信息吗？”
	if(confirm(confirmMessage)) {
		var specialKeys=document.getElementsByName("chk_sub_checkBox");
		var keyString = "?keys=";
	    for(var i=0;i<specialKeys.length;i++){
	    	if(specialKeys[i].checked && specialKeys[i].value != ""){
	    		keyString+=specialKeys[i].value+=",";
	    	}
	    }
	    //controller对应的url加上传过去多条记录的主键keys
	    var url = controllerUrl+keyString;
	    window.location.href=url;
	} else {
		return false;
	}
}

/**
 * @param confirmMessage	confirm对话框的提示信息
 * @param controllerUrl	对应controller里面的方法
 * @param param			传给controller的参数
 * @returns {Boolean}
 */
function batchDelete(confirmMessage, controllerUrl, param) {
	var alertMessage = "您没有勾选要操作的记录，请先勾选！";
	//判断是否勾选复选框，如果没有勾选，提示alertMessage的信息
	var obj = document.getElementsByName("chk_sub_checkBox");
	var j = 0;
	for(var i=0;i<obj.length;i++) {
		if(obj[i].checked==true) {
			j ++;
			break;
		}
	}
	if(j < 1) {
		alert(alertMessage);
		return false;
	}
	//批量操作的提示信息，提示confirmMessage的对应的信息，例如“确认删除该XXX信息吗？”
	if(confirm(confirmMessage)) {
		var specialKeys=document.getElementsByName("chk_sub_checkBox");
		var keyString = "?keys=";
	    for(var i=0;i<specialKeys.length;i++){
	    	if(specialKeys[i].checked && specialKeys[i].value != ""){
	    		keyString+=specialKeys[i].value+=",";
	    	}
	    }
	    //controller对应的url加上传过去多条记录的主键keys
	    var url = controllerUrl+keyString+"&param="+param;
	    window.location.href=url;
	} else {
		return false;
	}
}

/**
 * 删除单条数据时触发该方法
 * @param confirmMessage	confirm对话框提示的信息
 * @param controllerUrl	对应controller的url
 * @param key	单条记录的主键key
 * @returns {Boolean}
 */
function singleDelete(confirmMessage, controllerUrl, key) {
	if(confirm(confirmMessage)) {
		window.location.href=controllerUrl+"?key="+key;
	} else {
		return false;
	}
}
/**
 * 审批单条数据时触发该方法
 * @param confirmMessage	confirm对话框提示的信息
 * @param controllerUrl	对应controller的url
 * @param key	单条记录的主键key
 * @returns {Boolean}
 */
function singleCheck(confirmMessage, controllerUrl, key) {
	if(confirm(confirmMessage)) {
		window.location.href=controllerUrl+"/"+key;
	} else {
		return false;
	}
}
/**
 * 对单条记录进行修改
 * @param controllerUrl controller对应的url
 * @param key
 */
function modify(controllerUrl, key) {
	window.location.href=controllerUrl+"/"+key;
}

/**
 * 添加功能调用的方法
 * @param controllerUrl	controller对应的url
 */
function add(controllerUrl) {
	window.location.href=controllerUrl;
}

/**
 * 导出选中的记录
 * @param controllerUrl
 * @returns {Boolean}
 */
function exportToExcel(controllerUrl) {
	var alertMessage = "您没有勾选要操作的记录，请先勾选！";
	//判断是否勾选复选框，如果没有勾选，提示alertMessage的信息
	var obj = document.getElementsByName("chk_sub_checkBox");
	var j = 0;
	for(var i=0;i<obj.length;i++) {
		if(obj[i].checked==true) {
			j ++;
			break;
		}
	}
	if(j < 1) {
		alert(alertMessage);
		return false;
	}
	//批量操作的提示信息，提示confirmMessage的对应的信息，例如“确认删除该XXX信息吗？”
	var specialKeys=document.getElementsByName("chk_sub_checkBox");
	var keyString = "?keys=";
    for(var i=0;i<specialKeys.length;i++){
    	if(specialKeys[i].checked){
    		keyString+=specialKeys[i].value+=",";
    	}
    }
    //controller对应的url加上传过去多条记录的主键keys
    var url = controllerUrl+keyString;
    window.location.href=url;
}
