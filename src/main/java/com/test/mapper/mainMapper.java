package com.test.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface mainMapper {
	
	public List<guest> list();
	
	public void loginInsert(String title);
}