package com.sp.withtail;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {
	@Autowired
	private HomeService service;
	
	@RequestMapping(value="/switchImage", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> changeImage(
			@RequestParam(value="num") int animal,
			Model model) {

		System.out.println("switchImage 테스트 : " + animal);
		String imgUrl = "";
		if( animal == 1) {
			imgUrl = "${pageContext.request.contextPath}/resources/images/header/icon_dog.png";
		} else {
			imgUrl = "${pageContext.request.contextPath}/resources/images/header/icon_cat.png";
		}
		
		List<Home> listRank = service.listRank(animal);
		List<Home> listHotdeal = service.listHotdeal(animal);
		List<Home> listnewst = service.listnewst(animal);
		
		model.addAttribute("animal", animal);
		model.addAttribute("listRank", listRank);
		model.addAttribute("listHotdeal", listHotdeal);
		model.addAttribute("listnewst", listnewst);
		
		Map<String, Object> response = new HashMap<>();
		response.put("imgUrl", imgUrl);
		response.put("animal", animal);
		
		return response;
	}
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model,
			@RequestParam(value = "animal", defaultValue = "1") int animal) {

		List<Home> listRank = service.listRank(animal);
		List<Home> listHotdeal = service.listHotdeal(animal);
		List<Home> listnewst = service.listnewst(animal);
		
		model.addAttribute("animal", animal);
		model.addAttribute("listRank", listRank);
		model.addAttribute("listHotdeal", listHotdeal);
		model.addAttribute("listnewst", listnewst);
		return ".home";
	}
	
	
	
	/*
	@PostMapping(value = "/checkAnimal")
	@ResponseBody
	public int chkechAnimal(
			@RequestParam(value="animal", defaultValue = "1") int animal ,
			Model model) {
		
		System.out.println("테스트 : " + animal);
		
		List<Home> listRank = service.listRank(animal);
		List<Home> listHotdeal = service.listHotdeal(animal);
		List<Home> listnewst = service.listnewst(animal);
		
		model.addAttribute("animal", animal);
		model.addAttribute("listRank", listRank);
		model.addAttribute("listHotdeal", listHotdeal);
		model.addAttribute("listnewst", listnewst);

		return animal;
	}
	*/
}
