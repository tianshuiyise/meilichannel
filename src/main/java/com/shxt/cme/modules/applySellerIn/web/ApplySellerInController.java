package com.shxt.cme.modules.applySellerIn.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/** 
 * @Project:  美丽频道    
 * @author：   ASus
 * @class： ApplySellerInController   
 * @Description:   申請商家入駐
 * @date： 2015-7-16 下午2:47:27 
 * @version： 1.0 
 */
@Controller
@RequestMapping(value = "applySellerIn")
public class ApplySellerInController {
	
	@RequestMapping(value = "preApplySellerIn")
	public String applySellerIn(){
		
		return "/applySellerIn/login";
	}

}
