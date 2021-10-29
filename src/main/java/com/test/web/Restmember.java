package com.test.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
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
    public void insertURL(HttpServletRequest request) throws Exception {
		
    	//String fileName = file.getOriginalFilename();
    	System.out.print(request.getParameter("data"));
    	//Gson gson = new Gson();
        //FolderSet set = new FolderSet();
        //List<MultipartFile> mf = req.getFiles("fd");
        
		//System.out.println(fd);
        
	}

	
}


















