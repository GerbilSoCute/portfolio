package com.fes.service;

import java.util.HashMap;
import java.util.List;

import com.fes.domain.CateVO;
import com.fes.domain.Criteria;
import com.fes.domain.ItemDetailVO;
import com.fes.domain.ItemEqJoinVO;

public interface FindService {
	
	public List<ItemDetailVO> getItemList(Criteria cri);
	
	public List<ItemDetailVO> getItemListCate3(String category3, Criteria cri);
	
	public List<ItemDetailVO> getItemListCate2(String category2, Criteria cri);
	
	public ItemEqJoinVO getItemDetailInfo(int itemId);
	
	public int getTotal(Criteria cri);
	
	public int getTotalCate3(String category3, Criteria cri);
	
	public int getTotalCate2(String category2, Criteria cri);
	
	public String getItemDetailCate3(String itemCategory3);
	
	public String getWeaponCategory2();
	
	public String getArmorCategory2();
	
	public String getAcceCategory2();

	public List<CateVO> getWeaponCategory3();
	
	public List<CateVO> getArmorCategory3();
	
	public List<CateVO> getAcceCategory3();
}
