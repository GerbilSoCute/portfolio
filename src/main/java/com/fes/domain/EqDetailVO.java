package com.fes.domain;

import lombok.Data;

@Data
public class EqDetailVO {
	
	private int itemId; // item_id(키값)값
	private int pDamage;       // 물리기본성능
	private int mDamage;       // 마법기본성능
	private int blockStrength; // 방패막기발동력
	private int defence;       // 물리방어력
	private int blockRate;     // 방패막기성능
	private int mDefence;      // 마법방어력
	private double delay;      // 공격주기
	
	private int strength;      // 힘
	private int dexterity;     // 민첩
	private int vitality;      // 활력
	private int intelligence;  // 지능
	private int mind;          // 정신력
	private int criticalHit;   // 극대화
	private int determination; // 의지력
	private int directHitRate; // 직격
	private int skillSpeed;    // 기시속
	private int spellSpeed;    // 마시속
	private int tenacity;      // 불굴
	private int piety;         // 신앙
	
	private int materia;       // 마테리아
	
	private String relicWp;    // 고대무기코드
}
