package com.test.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface mainMapper {
	
	public List<guest> list();
	
	public guest memberLogin(guest memberVO);

	public void insertJoin(guest memberVO);

	public List<accessController> infoCalender(String user_id);

	public List<guest> adminList();

	
	
	public void extensionMember(guest memberVO);

	public void insertEx(exinfo memberVO);

	public exinfo selectEx(exinfo memberVO);
	
	public void insertURL(@Param("user_id") String user_id , @Param("ex_seq") int ex_seq, @Param("file_name") String file_name);
	
	public List<videoDT> memberVideo(String user_id);
	
	public List<exinfo> memberExinfo(String user_id);

}
