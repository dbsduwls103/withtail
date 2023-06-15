package com.sp.withtail.hotdeal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("hotdeal.hotDealController")
@RequestMapping("/hotdeal/*")
public class HotDealController {

	@GetMapping("list")
	public String list(Model model) {
		
		return ".hotdeal.list";
	}
}
