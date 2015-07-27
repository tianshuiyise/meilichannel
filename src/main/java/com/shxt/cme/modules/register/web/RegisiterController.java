package com.shxt.cme.modules.register.web;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cloopen.rest.sdk.CCPRestSmsSDK;
import com.shxt.cme.domain.User;
import com.shxt.cme.modules.register.service.RegisterService;

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
	@Autowired
	RegisterService registerService;
	
	@RequestMapping(value = "preRegisterByPhone")
	public String registerByPhone(){
		return "/register/registerByPhone";
	}
	@RequestMapping(value = "msgGet")
	@ResponseBody
	public String msgGet(Model model,String phoneNum,HttpSession session){
		System.out.println("msgGet方法被调用");
		Map<String, Object> modelMap =MsgUtils.msgCheckUtils(phoneNum,session);
		
		if(session.getAttribute(phoneNum)==null||session.getAttribute(phoneNum)==""){
			return "号码不正确";
		}
		else{
		int checkNum= (Integer) session.getAttribute(phoneNum);//需健壮性判断
		String checkString=String.valueOf(checkNum);
		System.out.println("验证码为=="+checkNum);
		System.out.println(modelMap.get("statusMsg")+"短信验证ajax被调用");
		session.setAttribute(session.getId(), phoneNum);
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
			return "验证码错误";
		}
		
	}
	@RequestMapping(value = "toUserNameReg")
	public String toUserNameReg(Model model,HttpSession session,String username){
		String phoneNum="";
		return "/register/registerUsername";
	}
	@RequestMapping(value = "usernameCheck")
	@ResponseBody
	public String usernameCheck(HttpSession session,String username){
		System.out.println("usernamecheck被调用");
		String checkResult=registerService.usernameCheck(username);
		return checkResult;
	}
	@RequestMapping(value = "userRegist")
	public String userRegist(Model model,HttpSession session,String username,User user){
		System.out.println("session中获得的电话号"+session.getAttribute(session.getId()));
		String phone=(String) session.getAttribute(session.getId());
		System.out.println("前台获取的用户名="+user.getUserName());
		user.setPhone(phone);
		System.out.println("userRegist被调用");
		int checkResult=registerService.userRegist(user);
		if(checkResult!=0){
			System.out.println("/login/preLogin");
			return "redirect:/login/preLogin";
		}
		else{
			System.out.println("/register/registerUsername");
			return "redirect:/register/registerUsername";
		}
	}
}
