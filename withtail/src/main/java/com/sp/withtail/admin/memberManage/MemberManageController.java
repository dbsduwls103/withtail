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
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sp.withtail.common.MyUtil;

@Controller("admin.memberManageController")
@RequestMapping("/admin/memberManage/*")
public class MemberManageController {
	@Autowired
	private MemberManageService service;
	@Autowired
	@Qualifier("myUtilGeneral")
	private MyUtil myUtil;
	
	
	@GetMapping("list")
	public String list(@RequestParam(value = "page", defaultValue = "1") int current_page,
			@RequestParam(defaultValue = "userId") String condition1,
			@RequestParam(defaultValue = "") String keyword,
			HttpServletRequest req,
			Model model) throws Exception {
		

		String cp = req.getContextPath();

		int size = 1;
		int total_page = 0;
		int stoptotal_page = 0;
		int dataCount = 0;
		int stopdataCount = 0;

		if (req.getMethod().equalsIgnoreCase("GET")) {
			keyword = URLDecoder.decode(keyword, "utf-8");
		}
		
		// 전체 페이지 수
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("condition", condition1);
		map.put("keyword", keyword);

		dataCount = service.dataCount(map);
		stopdataCount = service.stopdataCount(map);
		
		if (dataCount != 0) {
			total_page = myUtil.pageCount(dataCount, size);
		}
		
		if (stopdataCount != 0) {
			stoptotal_page = myUtil.pageCount(stopdataCount, size);
		}
		
		// 다른 사람이 자료를 삭제하여 전체 페이지수가 변화 된 경우
		if (total_page < current_page) {
			current_page = total_page;
		}
		
		if (stoptotal_page < current_page) {
			current_page = stoptotal_page;
		}
		
		// 리스트에 출력할 데이터를 가져오기
		int offset = (current_page - 1) * size;
		if(offset < 0) offset = 0;
		
		map.put("offset", offset);
		map.put("size", size);
		
		// 멤버 리스트
		List<MemberManage> list = service.listMember(map);
		List<MemberManage> stoplist = service.stoplistMember(map);

		String query = "";
		String listUrl = cp + "/admin/memberManage/list";
		if (keyword.length() != 0) {
			query = "condition1=" + condition1 + "&keyword=" + URLEncoder.encode(keyword, "utf-8");
		}


		if (query.length() != 0) {
			listUrl = listUrl + "?" + query;
		}

		String paging = myUtil.paging(current_page, total_page, listUrl);
		String stoppaging = myUtil.paging(current_page, stoptotal_page, listUrl);

		model.addAttribute("list", list);
		model.addAttribute("stoplist", stoplist);
		model.addAttribute("page", current_page);
		model.addAttribute("dataCount", dataCount);
		model.addAttribute("stopdataCount", stopdataCount);
		model.addAttribute("size", size);
		model.addAttribute("total_page", total_page);
		model.addAttribute("stoptotal_page", stoptotal_page);
		model.addAttribute("paging", paging);
		model.addAttribute("stoppaging", stoppaging);
		model.addAttribute("condition1", condition1);
		model.addAttribute("keyword", keyword);
		
		return ".admin.memberManage.list";
	}
	
	
	@PostMapping("stoplist")
	@ResponseBody
	public Map<String, Object> stoplist(@RequestParam(value = "page", defaultValue = "1")int current_page,
			@RequestParam(defaultValue = "userId") String condition1,
			@RequestParam(defaultValue = "") String keyword,
			HttpServletRequest req) {
		
		String cp = req.getContextPath();

		int size = 1;
		int stoptotal_page = 0;
		int stopdataCount = 0;

		
		// 전체 페이지 수
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("condition", condition1);
		map.put("keyword", keyword);

		stopdataCount = service.stopdataCount(map);
		
		if (stopdataCount != 0) {
			stoptotal_page = myUtil.pageCount(stopdataCount, size);
		}
		
		// 다른 사람이 자료를 삭제하여 전체 페이지수가 변화 된 경우
		if (stoptotal_page < current_page) {
			current_page = stoptotal_page;
		}
		
		// 리스트에 출력할 데이터를 가져오기
		int offset = (current_page - 1) * size;
		if(offset < 0) offset = 0;
		
		map.put("offset", offset);
		map.put("size", size);
		
		// 멤버 리스트
		List<MemberManage> stoplist = service.stoplistMember(map);

		String query = "";
		String listUrl = cp + "/admin/memberManage/list";
		if (keyword.length() != 0) {
			query = "condition1=" + condition1 + "&keyword=" + keyword ;
		}


		if (query.length() != 0) {
			listUrl = listUrl + "?" + query;
		}

		String stoppaging = myUtil.paging(current_page, stoptotal_page, listUrl);

		
		Map<String, Object> model = new HashMap<>();
		model.put("stoppaging", stoppaging);
		model.put("stoplist", stoplist);
		model.put("stoptotal_page", stoptotal_page);
		model.put("condition1", condition1);
		model.put("page", current_page);
		return model;
	}
	
	
	
	
	
	
	
	
	
	
	
}
