package com.sp.withtail.admin.orderManage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("admin.orderManageController")
@RequestMapping("/admin/orderManage/*")
public class OrderManageController {
	
	@RequestMapping(value = "list")
	public String list() throws Exception{
	
		return ".admin.orderManage.list";
	}

}
