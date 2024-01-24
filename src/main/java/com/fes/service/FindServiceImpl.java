package com.fes.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fes.domain.CateVO;
import com.fes.domain.Criteria;
import com.fes.domain.ItemDetailVO;
import com.fes.domain.ItemEqJoinVO;
import com.fes.mapper.FindMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class FindServiceImpl implements FindService {
	
	@Setter(onMethod_ = @Autowired)
	private FindMapper mapper;

	@Override
	public List<ItemDetailVO> getItemList(Criteria cri) {
		return mapper.getItemList(cri);
	}
	
	@Override
	public List<ItemDetailVO> getItemListCate3(String category3, Criteria cri) {
		return mapper.getItemListCate3(category3, cri);
	}
	
	@Override
	public List<ItemDetailVO> getItemListCate2(String category2, Criteria cri) {
		return mapper.getItemListCate2(category2, cri);
	}

	@Override
	public ItemEqJoinVO getItemDetailInfo(int itemId) {
		return mapper.getItemDetailInfo(itemId);
	}
	
	@Override
	public int getTotal(Criteria cri) {
		return mapper.getTotal(cri);
	}
	
	@Override
	public int getTotalCate3(String category3, Criteria cri) {
		return mapper.getTotalCate3(category3, cri);
	}
	
	@Override
	public int getTotalCate2(String category2, Criteria cri) {
		return mapper.getTotalCate2(category2, cri);
	}
	
	@Override
	public String getItemDetailCate3(String itemCategory3) {
		return mapper.getItemDetailCate3(itemCategory3);
	}
	
	@Override
	public String getWeaponCategory2() {
		return mapper.getWeaponCategory2();
	}
	
	@Override
	public String getArmorCategory2() {
		return mapper.getArmorCategory2();
	}
	
	@Override
	public String getAcceCategory2() {
		return mapper.getAcceCategory2();
	}
	
	@Override
	public List<CateVO> getWeaponCategory3() {
		return mapper.getWeaponCategory3();
	}
	
	@Override
	public List<CateVO> getArmorCategory3() {
		return mapper.getArmorCategory3();
	}
	
	@Override
	public List<CateVO> getAcceCategory3() {
		return mapper.getAcceCategory3();
	}
}
