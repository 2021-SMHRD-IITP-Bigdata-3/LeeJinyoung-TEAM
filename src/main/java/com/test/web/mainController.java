package com.test.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;

import com.test.mapper.guest;
import com.test.mapper.mainMapper;


@Controller
public class mainController {
	
	@Autowired
	private mainMapper mapper;
	
	@RequestMapping("/calender.do")
	public String calender(Model model) {
		List<guest> list = mapper.list();
		model.addAttribute("list",list);//객체 바인딩
		// SPring AOP 기법
		return "calender"; // /Web-INF/views/calender.jsp
	}

	@RequestMapping("/main.do")
	public String main() {
		return "main";
	}
	
	
	@RequestMapping("/login.do")
	public String login() {
		//mapper.loginInsert(title);
		return "login"; 
	}
	
	@RequestMapping("/loginInsert.do")
	public String loginInsert(String title) {
		mapper.loginInsert(title);
		return "redirect:/main.do"; 
	}
}
