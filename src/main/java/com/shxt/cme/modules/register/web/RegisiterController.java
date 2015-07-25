package com.shxt.cme.modules.register.web;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cloopen.rest.sdk.CCPRestSmsSDK;

/** 
 * @Project:  美丽频道    
 * @author：   ASus
 * @class： RegisiterController   
 * @Description:   註冊
 * @date： 2015-7-16 下午2:16:51 
 * @version： 1.0 
 */
@Controller
@RequestMapping(value = "register")
public class RegisiterController {
	
	@RequestMapping(value = "preRegisterByPhone")
	public String registerByPhone(){
		System.out.println("短信验证ajax被调用");
		return "/register/registerByPhone";
	}
	@RequestMapping(value = "msgGet")
	@ResponseBody
	public String msgGet(String phoneNum,HttpSession session){
		Map<String, Object> modelMap =msgCheckUtils(phoneNum,session);
		if(session.getAttribute(phoneNum)==null||session.getAttribute(phoneNum)==""){
			return "号码不正确";
		}
		else{
		int checkNum= (Integer) session.getAttribute(phoneNum);//需健壮性判断
		String checkString=String.valueOf(checkNum);
		System.out.println("验证码为=="+checkNum);
		System.out.println(modelMap.get("statusMsg")+"短信验证ajax被调用");
		return checkString;
		}
	}
	@RequestMapping(value = "msgCheck")
	@ResponseBody
	public String msgCheck(String phoneNum,HttpSession session,String checkNum){
		System.out.println("msgCheck方法中checkNum=="+session.getAttribute(phoneNum));
		System.out.println("从前台传过来的checkNum=="+checkNum);
		if(checkNum==null||checkNum==""){
			System.out.println("进入空校验");
			session.setAttribute("checkedInfo", "1");
			return "验证码不能为空";
		}
		else if(session.getAttribute(phoneNum)==null||session.getAttribute(phoneNum)==""){
			session.setAttribute("checkedInfo", "1");
			System.out.println("进入空校验");
			return "验证码错误";
		}
		else if(session.getAttribute(phoneNum).toString().equals(checkNum)){
			session.setAttribute("checkedInfo", "2");
			return "验证码正确";
		}else{
			session.setAttribute("checkedInfo", "1");
			return "验证码错误，请重试";
		}
		
	}
	public HashMap<String, Object>  msgCheckUtils(String phoneNum,
			HttpSession session){

		HashMap<String, Object> result = null;

		//初始化SDK
		CCPRestSmsSDK restAPI = new CCPRestSmsSDK();
		
		//******************************注释*********************************************
		//*初始化服务器地址和端口                                                       *
		//*沙盒环境（用于应用开发调试）：restAPI.init("sandboxapp.cloopen.com", "8883");*
		//*生产环境（用户应用上线使用）：restAPI.init("app.cloopen.com", "8883");       *
		//*******************************************************************************
		restAPI.init("sandboxapp.cloopen.com", "8883");
		
		//******************************注释*********************************************
		//*初始化主帐号和主帐号令牌,对应官网开发者主账号下的ACCOUNT SID和AUTH TOKEN     *
		//*ACOUNT SID和AUTH TOKEN在登陆官网后，在“应用-管理控制台”中查看开发者主账号获取*
		//*参数顺序：第一个参数是ACOUNT SID，第二个参数是AUTH TOKEN。                   *
		//*******************************************************************************
		restAPI.setAccount("8a48b5514d232afc014d2738ab5b02ae", "e0c7b2437c5c41a2bd88ed7ace503771");
		
		
		//******************************注释*********************************************
		//*初始化应用ID                                                                 *
		//*测试开发可使用“测试Demo”的APP ID，正式上线需要使用自己创建的应用的App ID     *
		//*应用ID的获取：登陆官网，在“应用-应用列表”，点击应用名称，看应用详情获取APP ID*
		//*******************************************************************************
		restAPI.setAppId("8a48b5514d232afc014d27396f0302b2");
		
		
		//******************************注释****************************************************************
		//*调用发送模板短信的接口发送短信                                                                  *
		//*参数顺序说明：                                                                                  *
		//*第一个参数:是要发送的手机号码，可以用逗号分隔，一次最多支持100个手机号                          *
		//*第二个参数:是模板ID，在平台上创建的短信模板的ID值；测试的时候可以使用系统的默认模板，id为1。    *
		//*系统默认模板的内容为“【云通讯】您使用的是云通讯短信模板，您的验证码是{1}，请于{2}分钟内正确输入”*
		//*第三个参数是要替换的内容数组。																														       *
		//**************************************************************************************************
		
		//**************************************举例说明***********************************************************************
		//*假设您用测试Demo的APP ID，则需使用默认模板ID 1，发送手机号是13800000000，传入参数为6532和5，则调用方式为           *
		//*result = restAPI.sendTemplateSMS("13800000000","1" ,new String[]{"6532","5"});																		  *
		//*则13800000000手机号收到的短信内容是：【云通讯】您使用的是云通讯短信模板，您的验证码是6532，请于5分钟内正确输入     *
		//*********************************************************************************************************************
		int checkNum=(int) (Math.random()*9000+1000);
		String[] checkMsg=new String[]{""+checkNum,"5"};
		
		result = restAPI.sendTemplateSMS(phoneNum,"1" ,checkMsg);
		System.out.println("SDKTestGetSubAccounts result=" + result);
		if("000000".equals(result.get("statusCode"))){
			session.setAttribute(phoneNum, checkNum);
			System.out.println("statusCode=000000");
			//正常返回输出data包体信息（map）
			HashMap<String, Object> hashMap = (HashMap<String, Object>) result.get("data");
			HashMap<String,Object> data = hashMap;
			Set<String> keySet = data.keySet();
			for(String key:keySet){
				Object object = data.get(key);
				System.out.println(key +" = "+object);
			}
		}else{
			//异常返回输出错误码和错误信息
			System.out.println("错误码=" + result.get("statusCode") +" 错误信息= "+result.get("statusMsg"));
		}
		return result;
	}
}
