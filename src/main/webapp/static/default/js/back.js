/**
 *	返回功能调用的方法（没有参数） 
 * @param controllerUrl
 */
function back(controllerUrl) {
	window.location.href=controllerUrl;
}

/**
 * 	返回功能调用的方法（带有主键key）
 * @param controllerUrl
 * @param key
 */
function back(controllerUrl, key) {
	window.location.href=controllerUrl+"?key="+key;
}