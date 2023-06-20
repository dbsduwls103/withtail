package com.sp.withtail.event;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("event.eventController")
@RequestMapping("/event/*")
public class EventController {
	
	@GetMapping("list")
	public String list(Model model) {
		
		return ".event.list";
	}
	
	@GetMapping("article")
	public String article(Model model) {
		
		return ".event.article";
	}
	
	@GetMapping("winner")
	public String winner(Model model) {
		
		return ".event.winner";
	}
}
