package com.sp.withtail.order;

import java.util.ArrayList;
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

import com.sp.withtail.common.MyUtil;
import com.sp.withtail.member.SessionInfo;

@Controller("order.orderController")
@RequestMapping("/order/*")
public class OrderController {
	@Autowired
	public OrderService orderService;
	
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
			
			orderService.insertCart(dto);
			
		} catch (Exception e) {
			state = "false";
		}
		
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("state", state);
		
		return model;
	}
	
	@RequestMapping("payment")
	public String paymentForm(
			@RequestParam List<Long> itemNums,
			@RequestParam(required = false) List<Long> subNums,
			@RequestParam(required = false) List<Long> subNums2,
			@RequestParam List<Integer> qtys,
			@RequestParam(defaultValue = "buy") String mode,
			HttpSession session,
			Model model) throws Exception {
		
		try {
			SessionInfo info = (SessionInfo)session.getAttribute("member");
			String userId = info.getUserId();
			
			OrderMember dto = orderService.readMember(userId);
			
			List<OrderMember> listAddress = orderService.listAddress(userId);
			List<OrderMember> listCoupon = orderService.listCoupon(userId);
			
			OrderMember defAddrDto = orderService.readDefAddress(userId);
			OrderMember lastAddrDto = orderService.readLastAddress(userId);
			
			model.addAttribute("dto", dto);
			model.addAttribute("listAddress", listAddress);
			model.addAttribute("listCoupon", listCoupon);
			model.addAttribute("defAddrDto", defAddrDto);
			model.addAttribute("lastAddrDto", lastAddrDto);
			
			int totalMoney = 0; // 상품합
			int deliveryCharge = 0; // 배송비
			int payment = 0;  // 결제할 금액(상품합 + 배송비)
			int totalSavedMoney = 0; // 적립금 총합
			int totalDiscountPrice = 0; // 총 할인액
			
			List<Map<String, Long>> list = new ArrayList<Map<String,Long>>();
			for(int i = 0; i < itemNums.size(); i++) {
				Map<String, Long> map = new HashMap<String, Long>();
				
				map.put("itemNum", itemNums.get(i));
				if(subNums.size() != 0) {
					map.put("option2Num", subNums.get(i));
				}
				if(subNums2.size() != 0) {
					map.put("option2Num2", subNums2.get(i));
				}
				
				list.add(map);
			}
			
			//List<Order> listProduct
			
			
		} catch (Exception e) {
		}
		
		return ".order.payment";
	}
	
	@PostMapping("deleteAdd")
	@ResponseBody
	public Map<String, Object> deleteAdd(OrderMember dto) {
		String state = "true";
		
		try {
			orderService.deleteAdd(dto.getAddNum());
		} catch (Exception e) {
			state = "false";
		}
		
		Map<String, Object> model = new HashMap<String, Object>();
    	model.put("state", state);
    	
    	return model;
	}
	
	@GetMapping("complete")
	public String complete() {
		
		return ".order.complete";
	}
	
}
