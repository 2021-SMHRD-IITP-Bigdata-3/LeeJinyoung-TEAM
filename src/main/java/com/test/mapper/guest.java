package com.test.mapper;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class guest {
	private int user_id;
	private String user_name;
	private String user_gym;
	private String contents;
}
