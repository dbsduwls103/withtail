package com.sp.withtail.tailPath;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller("tailPath.tailPathController")
@RequestMapping("/tailPath/*")
public class TailPathController {
	
	@RequestMapping(value = "main")
	public String list() throws Exception{
	
		return ".tailPath.main";
	}
	
	@RequestMapping(value = "article")
	public String article(Model model, @RequestParam Map<String, String> paramMap) throws Exception{
		
		 model.addAttribute("item", paramMap);
		 
		
		return ".tailPath.article";
	}
	
	@RequestMapping(value = "boardList")
	public String boardList() throws Exception{
		
		return ".tailPath.boardList";
	}
	
	

}
