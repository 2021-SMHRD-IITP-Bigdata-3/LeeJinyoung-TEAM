package com.test.mapper;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class videoDT {
	private int video_seq;
	private String url;
	private String user_id;
}