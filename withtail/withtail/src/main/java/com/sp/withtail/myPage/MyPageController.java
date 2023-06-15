package com.sp.withtail.myPage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/myPage/*")
public class MyPageController { 
    @GetMapping("myPage")
    public String main() {  
        return ".myPage.myPage";
    }
    
    @GetMapping("favorite")
	public String execute() throws Exception {
	
		return ".myPage.favorite";
	}
}