package com.fes.controller;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fes.domain.ItemDetailVO;
import com.fes.domain.ItemEqJoinVO;
import com.fes.domain.JobVO;
import com.fes.domain.MateriaVO;
import com.fes.service.SimService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/simulator/*")
@AllArgsConstructor
public class SimController {
	
	private SimService service;
	
	@GetMapping("/eqSim")
	public void getJob(@Param("jobCode")Integer jobCode, @Param("minLv")Integer minLv, @Param("maxLv")Integer maxLv, @Param("minItemLv")Integer minItemLv, @Param("maxItemLv")Integer maxItemLv, @Param("itemId")Integer itemId, Model model) {
		
		List<JobVO> jobList = service.getItemList();
		
		List<ItemEqJoinVO> weaponList;
		List<ItemEqJoinVO> shieldList;
		List<ItemEqJoinVO> headList;
		List<ItemEqJoinVO> topList;
		List<ItemEqJoinVO> handList;
		List<ItemEqJoinVO> bottomsList;
		List<ItemEqJoinVO> footList;
		List<ItemEqJoinVO> earList;
		List<ItemEqJoinVO> neckList;
		List<ItemEqJoinVO> armList;
		List<ItemEqJoinVO> fingerList;
		List<MateriaVO> materiaList;
		
		log.info(jobCode);
		
		if(jobCode != null) {
			
			String jobName = service.getJobName(jobCode);
			
			weaponList = service.getWeaponList(minLv, maxLv, minItemLv, maxItemLv, jobName);
			shieldList = service.getShieldList(minLv, maxLv, minItemLv, maxItemLv, jobName);
			headList = service.getHeadList(minLv, maxLv, minItemLv, maxItemLv, jobName);
			topList = service.getTopList(minLv, maxLv, minItemLv, maxItemLv, jobName);
			handList = service.getHandList(minLv, maxLv, minItemLv, maxItemLv, jobName);
			bottomsList = service.getBottomsList(minLv, maxLv, minItemLv, maxItemLv, jobName);
			footList = service.getFootList(minLv, maxLv, minItemLv, maxItemLv, jobName);
			earList = service.getEarList(minLv, maxLv, minItemLv, maxItemLv, jobName);
			neckList = service.getNeckList(minLv, maxLv, minItemLv, maxItemLv, jobName);
			armList = service.getArmList(minLv, maxLv, minItemLv, maxItemLv, jobName);
			fingerList = service.getFingerList(minLv, maxLv, minItemLv, maxItemLv, jobName);
			materiaList = service.getMateriaList();
			
//			int materia = service.getMateria(itemId);
//			log.info(materia);
			
			model.addAttribute("jobCode", jobCode);
			model.addAttribute("weaponList", weaponList);
			model.addAttribute("shieldList", shieldList);
			model.addAttribute("headList", headList);
			model.addAttribute("topList", topList);
			model.addAttribute("handList", handList);
			model.addAttribute("bottomsList", bottomsList);
			model.addAttribute("footList", footList);
			model.addAttribute("earList", earList);
			model.addAttribute("neckList", neckList);
			model.addAttribute("armList", armList);
			model.addAttribute("fingerList", fingerList);
			model.addAttribute("jobList", jobList);
			model.addAttribute("materiaList", materiaList);
			
			
		}
		
		
		
/*		JobVO pldVo = new JobVO(); 
  		pldVo.setCode("1");
		pldVo.setName("나이트");
		
		jobList.add(pldVo);
		
		JobVO warVo = new JobVO();
		
		warVo.setCode("2");
		warVo.setName("전사");
		
		jobList.add(warVo);
		
		JobVO drkVo = new JobVO();
		
		drkVo.setCode("3");
		drkVo.setName("암흑기사");
		
		jobList.add(drkVo);
		
		JobVO gunVo = new JobVO();
		
		gunVo.setCode("4");
		gunVo.setName("건브레이커");
		
		jobList.add(gunVo);
*/		
		

		
		model.addAttribute("jobList", jobList);
//		model.addAttribute("weaponList", weaponList);
		
	}
	
	
}
