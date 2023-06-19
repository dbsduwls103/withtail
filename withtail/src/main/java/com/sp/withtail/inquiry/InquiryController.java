package com.sp.withtail.inquiry;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("inquiry.inquiryController")
@RequestMapping("/inquiry/*")
public class InquiryController {

	@GetMapping("list")
	public String list(Model model) {
		
		return ".inquiry.list";
	}
	
	@GetMapping("article")
	public String article(Model model) {
		
		return ".inquiry.article";
	}
	
	@GetMapping("write")
	public String writeForm(Model model) {
		
		return ".inquiry.write";
	}
}
