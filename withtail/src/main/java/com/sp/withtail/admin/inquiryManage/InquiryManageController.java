package com.sp.withtail.admin.inquiryManage;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

//인콰이어리(1:1 문의)
@Controller("admin.inquiryManageController")
@RequestMapping("/admin/inquiryManage/*")
public class InquiryManageController {
	
	@GetMapping("list")
	public String inquiryList(Model model) {
		
		return ".admin.inquiryManage.list";
	}
 
	@GetMapping("article")
	public String inquiryArticle(Model model) {
		
		return ".admin.inquiryManage.article";
	}
	

}
