package com.fes.domain;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Criteria {
	
	private int page; // 현재 페이지 번호
	private int amount; // 한 페이지 당 보여줄 아이템 갯수
	
	public Criteria() {	
		this(1,50);	
	}
	
	public int getPageStart() { // 특정 페이지의 게시글 시작 번호, 게시글 시작 행 번호
		return (this.page-1)*amount;
	}
	
	public Criteria(int page, int amount) {
		this.page = page;
		this.amount = amount;
	}
	
}
