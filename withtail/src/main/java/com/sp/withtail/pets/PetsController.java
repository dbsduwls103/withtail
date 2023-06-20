package com.sp.withtail.pets;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("pets.petsController")
@RequestMapping("/pets/*")
public class PetsController {

	    @GetMapping("new")
	    public String main() {  
	        return ".pets.new";

	}
}
