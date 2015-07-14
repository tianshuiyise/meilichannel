<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/common.jsp"%>
<tags:wjs items="calendar.js"></tags:wjs>
<tags:wjs items="back.js"></tags:wjs>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!--导航区 -->
<div class="top">
	<ul>
		<li>修改教师信息</li>
		<p>基本信息>>修改教师信息</p>
	</ul>
</div>

<!-- 列表区 -->
<form id="teacherForm" action="${ctx }/teachers/modify" method="post" enctype="multipart/form-data">
	<input type="hidden" name="userKey" value="${teachers.userKey}">
	<table id="table1">
		<thead>
			<tr id="tr1">
				<td colspan="7">基本信息</td>
			</tr>
		</thead>
		<tbody>
			<tbody>
			<tr>
				<td id="right"><font color="red">*</font>登录名</td>
				<td id="left" colspan="2">
					<input class="txt" type="text" name="userName" value="${teachers.userName}" id="txt_userName"/>
					<input class="txt" type="hidden" name="hid_userName" value="${teachers.userName}" id="hid_userName"/>
				</td>
				<td id="right"><font color="red">*</font>密码</td>
				<td id="left" colspan="2"><input class="txt" type="password" name="password" id="password" value="${teachers.password }"/></td>
				<td width="130px" rowspan="8" align="center">
					<c:choose>
						<c:when test="${not empty teachers.photoFilePath}">
							<img src="${teachers.photoFilePath }" alt="教师照片" width="130px" height="190px"/>
						</c:when>
						<c:otherwise>
							教师照片
						</c:otherwise>
					</c:choose>
				</td>
			</tr>
			<tr>
				<td id="right"><font color="red">*</font>教师姓名</td>
				<td id="left" colspan="2"><input class="txt" type="text" name="userNameCh" id="userNameCh" value="${teachers.userNameCh}"/></td>
				<td id="right"><font color="red">*</font>教师ID</td>
				<td id="left" colspan="2">
					<input class="txt" type="text" name="userID" id="txt_userID" value="${teachers.userID}"/>
					<input class="txt" type="hidden" name="hid_userID" id="hid_userID" value="${teachers.userID}"/>
				</td>
			</tr>
			<tr>
				<td id="right">英文名</td>
				<td id="left" colspan="2"><input class="txt" type="text" name="userNameEn" value="${teachers.userNameEn}" id="userNameEn"/></td>
				<td id="right"><font color="red">*</font>性别</td>
				<td id="left" colspan="2">
					<tags:wselect id="genderCode" key="Gender" name="userGenderCode" value="${teachers.userGenderCode}" />
				</td>
			</tr>
			<tr>
				<td id="right">民族</td>
				<td id="left" colspan="2"><input class="txt" type="text" name="folk" value="${teachers.folk}" id="folk"/></td>
				<td id="right">政治面貌</td>
				<td id="left" colspan="2"><input class="txt" type="text" name="politics" value="${teachers.politics}" id="politics"/></td>
			</tr>
			<tr>
				<td id="right"><font color="red">*</font>出生日期</td>
				<fmt:parseDate value="${teachers.userBirthday}" var="userbirthday" pattern="yyyy-MM-dd"/>
				<td id="left" colspan="2"><input id="txt_userBirthday" class="Wdate" name="userBirthday" value="<fmt:formatDate value="${userbirthday}"/>" type="text" onClick="WdatePicker()"></td>
				<td id="right">身份证号</td>
				<td id="left" colspan="2"><input class="txt" type="text" name="userIDCard" value="${teachers.userIDCard}" id="userIDCard"/></td>
			</tr>
			<tr>
				<td id="right">籍贯</td>
				<td id="left" colspan="2"><input class="txt" type="text" name="native1" value="${teachers.native1}" id="native1"/></td>
				<td id="right">最高学历</td>
				<td id="left" colspan="2">
					<tags:wselect id="education" key="Education" name="education" value="${teachers.education}" />
				</td>
			</tr>
			<tr>
				<td id="right">最后学位</td>
				<td id="left" colspan="2">
					<tags:wselect id="degree" key="Degree" name="degree" value="${teachers.degree}" />
				</td>
				<td id="right">职称</td>
				<td id="left" colspan="2">
					<tags:wselect id="positionTitle" key="PositionTitle" name="positionTitle" value="${teachers.positionTitle}" />
				</td>
			</tr>
			<tr>
				<td id="right"><font color="red">*</font>专业</td>
				<td id="left" colspan="2">
					<select id="search_specialtyKey" name="specialtyNameCh">
						<option value="">--请选择--</option>
						<c:forEach items="${specialtySetList}" var="specialtySet" varStatus="status">
							<option value="${specialtySet.specialtyID}" <c:if test="${specialtySet.specialtyID eq teachers.specialty}">selected="selected"</c:if>>
								${specialtySet.nameCh}
							</option>	
						</c:forEach>
					</select>
				</td>
				<td id="right">毕业学校</td>
				<td id="left" colspan="2"><input class="txt" type="text" name="graduateSchool" value="${teachers.graduateSchool}" id="graduateSchool"/></td>
			</tr>
			<tr>
				<td id="right">院校拼音简写</td>
				<td id="left" colspan="2">
				<input class="txt" type="text" name="shortenName" value="${teachers.shortenName}" id="shortenName"/></td>
				<td id="right" rowspan="4"><font color="red">*</font>教师类型</td>
				<td id="left" colspan="3" rowspan="4">
					<%-- <tags:wselect id="teacherType" key="TeacherType" name="teacherTypeFlgs" value="${param.search_teacherType}" /> --%>
					<tags:wmultipleselect name="teacherTypes" key="TeacherType" value="${teachers.teacherTypeFlgs }"></tags:wmultipleselect>
				</td>
			</tr>
			<tr>
				<td id="right">拓展类别</td>
				<td id="left" colspan="2">
					<select id="search_teacherTypeDef" name="teacherTypeEx">
						<option value="">--请选择--</option>
						<c:forEach items="${teacherTypeDefList}" var="teacherTypeDef" varStatus="status">
							<option value="${teacherTypeDef.itemCode}" <c:if test="${teacherTypeDef.itemCode eq teachers.teacherTypeEx}">selected="selected"</c:if>>
								${teacherTypeDef.itemLabel}
							</option>	
						</c:forEach>
					</select>
				</td>
			</tr>
			
			<tr>
				<td id="right"><font color="red">*</font>来源</td>
				<td id="left" colspan="2">
					<tags:wselect name="originCode" key="TeacherOrigin" value="${teachers.originCode}"></tags:wselect>
				</td>
			</tr>
			
			<tr>
				<td id="right">研究方向</td>
				<td id="left" colspan="2"><input class="txt" type="text" name="researchArea" value="${teachers.researchArea}" id="researchArea"/></td>
			</tr>
			
			<tr>
				<td id="right">上传照片</td>
				<td id="left" colspan="6">
					<input type="file" id="fil_upload" name="myfiles" value="浏览"/>（小于300K）
				</td>
			</tr>
		</tbody>

		<thead>
			<tr id="tr1">
				<td colspan="7" id="left">联系方式及其他</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td id="right">家庭住址</td>
				<td id="left" colspan="2"><input style="width:300px" class="txt" type="text" name="homeAddress" value="${teachers.homeAddress}" id="homeAddress"/></td>
				<td id="right">电子邮件</td>
				<td id="left" colspan="3"><input style="width:200px" class="txt" type="text" name="userEmail" value="${teachers.userEmail}" id="userEmail"/></td>
			</tr>
			<tr>
				<td id="right">家庭电话</td>
				<td id="left" colspan="2"><input class="txt" type="text" name="userHomeTel" value="${teachers.userHomeTel}" id="userHomeTel"/></td>
				<td id="right">办公电话</td>
				<td id="left" colspan="3"><input class="txt" type="text" name="userOfficeTel" value="${teachers.userOfficeTel}" id="userOfficeTel"/></td>
			</tr>
			<tr>
				<td id="right">移动电话</td>
				<td id="left" colspan="2"><input class="txt" type="text" name="userMobile" value="${teachers.userMobile}" id="userMobile"/></td>
				<td id="right">工资号</td>
				<td id="left" colspan="3"><input class="txt" type="text" name="wageCard" value="${teachers.wageCard}" id="wageCard"/></td>
			</tr>
			<tr>
				<td id="right">交行卡号</td>
				<td id="left" colspan="2"><input class="txt" type="text" name="bankCard" value="${teachers.bankCard}" id="bankCard"/></td>
				<td id="right"><font color="red">*</font>是否退休</td>
				<td id="left" colspan="3">
					<select name="retireFlg" value="${teachers.retireFlg}">
						<option value="">--请选择--</option>
						<option value="1" <c:if test="${teachers.retireFlg eq '1'}">selected="selected"</c:if>>是</option>
						<option value="0" <c:if test="${teachers.retireFlg eq '0'}">selected="selected"</c:if>>否</option>
					</select>
				</td>
			</tr>
			<tr>
				<td id="right">退休证编号</td>
				<td id="left" colspan="2"><input class="txt" type="text" name="retireCard" value="${teachers.retireCard}" id="retireCard"/></td>
				<td id="right"><font color="red">*</font>是否论文指导教师</td>
				<td id="left" colspan="3">
					<select name="thesisGuidFlg" value="${teachers.thesisGuidFlg}">
						<option value="">--请选择--</option>
						<option value="1" <c:if test="${teachers.thesisGuidFlg eq '1'}">selected="selected"</c:if>>是</option>
						<option value="0" <c:if test="${teachers.thesisGuidFlg eq '0'}">selected="selected"</c:if>>否</option>
					</select>
				</td>
			</tr>
			<tr>
				<td id="right">教师状态</td>
				<td id="left" colspan="2">
					<tags:wselect name="teacherStatus" key="TeacherStatus" value="${teachers.teacherStatus}"></tags:wselect>
				</td>
				<td id="right">教师聘用状态</td>
				<td id="left" colspan="3">
					<tags:wselect name="hireStatus" key="HireStatus" value="${teachers.hireStatus}"></tags:wselect>
				</td>
			</tr>
			<tr>
				<td id="right">备注</td>
				<td id="left" colspan="2"><textarea rows="3" cols="40" name="userRemark">${teachers.userRemark}</textarea></td>
				<td id="right">个人介绍</td>
				<td id="left" colspan="3"><textarea rows="3" cols="40" name="brief">${teachers.brief}</textarea></td>
			</tr>
		</tbody>
	</table>

<!-- 按钮区  -->
	<div class="content" align="center">
		<span class="add"><input class="btn" type="submit" value="保存" id="btn_submit" /></span>
		<span class="add"><input class="btn" type="button" value="返回" id="btn_back" onclick="back('${ctx}/teachers')"/></span>
		<p>
	</div>
</form>

<!-- 表单校验区 -->
<script type="text/javascript">
$(document).ready(function() {
	//专业名汉字
	jQuery.validator.addMethod("hanzi", function(value, element) {  
	   var tel = /^[\u4e00-\u9fa5]+$/;  
	   return this.optional(element) || (tel.test(value));  
	}, "请输入汉字");
	//专业号字母数字
	jQuery.validator.addMethod("zimushuzi", function(value, element) {
		return this.optional(element) || /^[a-zA-Z0-9]+$/.test(value);
	}, "请输入英文字母和数字");
	//英文字母
	jQuery.validator.addMethod("alnum", function(value, element) {
		return this.optional(element) || /^[a-zA-Z]+$/.test(value);
	}, "请输入英文字母");
	//身份证号码验证
	jQuery.validator.addMethod("idcardno", function(value, element) {
		return this.optional(element) || isIdCardNo(value);
	}, "请正确输入身份证号码");
	//增加身份证验证
	function isIdCardNo(num) {
	    var factorArr = new Array(7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2, 1);
	    var parityBit = new Array("1", "0", "X", "9", "8", "7", "6", "5", "4", "3", "2");
	    var varArray = new Array();
	    var intValue;
	    var lngProduct = 0;
	    var intCheckDigit;
	    var intStrLen = num.length;
	    var idNumber = num;
	    // initialize
	    if ((intStrLen != 15) && (intStrLen != 18)) {
	        return false;
	    }
	    // check and set value
	    for (i = 0; i < intStrLen; i++) {
	        varArray[i] = idNumber.charAt(i);
	        if ((varArray[i] < '0' || varArray[i] > '9') && (i != 17)) {
	            return false;
	        } else if (i < 17) {
	            varArray[i] = varArray[i] * factorArr[i];
	        }
	    }
	    if (intStrLen == 18) {
	        //check date
	        var date8 = idNumber.substring(6, 14);
	        if (isDate8(date8) == false) {
	            return false;
	        }
	        // calculate the sum of the products
	        for (i = 0; i < 17; i++) {
	            lngProduct = lngProduct + varArray[i];
	        }
	        // calculate the check digit
	        intCheckDigit = parityBit[lngProduct % 11];
	        // check last digit
	        if (varArray[17] != intCheckDigit) {
	            return false;
	        }
	    }
	    else {        //length is 15
	        //check date
	        var date6 = idNumber.substring(6, 12);
	        if (isDate6(date6) == false) {
	            return false;
	        }
	    }
	    return true;
	}
	function isDate6(sDate) {
	    if (!/^[0-9]{6}$/.test(sDate)) {
	        return false;
	    }
	    var year, month, day;
	    year = sDate.substring(0, 4);
	    month = sDate.substring(4, 6);
	    if (year < 1700 || year > 2500) return false
	    if (month < 1 || month > 12) return false
	    return true
	}
	
	function isDate8(sDate) {
	    if (!/^[0-9]{8}$/.test(sDate)) {
	        return false;
	    }
	    var year, month, day;
	    year = sDate.substring(0, 4);
	    month = sDate.substring(4, 6);
	    day = sDate.substring(6, 8);
	    var iaMonthDays = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
	    if (year < 1700 || year > 2500) return false
	    if (((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)) iaMonthDays[1] = 29;
	    if (month < 1 || month > 12) return false
	    if (day < 1 || day > iaMonthDays[month - 1]) return false
	    return true
	}
	
	$("#teacherForm").validate({ 
	rules: { 
		userName: { 
			required: true,
			rangelength: [2,15],
			zimushuzi: true,
			remote:{ 
               	url:"${ctx}/teachers/userNameUnique",  
               	type:"post",  
               	dataType:"json",
               	data:{  
                    userName:function(){return $("#txt_userName").val();},
                    hid_userName:function(){return $("#hid_userName").val();}, 
               	}
            }
		}, 
		userNameCh: {
	    	required: true,
	    	hanzi: true,
	    },
	    userNameEn: {
			alnum: true,	    	
	    },
	    userGenderCode: {
	    	required: true,
	    },
	    specialtyNameCh: {
	    	required: true,
	    },
	    teacherTypes: {
	    	required: true,
	    },
	    retireFlg: {
	    	required: true,
	    },
	    thesisGuidFlg: {
	    	required: true,
	    },
	    folk: {
			hanzi: true,	    
	    },
	    politics: {
	    	hanzi: true,
	    },
	    native1: {
	    	hanzi: true,
	    },
	    userIDCard: {
	    	idcardno: true,
	    },
	    shortenName: {
	    	alnum: true,
	    },
	    userEmail: {
	    	email: true,
	    },
	    bankCard: {
	    	number: true,
	    },
	    userBirthday: {
	    	required: true,
	    },
	    password: {
	    	required: true,
	    },
	    userID: {
	    	required: true,
	    	remote:{
	    		url:"${ctx}/teachers/userIDUnique",
	    		type:"post",
                dataType:"json",
	    		data:{  
                      userId:function(){return $("#txt_userID").val();},
                      hid_userID:function(){return $("#hid_userID").val();},
                }
	    	}
	    },
	    originCode: {
	    	required: true,
	    }
	},
	messages: { 
		userName: { 
			required: "请填写登录名",
			rangelength: "登录名为2-15位",
			remote: "该登录名已存在",
		}, 
		userNameCh: {
	    	required: "请填写教师姓名",
	    },
	    userGenderCode: {
	    	required: "请选择性别",
	    },
	    specialtyNameCh: {
	    	required: "请选择专业",
	    },
	    teacherTypes: {
	    	required: "请选择教师类型",
	    },
	    retireFlg: {
	    	required: "未选择",
	    },
	    thesisGuidFlg: {
	    	required: "未选择",
	    },
	    bankCard: {
	    	number: "请输入正确卡号",
	    },
	    userBirthday: {
	    	required: "请填写出生日期",
	    },
	    password: {
	    	required: "请填写密码",
	    },
	    userID: {
	    	required: "请填写教师ID",
	    	remote: "该教师ID已存在",
	    },
	    originCode: {
	    	required: "请选择来源",
	    }
	}
	}); 
	
	//校验上传文件的扩展名和大小
	$("#fil_upload").change(function(){
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