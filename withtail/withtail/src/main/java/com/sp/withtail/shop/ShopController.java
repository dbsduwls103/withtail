package com.sp.withtail.shop;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("shop.shopController")
@RequestMapping("/shop/*")
public class ShopController {

	@GetMapping("list")
	public String cartForm(Model model) {
		
		return ".shop.list";
	}
}
