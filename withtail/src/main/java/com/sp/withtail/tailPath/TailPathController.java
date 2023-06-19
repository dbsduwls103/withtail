package com.sp.withtail.tailPath;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("tailPath.tailPathController")
@RequestMapping("/tailPath/*")
public class TailPathController {
	
	@RequestMapping(value = "main")
	public String list() throws Exception{
	
		return ".tailPath.main";
	}
	
	@RequestMapping(value = "article")
	public String article() throws Exception{
		
		return ".tailPath.article";
	}
	

}
