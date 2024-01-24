package com.fes.domain;

import lombok.Getter;

@Getter
public class PageMaker {
	
	private Criteria cri;
	
	private int nowPage; //현재 페이지
	private int startPage; // 화면에 보여질 첫번째 페이지 번호
	private int endPage; // 화면에 보여질 마지막 페이지 번호 
	private int totalCount; //총 개시글 수
	private boolean prev;
    private boolean next;
	
	public PageMaker(Criteria cri, int total) {
		
		this.cri = cri;
		this.totalCount = total;
		
		this.endPage = (int) (Math.ceil(cri.getPage() / 10.0)) * 10;                    
		// 55개의 게시글을 50개 씩 출력하면 마지막 페이지 번호가 2여야 하는데 이 식을 쓸 경우 10이 된다.
		// 그래서 28행의 수식을 이용해서 진짜 마지막 페이지를 구해야 함
		
		this.startPage = this.endPage - 9; 
		
		int realEnd = (int) (Math.ceil((totalCount * 1.0) / cri.getAmount()));
		// 2
		if(realEnd < this.endPage) {
			this.endPage = realEnd;
		}
		
		nowPage = cri.getPage();
		
		this.prev = nowPage > 1;
		this.next = nowPage < realEnd; 
	}
}
