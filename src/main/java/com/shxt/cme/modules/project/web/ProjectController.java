package com.shxt.cme.modules.project.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="project")
public class ProjectController {
	
	
	@RequestMapping("")
	public String unCheckProject(){
		
		return "/project/projectList";
	}
}
