package com.shxt.cme.modules;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/** 
 * @Project:  美丽频道    
 * @author：   ASus
 * @class： TestController   
 * @Description:   类描述  TODO
 * @date： 2015-7-15 下午6:08:24 
 * @version： 1.0 
 */
@Controller
@RequestMapping(value = "test")
public class TestController {

	@RequestMapping("")
	public String test(){
		return "test/NewFile";
		
	}
}
