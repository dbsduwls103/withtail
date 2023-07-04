package com.sp.withtail.order;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sp.withtail.common.MyUtil;
import com.sp.withtail.member.SessionInfo;

@Controller("order.orderController")
@RequestMapping("/order/*")
public class OrderController {
	@Autowired
	public OrderService service;
	
	@Autowired
	private MyUtil myUtil;
	
	@Autowired
	private MyUtil myUtilCustom;
	
	// 장바구니 추가(AJAX - JSON)
	@PostMapping("saveCart")
	@ResponseBody
	public Map<String, Object> saveCart(Order dto,
			@RequestParam List<Long> itemNums,
			@RequestParam(required = false) List<Long> subNums,
			@RequestParam(required = false) List<Long> subNums2,
			@RequestParam List<Long> qtys,
			HttpSession session) throws Exception {
		
		String state = "true";
		
		SessionInfo info = (SessionInfo)session.getAttribute("member");
		
		try {
			dto.setUserId(info.getUserId());
			
			service.insertCart(dto);
			
		} catch (Exception e) {
			state = "false";
		}
		
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("state", state);
		
		return model;
	}
}
