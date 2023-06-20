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
	
	@RequestMapping(value = "boardList")
	public String boardList() throws Exception{
		
		return ".tailPath.boardList";
	}
	
	@RequestMapping(value = "boardArticle")
	public String boardArticle() throws Exception{
		
		return ".tailPath.boardArticle";
	}
	
	@RequestMapping(value = "boardWrite")
	public String boardWriteForm() throws Exception{
		
		return ".tailPath.boardWrite";
	}
	

}
