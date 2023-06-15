package com.sp.withtail.admin.noticeManage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("admin.noticeManageController")
@RequestMapping("/admin/noticeManage/*")
public class NoticeManageController {
	
	
	@RequestMapping(value = "list")
	public String list() throws Exception{
		
		return ".admin.noticeManage.list";
	}
	
}
