package com.sp.withtail.admin.reviewManage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("admin.reviewManageController")
@RequestMapping("/admin/reviewManage/*")
public class ReviewManageController {

	@RequestMapping(value = "list")
	public String list() throws Exception{
		
		return ".admin.reviewManage.list";
	}
}
