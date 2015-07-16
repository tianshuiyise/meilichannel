package com.shxt.cme.modules.register.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
		
		
		return "/register/registerByPhone";
	}

}
