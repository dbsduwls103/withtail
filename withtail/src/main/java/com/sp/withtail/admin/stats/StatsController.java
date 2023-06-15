package com.sp.withtail.admin.stats;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("admin.statsController")
@RequestMapping("/admin/stats/*")
public class StatsController {
	
	@RequestMapping(value = "customerList")
	public String customerList() throws Exception{
		
		return ".admin.stats.customerList";
	}
	
	@RequestMapping(value = "shoppingList")
	public String shoppingList() throws Exception{
		
		return ".admin.stats.shoppingList";
	}

}
