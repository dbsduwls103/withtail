package com.sp.withtail.inquiry;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

//인콰이어리(1:1 문의)
@Controller("admin.inquiryManageController")
@RequestMapping("/admin/inquiryManage/*")
public class InquiryController {
	
	@GetMapping("list")
	public String inquiryList(Model model) {
		
		return ".admin.inquiryManage.list";
	}

}
