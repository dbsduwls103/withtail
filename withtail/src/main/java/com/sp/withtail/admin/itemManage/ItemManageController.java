package com.sp.withtail.admin.itemManage;

import java.io.File;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
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

@Controller("itemManage.itemManageContollr")
@RequestMapping("/admin/itemManage/*")
public class ItemManageController {

	@Autowired
	private ItemManageService service;

	@Autowired
	private MyUtil myUtil;

	@RequestMapping("list")
	public String list(
			@RequestParam(defaultValue = "0") long parentCt,
			@RequestParam(defaultValue = "0") long ctNum,
			@RequestParam(defaultValue = "0") long showNotice,
			@RequestParam(defaultValue = "all") String col,
			@RequestParam(defaultValue = "") String kwd,
			@RequestParam(value = "page", defaultValue = "1") int current_page,
			HttpServletRequest req,
			Model model) throws Exception {

		String cp = req.getContextPath();

		int size = 10;
		int total_page;
		int dataCount;

		if (req.getMethod().equalsIgnoreCase("GET")) {
			kwd = URLDecoder.decode(kwd, "UTF-8");
		}
		
		List<ItemManage> listCategory = service.listCategory();
		List<ItemManage> listSubCategory = null;
		if(parentCt == 0 && listCategory.size() != 0) {
			parentCt = listCategory.get(0).getCtNum();
		}
		listSubCategory = service.listSubCategory(parentCt);
		if(ctNum == 0 && listSubCategory.size() != 0) {
			ctNum = listSubCategory.get(0).getCtNum();
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("parentCt", parentCt);
		map.put("ctNum", ctNum);
		map.put("showNotice", showNotice);
		map.put("col", col);
		map.put("kwd", kwd);
		
		dataCount = service.dataCount(map);
		total_page = myUtil.pageCount(dataCount, size);
		if(current_page > total_page) {
			current_page = total_page;
		}
		
		int offset = (current_page - 1) * size;
		if(offset < 0) offset = 0;
		
		map.put("offset", offset);
		map.put("size", size);
		
		List<ItemManage> list = service.listItem(map);
		
		String listUrl = cp + "/admin/itemManage/list";
		String articleUrl = cp + "/admin/itemManage/article?page="+current_page;
		
		String query = "parentCt=" + parentCt + "&ctNum=" + ctNum;
		if(showNotice != -1) {
			query += "&showNotice="+showNotice;
		}
		if (kwd.length() != 0) {
			query += "&col=" + col + "&kwd=" + URLEncoder.encode(kwd, "UTF-8");
		}		
		listUrl += "?" + query;
		articleUrl += "&" + query;
		
		String paging = myUtil.pagingUrl(current_page, total_page, listUrl);
		
		model.addAttribute("listCategory", listCategory);
		model.addAttribute("listSubCategory", listSubCategory);
		model.addAttribute("list", list);
		model.addAttribute("dataCount", dataCount);
		
		model.addAttribute("showNotice", showNotice);
		model.addAttribute("parentCt", parentCt);
		model.addAttribute("ctNum", ctNum);
		model.addAttribute("col", col);
		model.addAttribute("kwd", kwd);

		model.addAttribute("articleUrl", articleUrl);
		
		model.addAttribute("page", current_page);
		model.addAttribute("size", size);
		model.addAttribute("total_page", total_page);
		model.addAttribute("paging", paging);
		
		return ".admin.itemManage.list";

	}
	
	@GetMapping("listSubCategory")
	@ResponseBody
	public Map<String, Object> listSubCategory(@RequestParam long parentCt) throws Exception {
		Map<String , Object> model = new HashMap<String, Object>();
		
		List<ItemManage> listSubCategory = service.listSubCategory(parentCt);
		
		model.put("listSubCategory", listSubCategory);
		
		return model;
		
	}
	
	
	@GetMapping("write")
	public String writeForm(Model model) {
		List<ItemManage> listCategory = service.listCategory();
		List<ItemManage> listSubCategory = null;
		long parentCt= 0;
		if(listCategory.size() != 0) {
			parentCt = listCategory.get(0).getCtNum();
		}
		listSubCategory = service.listSubCategory(parentCt);
		
		model.addAttribute("mode", "write");
		model.addAttribute("listCategory", listCategory);
		model.addAttribute("listSubCategory", listSubCategory);
		
		return ".admin.itemManage.write";
	}
	
	@PostMapping("write")
	public String writeSubmit(ItemManage dto, HttpSession session, Model model) {
		
		String root = session.getServletContext().getRealPath("/");
		String path = root + "uploads" + File.separator + "item";
		
		try {
			service.insertItem(dto, path);
		} catch (Exception e) {
		}
		
		String url = "redirect:/admin/itemManage/list?parentCt=?"+dto.getParentCt()+"&ctNum="+dto.getCtNum();
		
		return url;
	}



}
