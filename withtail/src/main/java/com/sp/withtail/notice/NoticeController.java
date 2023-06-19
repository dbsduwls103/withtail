package com.sp.withtail.notice;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("notice.noticeController")
@RequestMapping("/notice/*")
public class NoticeController {
	@GetMapping("list")
	public String list(Model model) {
		
		return ".notice.list";
	}
	
	@GetMapping("article")
	public String article(Model model) {
		
		return ".notice.article";
	}

}
