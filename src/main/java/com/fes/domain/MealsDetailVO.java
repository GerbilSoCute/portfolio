package com.fes.domain;

import lombok.Data;

@Data
public class MealsDetailVO {
	
	
	private int itemId; // item_id(키값)값
	private int vitRate;       //활력상승률
	private int vitValue;      //상승값
	private int criRate;       // 극대상승률
	private int criValue;      // 상승값
	private int detRate;       // 의지상승률
	private int detValue;      // 상승값
	private int dirRate;       // 직격상승률
	private int dirValue;      // 직격상승값
	private int sksRate;       // 기시상승률
	private int sksValue;      // 상승값
	private int spsRate;       // 마시상승률
	private int spsValue;      // 상승값
	private int tenRate;       // 불굴상승률
	private int tenValue;      // 상승값
	private int pieRate;       // 신앙상승률
	private int pieValue;      // 상승값
	private int cpRate; 	   // CP
	private int cpValue;	   
	private int gpRate;		   // GP
	private int gpValue;
	private int craftRate;	   // 작업 숙련도
	private int craftValue;	  
	private int contRate; 	   // 가공 숙련도
	private int contValue;
	private int percepRate;    // 기술력
	private int percepValue;   
	private int gathRate;      // 획득력
	private int gathValue;
}
