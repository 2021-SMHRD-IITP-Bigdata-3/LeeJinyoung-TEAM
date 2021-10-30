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

@RestController
public class Restmember {
	
	@Inject
	private mainMapper mapper;
	
	@RequestMapping(value="/infoCalender.do")
    public List<accessController> infoCalender(@RequestParam("user_id") String user_id , Model model){
		
		//Map<String, String> paramMap = new HashMap<String, String>();
		//List<Map<String, String>> MapList = new ArrayList<Map<String, String>>();
		List<accessController> day_time = mapper.infoCalender(user_id);
		
		/*for(int i=0; i<day_time.size(); i++) {
			paramMap.put("time", day_time.get(i).getTimediff());
			paramMap.put("day", day_time.get(i).getEx_day());
			paramMap.put("day", day_time.get(i).getEx_day());
			MapList.add(paramMap);
			
		}
		System.out.print(MapList.get(1));
		*/
        return day_time;
        
	}
    

	
    @RequestMapping(value="/insertURL.do", method= {RequestMethod.GET, RequestMethod.POST})
    public String insertURL(HttpServletRequest request) throws Exception {
		
    	//String fileName = file.getOriginalFilename();
    	//System.out.print(request.getParameter("data"));
    	System.out.println("저장할려는중");
    	String user_id = request.getParameter("user_id");
    	ServletInputStream input = request.getInputStream();

    	
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
        mapper.insertfilePath(user_id,file_name);
		return "main.do";
        
	}

	
}


















