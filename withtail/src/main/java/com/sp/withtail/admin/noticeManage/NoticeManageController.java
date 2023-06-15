package com.sp.withtail.admin.noticeManage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("admin.noticeManageController")
@RequestMapping("/admin/noticeManage/*")
public class NoticeManageController {
	
	
	@RequestMapping(value = "list")
	public String list() throws Exception{
		
		return ".admin.noticeManage.list";
	}
	
	@GetMapping("write")
	public String writeForm()throws Exception {
		
		return ".admin.noticeManage.write";
	}
	
}
