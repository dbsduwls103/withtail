package com.sp.withtail.newest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("newest.newestController")
@RequestMapping("/newest/*")
public class NewestController {

	@GetMapping("list")
	public String cartForm(Model model) {
		
		return ".newest.list";
	}
}
