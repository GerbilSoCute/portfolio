package com.fes.domain;

import lombok.Data;

@Data
public class DbScrapVO {
	
	private String category2; // 아이템 대분류
	private String category3; // 아이템 중분류
	private String min_gear_lv;
	private String max_gear_lv;
	
	private String category4;
	
} 
