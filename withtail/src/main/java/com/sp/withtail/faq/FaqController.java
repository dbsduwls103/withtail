package com.sp.withtail.faq;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("faq.faqController")
@RequestMapping("/faq/*")
public class FaqController {

	@GetMapping("list")
	public String cartForm(Model model) {
		
		return ".faq.list";
	}
}
