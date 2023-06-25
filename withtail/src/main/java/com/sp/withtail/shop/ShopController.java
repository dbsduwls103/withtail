package com.sp.withtail.shop;

import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sp.withtail.common.FileManager;
import com.sp.withtail.common.MyUtil;

@Controller("shop.shopController")
@RequestMapping("/shop/*")
public class ShopController {
	@Autowired
	private ShopService service;
	
	@Autowired
	private MyUtil myUtil;
	
	@Autowired
	private MyUtil myUtilCustom;
	
	@Autowired
	private FileManager fileManager;
	
	@GetMapping("{ctNum}")
	public String main(
			@PathVariable long ctNum,
			Model model) throws Exception {
		
		Product category = service.readCategory(ctNum);
		List<Product> listSubCategory = service.listSubCategory(ctNum);
		
		model.addAttribute("ctNum", ctNum);
		model.addAttribute("category", category);
		model.addAttribute("listSubCategory", listSubCategory);
		
		return ".shop.main";
	}

	@RequestMapping(value = "{ctNum}/list")
	public String list(@PathVariable long ctNum,
			@RequestParam(value = "pageNo", defaultValue = "1") int current_page,
			@RequestParam(defaultValue = "itemName") String condition,
			@RequestParam(defaultValue = "") String keyword,
			HttpServletRequest req,
			Model model) throws Exception {
		
		Product category = service.readCategory(ctNum);
		
		int size = 20; // 한 화면에 보여주는 게시물 수
		int total_page = 0;
		int dataCount = 0;
		
		if (req.getMethod().equalsIgnoreCase("GET")) { // GET 방식인 경우
			keyword = URLDecoder.decode(keyword, "utf-8");
		}
		
		// 전체 페이지 수
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("ctNum", ctNum);
		map.put("condition", condition);
		map.put("keyword", keyword);
		
		dataCount = service.dataCount(map);
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

		// 글 리스트
		List<Product> list = service.listProd(map);

		String paging = myUtilCustom.pagingMethod(current_page, total_page, "listPage");
		
		model.addAttribute("category", category);
		model.addAttribute("list", list);
		model.addAttribute("pageNo", current_page);
		model.addAttribute("dataCount", dataCount);
		model.addAttribute("size", size);
		model.addAttribute("total_page", total_page);
		model.addAttribute("paging", paging);

		model.addAttribute("condition", condition);
		model.addAttribute("keyword", keyword);
		
		return "shop/list";
	}
	
	@GetMapping("info")
	public String productInfo(Model model) {
		
		return ".shop.info";
	}
}
