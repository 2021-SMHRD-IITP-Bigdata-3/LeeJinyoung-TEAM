package com.test.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.test.mapper.exinfo;
import com.test.mapper.guest;
import com.test.mapper.mainMapper;


@Controller
public class mainController {
	
	@Autowired
	private mainMapper mapper;
	
	@RequestMapping("/admin.do")
	public String admin() {
		return "admin";
	}
	
	@RequestMapping("/calender.do")
	public String calender() {
		return "calender";
	}
	
	@RequestMapping(value="/infoCalender.do")
    public String infoCalender(@RequestParam("user_id") int user_id , Model model){
		
		
		List<guest> day_time = mapper.infoCalender(user_id);
		model.addAttribute("day_time",day_time);
		
        return "redirect:/calender.do";
        
	}
	

	@RequestMapping("/main.do")
	public String main() {
		return "main";
	}
	
	@RequestMapping("/record.do")
	public String record() {
		return "record";
	}
	
	
	@RequestMapping("/login.do")
	public String login() {
		//mapper.loginInsert(title);
		return "login"; 
	}
	
	@RequestMapping("/cam.do")
	public String cam() {
		return "cam"; 
	}	
	
	@RequestMapping(value="/insertExName.do", method= {RequestMethod.GET, RequestMethod.POST})
    public String insertExName(exinfo memberVO , HttpServletRequest req,  RedirectAttributes rttr) throws Exception {
		
		System.out.println(memberVO.getUser_id());
		System.out.println(memberVO.getEx_name());
        
		HttpSession session = req.getSession();
		mapper.insertExName(memberVO);
		session.setAttribute("memberVO", memberVO);
		
        return "redirect:/cam.do";
        
	}
	
	
	@RequestMapping(value="/loginInsert.do", method= {RequestMethod.GET, RequestMethod.POST})
    public String memberLogin(guest memberVO , HttpServletRequest req,  RedirectAttributes rttr) throws Exception {
		
		System.out.println(memberVO.getUser_id());
		System.out.println(memberVO.getUser_gym());
        
		HttpSession session = req.getSession();
        guest member = mapper.memberLogin(memberVO);
        
        if(member == null) {
        	System.out.print("로그인 실패");
            session.setAttribute("member", null);
            rttr.addFlashAttribute("msg", false);
            return "redirect:/login.do";
        } else {
        	System.out.print("로그인 성공");
            session.setAttribute("member", member);
            return "redirect:/main.do";
        }
	}
}
