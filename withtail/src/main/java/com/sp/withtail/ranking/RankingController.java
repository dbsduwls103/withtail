package com.sp.withtail.ranking;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("ranking.rankingController")
@RequestMapping("/ranking/*")
public class RankingController {

	@GetMapping("list")
	public String cartForm(Model model) {
		
		return ".ranking.list";
	}
}
