package com.shxt.cme.modules.user.web;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shxt.framework.web.Servlets;
import com.shxt.framework.web.base.BaseController;

import com.shxt.cme.domain.User;
import com.shxt.cme.modules.login.service.LoginService;
import com.shxt.cme.modules.user.service.UserService;

@Controller
@RequestMapping(value="user")
public class UserController extends BaseController{

	Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	private UserService userService;
	@Autowired
	private LoginService loginService;
	
	
	
	
	
	/**
	* @Description:删除用户单条数据 
	* @param model	模型实例
	* @param key	用户标识
	* @return String	页面url
	 */
	@RequestMapping("deleteSingle")
	public String deleteSingle(Model model, String key,HttpSession session){
		logger.info("controller:the method modifyUser invoked");
		User currentUser = getCurrentUser(session);
		userService.deleteSingle(key,currentUser);
		model.addAttribute("message", DELETE_SUCCEED);
		return "forward:/user";
	}
	
	
	
	
	
	
	
}
