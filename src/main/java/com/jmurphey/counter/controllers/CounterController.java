package com.jmurphey.counter.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CounterController {

	
	@GetMapping("/")
	public String index(HttpSession session){
		if(session.getAttribute("count") == null){
			session.setAttribute("count", 0);
		} 
		else {
			Integer currentCount = (Integer) session.getAttribute("count");
			session.setAttribute("count", currentCount+1); // need to remove +1, 
			//or i need to remove the link I have from the home page to counter page. Its adding 2. 
		}
		return "index.jsp";
	}
	
	@GetMapping("/counter") 
	public String counter(HttpSession session, Model model) {
		Integer currentCount = (Integer) session.getAttribute("count");
		// add commented out lines here and update .jsp file for this to work without errors. 
		session.setAttribute("count", currentCount+1);
		model.addAttribute("countToShow", currentCount);
		return "counter.jsp";
	}
	
//		if(currentCount == null) {
//			model.addAttribute("countToShow", 0);
//		} else {
//			model.addAttribute("countToShow", currentCount);
//		}
//		return "counter.jsp";
		
	
	@GetMapping("/reset")
	public String doReset(HttpSession session) {
		session.setAttribute("count", 0);
		return "redirect:/counter";
	}
}
