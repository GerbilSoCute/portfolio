package com.fes.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ItemDetailVO {
	
	private int itemId; // item_id(키값)값
	private String itemName;  //아이템명
	private String category3; // 아이템 중분류
	private String itemJob;   //착용직업
	private int jobLevel;     //착용레벨
	private String itemImg;   //아이콘
	private int itemLevel;	  //아이템레벨
	private Date lastDate;
	private String lastUser;
	private Date firstDate;
	private String firstUser;

}
