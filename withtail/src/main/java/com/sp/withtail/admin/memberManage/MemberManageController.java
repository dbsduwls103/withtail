package com.sp.withtail.admin.memberManage;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

//관리자 상품 관리
@Controller("admin.memberManageController")
@RequestMapping("/admin/memberManage/*")
public class MemberManageController {
	
	@GetMapping("list")
	public String stuffList(Model model) {
		
		return ".admin.memberManage.list";
	}
	
	/*
	@GetMapping("optionList")
	public String stuffOptionList(Model model) {
		
		return ".admin.stuffManage.optionList";
	}
 
	@GetMapping("write")
	public String stuffWriteForm(Model model) {
		
		return ".admin.stuffManage.write";
	}
	
	@RequestMapping(value = "article")
	public String stuffArticle(Model model) {
		
		return ".admin.stuffManage.article";
	}
	*/

}
