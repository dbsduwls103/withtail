package com.sp.withtail.admin.stuffManage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

//관리자 상품 관리
@Controller("admin.stuffManageController")
@RequestMapping("/admin/stuffManage/*")
public class StuffManageController {
	
	@Autowired
	StuffManageService service;
	
	@GetMapping("list")
	public String stuffList(Model model) {
		
		return ".admin.stuffManage.list";
	}
	
	@RequestMapping("write")
	public String writeForm(Model model) {
		
		List<StuffManage> categorylist = null;
		categorylist = service.listCategory();
		
		model.addAttribute("categorylist",categorylist);
		
		return ".admin.stuffManage.write";
	}
	
	@GetMapping("categories")
	@ResponseBody
	public List<StuffManage> getCategories(Model model) {
		
		List<StuffManage> categorylist = null;
		categorylist = service.listCategory();
		
		model.addAttribute("categorylist",categorylist);
		
		return categorylist;
	}
	
	@GetMapping("subcategories")
    @ResponseBody
    public List<StuffManage> getSubCategories(@RequestParam String parentCt, Model model) {
        
		List<StuffManage> subcategorylist = service.listSubCategory(parentCt);
		
		model.addAttribute("subcategorylist",subcategorylist);
        
        return subcategorylist;
    }
	
	@RequestMapping("optionList")
	public String stuffOptionList(Model model) {
		
		return ".admin.stuffManage.optionList";
	}
	
	
	
}
