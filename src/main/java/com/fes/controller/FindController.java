package com.fes.controller;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.log4j.lf5.viewer.LogBrokerMonitor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fes.domain.CateVO;
import com.fes.domain.Criteria;
import com.fes.domain.ItemDetailVO;
import com.fes.domain.ItemEqJoinVO;
import com.fes.domain.PageMaker;
import com.fes.service.FindService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping(value = {"/find/*","/simulator/*"})
@AllArgsConstructor
public class FindController {
	
	private FindService service;
	
	@GetMapping("/itemList")
	public void getItemCategory(@Param("category3")String category3, @Param("category2")String category2, @Param("cri")Criteria cri, Model model) {
			
		List<ItemDetailVO> itemList;
		
		int total = 0;
		
		if(category3 != null) {
			
			itemList = service.getItemListCate3(category3, cri);
			total = service.getTotalCate3(category3, cri);
			
		}else if(category2 != null) {
			
			itemList = service.getItemListCate2(category2, cri);
			total = service.getTotalCate2(category2, cri);
			
		}else {
			
			itemList = service.getItemList(cri);
			total = service.getTotal(cri);
		}
		
		String weaponList2 = service.getWeaponCategory2();
		String armorList2 = service.getArmorCategory2();
		String acceList2 = service.getAcceCategory2();
		
		
		List<CateVO> weaponList3 = service.getWeaponCategory3();
		List<CateVO> armorList3 = service.getArmorCategory3();
		List<CateVO> acceList3 = service.getAcceCategory3();
		
		PageMaker pageMaker = new PageMaker(cri, total);
		
		log.info(total);
		log.info(cri);
		log.info(category2);
		log.info(category3);
		log.info(itemList.size());

		model.addAttribute("itemList", itemList); // 전체 아이템 리스트
		model.addAttribute("pageMaker", pageMaker); 
		
		model.addAttribute("weaponList2", weaponList2);
		model.addAttribute("armorList2", armorList2);
		model.addAttribute("acceList2", acceList2);
		
		model.addAttribute("weaponList3", weaponList3);
		model.addAttribute("armorList3", armorList3);
		model.addAttribute("acceList3", acceList3);
		model.addAttribute("currCate3", category3);
		model.addAttribute("currCate2", category2);
		
	}
	
	@GetMapping("/itemDetail")
	public void getItemDetailInfo(int itemId, Model model) {
		
		ItemEqJoinVO itemDetailInfo = service.getItemDetailInfo(itemId);
		
		String itemCategory3 = itemDetailInfo.getItemCategory3();
		
		String category3 = service.getItemDetailCate3(itemCategory3);
		
		StringBuilder logBuilder = new StringBuilder();
		logBuilder.append("■■■■■")
		.append("아이템 정보 :")
		.append(String.valueOf(itemDetailInfo));
		log.info(logBuilder.toString());
		
		model.addAttribute("itemDetailInfo", itemDetailInfo);
		model.addAttribute("category3", category3);

	}

}
