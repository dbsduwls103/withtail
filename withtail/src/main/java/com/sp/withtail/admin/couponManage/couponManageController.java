package com.sp.withtail.admin.couponManage;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sp.withtail.common.MyUtil;


@Controller("admin.couponManageController")
@RequestMapping("/admin/couponManage/*")
public class couponManageController {
	@Autowired
	@Qualifier("myUtilGeneral")
	private MyUtil myUtil;

	@RequestMapping(value = "list")
	public String list(@RequestParam(value = "page", defaultValue = "1") int current_page,
			Model model) throws Exception {

		
		
		
		return ".admin.couponManage.list";
	}

	@RequestMapping(value = "write", method = RequestMethod.GET)
	public String writeForm(Model model, HttpSession session) throws Exception {
		

		return ".admin.couponManage.write";
	}


	@RequestMapping(value = "article")
	public String article(
			) throws Exception {

		return ".admin.couponManage.article";
	}



}
