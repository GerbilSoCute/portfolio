package com.fes.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fes.domain.DbScrapVO;
import com.fes.domain.EqDetailVO;
import com.fes.domain.ItemDetailVO;
import com.fes.domain.MealsDetailVO;
import com.fes.domain.SeqVO;
import com.fes.mapper.DbScrapMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service
@AllArgsConstructor
public class DbScrapServiceImpl  implements DbScrapService{
	
	@Setter(onMethod_ = @Autowired)
	private DbScrapMapper mapper;
	
	@Override
	public int selectSeq() {
		 return mapper.selectSeq();	
	}
	
	@Override
	public int selectSeq2() {
		 return mapper.selectSeq2();		
	}
	
	@Override
	public int insertId(ItemDetailVO vo) {
		return mapper.insertId(vo);
	}
	
	@Override
	public void insertEd(EqDetailVO evo) {
		mapper.insertEd(evo);
	}
	
	@Override
	public void insertMd(MealsDetailVO mvo) {
		mapper.insertMd(mvo);
	}
	
	public void insertCt(DbScrapVO dvo) {
		mapper.insertCt(dvo);
	}
}
