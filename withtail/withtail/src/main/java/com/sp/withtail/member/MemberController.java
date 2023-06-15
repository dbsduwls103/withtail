package com.sp.withtail.member;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("member.memberController")
@RequestMapping("/member/*")
public class MemberController {

	@GetMapping("login")
	public String loginForm(Model model) {
		
		return ".member.login";
	}
}
