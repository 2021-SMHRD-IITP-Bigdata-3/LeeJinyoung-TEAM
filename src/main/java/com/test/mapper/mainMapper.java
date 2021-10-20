package com.test.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface mainMapper {
	
	public List<guest> list();
	
	public guest memberLogin(guest memberVO);

	public void insertExName(exinfo ex_name);
}
