package com.sp.withtail.shop;

import java.util.List;

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
	private FileManager fileManager;
	
	@GetMapping("{ctNum}")
	public String main(
			@PathVariable String ctNum,
			Model model) throws Exception {
		
		Category category = service.readCategory(ctNum);
		List<Category> listSubCategory = service.listSubCategory(ctNum);
		
		model.addAttribute("ctNum", ctNum);
		model.addAttribute("category", category);
		model.addAttribute("listSubCategory", listSubCategory);
		
		return ".shop.main";
	}

	@RequestMapping(value = "{ctNum}/list")
	public String list(@PathVariable String ctNum,
			@RequestParam(value = "pageNo", defaultValue = "1") int current_page,
			@RequestParam(defaultValue = "all") String condition,
			@RequestParam(defaultValue = "") String keyword,
			HttpServletRequest req,
			Model model) throws Exception {
		
		int size = 10; // 한 화면에 보여주는 게시물 수
		int total_page = 0;
		int dataCount = 0;
		
		//model.addAttribute("list", list);
		model.addAttribute("pageNo", current_page);
		model.addAttribute("dataCount", dataCount);
		model.addAttribute("size", size);
		model.addAttribute("total_page", total_page);
		//model.addAttribute("paging", paging);

		model.addAttribute("condition", condition);
		model.addAttribute("keyword", keyword);
		
		return "shop/list";
	}
	
	@GetMapping("info")
	public String productInfo(Model model) {
		
		return ".shop.info";
	}
}
