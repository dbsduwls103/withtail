package com.sp.withtail.admin.stuffManage;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

//관리자 상품 관리
@Controller("admin.stuffManageController")
@RequestMapping("/admin/stuffManage/*")
public class StuffManageController {
	
	@GetMapping("list")
	public String stuffList(Model model) {
		
		return ".admin.stuffManage.list";
	}
 
	@GetMapping("write")
	public String stuffArticle(Model model) {
		
		return ".admin.stuffManage.article";
	}
	
	@GetMapping("article")
	public String stuffWrite(Model model) {
		
		return ".admin.stuffManage.write";
	}

}
