package com.sp.withtail.cart;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("cart.cartController")
@RequestMapping("/cart/*")
public class CartController {

	@GetMapping("cart")
	public String cartForm(Model model) {
		
		return ".cart.cart";
	}
	
	@GetMapping("checkout")
	public String execute() throws Exception {
	
		return ".cart.checkout";
	}
}
