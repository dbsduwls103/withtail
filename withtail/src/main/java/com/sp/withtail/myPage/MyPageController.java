package com.sp.withtail.myPage;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sp.withtail.member.SessionInfo;

@Controller
@RequestMapping("/myPage/*")
public class MyPageController { 
	@Autowired
	private MyPageService service;
	
    @RequestMapping(value = "myPage")
    public String list(MyPage dto, HttpSession session, 
    					Model model) throws Exception {  
    	SessionInfo info = (SessionInfo) session.getAttribute("member");
    	int dataCount;
    	int addDataCount;
    	
    	dto.setUserId(info.getUserId());
		dataCount = service.dataCount(info.getUserId());
		addDataCount = service.addDataCount(info.getUserId());
		
		List<MyPage> list = service.listMyPages(dto);
		List<MyPage> list1 = service.listDelivery(dto);
    		
		MyPage dto1 = list1.get(0);
		
		model.addAttribute("list1", list1);
    	model.addAttribute("list", list);
    	model.addAttribute("addDataCount", addDataCount);
    	model.addAttribute("dataCount", dataCount);
    	model.addAttribute("dto1", dto1);
    	
        return ".myPage.myPage";
    }
    
    @GetMapping("favorite")
	public String execute() throws Exception {
	
		return ".myPage.favorite";
	}
    
    @GetMapping("orders")
	public String orders() throws Exception {
	
		return ".myPage.orders";
	}
    
    @GetMapping("orderDetail")
	public String execute2() throws Exception {
	
		return ".myPage.orderDetail";
	}
    
    @GetMapping("pet")
	public String pet(@RequestParam long num, 
			Model model) throws Exception {
    	    	 	
    	MyPage dto = service.readPet(num);
 
    	// LocalDate today = LocalDate.now();
        // LocalDate birth = LocalDate.parse(dto.getBirth2());

       // Period period = Period.between(birth, today);
        
        // int age = period.getYears();
     
    	model.addAttribute("dto", dto);
    //	model.addAttribute("age", age);
    	
    	return ".myPage.pet";
	}
    
    @GetMapping(value = "delete")
    public String delete(@RequestParam long num, HttpSession session) throws Exception {
    	String root = session.getServletContext().getRealPath("/");
    	String pathname = root + "uploads" + File.separator + "pets";
    	
    	try {
    		service.deletePet(num ,pathname);    
    	} catch (Exception e) {
		}
    	
    	return "redirect:/myPage/myPage";
    }
    
    @GetMapping(value = "petEdit")
    public String petEditForm(@RequestParam long num,
    		Model model) throws Exception {
    	
    	MyPage dto = service.readPet(num);
    	
    	model.addAttribute("dto", dto);
    	
    	return ".myPage.petEdit";
    }
    
    @PostMapping(value = "petEdit")
    public String petEditSubmit(MyPage dto,
    		HttpSession session) throws Exception {
    	String root = session.getServletContext().getRealPath("/");
    	String pathname = root + "uploads" + File.separator + "pets";
    	
    	try {
    		service.updatePet(dto, pathname);
		} catch (Exception e) {
		}
    	
    	return "redirect:/myPage/pet?num=" + dto.getNum();
    }
    
    @GetMapping("profile")
	public String profileList() throws Exception {
    	
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
    
    @GetMapping("delivery")
   	public String deliveryList(MyPage dto, HttpSession session, 
			Model model) throws Exception {
    	SessionInfo info = (SessionInfo) session.getAttribute("member");

		dto.setUserId(info.getUserId());
		List<MyPage> list = service.listDelivery(dto);
		
		int dataCount = 0;
    	
		dataCount = service.dataCount(info.getUserId());
		
    	model.addAttribute("list", list);
    	model.addAttribute("dataCount", dataCount);
    	
   		return ".myPage.delivery";
   	}
    
    
    @GetMapping("writeDelivery")
   	public String deliveryForm(Model model) throws Exception {
    	  	
    	model.addAttribute("mode", "writeDelivery");
    	
   		return ".myPage.writeDelivery";
   	}
    
    @PostMapping("writeDelivery")
   	public String deliverySubmit(MyPage dto, HttpSession session) throws Exception {
    	SessionInfo info = (SessionInfo) session.getAttribute("member");
    	
    	try {
			dto.setUserId(info.getUserId());
			service.insertAdd(dto);
			
		} catch (Exception e) {
		}
   		return "redirect:/myPage/delivery";
   	}
    
    @GetMapping("update")
    public String updateAddform(@RequestParam long num, Model model) throws Exception {
    	MyPage dto = service.readAdd(num);
    	
    	model.addAttribute("dto",dto);
    	model.addAttribute("mode", "update");
    	
    	return ".myPage.writeDelivery";
    }
    
    @PostMapping("update")
    public String updateAddSubmit(MyPage dto, HttpSession session) throws Exception {
    	SessionInfo info = (SessionInfo) session.getAttribute("member");
    	
    	try {
    		dto.setUserId(info.getUserId());
			service.updateAdd(dto);
		} catch (Exception e) {
		}
    	
    	return "redirect:/myPage/delivery";
    }

    @GetMapping(value = "deleteAdd")
    public String deleteAdd(@RequestParam long num,
    		Model model) throws Exception {
    
   	
    	try {
    		service.deleteAdd(num);    
    	} catch (Exception e) {
		}
    	
    	return "redirect:/myPage/delivery";
    }
    
    
  
}