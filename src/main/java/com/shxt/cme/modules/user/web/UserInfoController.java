package com.shxt.cme.modules.user.web;
/** 
 * CopyRright (c)2012-2013:   大连四海兴唐科技有限公司 
 * Project:  nankai                                       
 * Module ID: UserInfo
 * Comments:   用户信息模块的业务流程控制层                           
 * JDK version used:      JDK1.7                              
 * Author：        栾喜员                 
 * Create Date：  2013-7-31 
 * Modified By：                                           
 * Modified Date:                                      
 * Why & What is modified      
 * Version: 1.0                       
 */
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shxt.cme.domain.User;
import com.shxt.cme.modules.login.service.LoginService;
import com.shxt.cme.modules.user.service.UserService;
import com.shxt.framework.utils.DbUtils;
import com.shxt.framework.web.base.BaseController;

@Controller
@RequestMapping(value="userInfo")
public class UserInfoController extends BaseController{

	Logger logger = LoggerFactory.getLogger(UserInfoController.class);
	
	@Autowired
	private UserService userService;
	@Autowired
	private LoginService loginService;
	
	
	
	/**
	* @Description:	判断用户密码是否已经存在 
	* @param response
	* @param user
	* @throws IOException void
	 */
	@RequestMapping(value="passwordExist", method=RequestMethod.POST)
	public void passwordExist(HttpServletResponse response, User user) throws IOException {
		int i = userService.userPasswordExist(user);
		String result = i > 0 ? "true" : "false";
		PrintWriter out = response.getWriter();
		out.print(result);
		out.close();
	}
	
	
	
	/**
	 * @Description:用户浏览
	 * @param user
	 * @param model
	 * @return String
	 */
	@RequestMapping("showUserInfo")
	public String showUserInfo(Model model,User user,HttpSession session){

		
		
		return "test/NewFile";
	}
	/**
	 * @Description:进入修改用户信息界面
	 * @param user
	 * @param model
	 * @return String
	 */
	@RequestMapping("preEditUserInfo")
	public String preEditUserInfo(Model model,User user,HttpSession session){
		User currentUser = getCurrentUser(session);
		currentUser.setPassword( DbUtils.NankaiDecrypt(currentUser.getPassword()));
       
		model.addAttribute("user", currentUser);
		
		return "/user/editUserInfo";
	}
	
	/**
	 * @Description:修改用户信息
	 * @param user
	 * @param model
	 * @return String
	 */
	@RequestMapping("editUserInfo")
	public String editUserInfo(Model model,User user,HttpSession session){
		String message="";
		boolean i=userService.editUserInfo(user);
		if(i==true){
			message="修改成功";
		}else{
			message="修改失败";
		}
		model.addAttribute("message", message);
		User currentUser = loginService.findUserInfo1(user);
		
		session.setAttribute("user", currentUser);
		return "forward:/userInfo/preEditUserInfo";
	}
	
}
