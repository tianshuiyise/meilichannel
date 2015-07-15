package com.shxt.cme.modules.navigation.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shxt.framework.web.base.BaseController;
import com.shxt.cme.domain.Menu;
import com.shxt.cme.domain.User;
import com.shxt.cme.modules.login.service.LoginService;
import com.shxt.cme.modules.navigation.service.NavigationService;

@Controller
@RequestMapping(value = "nav")
public class NavigationController extends BaseController {
	@Autowired
	private LoginService loginService;
	@Autowired
	private NavigationService navigationService;

	@RequestMapping("left")
	public String list(
			@RequestParam(value = "fc", defaultValue = "0003") String fc,
			Model model, HttpSession session) {

		// 获取当前用户
		User user = getCurrentUser(session);

		if (user == null) {
			return "redirect:/login/preLogin";
		}

		List<Menu> menuList = loginService.findMenuLevel2ByRoleKey(
				user.getUserType(), Integer.parseInt(fc));

		model.addAttribute("navs", menuList);
		
		String str="navigation/left";
		if(user.getUserType()==1){
			str="navigation/left2";
		}
		

		return str;
	}
	@RequestMapping("left2")
	public String list2(@RequestParam(value = "fc", defaultValue = "5001") String fc,Model model, HttpSession session) {

		/*// 获取当前用户
		Experts expert = this.getCurrentExpert(session);

		if (expert == null) {
			return "redirect:/login/preLogin";
		}

		List<Menu> menuList = loginService.findMenuLevel2ByRoleKey(5, Integer.parseInt(fc));

		model.addAttribute("navs", menuList);*/
		
		return "navigation/left2";
	}
	
	@RequestMapping("left3")
	public String list3(
			@RequestParam(value = "fc", defaultValue = "3001") String fc,
			Model model, HttpSession session) {

		// 获取当前用户
		User user = getCurrentUser(session);

		if (user == null) {
			return "redirect:/login/preLogin";
		}

		List<Menu> menuList = loginService.findMenuLevel2ByRoleKey(
				user.getUserType(), Integer.parseInt(fc));

		model.addAttribute("navs", menuList);
		
		return "navigation/left4";
	}
	@RequestMapping("left4")
	public String list4(
			@RequestParam(value = "fc", defaultValue = "3001") String fc,
			Model model, HttpSession session) {

		// 获取当前用户
		User user = getCurrentUser(session);

		if (user == null) {
			return "redirect:/login/preLogin";
		}

		List<Menu> menuList = loginService.findMenuLevel2ByRoleKey(
				user.getUserType(), Integer.parseInt(fc));

		model.addAttribute("navs", menuList);
		
		return "navigation/left5";
	}
	@RequestMapping("left5")
	public String list5(
			@RequestParam(value = "fc", defaultValue = "6001") String fc,
			Model model, HttpSession session) {

		// 获取当前用户
		User user = getCurrentUser(session);

		if (user == null) {
			return "redirect:/login/preLogin";
		}

		List<Menu> menuList = loginService.findMenuLevel2ByRoleKey(
				user.getUserType(), Integer.parseInt(fc));

		model.addAttribute("navs", menuList);
		
		return "navigation/left6";
	}
	/*
	
	//添加
	protected Experts getCurrentExpert(HttpSession session) {
		Experts experts = (Experts)session.getAttribute("user");
		return experts;
	}
	
*/
	public NavigationService getNavigationService() {
		return navigationService;
	}

	public void setNavigationService(NavigationService navigationService) {
		this.navigationService = navigationService;
	}
}
