package com.sp.withtail.myPage;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
    	int couponDataCount;
    	
    	dto.setUserId(info.getUserId());
		dataCount = service.dataCount(info.getUserId());
		addDataCount = service.addDataCount(info.getUserId());
		couponDataCount = service.couponDataCount(info.getUserId());
		
		
		List<MyPage> list = service.listMyPages(dto);
		List<MyPage> list1 = service.listDelivery(dto);
	
		
		    MyPage dto1 = null;
		    if(list1.size() > 0)
		        dto1 = list1.get(0);	
	
		
		
		
		model.addAttribute("list1", list1);
    	model.addAttribute("list", list);
    	model.addAttribute("addDataCount", addDataCount);
    	model.addAttribute("dataCount", dataCount);
    	model.addAttribute("dto1", dto1);
    	model.addAttribute("couponDataCount", couponDataCount);
    	
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
    
    @GetMapping("storecredit")
   	public String execute6() throws Exception {
   	
   		return ".myPage.storecredit";
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
    
    @PostMapping("updateProfileName")
    @ResponseBody
    public Map<String, Object> updateProfileNameSubmit(MyPage dto, HttpSession session) throws Exception {
    	SessionInfo info = (SessionInfo) session.getAttribute("member");
    	
    	String state = "true";
    	try {
    		dto.setUserId(info.getUserId());
			service.updateProfileName(dto);
		} catch (Exception e) {
			state = "false";
		}
    	
    	Map<String, Object> model = new HashMap<String, Object>();
    	model.put("state", state);
    	return model;
    }
    
    @GetMapping("profile")
  	public String profile(MyPage dto, HttpSession session, 
  			Model model) throws Exception {
      	    	 	
    	SessionInfo info = (SessionInfo) session.getAttribute("member");
    	
    	dto.setUserId(info.getUserId());
    	
    	MyPage dto1 = service.readProfile(dto.getUserId());	
      
    	model.addAttribute("dto1", dto1);
      
      	
      	return ".myPage.profile";
  	}
    
    @GetMapping("unregister")
    public String unregister(MyPage dto, HttpSession session, 
  			Model model) throws Exception {
    	
    	SessionInfo info = (SessionInfo) session.getAttribute("member");
    	
    	dto.setUserId(info.getUserId());
    	
    	MyPage dto1 = service.readProfile(dto.getUserId());	
      
    	model.addAttribute("dto1", dto1);
    	
    	return ".myPage.unregister";
    }
    
    @PostMapping(value = "updateUnregister")
    @ResponseBody
    public Map<String, Object> updateUnregister (MyPage dto,
    		HttpSession session) throws Exception {
    	SessionInfo info = (SessionInfo) session.getAttribute("member");
    	
    	String state = "true";
    	try {
    		dto.setUserId(info.getUserId());
			service.updateEnabled(dto);
			service.insertMemberState(dto);
		} catch (Exception e) {
			state = "false";
		}
    	
    	Map<String, Object> model = new HashMap<String, Object>();
    	model.put("state", state);
    	return model;
    }
    
    @RequestMapping(value = "logout")
	public String logout(HttpSession session) {
		// 세션에 저장된 정보 지우기
		session.removeAttribute("member");

		// 세션에 저장된 모든 정보 지우고, 세션초기화
		session.invalidate();

		return "redirect:/";
	}
    
    @GetMapping("coupon")
   	public String couponList(MyPage dto, HttpSession session, 
			Model model) throws Exception {
    	SessionInfo info = (SessionInfo) session.getAttribute("member");

		dto.setUserId(info.getUserId());
		List<MyPage> list = service.listCoupon(dto);
		
		int couponDataCount = 0;
    	
		couponDataCount = service.couponDataCount(info.getUserId());
		
    	model.addAttribute("list", list);
    	model.addAttribute("couponDataCount", couponDataCount);
    	
   		return ".myPage.coupon";
   	}
    
    
   
      
}