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
    
    @GetMapping("orders")
	public String execute1() throws Exception {
	
		return ".myPage.orders";
	}
    
    @GetMapping("orderDetail")
	public String execute2() throws Exception {
	
		return ".myPage.orderDetail";
	}
    
    @GetMapping("pet")
	public String execute3() throws Exception {
	
		return ".myPage.pet";
	}
    
    @GetMapping("profile")
	public String execute4() throws Exception {
	
		return ".myPage.profile";
	}
    
    @GetMapping("unregister")
   	public String execute5() throws Exception {
   	
   		return ".myPage.unregister";
   	}
    
    @GetMapping("storecredit")
   	public String execute6() throws Exception {
   	
   		return ".myPage.storecredit";
   	}
    
    @GetMapping("coupon")
   	public String execute7() throws Exception {
   	
   		return ".myPage.coupon";
   	}
    
    
  
}