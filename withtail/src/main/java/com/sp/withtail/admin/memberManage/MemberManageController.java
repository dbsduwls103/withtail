package com.sp.withtail.admin.memberManage;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sp.withtail.common.MyUtil;

@Controller("admin.memberManageController")
@RequestMapping("/admin/memberManage/*")
public class MemberManageController {
	@Autowired
	private MemberManageService service;
	@Autowired
	@Qualifier("myUtilGeneral")
	private MyUtil myUtil;
	
	
	@RequestMapping("list/{state}")
	public String list(
			@PathVariable String state,
			@RequestParam(value = "page", defaultValue = "1") int current_page,
			@RequestParam(defaultValue = "") String condition1,
			@RequestParam(defaultValue = "") String keyword,
			@RequestParam(defaultValue = "") String condition2,
			@RequestParam(defaultValue = "") String startKeyword,
			@RequestParam(defaultValue = "") String endKeyword,
			HttpServletRequest req,
			Model model) throws Exception {
		

		String cp = req.getContextPath();

		int size = 10;
		int total_page = 0;
		int dataCount = 0;

		if (req.getMethod().equalsIgnoreCase("GET")) {
			keyword = URLDecoder.decode(keyword, "utf-8");
		}
		
		// 전체 페이지 수
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("condition1", condition1);
		map.put("keyword", keyword);
		map.put("condition2", condition2);
		map.put("startKeyword", startKeyword);
		map.put("endkeyword", endKeyword);

		if(state.equals("general")) {
			dataCount = service.dataCount(map);
		} else {
			dataCount = service.stopdataCount(map);
		}
		
		if (dataCount != 0) {
			total_page = myUtil.pageCount(dataCount, size);
		}
			
		// 다른 사람이 자료를 삭제하여 전체 페이지수가 변화 된 경우
		if (total_page < current_page) {
			current_page = total_page;
		}
			
		// 리스트에 출력할 데이터를 가져오기
		int offset = (current_page - 1) * size;
		if(offset < 0) offset = 0;
		
		map.put("offset", offset);
		map.put("size", size);
		
		// 멤버 리스트
		List<MemberManage> list = null;
		if(state.equals("general")) {
			list = service.listMember(map);
		} else {
			list = service.stoplistMember(map);
		}
	
		String query = "";
		String listUrl = cp + "/admin/memberManage/list/" + state;
		if (keyword.length() != 0) {
			query = "condition1=" + condition1 + "&keyword=" + URLEncoder.encode(keyword, "utf-8")
				+ "&condition2=" + condition2 + "&startKeyword=" + startKeyword + "&endKeyword=" + endKeyword;
		}


		if (query.length() != 0) {
			listUrl = listUrl + "?" + query;
		}

		String paging = myUtil.paging(current_page, total_page, listUrl);

		model.addAttribute("state", state);
		
		model.addAttribute("list", list);
		model.addAttribute("page", current_page);
		model.addAttribute("dataCount", dataCount);
		model.addAttribute("size", size);
		model.addAttribute("total_page", total_page);
		model.addAttribute("paging", paging);
		model.addAttribute("condition1", condition1);
		model.addAttribute("keyword", keyword);
		model.addAttribute("condition2", condition2);
		model.addAttribute("startKeyword", startKeyword);
		model.addAttribute("endKeyword", endKeyword);
		
		System.out.println("------------------------------------");
		System.out.println("condition1="+condition1);
		System.out.println("keyword="+keyword);
		System.out.println("condition2="+condition2);
		System.out.println("startKeyword="+startKeyword);
		System.out.println("startKeyword="+startKeyword);
		
		return ".admin.memberManage.list";
	}
	
	@RequestMapping(value = "infoOn")
	public String detaileMember(@RequestParam String userId, Model model) throws Exception {
		MemberManage dto = service.readMember(userId);
		
		
		
		
		
		
		
		
		return "admin/memberManage/list";
	}
}
