package com.test.web;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.test.mapper.guest;
import com.test.mapper.mainMapper;
import com.test.mapper.videoDT;
import com.sun.org.apache.xerces.internal.util.URI;
import com.test.mapper.accessController;
import com.test.mapper.exinfo;

@RestController
public class Restmember {
	
	@Inject
	private mainMapper mapper;
	
	@RequestMapping(value="/infoCalender.do")
    public List<accessController> infoCalender(@RequestParam("user_id") String user_id , Model model){

		List<accessController> day_time = mapper.infoCalender(user_id);

        return day_time;
        
	}
    

	
    @RequestMapping(value="/insertExURL.do", method= {RequestMethod.GET, RequestMethod.POST})
    public String insertURL(HttpServletRequest request) throws Exception {
		
    	//String fileName = file.getOriginalFilename();
    	//System.out.print(request.getParameter("data"));
    	System.out.println("저장할려는중");
    	String user_id =  request.getParameter("user_id");
    	int ex_seq = Integer.parseInt(request.getParameter("ex_seq"));
    	
    	
    	ServletInputStream input = request.getInputStream();

    	System.out.println(ex_seq);
    	System.out.println(user_id);
    	double randomValue = Math.random();
    	String file_name = Double.toString((randomValue*100)+1);
    	FileOutputStream out = new FileOutputStream(new File("C:\\Users\\SMHRD\\project2\\"+file_name+".webm"));
    	
    	
    	
    	
        byte[] charBuffer = new byte[128];
        
        int bytesRead = -1;
        while ((bytesRead = input.read(charBuffer)) > 0) {
        	System.out.println("저장중");
        	out.write(charBuffer, 0, bytesRead);
        	
        }
    	
    	input.close();
    	out.close();
    	
    	System.out.println("저장 끝");
        mapper.insertURL(user_id,ex_seq,file_name);
		return "main.do";
        
	}

	
    @RequestMapping(value="/memberExinfo.do", method= {RequestMethod.GET, RequestMethod.POST})
    public List<exinfo> memberExinfo(String user_id , HttpServletRequest req) throws Exception {
		System.out.println(user_id);
    	HttpSession session = req.getSession();
    	
    	List<exinfo> memberVideo = mapper.memberExinfo(user_id);
    	session.setAttribute("memberVideo", memberVideo);
    	System.out.println(memberVideo);
		return memberVideo;
        
	}
}


















