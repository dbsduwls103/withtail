package com.sp.withtail.admin.faqManage;

import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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


@Controller("admin.faqManageController")
@RequestMapping("/admin/faqManage/*")
public class FaqManageController {

	@Autowired
	@Qualifier("myUtilGeneral")	
	private MyUtil myUtil;

	@RequestMapping(value = "main")
	public String main(@RequestParam(value = "pageNo", defaultValue = "1") int current_page,
			Model model) throws Exception {


		return ".admin.faqManage.main";
	}

	// AJAX-Text(HTML)
	@RequestMapping(value = "list")
	public String list(@RequestParam(value = "pageNo", defaultValue = "1") int current_page,
			@RequestParam(defaultValue = "all") String condition,
			@RequestParam(defaultValue = "") String keyword,
			@RequestParam(defaultValue = "0") int categoryNum,
			HttpServletRequest req,
			Model model) throws Exception {


		return ".admin.faqManage.list";
	}

	@GetMapping("write")
	public String writeForm(Model model) throws Exception {

		

		return ".admin.faqManage.write";
	}

	@PostMapping("write")
	public String writeSubmit(HttpSession session) throws Exception {

		

		return "redirect:/admin/faqManage/main?pageNo=1";
	}

	@GetMapping("update")
	public String updateForm(@RequestParam long num,
			@RequestParam String pageNo,
			HttpSession session,
			Model model) throws Exception {
		

		return ".admin.faqManage.write";
	}

	@PostMapping("update")
	public String updateSubmit(
			@RequestParam String pageNo,
			HttpSession session) throws Exception {

		return "redirect:/admin/faqManage/main?pageNo=" + pageNo;
	}



	// AJAX-Text(HTML)
	@GetMapping("listAllCategory")
	public String listAllCategory(Model model) throws Exception {
		Map<String, Object> map = new HashMap<>();
		
	
		
		return "admin/faqManage/listAllCategory";
	}



}
