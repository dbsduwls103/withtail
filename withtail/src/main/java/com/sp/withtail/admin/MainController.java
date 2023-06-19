package com.sp.withtail.admin;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller("admin.mainController")
public class MainController {
	 
	@RequestMapping(value="/admin", method=RequestMethod.GET)
	public String method() {
		return ".adminLayout";
	}
	
	@RequestMapping(value="/admin/chart1")
	@ResponseBody
	public Map<String, Object> chart1() throws Exception {
		Map<String, Object> model = new HashMap<>();
		
		
		return model;
	}
	
	@RequestMapping(value="/admin/chart2")
	@ResponseBody
	public Map<String, Object> chart2() throws Exception {
		Map<String, Object> model = new HashMap<>();
		
		
		return model;
	}
	
}
