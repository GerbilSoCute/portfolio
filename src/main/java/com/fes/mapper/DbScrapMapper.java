package com.fes.mapper;

import org.springframework.transaction.annotation.Transactional;

import com.fes.domain.DbScrapVO;
import com.fes.domain.EqDetailVO;
import com.fes.domain.ItemDetailVO;
import com.fes.domain.MealsDetailVO;
import com.fes.domain.SeqVO;

@Transactional
public interface DbScrapMapper {
	
	public int selectSeq();
	
	public int selectSeq2();
	
	public int insertId(ItemDetailVO vo);
	
	public void insertEd(EqDetailVO evo);
	
	public void insertMd(MealsDetailVO mvo);
	
	public void insertCt(DbScrapVO dvo);
}
