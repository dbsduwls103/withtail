package com.sp.withtail.admin.noticeManage;

import java.io.File;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sp.withtail.common.FileManager;
import com.sp.withtail.common.MyUtil;
import com.sp.withtail.member.SessionInfo;

@Controller("admin.noticeManageController")
@RequestMapping("/admin/noticeManage/*")
public class NoticeManageController {
	@Autowired
	private NoticeManageService service;
	@Autowired
	@Qualifier("myUtilGeneral")
	private MyUtil myUtil;
	@Autowired
	private FileManager fileManager; 
	
	
	@RequestMapping(value = "list")
	public String list() throws Exception{
		
		return ".admin.noticeManage.list";
	}
	
	@GetMapping("write")
	public String writeForm(Model model, HttpSession session)throws Exception {
		model.addAttribute("mode", "write");
		
		return ".admin.noticeManage.write";
	}
	
	@RequestMapping(value = "write", method = RequestMethod.POST)
	public String writeSubmit(NoticeManage dto, HttpSession session) throws Exception {

		SessionInfo info = (SessionInfo) session.getAttribute("member");

		try {
			String root = session.getServletContext().getRealPath("/");
			String pathname = root + "uploads" + File.separator + "notice";

			dto.setUserId(info.getUserId());
			service.insertNotice(dto, pathname);
		} catch (Exception e) {
		}

		return "redirect:/admin/noticeManage/list";
	}
	
	
	@RequestMapping(value = "article")
	public String article() throws Exception{
		
		return ".admin.noticeManage.article";
	}
	
}
