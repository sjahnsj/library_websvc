package com.project.controller;

//import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.service.TestDAO;

import lombok.AllArgsConstructor;


/**
 * Handles requests for the application home page.
 */
@Controller
@AllArgsConstructor
@RequestMapping(value = "/*")
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	TestDAO testDAO;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
//	@GetMapping("/")
//	public String home(Locale locale, Model model) {
//		logger.info("Welcome home! The client locale is {}.", locale);
//			
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//		
//		String formattedDate = dateFormat.format(date);
//		
//		model.addAttribute("serverTime", formattedDate );
//		
//		return "home";
//		
//	}
	
//	@GetMapping("/hello")
//	public void hello(Model model) {
//		model.addAttribute("list", testDAO.getList());
//	}
	
	@GetMapping("/")
	public String index(Model model) {
		return "index";
	}
	
//	@GetMapping("/regi")
//	public void regi(Model model) {
//		
//	}
	
	@GetMapping("/mlogin")
	public void mlogin(Model model) {
		
	}
	
	@GetMapping("/mlogout")
	public void mlogout(String userid, Model model) {
		model.addAttribute("name", userid);
		
	}
	
	@GetMapping("/custom403")
	public void custom403(Model model) {
		
	}
	
	
}
