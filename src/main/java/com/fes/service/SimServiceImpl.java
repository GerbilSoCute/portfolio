package com.fes.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fes.domain.ItemDetailVO;
import com.fes.domain.ItemEqJoinVO;
import com.fes.domain.JobVO;
import com.fes.domain.MateriaVO;
import com.fes.mapper.SimMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service
@AllArgsConstructor
public class SimServiceImpl implements SimService {
	
	@Setter(onMethod_ = @Autowired)
	private SimMapper mapper;

	@Override
	public List<JobVO> getItemList() {
		return mapper.getJobList();
	}
	
	@Override
	public String getJobName(Integer jobCode) {
		return mapper.getJobName(jobCode);
	}
	
	@Override
	public List<ItemEqJoinVO> getWeaponList(Integer minLv, Integer maxLv, Integer minItemLv, Integer maxItemLv, String jobName) {
		return mapper.getWeaponList(minLv, maxLv, minItemLv, maxItemLv, jobName);
	}
	
	@Override
	public List<ItemEqJoinVO> getShieldList(Integer minLv, Integer maxLv, Integer minItemLv, Integer maxItemLv, String jobName) {
		return mapper.getShieldList(minLv, maxLv, minItemLv, maxItemLv, jobName);
	}
	
	@Override
	public List<ItemEqJoinVO> getHeadList(Integer minLv, Integer maxLv, Integer minItemLv, Integer maxItemLv, String jobName) {
		return mapper.getHeadList(minLv, maxLv, minItemLv, maxItemLv, jobName);
	}
	
	@Override
	public List<ItemEqJoinVO> getTopList(Integer minLv, Integer maxLv, Integer minItemLv, Integer maxItemLv, String jobName) {
		return mapper.getTopList(minLv, maxLv, minItemLv, maxItemLv, jobName);
	}
	
	@Override
	public List<ItemEqJoinVO> getHandList(Integer minLv, Integer maxLv, Integer minItemLv, Integer maxItemLv, String jobName) {
		return mapper.getHandList(minLv, maxLv, minItemLv, maxItemLv, jobName);
	}
	
	@Override
	public List<ItemEqJoinVO> getBottomsList(Integer minLv, Integer maxLv, Integer minItemLv, Integer maxItemLv, String jobName) {
		return mapper.getBottomsList(minLv, maxLv, minItemLv, maxItemLv, jobName);
	}
	
	@Override
	public List<ItemEqJoinVO> getFootList(Integer minLv, Integer maxLv, Integer minItemLv, Integer maxItemLv, String jobName) {
		return mapper.getFootList(minLv, maxLv, minItemLv, maxItemLv, jobName);
	}
	
	@Override
	public List<ItemEqJoinVO> getEarList(Integer minLv, Integer maxLv, Integer minItemLv, Integer maxItemLv, String jobName) {
		return mapper.getEarList(minLv, maxLv, minItemLv, maxItemLv, jobName);
	}
	
	@Override
	public List<ItemEqJoinVO> getNeckList(Integer minLv, Integer maxLv, Integer minItemLv, Integer maxItemLv, String jobName) {
		return mapper.getNeckList(minLv, maxLv, minItemLv, maxItemLv, jobName);
	}
	
	@Override
	public List<ItemEqJoinVO> getArmList(Integer minLv, Integer maxLv, Integer minItemLv, Integer maxItemLv, String jobName) {
		return mapper.getArmList(minLv, maxLv, minItemLv, maxItemLv, jobName);
	}
	
	@Override
	public List<ItemEqJoinVO> getFingerList(Integer minLv, Integer maxLv, Integer minItemLv, Integer maxItemLv, String jobName) {
		return mapper.getFingerList(minLv, maxLv, minItemLv, maxItemLv, jobName);
	}
	
	@Override
	public List<MateriaVO> getMateriaList(){
		return mapper.getMateriaList();
	}
	
	@Override
	public int getMateria(Integer itemId) {
		return mapper.getMateria(itemId);
	}

}
